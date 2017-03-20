package com.jurin_n.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jurin_n.model.book.Book;

public interface BookRepository extends JpaRepository<Book, String> {

}
