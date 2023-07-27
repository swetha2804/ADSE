<%
if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>ADS-E</title>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat|Ubuntu" rel="stylesheet">

  <!-- CSS Stylesheets -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="css/styles.css">

  <!-- Font Awesome -->
  <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

  <!-- Bootstrap Scripts -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  
</head>

<body>

  <section class="colored-section" id="title"
                   style="padding-bottom: 0px;">

    <div class="container-fluid">

      <!-- Nav Bar -->

      <nav class="navbar navbar-expand-lg navbar-dark">

        <a class="navbar-brand" href="">   <img src="images/tran.png" alt="logo" width="150" >   </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">

          <ul class="navbar-nav ml-auto">
            
            <li class="nav-item">
              <a class="nav-link" href="#cta">Ads-Play</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">upload</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">verification</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="logout">Logout</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" style="color:yellow;" href="#"><b></b> <%=session.getAttribute("name") %></b></a>
            </li>

          </ul>

        </div>
      </nav>



      <!-- Title -->

      <div class="row">

        <div class="col-lg-6">
          <h1 class="big-heading">Introducing Creator Marketing Digitally.</h1>
          <button type="button" class="btn btn-dark btn-lg download-button"><i class="fab fa-apple"></i> Download</button>
          <button type="button" class="btn btn-outline-light btn-lg download-button"><i class="fab fa-google-play"></i> Download</button>
        </div>

        <div class="col-lg-6">
          <img class="title-image" src="images/digitalmarket.png"  alt="iphone-mockup">
        </div>

      </div>

    </div>

  </section>

  <div class="skills"  style="padding-bottom: 50px;" >
    <div class="skill-row" style="width: 50%; margin: 100px auto 100px auto;  text-align:left;">
      <img class="code-img" src="images/ads.png" width="150"alt="python">
      <h3 class="abc">Sponsored ADS</h3>
      <p>
        Advertisements which are given to the digital content creators through direct approach of without involving the platform.</li>
        Platform doesn't get any income from this trade.</li>
    </div>
    <div class="skill-row" style="width: 50%;  margin: 100px auto 100px auto;  text-align: right;" >
      <img class="chilli-img" src="images/ads1.png" width="150"alt="utube">
      <h3>Prepaid ADS</h3>
        Advertisements which are given to the digital content creators by the plaform by direct influence.</li>
        Platform gets a major percentage of money as commision.</li>
      <p></p>
    </div>
  </div>
  <!-- Features -->



  <!-- Testimonials -->

  <section class="colored-section" id="testimonials">

    <div id="testimonial-carousel" class="carousel slide" data-ride="false" data-interval="2000" data-pause="hover" width="500px" >
      <div class="carousel-inner">
        <div class="carousel-item active container-fluid" style="  padding-top: 35px; padding-bottom: 35px;">
          <h2 class="testimonial-text"> Digital creators are waititng to promote your business for less price by having more options </h2>
        </div>
        <div class="carousel-item container-fluid" style="  padding-top: 35px; padding-bottom: 35px;">
          <h2 class="testimonial-text">Streamers,Youtubers,Instagram influencers etc...these creators around you makes the best way to get marketed</h2>
        </div>
      </div>
      <a class="carousel-control-prev" href="#testimonial-carousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
      </a>
      <a class="carousel-control-next" href="#testimonial-carousel" role="button" data-slide="next">
    <span class="carousel-control-next-icon"></span>
      </a>
    </div>

  </section>


  <!-- Press -->

  <section class="colored-section" id="press" style="padding-bottom: 0px;">
    <img class="press-logo" style=" margin-right: 50px;" src="images/download__3_-removebg-preview.png" alt="Youtube -logo">
    <img class="press-logo" src="images/download__3_-removebg-preview (1).png" style="width: 65px;"  alt="instagram-logo">
    <img class="press-logo" src="images/download__4_-removebg-preview.png  " style="width: 110px;" alt="spotify-logo">
    <img class="press-logo" src="images/download__5_-removebg-preview.png" style="width: 100px;" alt="twitch-logo">

  </section>


  <section class="white-section" id="pricing"  style=" padding-bottom: 0px;">

    <h2 class="section-heading">A platform to supply mutual demands</h2>
    <p>Making a change for better.</p>

    <div class="row" >

      <div class="pricing-column col-lg-4 col-md-6" style="padding-bottom: 0px;">
        <div class="card" style="background-color:#319DA0;">
          <div class="card-header">
            <h2 class="price-text">Creator</h2>

          </div>
          <div class="card-body">
              <h3>Taker</h3>
            <h3>Person who promtote ads in his digital platform for money</h3>

            <button class="btn btn-lg btn-block btn-dark" type="button"><a href="creator_form.jsp">Sign Up</a></button>
          </div>
        </div>
      </div>

      <div class="pricing-column col-lg-4 col-md-6">
        <div class="card" style="background-color:#319DA0;">
          <div class="card-header">
            <h2 class="price-text">Investor</h2>
          </div>
          <div class="card-body">

              <h3>Giver</h3>
            <h3>Person who wants to promote his business Digitally</h3>
            <button class="btn btn-lg btn-block btn-dark" type="button">Sign Up</button>
          </div>
        </div>
      </div>

      <div class="pricing-column col-lg-4">
        <div class="card" style="background-color:#319DA0;" >
          <div class="card-header">
            <h2 class="price-text">Free-lancer  </h2>
          </div>
          <div class="card-body">

            <h3>Maker</h3>
            <h3>Person who creates an ad for Investor for money</h3>

            <button class="btn btn-lg btn-block btn-dark" type="button">Sign Up</button>

          </div>
        </div>
      </div>



    </div>

  </section>

<!-- <center>    <!-- Testimonials -->

</center> 
<section class="white-section" id="features">

  <div class="container-fluid">

    <div class="row">
      <div class="feature-box col-lg-4">
        <!-- <i class="icon fas fa-check-circle fa-4x"></i> -->
        <img src="images/infinity.png" alt="">
        <h3 class="feature-title">Limitless.</h3>
        <p>Investors and creators will reach limitless </p>
      </div>

      <div class="feature-box col-lg-4">
        <img src="images/economics.png" alt="">
        <!-- <i class="icon fas fa-bullseye fa-4x"></i> -->
        <h3 class="feature-title">Economic</h3>
        <p>Getting best value for investors in marketting and promotions for creators </p>
      </div>

      <div class="feature-box col-lg-4">
        <img src="images/ui.png" alt="">
        <!-- <i class="icon fas fa-heart fa-4x"></i> -->
        <h3 class="feature-title">Optimized</h3>
        <p>Best approach for public marketting </p>
      </div>
    </div>
  </div>
</section>


  <!-- Call to Action -->

  <section class="colored-section" id="cta">

    <div class="container-fluid"  style="background-color: #319DA0; padding-top: 25px; padding-bottom: 10px">

      <h3 class="big-heading">Follow us on social platforms stay updated</h3>
      <button class="download-button btn btn-lg btn-dark" type="button"><i class="fab fa-apple"></i> Download</button>
      <button class="download-button btn btn-lg brn-light" type="button"><i class="fab fa-google-play"></i> Download</button>
    </div>
  </section>


  <!-- Footer -->

  <footer class="white-section" id="footer">
    <div class="container-fluid"    style = "padding-bottom: 0px;  padding-top: 0px;">
      <i class="social-icon fab fa-facebook-f"></i>
      <i class="social-icon fab fa-twitter"></i>
      <i class="social-icon fab fa-instagram"></i>
      <i class="social-icon fas fa-envelope"></i>
      <p>© Copyright 2022 ADS-E</p>
    </div>
  </footer>


</body>

</html>
