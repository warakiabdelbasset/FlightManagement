<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="First_Page.aspx.cs" Inherits="Flight_Managment.First_Page.First_Page.First_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Parallax Template - Materialize</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    
</head>
<body>
    <form runat="server">
  <nav class="white" role="navigation">
    <div class="nav-wrapper container">
      <a id="logo-container" href="First_Page.aspx" class="brand-logo">TRAVEL</a>
      <ul class="right hide-on-med-and-down">
        <li><a href="~/log.aspx">Sign in</a></li>
      </ul>

      <ul id="nav-mobile" class="sidenav">
        <li><a href="log.aspx">Sign in</a></li>
      </ul>
      <a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons">menu</i></a>
    </div>
  </nav>

  <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
      <div class="container">
        <br><br>
        <h1 class=" center  text-lighten-2" style="color:white; ">Feeling the difference is a Symbol of Freedom </h1>
        <div class="row center">
          <h5 class="header col s12 light"></h5>
        </div>

        <div class="row center">
       <a href="../../log.aspx"> <input id="Button2" type="button"  value="Book your plane"  class="btn-large waves-effect waves-light teal lighten-1"/></a>
          
        </div>
        <br><br>

      </div>
    </div>
    <div class="parallax"><img src="1.jpg" alt="Unsplashed background img 1"></div>
  </div>


  <div class="container">
    <div class="section">

      <!--   Icon Section   -->
      <div class="row">
        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="material-icons">flash_on</i></h2>
            <h5 class="center">Recherchez un vol</h5>

            <p class="light">
Choisissez la destination et les dates de votre prochain voyage. Veuillez également indiquer si vous souhaitez un vol aller simple ou aller-retour ainsi que le nombre de voyageurs.
</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="material-icons">group</i></h2>
            <h5 class="center">Consultez les résultats</h5>

            <p class="light">
Notre comparateur de vol obtient les prix des billets d'avion de centaines de sites web et vous montre les moins chers. Si vous voulez vous pouvez filtrer les résultats selon plusieurs critères pour choisir celui qui vous convient le mieux.
</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="material-icons">settings</i></h2>
            <h5 class="center">Volez !</h5>

            <p class="light">
Lorsque vous choisissez un vol, vous serez redirigé vers le site web où vous retrouverez votre offre de voyage. De cette façon, vous pourrez réserver votre vol au meilleur prix.
</p>
          </div>
        </div>
      </div>

    </div>
  </div>


  <div class="parallax-container valign-wrapper">
    <div class="section no-pad-bot">
      <div class="container">
        <div class="row center">
          <h5 class="header col s12 light">A modern responsive front-end framework based on Material Design</h5>
        </div>
      </div>
    </div>
    <div class="parallax"><img src="3.jpg" alt="Unsplashed background img 2"></div>
  </div>

  <div class="container">
    <div class="section">

      <div class="row">
        <div class="col s12 center">
          <h3><i class="mdi-content-send brown-text"></i></h3>
          <h4>Contact Us</h4>
        </div>
      </div>

    </div>
  </div>


  <div class="parallax-container valign-wrapper">
    <div class="section no-pad-bot">
      <div class="container">
        <div class="row center">
          <h5 class="header col s12 light">A modern responsive front-end framework based on Material Design</h5>
        </div>
      </div>
    </div>
    <div class="parallax"><img src="background2.jpg" alt="Unsplashed background img 3"></div>
  </div>

  <footer class="page-footer teal">
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="white-text">Company Bio</h5>
          <p class="grey-text text-lighten-4">We are a team of college students working on this project like it's our full time job. Any amount would help support and continue development on this project and is greatly appreciated.</p>


        </div>
        <div class="col l3 s12">
          <h5 class="white-text">Settings</h5>
          <ul>
            <li><a class="white-text" href="~/">Sign In</a></li>

          </ul>
        </div>
    
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
      </div>
    </div>
  </footer>
    </form>

  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>

  </body>
</html>