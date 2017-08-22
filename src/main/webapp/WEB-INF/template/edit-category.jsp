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

    <form id="add-category" action="/admin/categories/save" method="post" enctype="multipart/form-data">
        <div class="cover">
            <label for="form-name">Назва</label>
            <input class="need" type="text" id="form-name" name="categoryName" value="${category.categoryName}">
        </div>
        <div class="cover">
            <label for="form-slag">Слаґ</label>
            <input type="text" id="form-slag" name="slag" value="${category.slag}">
        </div>
        <div class="cover" id="category-parrent">
            <label for="category-parrent">Предок</label>
            <select name="parrent" class="need">
                <option value="-1">Немає</option>
                <c:forEach items="${categories}" var="category">
                    <option value="${category.idCategory}">${category.categoryName}</option>
                </c:forEach>

            </select>
        </div>
        <div class="cover">
            <label for="form-description">Опис</label>
            <textarea class="need" id="form-description" name="descriptionCategory" value="${category.descriptionCategory}"></textarea>
        </div>
        <div class="cover">
            <label for="addImage" class="button add-image">Вибрати зображення</label>
            <input style="display: none" type="file" id="addImage" accept="image/jpeg,image/png" name="categoryImage" value="${category.categoryImage}">
            <span id="listImagesFile"></span>
        </div>
        <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>



        <div class="cover">
        <input type="submit" id="submitForm" class="button" value="Зберегти зміни">
            <a href="/admin/categories" id="cancel-button" class="button cancel-button">Скасувати</a>
    </div>

<%@include file="../template/fragments/footer_admin.jsp"%>
