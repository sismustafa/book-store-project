/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.sahafbookstore.sahaf.dto.request;

import java.io.File;
import lombok.Builder;
import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Asus
 */
@Data
@Builder
public class BookRequestDto {

    private String bookName;
    private String publicationDate;
    private String summary;
    private double price;
    private MultipartFile file;

}
