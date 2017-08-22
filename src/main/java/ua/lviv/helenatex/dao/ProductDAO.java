package ua.lviv.helenatex.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.lviv.helenatex.entity.Product;

import java.util.List;


public interface ProductDAO extends JpaRepository<Product,Integer> {
    @Query(" from Product p join fetch p.category ")
    List<Product> findAllProductWithCategory();

//    @Query(" from Product p join fetch p.images ")
//    List<Product> findAllProducts();

    @Query("from Product p  join fetch p.category   join  p.images where p.id=:prodId")
    Product findOneProduct(@Param("prodId") int id);

    @Query("from Product p join fetch p.images")
    List<Product> findProductWithImages();


}