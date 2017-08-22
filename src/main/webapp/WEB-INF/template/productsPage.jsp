<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <h2>Продукція</h2>
                    <div class="products-list" id="products">

                        <c:forEach items="${products}" var="product">
                            <div class="product grid"><a href="product-${product.idProduct}">
                                <img src="${product.generalProductImage}" width="265px" height="265px"
                                     alt="${product.productName}">
                                <h3>${product.productName}</h3>
                            </a></div>

                        </c:forEach>
                        <c:if test="${products==null}">
                            <h2>Ваш каталог порожній</h2>
                        </c:if>
                    </div>
                </section>
            </div>
            <div class="col-3">
                <section class="show-categories">
                    <h2>Категорії</h2>
                    <ul class="category-list">
                        <c:forEach items="${categories}" var="category">
                            <li><a href="/category-${category.idCategory}">${category.categoryName}</a>
                            <c:if test="${category.subCategoryName!=null}">

                                <ul>
                                    <li><a href="/category-${category.idCategory}">${category.subCategoryName}</a></li>
                                </ul>
                            </c:if>
                            </li>

                        </c:forEach>
                    </ul>

                </section>
            </div>
        </div>
    </div>
</main>

<%--<script >--%>
<%--function nothingFound() {--%>
<%--$('#products').empty();--%>
<%--$('#products').html('<h1 class="text-center text-danger">Nothing Found!</h>');--%>
<%--}--%>
<%--</script>--%>
<%@include file="fragments/footer.jsp" %>