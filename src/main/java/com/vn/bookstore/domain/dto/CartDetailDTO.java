package com.vn.bookstore.domain.dto;

public class CartDetailDTO {
    private long id;
    private Double price;
    private long quantity;
    private Cart cart;
    private Book book;

    public static class Book {
        private long id;
        private String image;
        private String mainText;

        public long getId() {
            return id;
        }

        public void setId(long id) {
            this.id = id;
        }

        public String getImage() {
            return image;
        }

        public void setImage(String image) {
            this.image = image;
        }

        public String getMainText() {
            return mainText;
        }

        public void setMainText(String mainText) {
            this.mainText = mainText;
        }

    }

    public static class Cart {
        private long id;
        private long sum;

        public long getId() {
            return id;
        }

        public long getSum() {
            return sum;
        }

        public void setId(long id) {
            this.id = id;
        }

        public void setSum(long sum) {
            this.sum = sum;
        }
    }

    public long getId() {
        return id;
    }

    public Double getPrice() {
        return price;
    }

    public long getQuantity() {
        return quantity;
    }

    public Cart getCart() {
        return cart;
    }

    public Book getBook() {
        return book;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public void setBook(Book book) {
        this.book = book;
    }

}
