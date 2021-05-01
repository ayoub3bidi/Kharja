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
         
          <form class="form-inline" action="/action_page.php">
            <input class="form-control mr-sm-2" type="text" placeholder="Search">
          </form>
        </div>
      </nav>
       <br>
       <c:forEach items="${ regions }" var="region">
       		<c:if test="Nregion=${region.idRegion}">
       			<div class="container-fluid">
           		<div class="row">
               		<div class="col-lg-5 col-xl-5 col-md-12 col-sm-12">
                    	<img src="${region.imgRegion}" style="padding: 4px; border-radius: 5%;">
                	</div>
                	<div class="col-lg-7 col-xl-7 col-md-12 col-sm-12">
                    <h1 class="display-4"><c:out value="${region.Nom_Region}"></c:out></h1>
                        <br>
                        <p><c:out value="${region.Description_Region}"></c:out></p>
                	</div>
           		</div>
           <br>
           <br>
           <div class="row">
            <c:forEach items="${ lieux }" var="lieu">
               <c:if test="Nregion=${ lieu.idRegion}">
               		<div class="col-md-2">
                    <a href="/LieuTouristique/?NLieu=${lieu.idLieuTouristique}"><img src="${ lieu.img_Lieu }" class="rounded-circle" style="width: 85%;height: 100%;padding: 4px;"></a>
                	</div>
               </c:if>
               </c:forEach>
           </div>
        	</div>
       		</c:if>
       </c:forEach>
        <footer class="py-5">
            <div class="container">
              <div class=" text-center text-muted">Copyright © 2021 | Kharja.tn</div>
            </div>
          </footer>     
</body>

</html>