<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="../template/fragments/header_link.jsp"%>
<link rel="stylesheet" href="css/admin.css">
</head>
<header class="container-fluid">
    <div class="dashboard">
        <a href="/" class="link visit-site">Відвідати сайт</a>
        <a href="/logout" class="link exit">Вийти</a>
    </div>
</header>
<main class="container-fluid">

    <div class="navbar">
        <ul>
            <li class="Workshop" onclick="changeClass(className)">Майстерня</li>
            <li class="Pages" onclick="changeClass(className)">Сторінки</li>
            <li class="Categories" onclick="changeClass(className)">Категорії</li>
            <li class="Products" onclick="changeClass(className)">Товари</li>
            <li class="Media" onclick="changeClass(className)">Медіафайли</li>
            <li class="Settings" onclick="changeClass(className)">Налаштування</li>
        </ul>
    </div>

    <div class="viev">
        <div id="Workshop" class="block visible">
            <h2>Майстерня</h2>
            <div class="block-content">
                <p>Provident temporibus, beatae illo officiis quos nesciunt fuga qui sunt vitae nulla voluptatum architecto non vero
                    maxime, dolorem tempore facere laborum ex amet consectetur cupiditate deserunt. Voluptatem expedita eos nam odit
                    autem animi modi iste nesciunt at numquam, optio atque molestias, itaque fugit laudantium sed asperiores enim
                    reprehenderit quis praesentium.</p>
            </div>
        </div>
        <div id="Pages" class="block">
            <h2>Сторінки</h2>
            <div class="block-content">
                <table class="table page-table">
                    <thead>
                    <tr>
                        <td>Назва</td>
                        <td>Дата</td>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- (tr>(td>{Name$})+(td{0$.07.2017}))*5  -->

                    <tr>
                        <td>Name1</td>
                        <td>05.07.2017</td>
                    </tr>
                    <tr>
                        <td>Name2</td>
                        <td>01.07.2017</td>
                    </tr>
                    <tr>
                        <td>Name3</td>
                        <td>07.07.2017</td>
                    </tr>
                    <tr>
                        <td>Name4</td>
                        <td>09.07.2017</td>
                    </tr>
                    <tr>
                        <td>Name5</td>
                        <td>15.07.2017</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="Categories" class="block">
            <h2>Категорії</h2>
            <div class="block-content">
                <div class="add-category">
                    <h3>Додати нову категорію</h3>
                    <form id="add-category" action="admin/addCategory" method="post" enctype="multipart/form-data">
                        <div class="category-cover" >
                            <label for="category-name">Назва</label>
                            <input class="cat-must-be" type="text" id="category-name" name="categoryName">
                        </div>
                        <div class="category-cover">
                            <label for="category-slag">Слаґ</label>
                            <input type="text" id="category-slag" name="slag">
                        </div>
                        <%--<div class="category-cover">--%>
                            <%--<label id="sub-category-label" for="its-sub-category">Зберегти як підкатегорію</label>--%>
                            <%--<input id="its-sub-category" type="checkbox"  name="check" onchange="show()">--%>
                        <%--</div>--%>
                        <div class="category-cover" id="category-parrent">
                            <label for="category-parrent">Предок</label>
                            <select name="parrent" class="cat-must-be">
                                <option value="-1">Немає</option>
                                <c:forEach items="${category}" var="categoryItem">
                                    <option value="${categoryItem.idCategory}">${categoryItem.categoryName}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="category-cover">
                            <label for="category-description">Опис</label>
                            <textarea class="cat-must-be" id="category-description" cols="20" rows="5" style="height:100px;" name="descriptionCategory"></textarea>
                        </div>

                        <div class="category-cover">

                            <input type="file"  id="category-image" name="categoryImage">
                        </div>
                        <input type="hidden"
                               name="${_csrf.parameterName}"
                               value="${_csrf.token}"/>

                        <div class="category-cover">
                            <input type="submit" id="add-category-button" class="button" value="Додати нову категорію">
                        </div>
                    </form>
                </div>
                <div class="list-category">
                    <h3>Список категорій</h3>
                    <table class="table page-table">
                        <thead>
                        <tr>
                            <td>Назва</td>
                            <td>Слаґ</td>
                            <td>Предок</td>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${category}" var="categoryItem">
                            <tr>
                                <td>${categoryItem.categoryName}</td>
                                <td>${categoryItem.slag}</td>
                                <td>${categoryItem.subCategoryName}</td>
                                <%--<td>Немає</td>--%>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div id="Products" class="block">
            <h2>Товари</h2>
            <div class="block-content">
                <div class="add-product">
                    <h3>Додати новий товар</h3>
                    <form id="add-product" action="admin/addProduct" method="post" enctype="multipart/form-data">
                        <div class="category-cover">
                            <label for="product-name">Назва</label>
                            <input class="cat-must-be" type="text" id="product-name" name="productName">
                        </div>
                        <div class="category-cover">
                            <label for="product-slag">Слаґ</label>
                            <input type="text" id="product-slag" name="slag">
                        </div>
                        <div class="category-cover">
                            <label for="swich-category">Категорія</label>
                            <select id="swich-category" class="cat-must-be" name="category">
                                <c:forEach items="${category}" var="categoryItem">
                                    <option value="${categoryItem.idCategory}">${categoryItem.categoryName}</option>
                                </c:forEach>
                            </select>
                        </div>


                        <div class="category-cover">
                            <label for="product-description">Опис</label>
                            <textarea class="cat-must-be" name="description" id="product-description" cols="20" rows="5" style="height:100px;"></textarea>
                        </div>
                        <div class="category-cover">
                            <label for="product-image">Зображення</label>
                            <input type="file" multiple name="image" id="product-image" placeholder="image">
                        </div>


                        <input type="hidden"
                               name="${_csrf.parameterName}"
                               value="${_csrf.token}"/>

                        <div class="category-cover">
                            <input type="submit" id="add-product-button" class="button" value="Додати новий товар">
                        </div>
                    </form>
                </div>
                <div class="list-product">
                    <h3>Список товарів</h3>
                    <table class="table page-table">
                        <thead>
                        <tr>
                            <td>Назва</td>
                            <td>Категорії</td>
                            <td>Дата</td>
                        </tr>
                        </thead>
                        <tbody>

                        <c:forEach items="${products}" var="product">
                            <tr>
                                <td>${product.productName}</td>
                                <td>${product.category.categoryName}</td>
                                <td>${product.date}</td>
                                    <%--<td>Немає</td>--%>
                            </tr>
                        </c:forEach>



                        </tbody>
                    </table>
                </div>

            </div>
        </div>
        <div id="Media" class="block">
            <h2>Медіа</h2>
            <div class="block-content">

            </div>
        </div>
        <div id="Settings" class="block">
            <h2>Налаштування</h2>
            <div class="block-content">

            </div>
        </div>

    </div>

</main>


<%@include file="../template/fragments/footer_admin.jsp"%>
