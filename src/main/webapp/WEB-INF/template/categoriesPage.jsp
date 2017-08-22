<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@include file="fragments/header_link.jsp" %>
<link rel="stylesheet" href="css/main.css">

</head>
<%@include file="fragments/header.jsp" %>


<main class="production">
    <div class="container">
        <div class="row">
            <div class="col-9">
                <section class="show-products">
                    <h2>Category name</h2>
                    <div class="category-desc">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt eaque rerum vitae maiores
                            recusandae amet
                            consequuntur corporis quae odit unde quibusdam, eum sequi incidunt, commodi excepturi,
                            sapiente! Aperiam
                            dolorum, repellendus.</p>
                        <p>Laboriosam nostrum neque, harum tempora eveniet maxime repellendus, molestiae culpa ut quidem
                            commodi quia
                            fugit iure vel distinctio ad nulla quaerat mollitia adipisci in quibusdam veritatis quasi
                            delectus odit?
                            Officia!
                        </p>
                    </div>
                    <div class="products-list">
                        <!-- (.product.grid>a[#]>img[https://placehold.it/265x265]+h3{Title product})*12 -->
                        <div class="product grid"><a href="./product.html">
                            <img src="https://placehold.it/265x265" alt="">
                            <h3>Title product</h3>
                        </a></div>
                        <div class="product grid"><a href="./product.html">
                            <img src="https://placehold.it/265x265" alt="">
                            <h3>Title product</h3>
                        </a></div>
                        <div class="product grid"><a href="./product.html">
                            <img src="https://placehold.it/265x265" alt="">
                            <h3>Title product</h3>
                        </a></div>
                        <div class="product grid"><a href="./product.html">
                            <img src="https://placehold.it/265x265" alt="">
                            <h3>Title product</h3>
                        </a></div>
                        <div class="product grid"><a href="./product.html">
                            <img src="https://placehold.it/265x265" alt="">
                            <h3>Title product</h3>
                        </a></div>
                        <div class="product grid"><a href="./product.html">
                            <img src="https://placehold.it/265x265" alt="">
                            <h3>Title product</h3>
                        </a></div>
                        <div class="product grid"><a href="./product.html">
                            <img src="https://placehold.it/265x265" alt="">
                            <h3>Title product</h3>
                        </a></div>
                        <div class="product grid"><a href="./product.html">
                            <img src="https://placehold.it/265x265" alt="">
                            <h3>Title product</h3>
                        </a></div>
                        <div class="product grid"><a href="./product.html">
                            <img src="https://placehold.it/265x265" alt="">
                            <h3>Title product</h3>
                        </a></div>
                        <div class="product grid"><a href="./product.html">
                            <img src="https://placehold.it/265x265" alt="">
                            <h3>Title product</h3>
                        </a></div>
                        <div class="product grid"><a href="./product.html">
                            <img src="https://placehold.it/265x265" alt="">
                            <h3>Title product</h3>
                        </a></div>
                        <div class="product grid"><a href="./product.html">
                            <img src="https://placehold.it/265x265" alt="">
                            <h3>Title product</h3>
                        </a></div>
                    </div>
                </section>
            </div>
            <div class="col-3">
                <section class="show-categories">
                    <h2>Категорії</h2>
                    <ul class="category-list">
                        <li><a href="./products.html">Item1</a></li>
                        <li><a href="./products.html">Item2</a>
                            <ul>
                                <li><a href="./products.html">Item4</a></li>
                            </ul>
                            <ul>
                                <li><a href="./products.html">Item5</a></li>
                            </ul>
                            <ul>
                                <li><a href="./products.html">Item6</a></li>
                            </ul>
                        </li>
                        <li><a href="./products.html">Item3</a></li>
                        <li><a href="./products.html">Item4</a></li>
                    </ul>
                </section>
            </div>
        </div>
    </div>
</main>

<%@include file="fragments/footer.jsp"%>