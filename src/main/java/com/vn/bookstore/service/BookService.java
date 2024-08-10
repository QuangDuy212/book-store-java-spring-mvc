package com.vn.bookstore.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.vn.bookstore.domain.Book;
import com.vn.bookstore.repository.BookReposity;

@Service
public class BookService {
    private final BookReposity bookReposity;
    private final UploadService uploadService;

    public BookService(BookReposity bookReposity, UploadService uploadService) {
        this.bookReposity = bookReposity;
        this.uploadService = uploadService;
    }

    public List<Book> fetchAllBooks() {
        return this.bookReposity.findAll();
    }

    public Page<Book> fetchAllBooks(Pageable pageable) {
        return this.bookReposity.findAll(pageable);
    }

    public Optional<Book> getBookById(long id) {
        return this.bookReposity.findById(id);
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
            this.bookReposity.save(book);
        }
    }

    public void handleUpdateABook(Book book, MultipartFile file) {
        Optional<Book> currentBook = this.bookReposity.findById(book.getId());
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
        this.bookReposity.save(book);
    }

}
