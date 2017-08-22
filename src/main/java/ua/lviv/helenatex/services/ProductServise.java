package ua.lviv.helenatex.services;


import ua.lviv.helenatex.entity.Product;

import java.util.List;

public interface ProductServise {
//    void saveProduct();
    void saveProduct(Product product);
    Product findOne(int id);
    List<Product> findAll();
    void delete(Product product);
    void delete(int id);
    List<Product> findAllProductWithCategory();
    List<Product> findProductWithImages();
    Product findOneProduct(int id);



}
