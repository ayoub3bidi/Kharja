<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="https://cdn.countryflags.com/thumbs/tunisia/flag-round-250.png" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>Kharja</title>
</head>

<body>

    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <!-- Brand -->
        <a class="navbar-brand" href="#">Kharja.tn</a>

        <!-- Toggler/collapsibe Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar links -->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">

            <form class="form-inline" action="">
                <input class="form-control mr-sm-2" type="text" placeholder="Search">
            </form>
        </div>
    </nav>
    <br>
    <div class="container-fluid">
        <div class="row">
            <c:forEach items="${ lieux }" var="lieu">
            	<c:if test="NLieu=${lieu.idLieuTouristique}">
            		<div class="col-md-5">
                <img style="border-radius: 5px;" src="${ lieu.img_Lieu }">
            </div>

            <div class="col-md-7">

                <h3 class="display-4"><c:out value="${lieu.Nom_Lieu}"></c:out></h3>
                <br>
                <br>

                <p><c:out value="${lieu.Description_Lieu}"></c:out></p>
                <div>
                    <label for="exampleFormControlInput1" class="form-label">Ratez sur 5 étoiles</label>
                    <input type="number" class="form-control" max="5" min="1">
                </div>
            </div>
            	</c:if>
            </c:forEach>
        </div>
        <br>
        <form>
            <div>
                <div class="col form-group">
                    <label for="exampleFormControlInput1" class="form-label">Prenom</label>
                    <input type="text" class="form-control" placeholder="First name" aria-label="First name">
                </div>
                <div class="col form-group">
                    <label for="exampleFormControlInput1" class="form-label">Nom</label>
                    <input type="text" class="form-control" placeholder="Last name" aria-label="Last name">
                </div>
                <div class="mb-3 form-group">
                    <label for="exampleFormControlInput1" class="form-label">Email address</label>
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                </div>
                <div class="mb-3 form-group">
                    <label for="exampleFormControlTextarea1" class="form-label">Commentaire</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3">
                    <button type="button" class="btn btn-outline-secondary">Confirmer</button>
                    <button type="button" class="btn btn-outline-secondary">Annuler</button>
                </div>
            </div>
        </form>
        <br>
    </div>

    <footer class="py-5">
        <div class="container">
            <div class=" text-center text-muted">Copyright © 2021 | Kharja.tn</div>
        </div>
    </footer>
</body>

</html>