<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="fragments/header_link.jsp"%>
<link rel="stylesheet" href="../css/admin.css">
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
        <h2>Майстерня</h2>
        <div class="block-content">
            <p>Provident temporibus, beatae illo officiis quos nesciunt fuga qui sunt vitae nulla voluptatum architecto non vero
                maxime, dolorem tempore facere laborum ex amet consectetur cupiditate deserunt. Voluptatem expedita eos nam odit
                autem animi modi iste nesciunt at numquam, optio atque molestias, itaque fugit laudantium sed asperiores enim
                reprehenderit quis praesentium.</p>
        </div>
    </div>

</main>


<%@include file="../template/fragments/footer_admin.jsp"%>
