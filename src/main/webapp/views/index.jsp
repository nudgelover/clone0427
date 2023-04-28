<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <style>
        /* Set black background color, white text and some padding */
        body {
            font-size: medium;
        }

        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }
    </style>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02"
                aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarColor02">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Home
                        <span class="visually-hidden">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Features</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Pricing</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button"
                       aria-haspopup="true" aria-expanded="false">Dropdown</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Separated link</a>
                    </div>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-sm-2" type="search" placeholder="Search">
                <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

<%--&lt;%&ndash;offcanvas 적용해보기&ndash;%&gt;--%>
<%--<a class="btn btn-primary" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button"--%>
<%--   aria-controls="offcanvasExample">--%>
<%--    Link with href--%>
<%--</a>--%>
<%--<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample"--%>
<%--        aria-controls="offcanvasExample">--%>
<%--    Button with data-bs-target--%>
<%--</button>--%>
<%--<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">--%>
<%--    <div class="offcanvas-header">--%>
<%--        <h5 class="offcanvas-title" id="offcanvasExampleLabel">Offcanvas</h5>--%>
<%--        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>--%>
<%--    </div>--%>
<%--    <div class="offcanvas-body">--%>
<%--        <div>--%>
<%--            Some text as placeholder. In real life you can have the elements you have chosen. Like, text, images, lists,--%>
<%--            etc.--%>
<%--        </div>--%>
<%--        <div class="dropdown mt-3">--%>
<%--            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"--%>
<%--                    data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--                Dropdown button--%>
<%--            </button>--%>
<%--            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="">--%>
<%--                <li><a class="dropdown-item" href="#">Action</a></li>--%>
<%--                <li><a class="dropdown-item" href="#">Another action</a></li>--%>
<%--                <li><a class="dropdown-item" href="#">Something else here</a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<div class="container text-center">
    <div class="row">
        <%-- Left menu--%>
        <c:choose>
            <c:when test="${left==null}">
                <jsp:include page="left.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="${left}.jsp"/>
            </c:otherwise>
        </c:choose>
        <%--Left menu end--%>

        <%--   Center start--%>
        <div class="col-sm-7" style="padding: 20px">
            <c:choose>
                <c:when test="${center==null}">
                    <jsp:include page="center.jsp"/>
                </c:when>
                <c:otherwise>
                    <jsp:include page="${center}.jsp"/>
                </c:otherwise>
            </c:choose>
        </div>
        <%--   Center end--%>


        <c:choose>
            <c:when test="${right==null}">
                <jsp:include page="right.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="${right}.jsp"/>
            </c:otherwise>
        </c:choose>


    </div>
</div>

<footer class="container-fluid text-center">
    <p>Footer Text</p>
</footer>

</body>
</html>


