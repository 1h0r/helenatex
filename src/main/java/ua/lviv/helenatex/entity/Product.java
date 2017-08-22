package ua.lviv.helenatex.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
public class Product implements Serializable {
    private static final long serialVersionUID = 8471119071503310944L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idProduct;
    private String productName;
    private String slag;
    @Column(name = "description", length = 20000)
    private String description;
    private String date;
    private String generalProductImage;
    @ElementCollection
    private List<String> images = new ArrayList<>();

    @JsonIgnore
    @ManyToOne(cascade = CascadeType.MERGE,fetch = FetchType.LAZY)
    private Category category;


    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Review> reviews = new ArrayList<>();


    public Product() {
    }

    public Product(String productName, String slag, String description, String date, String generalProductImage, List<String> images) {
        this.productName = productName;
        this.slag = slag;
        this.description = description;
        this.date = date;
        this.generalProductImage = generalProductImage;
        this.images = images;
    }

    public Product(String productName, String slag, String description, String date, String generalProductImage, List<String> images, Category category, List<Review> reviews) {
        this.productName = productName;
        this.slag = slag;
        this.description = description;
        this.date = date;
        this.generalProductImage = generalProductImage;
        this.images = images;
        this.category = category;
        this.reviews = reviews;
    }

    public String getSlag() {
        return slag;
    }

    public void setSlag(String slag) {
        this.slag = slag;
    }

    public String getGeneralProductImage() {
        return generalProductImage;
    }

    public void setGeneralProductImage(String generalProductImage) {
        this.generalProductImage = generalProductImage;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public List<Review> getReviews() {
        return reviews;
    }

    public void setReviews(List<Review> reviews) {
        this.reviews = reviews;
    }

    public List<String> getImages() {
        return images;
    }

    public void setImages(List<String> images) {
        this.images = images;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }


    @Override
    public String toString() {
        return "Product{" +
                "idProduct=" + idProduct +
                ", productName='" + productName + '\'' +
                ", slag='" + slag + '\'' +
                ", description='" + description + '\'' +
                ", date='" + date + '\'' +
                ", generalProductImage='" + generalProductImage + '\'' +
                ", images=" + images +
                '}';
    }
}
