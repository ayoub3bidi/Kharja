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
    <style></style>
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
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h3 class="display-4">Bienvenue chez Karja.tn!<br>Votre site officiel pour découvrir votre belle pays!</h3>
                <br>
                <p>Tunis, Monastir, Sousse mais aussi Hammamet et Nabeul offrent aussi de belles plages. Attention
                    cependant à l'énorme concentration hôtelière dans ces deux dernières villes, considérées comme les
                    plus denses de la côte tunisienne.
                    Afin de recevoir un tourisme de masse, la capacité d'hôtels en Tunisie a fortement augmenté au cours
                    de ces dernières années et s'est accompagnée d'une diversification de services à l'image par exemple
                    de la thalassothérapie.</p>
                
                <a href="/Region/?Nregion=1" ><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/4e/62/2e/a-few-days-in-bizerte.jpg?w=1000&h=-1&s=1" alt="Bizerte"></a>
                <a href="/Region/?Nregion=2" ><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://d1bvpoagx8hqbg.cloudfront.net/originals/experience-tunis-tunisia-emna-f4ce98e114edd011b59720ab62c14f20.jpg" alt="Tunis"></a>
                <a href="/Region/?Nregion=3" ><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://www.tunisienumerique.com/wp-content/uploads/2019/06/ariana-1.jpg" alt="Ariana"></a>
                <a href="/Region/?Nregion=4" ><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://st.hzcdn.com/fimgs/ad81cb7a0e5cfa3e_1681-w383-h207-b0-p0--contemporain-photos.jpg" alt="Manouba"></a>
                <a href="/Region/?Nregion=5" ><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://upload.wikimedia.org/wikipedia/commons/6/67/Sidi_Ben_Arous_street.jpg" alt="Ben arous"></a>
                <a href="/Region/?Nregion=6" ><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://lepetitjournal.com/sites/default/files/styles/main_article/public/2019-11/temple%20des%20eaux%20de%20Zaghouan.jpg?itok=eALndWaZ" alt="Zaghouan"></a>
                <a href="/Region/?Nregion=7" ><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/a1/08/91/nabeul.jpg?w=1000&h=600&s=1" alt="Nabeul"></a>
                <a href="/Region/?Nregion=8" ><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://www.tunisieautrement.com/assets/img/nordtunisien/nord1.jpg" alt="Jendouba"></a>
                <a href="/Region/?Nregion=9" ><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/10/a9/1f/beja.jpg?w=1000&h=-1&s=1" alt="Béja"></a>
                <a href="/Region/?Nregion=10"><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://lp-cms-production.imgix.net/2019-06/006252830e09c46ee79cd79c14546e87-el-kef.jpg" alt="Le Kef"></a>
                <a href="/Region/?Nregion=11"><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="http://www.webdo.tn/wp-content/uploads/2019/04/kesra.jpg" alt="Siliana"></a>
                <a href="/Region/?Nregion=12"><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/30/39/b8/cartoline-da-sousse-tunisia.jpg?w=1000&h=600&s=1" alt="Sousse"></a>
                <a href="/Region/?Nregion=13"><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://cdn.britannica.com/82/84882-050-DBC8960D/dating-Ribat-ce-Tunisia-Monastir.jpg" alt="Monastir"></a>
                <a href="/Region/?Nregion=14"><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://lepetitjournal.com/sites/default/files/styles/main_article/public/2020-07/MAHDIA.jpg?itok=EFJrY-Ml" alt="Mahdia"></a>
                <a href="/Region/?Nregion=15"><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://upload.wikimedia.org/wikipedia/commons/2/2b/Vue_a%C3%A9rienne_rapproch%C3%A9e_de_la_Grande_Mosqu%C3%A9e_de_Kairouan.jpg" alt="Kairouan"></a>
                <a href="/Region/?Nregion=16"><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://i.pinimg.com/originals/91/58/c4/9158c46a319001237780c2e5ec64ab4a.jpg" alt="Kasserine"></a>
                <a href="/Region/?Nregion=17"><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://i2.wp.com/www.leconomistemaghrebin.com/wp-content/uploads/2019/08/sidi-bouzid-.jpg?fit=660%2C405&ssl=1" alt="Sidi bouZid"></a>
                <a href="/Region/?Nregion=18"><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://www.leaders.com.tn/uploads/content/thumbnails/14627276591_content.jpg" alt="Sfax"></a>
                <a href="/Region/?Nregion=19"><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://www.nessma.tv/uploads/news/0624a7a6ee4f57a0975886aa1ad75fcc24.jpg" alt="Gabes"></a>
                <a href="/Region/?Nregion=20"><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://img.ev.mu/images/attractions/3432/960x640/411833.jpg" alt="Mednin"></a>
                <a href="/Region/?Nregion=21"><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://www.voyage-tunisie.info/wp-content/uploads/2017/11/Tataouine-troglodites.jpg" alt="Tataouine"></a>
                <a href="/Region/?Nregion=22"><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="http://www.nachoua.com/Ph2001/Lezard_Rouge.jpg" alt="Gafsa"></a>
                <a href="/Region/?Nregion=23"><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="http://www.webdo.tn/wp-content/uploads/2016/11/tozeur.jpg" alt="Tozeur"></a>
                <a href="/Region/?Nregion=24"><img class="img-fluid" style=" border-radius: 5%;height: auto; width: 400px; padding: 5px;" src="https://i0.wp.com/lapresse.tn/wp-content/uploads/2020/01/kebili-ksar-ghilane.jpg?fit=850%2C491&ssl=1" alt="Kébelli"></a>
            </div>
        </div>
    </div>
    <footer class="py-5">
        <div class="container">
          <div class=" text-center text-muted">Copyright © 2021 | Kharja.tn</div>
        </div>
      </footer>
</body>

</html>