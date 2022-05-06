<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    
    <title>biking</title>
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
        <div class="container">
            <div class="row justify-content-center">
                <!-- 選單 -->
                <div class="col-md-2 border-end">
                    <h5 class="row justify-content-center fw-bolder mt-4 mb-4">Biking Mission</h5>
                    <form action="">
                        <div class="form-group mb-5">
                            <label class="mb-1">Misson type</label>
                            <select id="selectType" class="form-control form-select" aria-label="Default select example">
                                <option value="All" selected>Open select menu</option>
                                <option value="All">All</option>
                                <option value="Official">Official Mission</option>
                                <option value="Assign">Assign Mission</option>
                            </select>
                        </div>

                        <div class="form-group mb-5">
                            <label class="mb-1">Level</label>
                            <select id="selectLevel" class="form-control form-select" aria-label="Default select example">
                                <option value="All" selected>Open select menu</option>
                                <option value="All">All</option>
                                <option value="Easy">Easy</option>
                                <option value="Normal">Normal</option>
                                <option value="Diffcult">Difficult</option>
                            </select>
                        </div>

                        <div class="form-group mb-5">
                            <label class="mb-1">Distance</label>
                            <select id="selectDis" class="form-control form-select" aria-label="Default select example">
                                <option value="All" selected>Open select menu</option>
                                <option value="All">All</option>
                                <option value="0~5km">0~5km</option>
                                <option value="5~10km">5~10km</option>
                                <option value=">10km">>10km</option>
                            </select>
                        </div>

                        <div class="form-group mb-5">
                            <label class="mb-1">Time</label>
                            <select id="selectTime" class="form-control form-select" aria-label="Default select example">
                                <option value="All" selected>Open select menu</option>
                                <option value="All">All</option>
                                <option value="0~5hr">0~5hr</option>
                                <option value="5~10hr">5~10hr</option>
                                <option value=">10hr">>10hr</option>
                            </select>
                        </div>

                        <div class="form-group mb-5">
                            <input class="form-control btn btn-primary" type="submit" value="Submit">
                        </div>

                    </form>
                </div>

                <!-- 卡片 -->
                <div class="col-md-10">
                    <div id="OfficialMission">
                        <div style="text-align: center;">
                            <h4 class="fw-bolder mt-4 mb-4 border border-dark">Official Mission</h4>
                        </div>

                        <div id="OfficialMissionBox" class="row justify-content-start">
                            <div class="col-md-4">
                                <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
                                    <div style="height: 300px">
                                        <a href="bikingMission.html"><img src="/resources/img/cycling/Cycling4.jpg" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
                                    </div>
                                    <div class="px-3" style="display: flex; align-items: center;height: 180px">
                                        <div>
                                            <h6 class="fw-bold">Mission</h6>
                                            <ul>
                                                <li>Mission Name=Test1</li>
                                                <li>Mission Classfication=B</li>
                                                <li name="level">Level=Easy</li>
                                                <li name="dis">>10km</li>
                                                <li name="time">0~5hr</li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>     
                            </div>

                            <div class="col-md-4">
                                <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
                                    <div style="height: 300px">
                                        <a href="bikingMission.html"><img src="/resources/img/cycling/cycling5.jpg" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
                                    </div>
                                    <div class="px-3" style="display: flex; align-items: center;height: 180px">
                                        <div>
                                            <h6 class="fw-bold">Mission</h6>
                                            <ul>
                                                <li>Mission Name=Test2</li>
                                                <li>Mission Classfication=B</li>
                                                <li name="level">Level=Normal</li>
                                                <li name="dis">5~10km</li>
                                                <li name="time">0~5hr</li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>     
                            </div>

                            <div class="col-md-4">
                                <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
                                    <div style="height: 300px">
                                        <a href="bikingMission.html"><img src="/resources/img/cycling/cycling6.jpg" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
                                    </div>
                                    <div class="px-3" style="display: flex; align-items: center;height: 180px">
                                        <div>
                                            <h6 class="fw-bold">Mission</h6>
                                            <ul>
                                                <li>Mission Name=Test3</li>
                                                <li>Mission Classfication=B</li>
                                                <li name="level">Level=Diffcult</li>
                                                <li name="dis">0~5km</li>
                                                <li name="time">5~10hr</li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>     
                            </div>

                            <div class="col-md-4">
                                <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
                                    <div style="height: 300px">
                                        <a href="bikingMission.html"><img src="/resources/img/cycling/cycling7.jpg" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
                                    </div>
                                    <div class="px-3" style="display: flex; align-items: center;height: 180px">
                                        <div>
                                            <h6 class="fw-bold">Mission</h6>
                                            <ul>
                                                <li>Mission Name=Test4</li>
                                                <li>Mission Classfication=B</li>
                                                <li name="level">Level=Easy</li>
                                                <li name="dis">>10km</li>
                                                <li name="time">5~10hr</li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>     
                            </div>

                            <div class="col-md-4">
                                <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
                                    <div style="height: 300px">
                                        <a href="bikingMission.html"><img src="/resources/img/cycling/cycling8.jpg" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
                                    </div>
                                    <div class="px-3" style="display: flex; align-items: center;height: 180px">
                                        <div>
                                            <h6 class="fw-bold">Mission</h6>
                                            <ul>
                                                <li>Mission Name=Test5</li>
                                                <li>Mission Classfication=B</li>
                                                <li name="level">Level=Normal</li>
                                                <li name="dis">5~10km</li>
                                                <li name="time">5~10hr</li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>     
                            </div>

                            <div class="col-md-4">
                                <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
                                    <div style="height: 300px">
                                        <a href="bikingMission.html"><img src="/resources/img/cycling/cycling9.jpg" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
                                    </div>
                                    <div class="px-3" style="display: flex; align-items: center;height: 180px">
                                        <div>
                                            <h6 class="fw-bold">Mission</h6>
                                            <ul>
                                                <li>Mission Name=Test6</li>
                                                <li>Mission Classfication=B</li>
                                                <li name="level">Level=Diffcult</li>
                                                <li name="dis">0~5km</li>
                                                <li name="time">>10hr</li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>     
                            </div>
                            
                            <div class="col-md-4">
                                <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
                                    <div style="height: 300px">
                                        <a href="bikingMission.html"><img src="/resources/img/cycling/cycling10.jpg" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
                                    </div>
                                    <div class="px-3" style="display: flex; align-items: center;height: 180px">
                                        <div>
                                            <h6 class="fw-bold">Mission</h6>
                                            <ul>
                                                <li>Mission Name=Test7</li>
                                                <li>Mission Classfication=B</li>
                                                <li name="level">Level=Easy</li>
                                                <li name="dis">>10km</li>
                                                <li name="time">>10hr</li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>     
                            </div>



                        </div>
                    </div>

                    <div id="AssignMission">
                        <div style="text-align: center;">
                            <h4 class="fw-bolder mt-4 mb-4 border border-dark">Assign Mission</h4>
                        </div>

                        <div id="PrivateMissionBox" class="row justify-content-start">
                            <div class="col-md-4">
                                <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
                                    <div style="height: 300px">
                                        <a href="bikingMission.html"><img src="/resources/img/cycling/Cycling4.jpg" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
                                    </div>
                                    <div class="px-3" style="display: flex; align-items: center;height: 180px">
                                        <div>
                                            <h6 class="fw-bold">Mission</h6>
                                            <ul>
                                                <li>Mission Name=Test1</li>
                                                <li>Mission Classfication=B</li>
                                                <li name="level">Level=Easy</li>
                                                <li name="dis">>10km</li>
                                                <li name="time">0~5hr</li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>     
                            </div>

                            <div class="col-md-4">
                                <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
                                    <div style="height: 300px">
                                        <a href="bikingMission.html"><img src="/resources/img/cycling/cycling5.jpg" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
                                    </div>
                                    <div class="px-3" style="display: flex; align-items: center;height: 180px">
                                        <div>
                                            <h6 class="fw-bold">Mission</h6>
                                            <ul>
                                                <li>Mission Name=Test2</li>
                                                <li>Mission Classfication=B</li>
                                                <li name="level">Level=Normal</li>
                                                <li name="dis">5~10km</li>
                                                <li name="time">0~5hr</li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>     
                            </div>

                            <div class="col-md-4">
                                <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
                                    <div style="height: 300px">
                                        <a href="bikingMission.html"><img src="/resources/img/cycling/cycling6.jpg" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
                                    </div>
                                    <div class="px-3" style="display: flex; align-items: center;height: 180px">
                                        <div>
                                            <h6 class="fw-bold">Mission</h6>
                                            <ul>
                                                <li>Mission Name=Test3</li>
                                                <li>Mission Classfication=B</li>
                                                <li name="level">Level=Diffcult</li>
                                                <li name="dis">0~5km</li>
                                                <li name="time">5~10hr</li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>     
                            </div>

                            <div class="col-md-4">
                                <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
                                    <div style="height: 300px">
                                        <a href="bikingMission.html"><img src="/resources/img/cycling/cycling7.jpg" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
                                    </div>
                                    <div class="px-3" style="display: flex; align-items: center;height: 180px">
                                        <div>
                                            <h6 class="fw-bold">Mission</h6>
                                            <ul>
                                                <li>Mission Name=Test4</li>
                                                <li>Mission Classfication=B</li>
                                                <li name="level">Level=Easy</li>
                                                <li name="dis">>10km</li>
                                                <li name="time">5~10hr</li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>     
                            </div>

                            <div class="col-md-4">
                                <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
                                    <div style="height: 300px">
                                        <a href="bikingMission.html"><img src="/resources/img/cycling/cycling8.jpg" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
                                    </div>
                                    <div class="px-3" style="display: flex; align-items: center;height: 180px">
                                        <div>
                                            <h6 class="fw-bold">Mission</h6>
                                            <ul>
                                                <li>Mission Name=Test5</li>
                                                <li>Mission Classfication=B</li>
                                                <li name="level">Level=Normal</li>
                                                <li name="dis">5~10km</li>
                                                <li name="time">5~10hr</li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>     
                            </div>

                            <div class="col-md-4">
                                <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
                                    <div style="height: 300px">
                                        <a href="bikingMission.html"><img src="/resources/img/cycling/cycling9.jpg" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
                                    </div>
                                    <div class="px-3" style="display: flex; align-items: center;height: 180px">
                                        <div>
                                            <h6 class="fw-bold">Mission</h6>
                                            <ul>
                                                <li>Mission Name=Test6</li>
                                                <li>Mission Classfication=B</li>
                                                <li name="level">Level=Diffcult</li>
                                                <li name="dis">0~5km</li>
                                                <li name="time">>10hr</li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>     
                            </div>
                            
                            <div class="col-md-4">
                                <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
                                    <div style="height: 300px">
                                        <a href="bikingMission.html"><img src="/resources/img/cycling/cycling10.jpg" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
                                    </div>
                                    <div class="px-3" style="display: flex; align-items: center;height: 180px">
                                        <div>
                                            <h6 class="fw-bold">Mission</h6>
                                            <ul>
                                                <li>Mission Name=Test7</li>
                                                <li>Mission Classfication=B</li>
                                                <li name="level">Level=Easy</li>
                                                <li name="dis">>10km</li>
                                                <li name="time">>10hr</li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>     
                            </div>



                        </div>
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

    <script>
        $(function(){
    
        var userName = document.getElementById("userName").innerHTML;

        if(userName.length==0){
        $("#SignIn").show();
        $("#logOut").hide();
        }else{
        $("#SignIn").hide();
        $("#logOut").show();
        }

        document.getElementById("selectType").addEventListener("click", selectType);
            
            function selectType(){
                let selectType = document.getElementById("selectType").value;

                if(selectType == "All"){
                    $("#OfficialMission").show();
                    $("#AssignMission").show();
                }else if(selectType == "Official"){
                    $("#OfficialMission").show();
                    $("#AssignMission").hide();
                }else if(selectType == "Assign"){
                    $("#OfficialMission").hide();
                    $("#AssignMission").show();
                }
            }

            document.getElementById("selectLevel").addEventListener("click", select);
            document.getElementById("selectDis").addEventListener("click", select);
            document.getElementById("selectTime").addEventListener("click", select);

            function select(){

                let nameType = document.getElementsByName("level");
                let selectType = document.getElementById("selectLevel");
                let selectClass = "Level="+selectType.value;
                let levels=["Level=Easy", "Level=Normal", "Level=Diffcult"];
                let levelD=new Array();

                let nameDis = document.getElementsByName("dis");
                let selectDis = document.getElementById("selectDis");
                let diss=["0~5km", "5~10km", ">10km"];
                let disD=new Array();

                let nameTime = document.getElementsByName("time");
                let selectTime = document.getElementById("selectTime");
                let times=["0~5hr", "5~10hr", ">10hr"];
                let timeD=new Array();

                for(i=0; i<nameType.length; i++){
                    nameType[i].parentElement.parentElement.parentElement.parentElement.parentElement.style.display = "";
                }

                if(selectType.value != "All"){
                    for(i=0; i<levels.length; i++){
                        if(selectClass != levels[i]){
                            levelD.push(levels[i]);
                        }
                    }

                    for(i=0; i<nameType.length; i++){
                        for(j=0; j<levelD.length; j++){
                            if(nameType[i].innerHTML == levelD[j]){
                                nameType[i].parentElement.parentElement.parentElement.parentElement.parentElement.style.display = "none";
                            }
                        }
                    }
                }

                if(selectDis.value != "All"){
                    for(i=0; i<diss.length; i++){
                        if(selectDis.value != diss[i]){
                            disD.push(diss[i]);
                        }
                    }

                    for(i=0; i<nameDis.length; i++){
                        for(j=0; j<disD.length; j++){
                            if(nameDis[i].innerHTML == disD[j]){
                                nameDis[i].parentElement.parentElement.parentElement.parentElement.parentElement.style.display = "none";
                            }

                            if(disD[j] == ">10km" && nameDis[i].innerHTML == "&gt;10km"){
                                nameDis[i].parentElement.parentElement.parentElement.parentElement.parentElement.style.display = "none";
                            }
                        }
                    }
                }

                if(selectTime.value != "All"){
                    for(i=0; i<times.length; i++){
                        if(selectTime.value != times[i]){
                            timeD.push(times[i]);
                        }
                    }

                    for(i=0; i<nameTime.length; i++){
                        for(j=0; j<timeD.length; j++){
                            if(nameTime[i].innerHTML == timeD[j]){
                                nameTime[i].parentElement.parentElement.parentElement.parentElement.parentElement.style.display = "none";
                            }

                            if(timeD[j] == ">10hr" && nameTime[i].innerHTML == "&gt;10hr"){
                                nameTime[i].parentElement.parentElement.parentElement.parentElement.parentElement.style.display = "none";
                            }
                        }
                    }
                }
            }

    });
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
   
      <script type="text/javascript">
  	$(function(){
  		$.ajax({
  			type:"post",
  			dataType:"JSON",
  			url:"/websport/biking/Official",
  			contentType:"application/json",
  			success:function(data){
  				var json = JSON.stringify(data, null, 4);
  				console.log("success"+json);
  				
  				var jsonArray = JSON.parse(json);
  				$("#OfficialMissionBox").empty("");
  					if(json == null){
  						$("#OfficialMissionBox").append("No Result");
  					}else{
  						$.each(jsonArray, function(i,n){
  							
  							console.log(n.hTime)
  							var content =   								
  								`
  	                            <div class="col-md-4">
		                            <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
		                                <div style="height: 300px">
		                                    <a href="/websport/member/biking/mission/`+n.bid+`"><img src="/websport/biking/image/`+n.bImage+`" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
		                                </div>
		                                <div class="px-3" style="display: flex; align-items: center;height: 180px">
		                                    <div>
		                                        <h6 class="fw-bold">Mission</h6>
		                                        <ul>
		                                            <li>Mission Name=`+n.bName+`</li>
		                                            <li name="level">Level=`+n.bLevel+`</li>
		                                            <li name="dis">`+n.bDis+`</li>
		                                            <li name="time">`+n.bTime+`</li>
		                                        </ul>
		                                    </div> 
		                                </div>
		                            </div>     
		                        </div>`		                        		                        
		                        $("#OfficialMissionBox").append(content);
   						});  						
  					}  				
  			},
  			error:function(){
  				console.log("error")
  			}  			
  		});		
  	});
  </script>
  
  
  <script type="text/javascript">
  	$(function(){
  		$.ajax({
  			type:"post",
  			dataType:"JSON",
  			url:"/websport/biking/Private",
  			contentType:"application/json",
  			success:function(data){
  				var json = JSON.stringify(data, null, 4);
  				console.log("success"+json);
  				
  				var jsonArray = JSON.parse(json);
  				$("#PrivateMissionBox").empty("");
  					if(json == null){
  						$("#PrivateMissionBox").append("No Result");
  					}else{
  						$.each(jsonArray, function(i,n){
  							
  							console.log(n.hTime)
  							var content =   								
  								`
  	                            <div class="col-md-4">
		                            <div class="mx-1 my-2 border shadow rounded" style=" height: 480px; ">
		                                <div style="height: 300px">
		                                    <a href="/websport/member/biking/mission/`+n.bid+`"><img src="/websport/biking/image/`+n.bImage+`" alt="" style="object-fit: cover; width: 100%; height: 100%;"></a>
		                                </div>
		                                <div class="px-3" style="display: flex; align-items: center;height: 180px">
		                                    <div>
		                                        <h6 class="fw-bold">Mission</h6>
		                                        <ul>
		                                            <li>Mission Name=`+n.bName+`</li>
		                                            <li name="level">Level=`+n.bLevel+`</li>
		                                            <li name="dis">`+n.bDis+`</li>
		                                            <li name="time">`+n.bTime+`</li>
		                                        </ul>
		                                    </div> 
		                                </div>
		                            </div>     
		                        </div>`		                        		                        
		                        $("#PrivateMissionBox").append(content);
   						});  						
  					}  				
  			},
  			error:function(){
  				console.log("error")
  			}  			
  		});		
  	});
  </script>
 


</body>
</html>