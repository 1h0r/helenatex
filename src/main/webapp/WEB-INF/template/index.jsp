<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@include file="fragments/header_link.jsp"%>
<link rel="stylesheet" href="css/main.css">

</head>
<%@include file="fragments/header.jsp"%>
<main>
    <div class="category">
        <div class="container">
            <div class="row">
                <c:forEach items="${categories}" var="category" end="3">

                <div class="col-3"><a href="/category-${category.idCategory}">
                    <img src="${category.categoryImage}" width="265px" height="auto" alt="${category.categoryName}">
                    <h3>${category.categoryName}</h3>
                </a></div>
                </c:forEach>

            </div>
        </div>
    </div>
    <div class="main-info">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="info-content">
                        <div class="info-content-item">
                            <div class="col-3"><img src="img/ico.svg"></div>
                            <div class="col-9">
                                <h2>Про нас</h2>
                                <p>Товариство «Гелєнатекс» було створене для комплексного забезпечення швейною фурнітурою виробників одягу,
                                    постелі, меблів, взуття та інших. Наша діяльність охоплює виробництво, гуртову торгівлю та надання послуг.</p>
                                <p>Виробнича діяльність – це повний цикл виготовлення ґудзиків, та виробництво пластикових вішаків для одягу.</p>
                                <p>Ми також займаємося гуртовою торгівлею нитками, стрічками, гумками, текстильними застібками «велкро», якісною
                                    тканиною (джинс, вельвет, плащова тканина)</p>
                                <p>Крім того, ми консультуємо наших клієнтів щодо оптимального для них використання швейної фурнітури і тканин,
                                    а також, при потребі, допомагаємо в усуненні технологічних проблем в процесі шиття.</p>
                                <p>Нашими партнерами є відомі швейні, трикотажні, меблеві підприємства, гуртівні та магазини.</p>
                                <p>Істотна частина наших виробів продається на експорт.</p>
                                <p>Ми прагнемо максимально задовольнити потреби наших клієнтів!</p>
                            </div>
                        </div>
                        <div class="info-content-item">
                            <div class="col-3"> <i class="fa fa-check" aria-hidden="true"></i></div>
                            <div class="col-9">
                                <h2>Пропозиція</h2>
                                <p>Ми пропонуємо нашим партнерам якісний товар, максимально короткі терміни поставки і оптимальні ціни.</p>
                                <p>Ґудзики нашого виробництва можна використати для пошиття стильного одягу, сучасного спецодягу і для військової
                                    уніформи. В нашому асортименті є понад 800 моделей ґудзиків, але, при потребі, за ескізом замовника ми
                                    створимо новий оригінальний фасон, нанесемо на ґудзик логотип або орнамент лазером.</p>
                                <p>Нашим клієнтам ми пропонуємо 30 моделей вішаків, які можуть додатково комплектуватися перекладиною для
                                    штанів,транспортною резинкою, а також пластинкою з логотипом замовника. Для виробництва вішаків ми використовуємо
                                    якісну сировину, в основному, імпортну.</p>
                                <p>Як гуртівня швейної фурнітури ми постійно розширюємо асортимент і наявність товару.</p>
                                <p>Швейні нитки, стрічки, гумки польської фірми «ARIADNA», текстильна застібка «велкро» бельгійського виробника,
                                    фурнітура польських виробників «Альт», «Галмекс», тканина чеської фірми «VELVETA» і багато інших товарів
                                    покликані задовольнити потреби наших клієнтів.</p>
                            </div>
                        </div>
                        <div class="info-content-item">
                            <div class="col-3"><i class="fa fa-handshake-o" aria-hidden="true"></i></div>
                            <div class="col-9">
                                <h2>Співпраця</h2>
                                <p>Співпраця з нашим підприємством дасть Вам такі переваги:</p>
                                <ul>
                                    <li>максимально стислі терміни виготовлення та поставки;</li>
                                    <li>можливість оперативної допоставки;</li>
                                    <li>широкий асортимент і висока якість, котрі забезпечені сучасною технологією, обладнанням і досвідченими
                                        працівниками;
                                    </li>
                                    <li>допомога партнерам в плануванні виробництва і постачання;</li>
                                    <li>консультації по раціональному вибору швейної фурнітури;</li>
                                    <li>послуги по усуненню технологічних проблем в процесі шиття;</li>
                                    <li>особливий підхід до постійних клієнтів.</li>
                                </ul>
                            </div>
                        </div>
                        <div class="info-content-item">
                            <div class="col-3"><i class="fa fa-users" aria-hidden="true"></i></div>
                            <div class="col-9">
                                <h2>Партнери</h2>
                                <p>«ARIADNA» - www.ariadna.com.pl - польська фабрики ниток, яка пропонує асортимент відомих і високо оцінюваних
                                    на вітчизняному та закордонному ринках швейних ниток, стрічок.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="contact">
        <div class="container">
            <div class="row">
                <div class="col-3">
                    <div class="iconbox">
                        <i class="fa fa-map-marker"></i>
                        <h3>Адреса</h3>
                        <p> Україна, Львівська область, Львів, вул. Перфецького 21, оф.48 79053</p>
                    </div>
                </div>
                <div class="col-3">
                    <div class="iconbox">
                        <i class="fa fa-envelope-o"></i>
                        <h3>E-mail</h3>
                        <p>info@helenatex.lviv.ua</p>
                    </div>
                </div>
                <div class="col-3">
                    <div class="iconbox">
                        <i class="fa fa-phone"></i>
                        <h3>Телефони</h3>
                        <p>+380 (32) 264 49 74 <br> +380 (50) 668 79 85 - вішаки, ґудзики <br> +380 (50) 431 33 41 - вішаки, ґудзики
                            <br> +380 (67) 751 17 36 - нитки
                        </p>
                    </div>
                </div>
                <div class="col-3">
                    <div class="iconbox">
                        <i class="fa fa-paper-plane-o"></i>
                        <h3>Доставка</h3>
                        <p>Нова Пошта</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <iframe class="google-map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2574.4771535599175!2d23.985223715232937!3d49.814696540849916!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473ae79e2ff3354d%3A0xb0611ae9d4ac70c6!2z0LLRg9C7LiDQn9C10YDRhNC10YbRjNC60L7Qs9C-LCAyMSwg0JvRjNCy0ZbQsiwg0JvRjNCy0ZbQstGB0YzQutCwINC-0LHQu9Cw0YHRgtGM!5e0!3m2!1suk!2sua!4v1453324537673"
            frameborder="0" style="border:0" allowfullscreen=""></iframe>
</main>

<%@include file="fragments/footer.jsp"%>