package ua.lviv.helenatex.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.lviv.helenatex.entity.Category;


import java.util.List;


public interface CategoryDAO extends JpaRepository<Category, Integer> {


    @Query("from Category c where c.categoryName=:nameCategory")
    public Category findByCategoryName(@Param("nameCategory") String nameCategory);

    @Query("from Category c join fetch c.products  where c.id=:categoryId")
    Category findCategoryWithProducts(@Param("categoryId") int id);

}
