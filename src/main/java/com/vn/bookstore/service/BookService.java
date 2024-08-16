package com.vn.bookstore.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.vn.bookstore.domain.Book;
import com.vn.bookstore.domain.Cart;
import com.vn.bookstore.domain.CartDetail;
import com.vn.bookstore.domain.Order;
import com.vn.bookstore.domain.OrderDetail;
import com.vn.bookstore.domain.User;
import com.vn.bookstore.domain.dto.BookCriteriaDTO;
import com.vn.bookstore.repository.BookRepository;
import com.vn.bookstore.repository.CartDetailRepository;
import com.vn.bookstore.repository.CartRepository;
import com.vn.bookstore.repository.OrderDetailRepository;
import com.vn.bookstore.repository.OrderRepository;
import com.vn.bookstore.service.specification.BookSpecs;

import jakarta.servlet.http.HttpSession;

@Service
public class BookService {
    private final BookRepository bookRepository;
    private final CartRepository cartRepository;
    private final CartDetailRepository cartDetailRepository;
    private final OrderRepository orderRepository;
    private final OrderDetailRepository orderDetailRepository;
    private final UploadService uploadService;
    private final UserService userService;
    private final CartDetailService cartDetailService;
    private final CartService cartService;

    public BookService(BookRepository bookRepository, CartRepository cartRepository,
            CartDetailRepository cartDetailRepository, OrderRepository orderRepository,
            OrderDetailRepository orderDetailRepository, UploadService uploadService, UserService userService,
            CartDetailService cartDetailService, CartService cartService) {
        this.bookRepository = bookRepository;
        this.cartRepository = cartRepository;
        this.cartDetailRepository = cartDetailRepository;
        this.orderRepository = orderRepository;
        this.orderDetailRepository = orderDetailRepository;
        this.uploadService = uploadService;
        this.userService = userService;
        this.cartDetailService = cartDetailService;
        this.cartService = cartService;
    }

    public List<Book> fetchAllBooks() {
        return this.bookRepository.findAll();
    }

    public Page<Book> fetchAllBooks(Pageable pageable) {
        return this.bookRepository.findAll(pageable);
    }

    public Optional<Book> getBookById(long id) {
        return this.bookRepository.findById(id);
    }

    public List<Book> getBooksByCategory(String category) {
        return this.bookRepository.findByCategory(category);
    }

    public Page<Book> getBooksByCategory(Pageable pageable, String category) {
        return this.bookRepository.findByCategory(pageable, category);
    }

    public Page<Book> fetchBooksWithSpec(Pageable page, BookCriteriaDTO bookCriteriaDTO) {
        if (bookCriteriaDTO.getCategory() == null
                && bookCriteriaDTO.getPrice() == null) {
            return this.bookRepository.findAll(page);
        }
        Specification<Book> combinedSpec = Specification.where(null);

        if (bookCriteriaDTO.getCategory() != null && bookCriteriaDTO.getCategory().isPresent()) {
            Specification<Book> currentSpecs = BookSpecs.matchListCategory(bookCriteriaDTO.getCategory().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }
        if (bookCriteriaDTO.getPrice() != null && bookCriteriaDTO.getPrice().isPresent()) {
            Specification<Book> currentSpecs = this.buildPriceSpecification(bookCriteriaDTO.getPrice().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }
        return this.bookRepository.findAll(combinedSpec, page);
    }

    public Specification<Book> buildPriceSpecification(List<String> price) {
        Specification<Book> combinedSpec = (root, query, criteriaBuilder) -> criteriaBuilder.disjunction();

        for (String p : price) {
            double min = 0;
            double max = 0;

            // Set the appropriate min and max based on the price range string
            switch (p) {
                case "duoi-100-k":
                    min = 1;
                    max = 100000;
                    break;
                case "100-200-k":
                    min = 100000;
                    max = 200000;
                    break;
                case "200-300-k":
                    min = 200000;
                    max = 300000;
                    break;
                case "tren-300-k":
                    min = 300000;
                    max = 30000000;
                    break;
                // Add more cases as needed
            }

            if (min != 0 && max != 0) {
                Specification<Book> rangeSpec = BookSpecs.matchMultiplePrice(min, max);
                combinedSpec = combinedSpec.or(rangeSpec);
            }
        }

        return combinedSpec;
    }

    public void createABook(Book book, MultipartFile file) {
        if (!file.isEmpty()) {
            String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Calendar.getInstance().getTime());
            book.setUpdatedAt(timeStamp);
            book.setCreatedAt(timeStamp);
            String image = this.uploadService.handleSaveUploadFile(file, "book");
            if (image != "") {
                book.setImage(image);
            }
            this.bookRepository.save(book);
        }
    }

    public void handleUpdateABook(Book book, MultipartFile file) {
        Optional<Book> currentBook = this.bookRepository.findById(book.getId());
        currentBook.get().setMainText(book.getMainText());
        currentBook.get().setAuthor(book.getAuthor());
        currentBook.get().setPrice(book.getPrice());
        currentBook.get().setSold(book.getSold());
        currentBook.get().setQuantity(book.getQuantity());
        currentBook.get().setCategory(book.getCategory());
        String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Calendar.getInstance().getTime());
        currentBook.get().setUpdatedAt(timeStamp);
        if (!file.isEmpty()) {
            String image = this.uploadService.handleSaveUploadFile(file, "book");
            if (image != "") {
                currentBook.get().setImage(image);
            }
        }
        this.bookRepository.save(currentBook.get());
    }

    public void handleDeleteBook(long id) {
        this.bookRepository.deleteById(id);
    }

    public void handleAddBookToCart(String email, long id, HttpSession session, long quantity) {
        User user = this.userService.getUserByEmail(email);
        if (user != null) {
            // check have cart ? no -> add new , yes -> sum + 1
            Cart cart = this.cartRepository.findByUser(user);
            if (cart == null) {
                Cart otherCart = new Cart();
                otherCart.setSum(0);
                otherCart.setUser(user);
                cart = this.cartRepository.save(otherCart);
            }

            // find cart_detail
            // find book by id
            Optional<Book> book = this.bookRepository.findById(id);
            if (book.isPresent()) {
                Book realBook = book.get();

                CartDetail oldDetail = this.cartDetailRepository.findByCartAndBook(cart, realBook);
                if (oldDetail == null) {
                    CartDetail cd = new CartDetail();
                    cd.setPrice(realBook.getPrice());
                    cd.setBook(realBook);
                    cd.setQuantity(quantity);
                    cd.setCart(cart);
                    this.cartDetailRepository.save(cd);

                    int sum = cart.getSum() + 1;
                    cart.setSum(sum);
                    this.cartRepository.save(cart);

                    session.setAttribute("sum", sum);
                } else {
                    long qt = oldDetail.getQuantity() + quantity;
                    oldDetail.setQuantity(qt);
                    this.cartDetailRepository.save(oldDetail);
                }

                List<CartDetail> cartDetailsByCart = this.cartDetailRepository.findByCart(cart);
                session.setAttribute("listCart", cartDetailsByCart);
            }
        }
    }

    public void handleRemoveCartDetail(long cartDetailId, HttpSession session) {
        Optional<CartDetail> cartDetail = this.cartDetailRepository.findById(cartDetailId);
        if (cartDetail.isPresent()) {
            Cart cart = cartDetail.get().getCart();
            long cartId = cart.getId();
            this.cartDetailRepository.delete(cartDetail.get());
            String email = (String) session.getAttribute("email");
            User user = this.userService.getUserByEmail(email);
            List<CartDetail> cartDetails = this.cartDetailService.fetchCartDetailsByCart(user.getCart());
            session.setAttribute("listCart", cartDetails);
            if (cart.getSum() > 1) {
                int sum = cart.getSum() - 1;
                cart.setSum(sum);
                session.setAttribute("sum", sum);
                this.cartRepository.save(cart);
            } else {
                session.setAttribute("sum", 0);
                this.cartRepository.delete(cart);
            }
        }
    }

    public void handlePlaceOrder(User user, HttpSession session, String receiverName, String receiverAddress,
            String receiverPhone, double totalPrice) {
        Order order = new Order();
        order.setReciverAddress(receiverAddress);
        order.setReciverName(receiverName);
        order.setReciverPhone(receiverPhone);
        order.setUser(user);
        order.setTotalPrice(totalPrice);
        order.setStatus("PENDING");
        String currentTime = new SimpleDateFormat("HH:mm:ss dd-MM-yyyy").format(Calendar.getInstance().getTime());
        order.setCreatedAt(currentTime);
        this.orderRepository.save(order);

        // step 1: fetch cart by user
        Cart cart = this.cartService.getCartByUser(user);
        if (cart != null) {
            List<CartDetail> cartDetails = this.cartDetailService.fetchCartDetailsByCart(cart);
            if (cartDetails != null) {
                for (CartDetail cd : cartDetails) {
                    Optional<Book> bk = this.bookRepository.findById(cd.getBook().getId());
                    if (bk.isPresent()) {
                        long quantity = bk.get().getQuantity();
                        long sold = bk.get().getSold();
                        if (quantity >= cd.getQuantity()) {
                            bk.get().setQuantity(quantity - cd.getQuantity());
                            bk.get().setSold(quantity + cd.getQuantity());
                            this.bookRepository.save(bk.get());
                        }
                    }
                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.setOrder(order);
                    orderDetail.setBook(cd.getBook());
                    orderDetail.setPrice(cd.getPrice());
                    orderDetail.setQuantity(cd.getQuantity());
                    this.orderDetailRepository.save(orderDetail);
                }

                // step 2: detele cart and cart_detail
                for (CartDetail cd : cartDetails) {
                    this.cartDetailRepository.deleteById(cd.getId());
                }

                this.cartRepository.delete(cart);

                // step 3: update session
                session.setAttribute("sum", 0);
                session.removeAttribute("listCart");
                System.out.println(session);
            }
        }
    }

    public void handleUpdateCartBeforeCheckout(List<CartDetail> cartDetails) {
        for (CartDetail cartDetail : cartDetails) {
            Optional<CartDetail> cdOptional = this.cartDetailRepository.findById(cartDetail.getId());
            if (cdOptional.isPresent()) {
                CartDetail currentCartDetail = cdOptional.get();
                currentCartDetail.setQuantity(cartDetail.getQuantity());
                this.cartDetailRepository.save(currentCartDetail);
            }
        }
    }
}
