<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/resources/css/sportStyle.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="/resources/fontawesome-free-5.15.4-web/css/all.css">

    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-rwdImageMaps/1.6/jquery.rwdImageMaps.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

    <title>index</title>
</head>
<body>
  <!-- Header -->
  <header  style="background-color: #48dbfb">
    <div class="container">
      <div class="row justify-content-between align-items-center" >
          <div class="col-md-3">
            <a href="/websport/index"><img src="/resources/img/mountains-31589.svg" style="width: 25%;"></a>
          </div>

          <div id="member" class="col-md-3">
              <h5 class="d-inline fw-bold text-dark">Member: </h5><span id="userName" class="h5 fw-bold text-muted">${Name}</span>
          </div>
      </div>
    </div>
  </header>


  <header class="pt-1 pb-3">
      <div class="container  align-items-center">

          <div class="row mt-4">
              <div class="col-md-2">
                  <div class="dropdown">
                      <a href="/websport/hiking" role="button" id="hikingLink" data-bs-toggle="dropdown" aria-expanded="false">
                      <h5 class="d-inline text-dark fw-bold">Hiking</h5><i class="fas fa-angle-down text-dark"></i>
                      </a>
                  
                      <ul class="dropdown-menu" aria-labelledby="hikingLink">
                      <li><a class="dropdown-item" href="/websport/hiking">Hiking</a></li>
                      <li><a class="dropdown-item" href="/websport/hiking">Hiking Official Mission</a></li>
                      <li><a class="dropdown-item" href="/websport/hiking">Hiking Assign Mission</a></li>
                      </ul>
                  </div>
              </div>

              <div class="col-md-2">
                  <div class="dropdown">
                      <a href="/websport/running" role="button" id="runningLink" data-bs-toggle="dropdown" aria-expanded="false">
                      <h5 class="d-inline text-dark fw-bold">Running</h5><i class="fas fa-angle-down text-dark"></i>
                      </a>
                  
                      <ul class="dropdown-menu" aria-labelledby="runningLink">
                      <li><a class="dropdown-item" href="/websport/running">Running</a></li>
                      <li><a class="dropdown-item" href="/websport/running">Running Official Mission</a></li>
                      <li><a class="dropdown-item" href="/websport/running">Running Assign Mission</a></li>
                      </ul>
                  </div>

              </div>
              <div class="col-md-2">
                  <div class="dropdown">
                      <a href="/websport/biking" role="button" id="bicycleLink" data-bs-toggle="dropdown" aria-expanded="false">
                      <h5 class="d-inline text-dark fw-bold">Biking</h5><i class="fas fa-angle-down text-dark"></i>
                      </a>
                  
                      <ul class="dropdown-menu" aria-labelledby="bicycleLink">
                      <li><a class="dropdown-item" href="/websport/biking">Biking</a></li>
                      <li><a class="dropdown-item" href="/websport/biking">Biking Official Mission</a></li>
                      <li><a class="dropdown-item" href="/websport/biking">Biking Assign Mission</a></li>
                      </ul>
                  </div>

              </div>
              <div class="col-md-2">
                  <div class="dropdown">
                      <a href="/websport/info" role="button" id="infoLink" data-bs-toggle="dropdown" aria-expanded="false">
                      <h5 class="d-inline text-dark fw-bold">Info</h5><i class="fas fa-angle-down text-dark"></i>
                      </a>
                  
                      <ul class="dropdown-menu" aria-labelledby="infoLink">
                      <li><a class="dropdown-item" href="/websport/info">Info</a></li>
                      <li><a class="dropdown-item" href="/websport/info">Weather Information</a></li>
                      <li><a class="dropdown-item" href="/websport/info">Traffic Information</a></li>
                      </ul>
                  </div>
              </div>

              <div class="col-md-2">
                <div>
                    <a href="/websport/member/personal" role="button" id="memberCenter">
                      <h5 class="d-inline text-dark fw-bold">Member Center</h5>
                    </a>
                </div>
              </div>

              <div class="col-md-2">

                <div>
                  <a href="/login/page" role="button" id="logIn">
                    <h5 class="d-inline text-dark fw-bold">Login In</h5>
                  </a>
                </div>

                <div>
                    <a href="/logout/page" role="button" id="logOut">
                      <h5 class="d-inline text-dark fw-bold">Log Out</h5>
                    </a>
                </div>

              </div>

          </div>
      </div>
  </header>

  <section class="mt-3">
    <div class="container-md">
      <h5 class="hcolor fw-bold">Option</h5>
      <div class="row justify-content-center">
        <div class="col-md-4" >
          <div>
            <img src="/resources/img/hiking/hiking1.jpg" class="img-fluid img-thumbnail">
          </div>
          <div class="mt-2">
            <div style="text-align: center;">
              <h5 class="fw-bolder mt-4 mb-4 border border-primary text-primary">Hiking</h5>
            </div>
            <p class="fw-bolder">1. Choose the hiking mission and join it!!<br>2. Create the new hiking misssion</p>
          </div>

        </div>
        <div class="col-md-4">
          <img src="/resources/img/running/running1.jpg" class="img-fluid img-thumbnail">
          <div class="mt-2">
            <div style="text-align: center;">
              <h5 class="fw-bolder mt-4 mb-4 border border-primary text-primary">Running</h5>
            </div>
            <p class="fw-bolder">1. Choose the running mission and join it!!<br>2. Create the new running misssion</p>
          </div>

        </div>
        <div class="col-md-4">
          <img src="/resources/img/cycling/Cycling1.jpg" class="img-fluid img-thumbnail">
          <div class="mt-2">
            <div style="text-align: center;">
              <h5 class="fw-bolder mt-4 mb-4 border border-primary text-primary">biking</h5>
            </div>
            <p class="fw-bolder">1. Choose the biking mission and join it!!<br>2. Create the new biking misssion</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- 熱門任務 -->
  <section class="mt-3">
    <div class="container-md">
      <h5 class="hcolor fw-bold">Mission</h5>
      <div>

      </div>
    </div>
  </section>

  <!-- 說明 -->
  <section class="mt-3">
    <div class="container-md">
      <!-- <h5>Explanation</h5> -->
      <div class="row align-items-center">
        <div class="col-md-5">
          <img src="/resources/img/hiking/hiking2.jpg" class="w-100 img-thumbnail">
        </div>
        <div class="col-md-7">
          <p class="h5">Welcome!! This website is for outdoor spot and focus on hiking, running, biking. We hope every can join and enjoy it!!
            Beside share the thought, information to everyone, you can create spcially mission for other memebers</p>
        </div>
      </div>

      <div class="row align-items-center">

        <div class="col-md-7">
          <p class="h5">We have the different mission level(easy normal difficult). If you like challange, suggest you select diffcult mission and challenge yourself. Of course, you can choose easy 
            mission with your familiy and have a good time. Everyone can join and play!!</p>
        </div>
        <div class="col-md-5">
          <img src="/resources/img/running/running2.jpg" class="w-100 img-thumbnail">
        </div>

      </div>

      <div class="row align-items-center">
        <div class="col-md-5">
          <img src="/resources/img/cycling/Cycling2.jpg" class="w-100 img-thumbnail">
        </div>
        <div class="col-md-7">
          <p class="h5">The misson hvae two type. one is public and another is private. The offical mission include hiking, running, biking knowledge and present by games and also provide the outdoor object and hope you can go there and finsih it!!
            We know!! You have much experience to share others. You can share place, thoughts, suggestion by the private mission. We hope you create the mission to share members let everyone konw more and more funny and wonderful place.</p>
        </div>
      </div>

    </div>
  </section>

   <footer class="mt-3 pt-3 pb-3" style="background-color: #48dbfb">
       <div class="container">
           <div class="row">
               <div class="col">
               <h6 class="d-inline fw-bold">About US</h6>
               </div>
               <div class="col">
               <h6 class="d-inline fw-bold">Contact US</h6>
               </div>
           </div>
       
           <div class="row mt-3">
               <div class="col">
               <h6 class="d-inline fw-bold">Copyright © 2021 SpotTest</h6>
               </div>
           </div>
       </div>
   </footer>

  <script>
    $(function(){

      var userName = document.getElementById("userName").innerHTML;
      console.log(userName);

      if(userName.length==0){
        $("#logIn").show();
        $("#logOut").hide();
        $("#member").hide();
      }else{
        $("#logIn").hide();
        $("#logOut").show();
        $("#member").show();
      }
    });
  </script>

</body>
</html>