package com.vn.bookstore.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.vn.bookstore.domain.Book;
import com.vn.bookstore.domain.Order;
import com.vn.bookstore.domain.OrderDetail;
import com.vn.bookstore.domain.User;
import com.vn.bookstore.service.OrderDetailService;
import com.vn.bookstore.service.OrderService;

@Controller
public class OrderController {
    private final OrderService orderService;
    private final OrderDetailService orderDetailService;

    public OrderController(OrderService orderService, OrderDetailService orderDetailService) {
        this.orderService = orderService;
        this.orderDetailService = orderDetailService;
    }

    @GetMapping("/admin/orders")
    public String getOrdersAdminPage(Model model) {
        List<Order> listOrders = this.orderService.fetchAllOrders();
        model.addAttribute("listOrders", listOrders);
        return "admin/orders/show";
    }

    @GetMapping("/admin/orders/{id}")
    public String getOrdersDetailAdminPage(Model model, @PathVariable long id) {
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
            return "redirect:/admin/orders";
        }
        return "admin/orders/detail";
    }

    @GetMapping("/admin/orders/update/{id}")
    public String getOrdersUpdateAdminPage(Model model, @PathVariable long id) {
        Optional<Order> order = this.orderService.fetchOrderById(id);
        if (order.isPresent()) {
            model.addAttribute("id", id);
            model.addAttribute("order", order);
        } else {
            return "redirect:/admin/orders";
        }
        return "admin/orders/update";
    }

    @PostMapping("/admin/orders/update")
    public String postUpdateOrdersAdminPage(Model model, @ModelAttribute("order") Order order) {
        this.orderService.handleUpdateOrder(order, order.getId());
        return "redirect:/admin/orders";
    }
}
