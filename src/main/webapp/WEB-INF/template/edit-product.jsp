<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="fragments/header_link.jsp"%>
<link rel="stylesheet" href="../../css/admin.css">
<script src='https://cloud.tinymce.com/stable/tinymce.min.js'></script>
<script>
    tinymce.init({
        selector: '#form-description'
    });
</script>
</head>


<body>
<header class="container-fluid">
    <div class="dashboard">
        <a href="/" class="link visit-site">Відвідати сайт</a>
        <a href="/logout" class="link exit">Вийти</a>
    </div>
</header>
<main class="container-fluid">

    <div class="navbar">
        <ul>
            <li><a href="/admin">Майстерня</a></li>
            <li><a href="/admin/categories">Категорії</a></li>
            <li><a href="/admin/products">Товари</a></li>
        </ul>
    </div>

    <div class="viev scroll">
        <h2>Товари</h2>
        <div class="block-content">
            <div class="add-form w100">
                <h3>Редагувати товар</h3>

                <form id="add-product" action="/admin/products/save" method="post" enctype="multipart/form-data">
                    <div class="cover">
                        <label for="form-name">Назва</label>
                        <input class="need" type="text" id="form-name" name="productName" value="${product.productName}">
                    </div>
                    <div class="cover">
                        <label for="form-slag">Слаґ</label>
                        <input type="text" id="form-slag" name="slag" value="${product.slag}">
                    </div>
                    <div class="cover">
                        <label for="swich-category">Категорія</label>
                        <select id="swich-category" class="need" name="category" >
                            <c:forEach items="${category}" var="categoryItem" >
                                <option value="${categoryItem.idCategory}">${categoryItem.categoryName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="cover">
                        <label for="form-description">Опис</label>
                        <textarea class="need" id="form-description" name="description" value="${product.description}"></textarea>
                    </div>
                    <div class="cover">
                        <div class="cover-fluid">
                            <label for="addMainImage" class="button add-image">Вибрати головне зображення</label>
                            <input style="display: none" type="file" id="addMainImage" accept="image/jpeg,image/png" name="generalProductImage" value="${product.generalProductImage}">
                            <span id="listMainImagesFile"></span>
                        </div>
                        <div class="cover-fluid">
                            <label for="addImage" class="button add-image">Вибрати зображення в галерею</label>
                            <input multiple style="display: none" type="file" id="addImage" accept="image/jpeg,image/png"
                                   name="images">
                            <span id="listImagesFile"></span>
                        </div>
                    </div>
                    <input type="hidden"
                           name="${_csrf.parameterName}"
                           value="${_csrf.token}"/>

                    <div class="cover">
                        <input type="submit" id="submitForm" class="button" value="Зберегти зміни">
                        <a href="/admin/products" id="cancel-button" class="button cancel-button">Скасувати</a>
                    </div>
                </form>
            </div>

        </div>
    </div>

</main>


<%@include file="../template/fragments/footer_admin.jsp"%>
