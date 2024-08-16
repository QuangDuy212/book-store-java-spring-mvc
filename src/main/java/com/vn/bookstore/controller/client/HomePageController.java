package com.vn.bookstore.controller.client;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.vn.bookstore.domain.Book;
import com.vn.bookstore.domain.Book_;
import com.vn.bookstore.domain.Cart;
import com.vn.bookstore.domain.CartDetail;
import com.vn.bookstore.domain.Category;
import com.vn.bookstore.domain.Order;
import com.vn.bookstore.domain.OrderDetail;
import com.vn.bookstore.domain.User;
import com.vn.bookstore.domain.dto.BookCriteriaDTO;
import com.vn.bookstore.service.BookService;
import com.vn.bookstore.service.CartService;
import com.vn.bookstore.service.CategoryService;
import com.vn.bookstore.service.OrderDetailService;
import com.vn.bookstore.service.OrderService;
import com.vn.bookstore.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomePageController {
    private final BookService bookService;
    private final UserService userService;
    private final CartService cartService;
    private final CategoryService categoryService;
    private final OrderDetailService orderDetailService;
    private final OrderService orderService;
    private final int totalBookInPage = 8;

    public HomePageController(BookService bookService, UserService userService, CartService cartService,
            CategoryService categoryService, OrderDetailService orderDetailService, OrderService orderService) {
        this.bookService = bookService;
        this.userService = userService;
        this.cartService = cartService;
        this.categoryService = categoryService;
        this.orderDetailService = orderDetailService;
        this.orderService = orderService;
    }

    // Get Mapping
    @GetMapping("/")
    public String getHomePage(Model model, BookCriteriaDTO bookCriteriaDTO, HttpServletRequest request) {
        // paging variable
        int page = 1;
        try {
            if (bookCriteriaDTO.getPage().isPresent()) {
                // convert from String to int
                page = Integer.parseInt(bookCriteriaDTO.getPage().get());
            } else {
                // page = 1
            }
        } catch (Exception e) {
            // page = 1
            // TODO: handle exception
        }

        // check sort price
        Pageable pageable = null;
        if (bookCriteriaDTO.getSort() != null && bookCriteriaDTO.getSort().isPresent()) {
            String sort = bookCriteriaDTO.getSort().get();
            if (sort.equals("gia-tang-dan")) {
                pageable = PageRequest.of(page - 1, totalBookInPage, Sort.by(Book_.PRICE).ascending());
            } else if (sort.equals("gia-giam-dan")) {
                pageable = PageRequest.of(page - 1, totalBookInPage, Sort.by(Book_.PRICE).descending());
            } else {
                pageable = PageRequest.of(page - 1, totalBookInPage);

            }
        } else {
            pageable = PageRequest.of(page - 1, totalBookInPage);
        }

        Page<Book> bks = this.bookService.fetchAllBooks(pageable);

        List<Book> books = bks.getContent().size() > 0 ? bks.getContent() : new ArrayList<Book>();
        model.addAttribute("books", books);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", bks.getTotalPages());
        return "client/homepage/show";
    }

    @GetMapping("/book/{id}")
    public String getDetailPage(Model model, @PathVariable long id, BookCriteriaDTO bookCriteriaDTO) {
        // paging variable
        int page = 1;
        try {
            if (bookCriteriaDTO.getPage().isPresent()) {
                // convert from String to int
                page = Integer.parseInt(bookCriteriaDTO.getPage().get());
            } else {
                // page = 1
            }
        } catch (Exception e) {
            // page = 1
            // TODO: handle exception
        }

        // check sort price
        Pageable pageable = PageRequest.of(page - 1, totalBookInPage);
        Optional<Book> book = this.bookService.getBookById(id);
        Page<Book> bks = this.bookService.getBooksByCategory(pageable, book.get().getCategory());

        List<Book> sameBooks = bks.getContent().size() > 0 ? bks.getContent() : new ArrayList<Book>();
        if (book.isPresent()) {
            model.addAttribute("newCartDetail", new CartDetail());
            model.addAttribute("book", book.get());
            model.addAttribute("sameBooks", sameBooks);
            model.addAttribute("currentPage", page);
            model.addAttribute("totalPages", bks.getTotalPages());
        }
        return "client/homepage/detail";
    }

    @GetMapping("/profile")
    public String getProfilePage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        Optional<User> user = this.userService.getUserById(id);
        model.addAttribute("user", user.get());
        model.addAttribute("newUser", user.get());
        return "client/profile/show";
    }

    @GetMapping("/book")
    public String getBooksFilterPage(Model model, BookCriteriaDTO bookCriteriaDTO, HttpServletRequest request) {
        // paging variable
        int page = 1;
        try {
            if (bookCriteriaDTO.getPage().isPresent()) {
                // convert from String to int
                page = Integer.parseInt(bookCriteriaDTO.getPage().get());
            } else {
                // page = 1
            }
        } catch (Exception e) {
            // page = 1
            // TODO: handle exception
        }

        // check sort price
        Pageable pageable = null;
        if (bookCriteriaDTO.getSort() != null && bookCriteriaDTO.getSort().isPresent()) {
            String sort = bookCriteriaDTO.getSort().get();
            if (sort.equals("gia-tang-dan")) {
                pageable = PageRequest.of(page - 1, totalBookInPage, Sort.by(Book_.PRICE).ascending());
            } else if (sort.equals("gia-giam-dan")) {
                pageable = PageRequest.of(page - 1, totalBookInPage, Sort.by(Book_.PRICE).descending());
            } else {
                pageable = PageRequest.of(page - 1, totalBookInPage);

            }
        } else {
            pageable = PageRequest.of(page - 1, totalBookInPage);
        }

        // fetch data
        // book
        Page<Book> bks = this.bookService.fetchBooksWithSpec(pageable, bookCriteriaDTO);

        List<Book> books = bks.getContent().size() > 0 ? bks.getContent() : new ArrayList<Book>();

        // category
        List<Category> categories = this.categoryService.fetchAllCategory();

        // query string
        String qs = request.getQueryString();
        if (qs != null && !qs.isBlank()) {
            // remove page:
            qs = qs.replace("page=" + page, "");
        }
        model.addAttribute("books", books);
        model.addAttribute("categories", categories);
        model.addAttribute("queryString", qs);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", bks.getTotalPages());
        return "client/books/show";
    }

    @GetMapping("/cart")
    public String getCartPage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        Optional<User> user = this.userService.getUserById(id);
        Cart cart = this.cartService.getCartByUser(user.get());
        List<CartDetail> cartDetails = cart != null ? this.userService.fetchCartDetailsByUser(user.get())
                : new ArrayList<CartDetail>();
        double totalPrice = 0;
        for (CartDetail cd : cartDetails) {
            totalPrice += cd.getPrice() * cd.getQuantity();
        }
        model.addAttribute("cartDetails", cartDetails);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("cart", cart);
        return "client/cart/show";
    }

    @GetMapping("/checkout")
    public String getCheckoutPage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        Optional<User> user = this.userService.getUserById(id);
        Cart cart = this.cartService.getCartByUser(user.get());
        List<CartDetail> cartDetails = cart != null ? this.userService.fetchCartDetailsByUser(user.get())
                : new ArrayList<CartDetail>();
        double totalPrice = 0;
        for (CartDetail cd : cartDetails) {
            totalPrice += cd.getPrice() * cd.getQuantity();
        }
        model.addAttribute("cartDetails", cartDetails);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("cart", cart);
        return "client/cart/checkout";
    }

    @GetMapping("/thanks")
    public String getThanksPage(Model model) {
        return "client/cart/thanks";
    }

    @GetMapping("/order-history")
    public String getOrderHistoryPage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        Optional<User> user = this.userService.getUserById(id);
        List<Order> listOrders = this.orderService.fetchOrderByUser(user.get());
        model.addAttribute("listOrders", listOrders);
        return "client/orderHistory/show";
    }

    @GetMapping("/order-history/{id}")
    public String getOrderHistoryDetailPage(Model model, HttpServletRequest request, @PathVariable long id) {
        HttpSession session = request.getSession(false);
        long userId = (long) session.getAttribute("id");
        Optional<User> user = this.userService.getUserById(userId);
        Optional<Order> order = this.orderService.fetchOrderById(id);
        if (order.isPresent()) {
            List<OrderDetail> listOrderDetails = this.orderDetailService.fetchOrderDetailsByOrder(order.get());

            double totalPrice = 0;
            for (OrderDetail od : listOrderDetails) {
                totalPrice += od.getPrice();
            }
            model.addAttribute("listOrderDetails", listOrderDetails);
            model.addAttribute("totalPrice", totalPrice);
        } else {
            return "redirect:/order-history";
        }
        return "client/orderHistory/detail";
    }

    // Post Mapping
    @PostMapping("/profile")
    public String postUpdateUserClient(Model model, @ModelAttribute("newUser") User user,
            @RequestParam("avatarUpdateFileClient") MultipartFile file, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        Optional<User> currentUser = this.userService.handleUpdateUserForClient(user, file, session);
        return "redirect:/profile";
    }

    @PostMapping("/add-cart/{id}")
    public String postAddCartClient(Model model, @ModelAttribute("newCartDetail") CartDetail cartDetail,
            @PathVariable long id, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session == null)
            return "redirect:/login";
        long bookId = id;
        String email = (String) session.getAttribute("email");
        this.bookService.handleAddBookToCart(email, bookId, session, cartDetail.getQuantity());
        return "redirect:/book/{id}";
    }

    @PostMapping("/delete-cart-book/{id}")
    public String postDeleteBookCartClient(Model model, @PathVariable long id, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session == null)
            return "redirect:/login";
        long cartDetailId = id;
        this.bookService.handleRemoveCartDetail(cartDetailId, session);
        return "redirect:/cart";
    }

    @PostMapping("/confirm-checkout")
    public String checkout(@ModelAttribute("cart") Cart cart) {
        List<CartDetail> cartDetails = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();
        this.bookService.handleUpdateCartBeforeCheckout(cartDetails);
        return "redirect:/checkout";
    }

    @PostMapping("/place-order")
    public String postPlaceOrderClient(Model model, HttpServletRequest request,
            @RequestParam("receiverName") String receiverName,
            @RequestParam("receiverAddress") String receiverAddress,
            @RequestParam("receiverPhone") String receiverPhone) {
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        Optional<User> user = this.userService.getUserById(id);
        Cart currentCart = this.cartService.getCartByUser(user.get());
        List<CartDetail> cartDetails = currentCart != null ? this.userService.fetchCartDetailsByUser(user.get())
                : new ArrayList<CartDetail>();
        double totalPrice = 0;
        for (CartDetail cd : cartDetails) {
            totalPrice += cd.getPrice() * cd.getQuantity();
        }
        this.bookService.handlePlaceOrder(user.get(), session, receiverName, receiverAddress, receiverPhone,
                totalPrice);
        return "redirect:/thanks";
    }
}
