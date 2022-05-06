<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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


    <!-- callback function -->

    <script>
        $(function(){
            $("img[usemap]").rwdImageMaps();
        });
    </script>

    <script>
        $(function () {
            $("#tabs").tabs();
        });
    </script>

    <style>
        #map {
            width: 100%;
            height: 500px;
        }
    </style>


    <!-- callback function -->

    <title>Info</title>
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
   

    <!-- 交通 -->
    <section class="mt-3" id="infoTraffic">

        <div class="container">
            <div class="row justify-content-start">
                <div style="display: inline-block; width: 30%;" class="row justify-content-center border-end">

                    <div style="text-align:center" class="mb-4">
                        <h4 class="align-items-center fw-bold">Navigation</h4>
                    </div>

                    <div class="input-group mb-3" style="height: 40px;">
                        <input id="start" type="text" class="form-control" aria-describedby="startBtn">
                        <button class="btn btn-primary" type="submit" id="startBtn" style="width: 100px;">Start</button>
                    </div>

                    <div class="input-group mb-3" style="height: 40px;">
                        <input id="end" type="text" class="form-control" aria-describedby="endBtn">
                        <button class="btn btn-primary" type="submit" id="endBtn" style="width: 100px;">End</button>
                    </div>
            
                    <div style="text-align:center" class="mb-4 mt-4">
                        <button id="drivingMap" type="button" class="btn btn-outline-primary fw-bold" style="width: 70%;">Driving Map</button>
                    </div>
    
                    <div id="dur" class="mb-3"></div>
                    <div id="dis"></div>

                    <div style="text-align:center" class="mb-4 mt-4">
                        <button id="transitMap" type="button" class="btn btn-outline-primary fw-bold" style="width: 70%;">TRANSIT Map</button>
                    </div>
    
                    <div id="pdur" class="mb-3"></div>
                    <div id="pdis"></div>
                    
                </div>

                <div style="width: 70%;" class="ps-5">

                    <div id="mapInfo" style="text-align:center" class="mb-4">
                        <h4 class="align-items-center fw-bold">Driving Map Info</h4>
                    </div>

                    <div style="text-align:center" class="mb-3">
                        <div id="map" style="text-align:center" class="mb-3"></div>
                    </div>

                </div>
            </div>
        </div>
    </section>


    <footer class="mt-3 pt-3 pb-3">
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
    
    <!-- 天氣 JavaScript-->

    <script>
        $(function(){

            var weatherData;
            
            $.ajax({
                type:"get",
                url:"https://opendata.cwb.gov.tw/api/v1/rest/datastore/F-C0032-001?Authorization=CWB-A3F6455D-DA3C-418C-9276-FCC65CE566A7&format=JSON&locationName=&elementName=",
                dataType:"json",
                date:weatherData,
                success:function(data){

                    var locationMap=new Array();

                    locationMap[0]=data.records.location[5];
                    locationMap[1]=data.records.location[1];
                    locationMap[2]=data.records.location[18];
                    locationMap[3]=data.records.location[13];
                    locationMap[4]=data.records.location[3];
                    locationMap[5]=data.records.location[4];
                    locationMap[6]=data.records.location[8];
                    locationMap[7]=data.records.location[14];
                    locationMap[8]=data.records.location[11];
                    locationMap[9]=data.records.location[20];
                    locationMap[10]=data.records.location[9];
                    locationMap[11]=data.records.location[0];
                    locationMap[12]=data.records.location[2];
                    locationMap[13]=data.records.location[6];
                    locationMap[14]=data.records.location[15];
                    locationMap[15]=data.records.location[17];
                    locationMap[16]=data.records.location[7];
                    locationMap[17]=data.records.location[10];
                    locationMap[18]=data.records.location[12];

                    for(let j=0;j<3;j++){
                        $(`#wp${j}`).empty(``);
                        table=$(`#wp${j}`);

                        var weatherTitle=`
                        <span>${locationMap[0].weatherElement[0].time[j].startTime+locationMap[0].weatherElement[0].time[j].endTime}</span>
                                <table class="table-bordered" style="width: 100%; table-layout:fixed;">
                                    <thead>
                                        <tr>
                                            <th>Area</th>
                                            <th>Wx</th>
                                            <th>Pop</th>
                                            <th>CI</th>
                                            <th>MinT</th>
                                            <th>MaxT</th>
                                        </tr>
                                    </thead>
                                    <tbody>`;

                        var weatherBody="";
                        var weatherBodyLocation="";

                        for(let i=0;i<locationMap.length;i++){
                            weatherBodyLocation=`
                                <tr>
                                    <td>${locationMap[i].locationName}</td>
                                    <td>${locationMap[i].weatherElement[0].time[j].parameter.parameterName}</td>
                                    <td>${locationMap[i].weatherElement[1].time[j].parameter.parameterName}</td>
                                    <td>${locationMap[i].weatherElement[3].time[j].parameter.parameterName}</td>
                                    <td>${locationMap[i].weatherElement[2].time[j].parameter.parameterName+locationMap[0].weatherElement[2].time[0].parameter.parameterUnit}</td>
                                    <td>${locationMap[i].weatherElement[4].time[j].parameter.parameterName+locationMap[0].weatherElement[4].time[0].parameter.parameterUnit}</td>
                                </tr>`;

                            weatherBody=weatherBody+weatherBodyLocation;
                        }

                        var weatherFooter=`
                                    </tbody>
                                </table>`;

                        var weathertable=weatherTitle+weatherBody+weatherFooter;

                        table.append(weathertable);
                    }
                }
            })

        });
    </script>

    <script>
        var weatherLocation=["TaipeiCity","KeelungCity","NewTaipeiCity1","NewTaipeiCity2","TaoyuanCity","HsinchuCounty","HsinchuCity","MiaoliCounty",
        "TaichungCity","ChanghuaCounty","NantouCounty","YunlinCounty","ChiayiCity","ChiayiCounty","TainanCity","KaohsiungCity","PingtungCounty","YilanCounty"
        ,"HualienCounty","TaitungCounty"];

        for(let i=0;i<weatherLocation.length;i++){
            document.getElementById(weatherLocation[i]).addEventListener("click",Click);
        }
        document.getElementById("allWeather").addEventListener("click",ClickAll)

        function Click(){

            if(this.id=="NewTaipeiCity1" || this.id=="NewTaipeiCity2"){
                document.images[1].src="/resources/img/Weather/NewTaipeiCity.jpg"
            }else{
                document.images[1].src=`/resources/img/Weather/`+this.id+`.jpg`
            }

            document.getElementById("tabs").style.display="none";
            document.getElementById("locationWeather").style.display="";
        
            var weatherMap={"TaipeiCity":0,"KeelungCity":2,"NewTaipeiCity1":1,"NewTaipeiCity2":1,"TaoyuanCity":3,"HsinchuCounty":4,"HsinchuCity":5,"MiaoliCounty":6,
            "TaichungCity":8,"ChanghuaCounty":9,"NantouCounty":7,"YunlinCounty":10,"ChiayiCity":12,"ChiayiCounty":11,"TainanCity":13,"KaohsiungCity":14,"PingtungCounty":15,"YilanCounty":16
            ,"HualienCounty":17,"TaitungCounty":18};

            var lc=weatherMap[this.id];
            console.log(lc);

            $.ajax({
                type:"get",
                url:"https://opendata.cwb.gov.tw/api/v1/rest/datastore/F-D0047-091?Authorization=CWB-A3F6455D-DA3C-418C-9276-FCC65CE566A7&format=JSON&locationName=&elementName=MinT,MaxT,PoP12h,RH,Wx",
                dataType:"json",
                // date:weatherData,
                success:function(data){

                    var locationMapI=new Array();

                    locationMapI[0]=data.records.locations[0].location[9];
                    locationMapI[1]=data.records.locations[0].location[3];
                    locationMapI[2]=data.records.locations[0].location[12];
                    locationMapI[3]=data.records.locations[0].location[13];
                    locationMapI[4]=data.records.locations[0].location[0];
                    locationMapI[5]=data.records.locations[0].location[21];
                    locationMapI[6]=data.records.locations[0].location[2];
                    locationMapI[7]=data.records.locations[0].location[10];
                    locationMapI[8]=data.records.locations[0].location[20];
                    locationMapI[9]=data.records.locations[0].location[8];
                    locationMapI[10]=data.records.locations[0].location[5];
                    locationMapI[11]=data.records.locations[0].location[18];
                    locationMapI[12]=data.records.locations[0].location[17];
                    locationMapI[13]=data.records.locations[0].location[6];
                    locationMapI[14]=data.records.locations[0].location[7];
                    locationMapI[15]=data.records.locations[0].location[17];
                    locationMapI[16]=data.records.locations[0].location[4];
                    locationMapI[17]=data.records.locations[0].location[14];
                    locationMapI[18]=data.records.locations[0].location[16];

                    $("#locationWeather").empty(``);               
                    table=$(`#locationWeather`);

                    var lWeatherTitle="";
                    lWeatherTitle=`
                        <h5>${locationMapI[lc].locationName}</h5>
                        <table class="table-bordered" style="width: 100%; table-layout:fixed;">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Wx</th>
                                    <th>Pop</th>
                                    <th>MinT</th>
                                    <th>MaxT</th>
                                    <th>RH</th>
                                </tr>
                            </thead>
                            <tbody>`;
                    
                    var lWeatherBody="";

                    for(let j=0;j<14;j++){
                        if(j%2==0){
                            var lWeatherBodyD=`
                                <tr>
                                    <td>${locationMapI[lc].weatherElement[0].time[j].startTime.substr(5,5)}</td>
                                    <td>${locationMapI[lc].weatherElement[2].time[j].elementValue[0].value}</td>
                                    <td>${locationMapI[lc].weatherElement[0].time[j].elementValue[0].value}</td>
                                    <td>${locationMapI[lc].weatherElement[3].time[j].elementValue[0].value}</td>
                                    <td>${locationMapI[lc].weatherElement[4].time[j].elementValue[0].value}</td>
                                    <td>${locationMapI[lc].weatherElement[1].time[j].elementValue[0].value}</td>
                                </tr>`
                        }
                        if(j%2==1){
                            var lWeatherBodyD=`
                                <tr>
                                    <td>${locationMapI[lc].weatherElement[0].time[j].startTime.substr(5,5)}</td>
                                    <td>${locationMapI[lc].weatherElement[2].time[j].elementValue[0].value}</td>
                                    <td>${locationMapI[lc].weatherElement[0].time[j].elementValue[0].value}</td>
                                    <td>${locationMapI[lc].weatherElement[3].time[j].elementValue[0].value}</td>
                                    <td>${locationMapI[lc].weatherElement[4].time[j].elementValue[0].value}</td>
                                    <td>${locationMapI[lc].weatherElement[1].time[j].elementValue[0].value}</td>
                                </tr>`
                        }

                        lWeatherBody=lWeatherBody+lWeatherBodyD;

                    }

                    var lWeatherFooter=`
                                    </tbody>
                                </table>`;
                    
                    var lWeathertable=lWeatherTitle+lWeatherBody+lWeatherFooter;
                    table.append(lWeathertable);

                }

            })

        }

        function ClickAll(){
            document.getElementById("locationWeather").style.display="none";
            document.getElementById("tabs").style.display="";
            document.images[1].src="./resources/img/Weather/Taiwan.jpg"

        }

    </script>



    <!-- 交通 JavaScript-->
    <script>

    // 初始位置宣告
    var initLat=23.97418414952302;
    var initlng=120.9797960400736;
    var map;

    $(function(){
        navigator.geolocation.getCurrentPosition(successCallback,errorCallback,{Accuracy:true});
    
        function successCallback(position){
        initLat=parseFloat(position.coords.latitude);
        initlng=parseFloat(position.coords.longitude);

        // console.log(initLat);
        // console.log(initlng);

        initMap(initLat,initlng);
        }

        function errorCallback(){
            console.log("fail")
        }

    });

    function initMap(){
        // console.log("Lat"+initLat);
        // console.log("lng"+initlng);
        let maplocation = {lat: initLat, lng: initlng};

        map = new google.maps.Map(document.getElementById('map'), {
        zoom: 13,
        center: maplocation
        });

        let marker = new google.maps.Marker({position:maplocation});        
        marker.setMap(map);

        var directionsService=new google.maps.DirectionsService();
        var directionsDisplay=new google.maps.DirectionsRenderer();

        directionsDisplay.setMap(map);

        // 起點與終點宣告
        var startPoint;
            var endPoint;
            startPoint={lat: initLat, lng: initlng};
            endPoint={lat: initLat, lng: initlng};

            document.getElementById("startBtn").addEventListener("click",startClick);

            document.getElementById("startBtn").addEventListener("click",startClick);

            function startClick(){
                let address=document.getElementById("start").value;
                let geocoder=new google.maps.Geocoder();

                geocoder.geocode({"address":address}, function(results,status){
                    if(status=="OK"){
                        startPoint=results[0].geometry.location;

                        let request={
                            origin:startPoint,
                            destination:endPoint,
                            travelMode:'DRIVING'
                        };

                        directionsService.route(request,function(result,status){
                            if(status=='OK'){
                                console.log("Driving")
                                console.log(result.routes[0].legs[0].steps);
                                directionsDisplay.setDirections(result)

                                let dur=document.getElementById("dur");
                                let dis=document.getElementById("dis");

                                dur.innerHTML=`<h5>Time=${result.routes[0].legs[0].duration.text}</h5>`
                                dis.innerHTML=`<h5>Distance=${result.routes[0].legs[0].distance.text}</h5>`
                            }

                        });

                        let prequest={
                            origin:startPoint,
                            destination:endPoint,
                            travelMode:'TRANSIT'
                        };

                        directionsService.route(prequest,function(result,status){
                            if(status=='OK'){
                                console.log("Transit")
                                console.log(result.routes[0].legs[0].steps);

                                let pdur=document.getElementById("pdur");
                                let pdis=document.getElementById("pdis");

                                pdur.innerHTML=`<h5>Time=${result.routes[0].legs[0].duration.text}</h5>`
                                pdis.innerHTML=`<h5>Distance=${result.routes[0].legs[0].distance.text}</h5>`
                            }
                        });
                    }else{
                        console.log("fail");
                    }
                });
            }

            document.getElementById("endBtn").addEventListener("click",endClick);

            function endClick(){
                let address=document.getElementById("end").value;
                let geocoder=new google.maps.Geocoder();

                geocoder.geocode({"address":address}, function(results,status){
                    if(status=="OK"){
                        endPoint=results[0].geometry.location;

                        let request={
                            origin:startPoint,
                            destination:endPoint,
                            travelMode:'DRIVING'
                        };

                        directionsService.route(request,function(result,status){
                            if(status=='OK'){
                                console.log("Driving")
                                console.log(result.routes[0].legs[0].steps);

                                directionsDisplay.setDirections(result)

                                let dur=document.getElementById("dur");
                                let dis=document.getElementById("dis");
                                dur.innerHTML=`<h5>Time=${result.routes[0].legs[0].duration.text}</h5>`
                                dis.innerHTML=`<h5>Distance=${result.routes[0].legs[0].distance.text}</h5>`

                            }
                        });

                        let prequest={
                            origin:startPoint,
                            destination:endPoint,
                            travelMode:'TRANSIT'
                        };

                        directionsService.route(prequest,function(result,status){
                            if(status=='OK'){
                                console.log("Transit")
                                console.log(result.routes[0].legs[0].steps);

                                let pdur=document.getElementById("pdur");
                                let pdis=document.getElementById("pdis");

                                pdur.innerHTML=`<h5>Time=${result.routes[0].legs[0].duration.text}</h5>`
                                pdis.innerHTML=`<h5>Distance=${result.routes[0].legs[0].distance.text}</h5>`
                            }
                        });

                    }else{
                        console.log("fail");
                    }
                });
            }

            document.getElementById("transitMap").addEventListener("click",transitClick);

            function transitClick(){

                let prequest={
                    origin:startPoint,
                    destination:endPoint,
                    travelMode:'TRANSIT'
                };

                directionsService.route(prequest,function(result,status){
                    if(status=='OK'){
                        console.log("Transit")
                        console.log(result.routes[0].legs[0].steps);
                        directionsDisplay.setDirections(result)

                        let pdur=document.getElementById("pdur");
                        let pdis=document.getElementById("pdis");
                        let mapInfo=document.getElementById("mapInfo")

                        pdur.innerHTML=`<h5>Time=${result.routes[0].legs[0].duration.text}</h5>`
                        pdis.innerHTML=`<h5>Distance=${result.routes[0].legs[0].distance.text}</h5>`
                        mapInfo.innerHTML=`<h4 class="align-items-center fw-bold">Transit Map Info</h4>`


                    }else{
                        console.log("fail");
                    }
                });
            }

            document.getElementById("drivingMap").addEventListener("click",drivingClick);

            function drivingClick(){

                let prequest={
                    origin:startPoint,
                    destination:endPoint,
                    travelMode:'DRIVING'
                };

                directionsService.route(prequest,function(result,status){
                    if(status=='OK'){
                        console.log("DRIVING")
                        console.log(result.routes[0].legs[0].steps);
                        directionsDisplay.setDirections(result)

                        let dur=document.getElementById("dur");
                        let dis=document.getElementById("dis");
                        let mapInfo=document.getElementById("mapInfo")

                        dur.innerHTML=`<h5>Time=${result.routes[0].legs[0].duration.text}</h5>`
                        dis.innerHTML=`<h5>Distance=${result.routes[0].legs[0].distance.text}</h5>`
                        mapInfo.innerHTML=`<h4 class="align-items-center fw-bold">Driving Map Info</h4>`

                    }else{
                        console.log("fail");
                    }
                });
            }
    }

    </script>

    <script>
        $(function(){

        var userName = document.getElementById("userName").innerHTML;
        console.log(userName);

        if(userName.length==0){
            $("#SignIn").show();
            $("#logOut").hide();
        }else{
            $("#SignIn").hide();
            $("#logOut").show();
        }
        });
    </script>

    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAMB0qvrBQv9JfSrUeMxObVikeJgTuDe4&callback=initMap">
    </script>


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