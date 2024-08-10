package com.vn.bookstore.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

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

    public void createABook(Book book, MultipartFile file) {
        if (!file.isEmpty()) {
            String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Calendar.getInstance().getTime());
            book.setUpdatedAt(timeStamp);
            book.setCreatedAt(timeStamp);
            String image = this.uploadService.handleSaveUploadFile(file, "avatar");
            if (image != "") {
                book.setImage(image);
            }
            this.bookReposity.save(book);
        }
    }

}
