/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.sahafbookstore.sahaf.service;

import com.sahafbookstore.sahaf.dto.converter.BookRequestDtoConverter;
import com.sahafbookstore.sahaf.dto.request.BookRequestDto;
import com.sahafbookstore.sahaf.dto.request.BookUpdateDto;
import com.sahafbookstore.sahaf.exception.bookException.BookNotFoundException;
import com.sahafbookstore.sahaf.model.Book;
import com.sahafbookstore.sahaf.repository.BookRepository;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Optional;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Asus
 */
@Service
@AllArgsConstructor
public class BookService {
    
    private final BookRepository bookRepository;
    private final BookRequestDtoConverter bookRequestDtoConverter;
    
    public Book add(BookRequestDto dto) {
        return bookRepository.save(bookRequestDtoConverter.convert(dto));
    }
    
    public Book getBook(Long id) {
        return bookRepository.findById(id).orElseThrow(() -> new BookNotFoundException("Kitap Bulunamadi"));
    }
    
    public List<Book> getAllBook() {
        return bookRepository.findAll();
    }
    
    public Book update(BookUpdateDto dto) {
        Book b = bookRepository.findById(dto.getId()).orElseThrow();
        b.setBookName(dto.getBookName());
        b.setSummary(dto.getSummary());
        b.setPublicationDate(dto.getPublicationDate());
        b.setPrice(dto.getPrice());
        return bookRepository.save(b);
    }
    
    public String delete(Long id) {
        bookRepository.deleteById(id);
        Optional<Book> b = bookRepository.findById(id);
        if (b.isEmpty()) {
            return id + "'li Bulunamadi.";
        }
        return id + "Silindi";
    }
    
    public void fileTransfer(BookRequestDto dto) throws IOException {
        MultipartFile file = dto.getFile();
        String fileType = file.getOriginalFilename().split("[.]")[1];
        String time = String.valueOf(System.currentTimeMillis());
        String uploadFileNewName = dto.getBookName() + "-" + time + "." + fileType;
        File dosya = new File("C:\\YeniDosya\\" + uploadFileNewName);
        dto.getFile().transferTo(dosya);
    }
    
}
