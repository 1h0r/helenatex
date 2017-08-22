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
                    <h2>Продукція</h2>
                    <div class="products-list">
                        <!-- (.product.grid>a[#]>img[https://placehold.it/265x265]+h3{Title product})*12 -->
                       <c:forEach items="${products}" var="product">
                        <div class="product grid"><a href="product-${product.idProduct}">
                            <img src="${product.images[0]}" width="265px" height="265px" alt="${product.productName}">
                            <h3>${product.productName}</h3>
                        </a></div>

                       </c:forEach>


                    </div>
                </section>
            </div>
            <div class="col-3">
                <section class="show-categories">
                    <h2>Категорії</h2>
                    <ul class="category-list">
                        <li><a href="#">Item1</a></li>
                        <li><a href="#">Item2</a>
                            <ul>
                                <li><a href="#">Item4</a></li>
                            </ul>
                            <ul>
                                <li><a href="#">Item5</a></li>
                            </ul>
                            <ul>
                                <li><a href="#">Item6</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Item3</a></li>
                        <li><a href="#">Item4</a></li>

                        <c:forEach items="" var="prod">

                        </c:forEach>

                    </ul>
                </section>
            </div>
        </div>
    </div>

</main>




<%@include file="../template/fragments/footer.jsp"%>