package ua.lviv.helenatex.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Category implements Serializable {

    private static final long serialVersionUID = -2769398155280604739L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idCategory;
    private String categoryName;
    private String slag;
    private String subCategoryName;

    private String date;
    private String categoryImage;

    @Column(name = "descriptionCategory",length = 20000)
    private String descriptionCategory;


    @JsonIgnore
    @OneToMany(cascade = CascadeType.ALL,fetch = FetchType.LAZY,mappedBy = "category")
    private List<Product> products = new ArrayList<>();

    public Category() {
    }

    public Category(String categoryName) {
        this.categoryName = categoryName;
    }

    public Category(String categoryName, String slag, String subCategoryName, String date, String categoryImage, String descriptionCategory) {
        this.categoryName = categoryName;
        this.slag = slag;
        this.subCategoryName = subCategoryName;
        this.date = date;
        this.categoryImage = categoryImage;
        this.descriptionCategory = descriptionCategory;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getSlag() {
        return slag;
    }

    public void setSlag(String slag) {
        this.slag = slag;
    }

    public String getSubCategoryName() {
        return subCategoryName;
    }

    public void setSubCategoryName(String subCategory) {
        this.subCategoryName = subCategory;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getCategoryImage() {
        return categoryImage;
    }

    public void setCategoryImage(String categoryImage) {
        this.categoryImage = categoryImage;
    }

    public String getDescriptionCategory() {
        return descriptionCategory;
    }

    public void setDescriptionCategory(String descriptionCategory) {
        this.descriptionCategory = descriptionCategory;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    @Override
    public String toString() {
        return "Category{" +
                "idCategory=" + idCategory +
                ", categoryName='" + categoryName + '\'' +
                ", slag='" + slag + '\'' +
                ", subCategoryName='" + subCategoryName + '\'' +
                ", date='" + date + '\'' +
                ", categoryImage='" + categoryImage + '\'' +
                ", descriptionCategory='" + descriptionCategory + '\'' +
                '}';
    }


}
