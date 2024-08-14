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
import com.vn.bookstore.domain.User;
import com.vn.bookstore.domain.dto.BookCriteriaDTO;
import com.vn.bookstore.repository.BookRepository;
import com.vn.bookstore.repository.CartDetailRepository;
import com.vn.bookstore.repository.CartRepository;
import com.vn.bookstore.service.specification.BookSpecs;

import jakarta.servlet.http.HttpSession;

@Service
public class BookService {
    private final BookRepository bookRepository;
    private final CartRepository cartRepository;
    private final CartDetailRepository cartDetailRepository;
    private final UploadService uploadService;
    private final UserService userService;

    public BookService(BookRepository bookRepository, CartRepository cartRepository,
            CartDetailRepository cartDetailRepository, UploadService uploadService, UserService userService) {
        this.bookRepository = bookRepository;
        this.cartRepository = cartRepository;
        this.cartDetailRepository = cartDetailRepository;
        this.uploadService = uploadService;
        this.userService = userService;
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
        book.setUpdatedAt(timeStamp);
        if (!file.isEmpty()) {
            String image = this.uploadService.handleSaveUploadFile(file, "book");
            if (image != "") {
                book.setImage(image);
            }
        }
        this.bookRepository.save(book);
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
                }

                List<CartDetail> cartDetailsByCart = this.cartDetailRepository.findByCart(cart);
                session.setAttribute("cartDetails", cartDetailsByCart);
                System.out.println(session);
            }
        }
    }
}
