/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.sahafbookstore.sahaf.dto.request;

import lombok.Builder;
import lombok.Data;

/**
 *
 * @author Asus
 */
@Data
@Builder
public class BookUpdateDto {

    private Long id;
    private String bookName;
    private String publicationDate;
    private String summary;
    private String imagePath;
    private double price;

}
