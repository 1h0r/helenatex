<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@include file="fragments/header_link.jsp"%>
<link rel="stylesheet" href="css/main.css">

</head>
<%@include file="fragments/header.jsp"%>

<main class="production">
    <div class="container">
        <div class="row">
            <div class="col-9">
                <section class="show-product">
                    <div id="product-image">


                        <img src="${product.generalProductImage}" width="410px" height="auto" onclick="openModal(0)" class="product-image-item">

                        <div class="cover-product-image">
                            <%--<c:forEach items="${product}" var="prod">--%>

                            <%--<img src="${prod.images}" onclick="openModal()" class="product-image-item" alt="1">--%>
                            <%--</c:forEach>--%>
                        </div>
                        <div id="imageNav">
                            <a class="i-prev" onclick="prevImg()">&#10094;</a>
                            <a class="i-next" onclick="nextImg()">&#10095;</a>
                        </div>
                    </div>
                    <div id="imageSlider" class="modal">
                        <span class="close" onclick="closeModal()">&times;</span>
                        <div class="modal-content">
                            <div class="hiddenSlide">
                                <div class="numbertext">1</div>
                                <img src="http://lorempixel.com/800/600" style="width:100%">
                            </div>

                    </div>
                    <div class="product-desc">
                        <h1>${product.productName}</h1>
                        <p>Category: <a href="/category-${product.category.idCategory}">${product.category}</a></p>
                        <p>${product.description}</p>
                    </div>

                    <div class="other-products">
                        <h2>Продукти з категорії ${product.category.categoryName}</h2>
                        <div class="products-list">

                            <div class="product grid"><a href="./product.html">
                                <img src="http://lorempixel.com/m/265/265/" alt="">
                                <h3>Title product</h3>
                            </a></div>


                                <div class="product grid"><a href="/product-{idProduct}">
                                    <img src="http://lorempixel.com/m/265/265/" alt="">
                                    <h3>Title product</h3>
                                </a></div>

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

<script>
    let slides = document.querySelectorAll('#imageSlider .hiddenSlide'),
        currentSlide = 0;
    function openModal(n) {
        document.getElementById('imageSlider').style.display = "block";
        showSlides(currentSlide = n);
    }
    function closeModal() {
        document.getElementById('imageSlider').style.display = "none";
        slides.forEach(slide => {
            slide.className === 'visibleSlide' ? slide.className = 'hiddenSlide' : '';
        })
    }
    function showSlides(n) {
        slides[currentSlide].className = 'hiddenSlide';
        currentSlide = (n + slides.length) % slides.length;
        slides[currentSlide].className = 'visibleSlide';
    }
    function prevSlide() {
        showSlides(currentSlide - 1);
    }
    function nextSlide() {
        showSlides(currentSlide + 1);
    }
    document.addEventListener('keydown', e => {
        if (document.getElementById('imageSlider').style.display === "block") {
            switch (e.key) {
                case 'ArrowLeft':
                    prevSlide();
                    break;
                case 'ArrowRight':
                    nextSlide();
                    break;
                case 'Escape':
                    closeModal();
                    break;
            }
        }
    })
    let image = document.querySelectorAll('.cover-product-image img'),
        start = 0,
        end = 3;
    function prevImg() {
        if (start === 0) return;
        start--;
        image[end].style.display = "none";
        image[start].style.display = "block";
        end--;
    }
    function nextImg() {
        if (end === image.length - 1) return;
        end++;
        image[start].style.display = "none";
        image[end].style.display = "block";
        start++;
    }
</script>

<%@include file="fragments/footer.jsp"%>