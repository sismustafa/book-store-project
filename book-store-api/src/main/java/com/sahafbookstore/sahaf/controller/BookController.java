/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.sahafbookstore.sahaf.controller;

import com.sahafbookstore.sahaf.dto.request.BookRequestDto;
import com.sahafbookstore.sahaf.dto.request.BookUpdateDto;
import com.sahafbookstore.sahaf.service.BookService;
import jakarta.servlet.annotation.MultipartConfig;
import java.io.File;
import java.io.IOException;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.server.RequestPath;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Asus
 */
@RestController
@RequestMapping("book")
@AllArgsConstructor
public class BookController {

    private final BookService bookService;

    @PostMapping("/add")
    public ResponseEntity<?> add(@RequestBody BookRequestDto dto) {
        return new ResponseEntity<>(bookService.add(dto), HttpStatus.CREATED);
    }

    @GetMapping("/book/{id}")
    public ResponseEntity<?> getBook(@PathVariable Long id) {
        return new ResponseEntity<>(bookService.getBook(id), HttpStatus.OK);
    }

    @GetMapping("/allbook")
    public ResponseEntity<?> allBook() {
        return new ResponseEntity<>(bookService.getAllBook(), HttpStatus.OK);
    }

    @PostMapping("/update")
    public ResponseEntity<?> editBook(@RequestBody BookUpdateDto dto) {
        return new ResponseEntity<>(bookService.update(dto), HttpStatus.OK);
    }

    @PostMapping("/deletebook/{id}")
    public ResponseEntity<?> delete(@PathVariable Long id) {
        return new ResponseEntity<>(bookService.delete(id), HttpStatus.OK);
    }

    @PostMapping(path = "/uploadfile", consumes = {"multipart/form-data"})
    public ResponseEntity<?> uplimage(@ModelAttribute BookRequestDto dto) throws IOException {
        System.out.println(dto.getFile().getOriginalFilename());
        System.out.println(dto.getFile().getContentType());
        System.out.println(dto.getFile().getSize());
        System.out.println(dto.getFile().getResource());
        bookService.fileTransfer(dto);
        return new ResponseEntity<>(dto.getFile().getSize(), HttpStatus.OK);
    }

}
