/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.sahafbookstore.sahaf.dto.converter;

import com.sahafbookstore.sahaf.dto.request.BookRequestDto;
import com.sahafbookstore.sahaf.model.Book;
import lombok.Builder;
import lombok.Data;
import org.springframework.stereotype.Component;

/**
 *
 * @author Asus
 */
@Data
@Builder
@Component
public class BookRequestDtoConverter {

    public Book convert(BookRequestDto dto) {
        Book book = new Book();
        book.setBookName(dto.getBookName());
        book.setPublicationDate(dto.getPublicationDate());
        book.setSummary(dto.getSummary());
        book.setPrice(dto.getPrice());
        return book;
    }

}
