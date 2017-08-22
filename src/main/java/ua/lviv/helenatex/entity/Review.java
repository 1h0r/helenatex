package ua.lviv.helenatex.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Review implements Serializable{
    private static final long serialVersionUID = -2463794493903442393L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idReview;

    private String name;
    private String email;
    private String phone;
    private String text;


    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.LAZY)
    private Product product;

    public Review() {
    }

    public Review(String name, String email, String phone, String text) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.text = text;
    }

    public int getIdReview() {
        return idReview;
    }

    public void setIdReview(int idReview) {
        this.idReview = idReview;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }


    @Override
    public String toString() {
        return "Review{" +
                "idReview=" + idReview +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", text='" + text + '\'' +
                '}';
    }
}
