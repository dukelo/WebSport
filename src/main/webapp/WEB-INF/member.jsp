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
    
    <title>Member</title>
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
                    <h5 class="row justify-content-center fw-bolder mt-4 mb-4">Member</h5>

                        <div class="form-group mb-5">
                            <input id="bMemberAccount" class="form-control btn btn-primary" type="button" value="Member-Account">
                        </div>

                        <div class="form-group mb-5">
                            <input id="bMissionInfo" class="form-control btn btn-primary" type="button" value="Mission-Info">
                        </div>

                        <div class="form-group mb-5">
                            <input id="bCreateMission" class="form-control btn btn-primary" type="button" value="Create-Mission">
                        </div>

                </div>

                <!-- 內容 -->
                <div class="col-md-10"  >

                    <div class="container" id="memberAccount">
                        <div style="text-align: center;">
                            <h4 class="fw-bolder mt-4 mb-4 border border-dark">Member-Account</h4>
                        </div>
                        <div class="row  justify-content-center">
                            <div class="col-4">
                                <div style="text-align: center;">
                                    <h5 class="fw-bolder mt-4 mb-4 border border-primary text-primary">Account</h5>
                                </div>
                                <form>
                                    <div class="mb-3">
                                        <label for="name" class="form-lab fw-bolder">Name</label>
                                        <input class="form-control" type="text" readonly="readonly" value=${aName}> 
                                    </div>

                                    <div class="mb-3">
                                        <label for="nName" class="form-label fw-bolder">NickName</label>
                                        <input type="text" class="form-control" readonly="readonly" value=${aNickName}>
                                    </div>

                                    <div class="mb-3">
                                        <label for="email" class="form-label fw-bolder">Email</label>
                                        <input type="Email" class="form-control" readonly="readonly" value=${aEmail}>
                                    </div>
                                    
                                </form>

                            </div>
                            <div class="col-8">
                                <form method="post" action="/websport/member/account" enctype="multipart/form-data">
                                    <div class="row  justify-content-center mb-3">
                                        <div class="col">
                                            <div style="text-align: center;">
                                                <h5 class="fw-bolder mt-4 mb-4 border border-primary text-primary">Edit</h5>
                                            </div>
                                            <!-- <form> -->
                                                <div class="mb-3">
                                                    <label for="name" class="form-lab fw-bolder">Name</label>
                                                    <input id="name" class="form-control" type="text" readonly="readonly" value=${Name}> 
                                                </div>

                                                <div class="mb-3">
                                                    <label for="nName" class="form-label fw-bolder">NickName</label>
                                                    <input type="text" class="form-control" id="nName" name="eNName" value=${aNickName}>
                                                </div>
                                                
                                                <div class="mb-3">
                                                    <label for="email" class="form-label fw-bolder">Email</label>
                                                    <input type="Email" class="form-control" id="email" name="eEmail" value=${aEmail}>
                                                </div>

                                                <div class="mb-3">
                                                    <label for="pwd" class="form-label fw-bolder">Password</label>
                                                    <input type="text" class="form-control" id="pwd" name="ePassword" placeholder="Change Password?">
                                                </div>

                                        </div>
                                        <div class="col">
                                            <div style="text-align: center;">
                                                <h5 class="fw-bolder mt-4 mb-4 border border-primary text-primary">Photo</h5>
                                            </div>

                                            <div class="mb-3" style="text-align: center;">
                                                <!--  <img src="/resources/img/test/phototest1.jpg" alt="" style="object-fit: cover; width: 100%;">-->
                                                <img src="/websport/member/personal/userphoto" alt="" style="object-fit: cover; width: 100%;">
                                            </div>

                                            <!-- <form enctype="multipart/form-data"> -->
                                                <div class="input-group">
                                                    <input type="file" name="ePhoto" class="form-control" id="Photo" aria-label="Upload">
                                                    <!-- <button class="btn btn-primary" type="submit" id="bPhoto">Upload</button> -->
                                                </div>
                                            <!-- </form> -->
                                        </div>
                                    
                                    </div>
                                    
                                    <div style="text-align: center;">
                                        <button type="submit" class="btn btn-primary">Sumbmit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="container" id="missionInfo">
                        <div class="row justify-content-center">
                            <div style="text-align: center;">
                                <h4 class="fw-bolder mt-4 mb-4 border border-dark">Mission-info</h4>
                            </div>

                            <div>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Iterm</th>
                                            <th>MissionId</th>
                                            <th>MissionName</th>
                                            <th>MissionType</th>
                                            <th>MissionStatus</th>
                                            <th>Start Date</th>
                                            <th>Finish Date</th>
                                            <th>Edit</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr>
                                            <th>1</th>
                                            <td>MissionId</td>
                                            <td>MissionName</td>
                                            <td>MissionType</td>
                                            <td>MissionStatus</td>
                                            <td>Start Date</td>
                                            <td>Finish Date</td>
                                            <td>
                                                <button type="button" class="btn btn-primary" id="missionid">Edit</button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>2</th>
                                            <td>MissionId</td>
                                            <td>MissionName</td>
                                            <td>MissionType</td>
                                            <td>MissionStatus</td>
                                            <td>Start Date</td>
                                            <td>Finish Date</td>
                                            <td>
                                                <button type="button" class="btn btn-primary">Edit</button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>3</th>
                                            <td>MissionId</td>
                                            <td>MissionName</td>
                                            <td>MissionType</td>
                                            <td>MissionStatus</td>
                                            <td>Start Date</td>
                                            <td>Finish Date</td>
                                            <td>
                                                <button type="button" class="btn btn-primary">Edit</button>
                                            </td>
                                        </tr>
                                    </tbody>

                                </table>
                            </div>

                            <div class="col" style="text-align: center;">
                                <form>
                                    <div class="mb-3">
                                        <div style="text-align: center;">
                                            <h5 class="fw-bolder mt-4 mb-4 border border-primary text-primary">Mission-Through-MissionId</h5>
                                        </div>

                                        <textarea id="missionThrough" cols="60" rows="13" style="resize: none;"></textarea>
                                    </div>
                                    
                                    <div>
                                        <button type="submit" class="btn btn-primary">Sumbmit</button>
                                    </div>
                                </form>
                            </div>

                            <div class="col" style="text-align: center;">
                                <div class="mb-3" style="text-align: center;">
                                    <div style="text-align: center;">
                                        <h5 class="fw-bolder mt-4 mb-4 border border-primary text-primary">Mission-Photo-MissionId</h5>
                                    </div>
                                    <img src="/resources/img/test/h1.jpg" alt="" style="object-fit: cover; width: 100%;">
                                </div>

                                <form enctype="multipart/form-data">
                                    <div class="input-group">
                                        <input type="file" class="form-control" id="mPhoto" aria-label="Upload">
                                        <button class="btn btn-primary" type="submit" id="mBphoto">Upload</button>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>

                    <div class="container" id="createMission">
                        <div style="text-align: center;">
                            <h4 class="fw-bolder mt-4 mb-4 border border-dark">Create-Mission</h4>
                        </div>
                        <form id="createMission" name="createMission" action="/websport/member/createmission" method="post" enctype="multipart/form-data">
                            <div class="row  justify-content-center">
                                <div class="col-6">
                                    <div style="text-align: center;">
                                        <h5 class="fw-bolder mt-4 mb-4 border border-primary text-primary">Edit</h5>
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="mName" class="form-lab fw-bolder">Mission Name</label>
                                        <input id="mName" class="form-control" type="text" name="mName"> 
                                    </div>

                                    <div class="mb-3">
                                        <label for="mLevel" class="form-label fw-bolder">Mission Level</label>
                                        <!-- <input type="text" class="form-control" id="mLevel"> -->
                                        <select id="mLevel" class="form-control" name="mLevel">
                                            <option value="Easy">Easy</option>
                                            <option value="Normal">Normal</option>
                                            <option value="Difficult">Difficult</option>
                                        </select>
                                    </div>

                                    <div class="mb-3">
                                        <label for="mDis" class="form-label fw-bolder">Mission Distance</label>
                                        <!-- <input type="text" class="form-control" id="mDis"> -->
                                        <select id="mDis" class="form-control" name="mDis">
                                            <option value="0~5km">0~5km</option>
                                            <option value="5~10km">5~10km</option>
                                            <option value=">10km">>10km</option>
                                        </select>
                                    </div>

                                    <div class="mb-3">
                                        <label for="mTime" class="form-label fw-bolder">Mission Time</label>
                                        <!-- <input type="text" class="form-control" id="mTime"> -->
                                        <select id="mTime" class="form-control" name="mTime">
                                            <option value="0~5hr">0~5hr</option>
                                            <option value="5~10hr">5~10hr</option>
                                            <option value=">10hr">>10hr</option>
                                        </select>
                                    </div>

                                    <div class="mb-3">
                                        <label for="mType" class="form-label fw-bolder">Mission Type</label>
                                        <select id="mType" class="form-control" name="mType">
                                            <option value="Hiking">Hiking</option>
                                            <option value="Running">Running</option>
                                            <option value="Biking">Biking</option>
                                        </select>
                                    </div>

                                    <div class="mb-3">
                                        <label for="mClass" class="form-label fw-bolder">Mission Class</label>
                                        <!-- <input type="text" class="form-control" id="mClass" readonly="readonly" value="Private"> -->
                                        <select id="mClass" class="form-control" name="mClass">
                                            <option value="Private">Private</option>
                                            <option value="Official">Official</option>
                                        </select>
                                    </div>
                                    
                                    <div>
                                        <label for="mPhoto" class="form-label fw-bolder">Mission Photo Upload</label>
                                        <input type="file" name="mPhoto" class="form-control" id="mPhoto" aria-label="Upload">
                                    </div>

                                </div>

                                <div class="col-6">
                                    <div style="text-align: center;">
                                        <h5 class="fw-bolder mt-4 mb-4 border border-primary text-primary">Description</h5>
                                    </div>
                                    
                                    <div class="mb-3">                                        
                                        <label for="mDoc" class="form-label fw-bolder">Mission Description</label>
                                        <textarea style="resize:none" class="form-control" id="mDoc" name="mDoc" rows="23"></textarea>
                                    </div>
                                </div>

                                <div style="text-align: center;">
                                    <button type="submit" class="btn btn-primary">Sumbmit</button>
                                </div>
                            
                            </div>
                        </form>
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

            $("#memberAccount").show();
            $("#missionInfo").hide();
            $("#createMission").hide();

            document.getElementById("bMemberAccount").addEventListener("click",bMemberAccount);
            function bMemberAccount(){
                $("#memberAccount").show();
                $("#missionInfo").hide();
                $("#createMission").hide();
            }

            document.getElementById("bMissionInfo").addEventListener("click",bMissionInfo);
            function bMissionInfo(){
                $("#memberAccount").hide();
                $("#missionInfo").show();
                $("#createMission").hide();
            }

            document.getElementById("bCreateMission").addEventListener("click",bCreateMission);
            function bCreateMission(){
                $("#memberAccount").hide();
                $("#missionInfo").hide();
                $("#createMission").show();
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
	<!--  
    <script>
    	$(function(){
	        console.log(document.getElementById("mType").value);
	        document.getElementById("createMission").setAttribute("action","/websport/member/create/hikingmission");
	        console.log(document.getElementById("createMission").getAttribute("action"));
	
	        document.getElementById("mType").addEventListener("change",changeaction);
	        
	        function changeaction(){
	            if(document.getElementById("mType").value == "Hiking"){
	                console.log("action=/websport/member/create/hikingmission")
	                document.getElementById("createMission").setAttribute("action","/websport/member/create/hikingmission");
	                document.getElementById("createMission").action="/websport/member/create/hikingmission"
	                console.log(document.getElementById("createMission").getAttribute("action"));
	
	            }if(document.getElementById("mType").value == "Running"){
	                console.log("action=/websport/member/create/runningmission")
	                document.getElementById("createMission").setAttribute("action","/websport/member/create/runningmission");
	                document.getElementById("createMission").action="/websport/member/create/runningmission"
	                console.log(document.getElementById("createMission").getAttribute("action"));                
	
	            }if(document.getElementById("mType").value == "Biking"){
	                console.log("action=/websport/member/create/bikingmission")
	                document.getElementById("createMission").setAttribute("action","/websport/member/create/bikingmission");
	                document.getElementById("createMission").action="/websport/member/create/bikingmission"
	                console.log(document.getElementById("createMission").getAttribute("action"));
	            }
	        }
    	});
    </script>
    -->

</body>
</html>