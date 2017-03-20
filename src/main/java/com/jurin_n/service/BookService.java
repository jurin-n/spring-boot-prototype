package com.jurin_n.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jurin_n.model.book.Book;
import com.jurin_n.repository.BookRepository;

@Service
public class BookService {
	@Autowired
	private BookRepository bookRepository;

	public Book getBook(String id) {
		return bookRepository.findOne(id);
	}

	public Book addBook(Book book) {
		bookRepository.save(book);
		return book;
	}

	public void deleteBook(String id) {
		bookRepository.delete(id);
	}

	public List<Book> getBooks() {
		return bookRepository.findAll();
	}
}
