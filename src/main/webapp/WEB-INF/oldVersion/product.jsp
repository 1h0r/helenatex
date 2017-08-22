
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@include file="../template/fragments/header_link.jsp"%>
<link rel="stylesheet" href="css/main.css">

</head>
<%@include file="../template/fragments/header.jsp"%>


<main class="production">
    <div class="container">
        <div class="row">
            <div class="col-9">
                <section class="show-product">
                    <div id="product-image">
                        <img src="https://placehold.it/410x410"  data-link="img-b-0" class="product-image-item">
                        <div class="cover-product-image">
                            <img src="https://placehold.it/100x100" data-link="img-b-1" class="product-image-item">
                            <img src="https://placehold.it/100x100" data-link="img-b-2" class="product-image-item">
                            <img src="https://placehold.it/100x100" data-link="img-b-3" class="product-image-item">
                            <img src="https://placehold.it/100x100" data-link="img-b-4" class="product-image-item">
                        </div>
                    </div>



                    <div class="product-desc">
                        <h1>${product.productName}</h1>
                        <p>Category: <a href="category-${category.idCategory}">${category.categoryName}</a></p>
                        <p>
                            ${product.description}
                        </p>
                    </div>
                    <div class="other-products">
                        <h2>Продукти з категорії ${product.category.categoryName}</h2>
                        <div class="products-list">



                            <div class="product grid"><a href="#">
                                <img src="https://placehold.it/265x265" alt="">
                                <h3>Title product</h3>
                            </a></div>


                            <c:forEach items="${category}" var="category" >
                                <div class="product grid"><a href="product-${product.idProduct}">
                                    <img src="${category.product.images[0]}" width="265px" height="265px" alt="${product.productName}">
                                    <h3>${category.product.productName}</h3>
                                </a></div>

                            </c:forEach>

                        </div>

                    </div>

                </section>
            </div>
            <div class="col-3">
                <section class="show-categories">
                    <h2>Категорії</h2>
                    <ul class="category-list">
                        <li><a href="./category.html">Item1</a></li>
                        <li><a href="./category.html">Item2</a>
                            <ul>
                                <li><a href="./category.html">Item4</a></li>
                            </ul>
                            <ul>
                                <li><a href="./category.html">Item5</a></li>
                            </ul>
                            <ul>
                                <li><a href="./category.html">Item6</a></li>
                            </ul>
                        </li>
                        <li><a href="./category.html">Item3</a></li>
                        <li><a href="./category.html">Item4</a></li>
                    </ul>
                </section>
            </div>
        </div>
    </div>

</main>
<%@include file="../template/fragments/footer.jsp"%>





