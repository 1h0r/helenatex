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
                    <h2>${category.categoryName}</h2>
                    <div class="category-desc">
                       <p>${category.descriptionCategory}</p>
                    </div>
                    <div class="products-list">
                        <%--вивести продукти даної категорії?--%>

                        <c:forEach items="${category.products}" var="category">
                        <div class="product grid"><a href="./product.html">
                            <img src="https://placehold.it/265x265" alt="">
                            <h3>Title product</h3>
                        </a></div>
                        </c:forEach>
                        <%--????--%>
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

<%@include file="fragments/footer.jsp"%>