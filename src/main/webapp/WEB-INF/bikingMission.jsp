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
    
    <!-- test -->
    <style>
    .box1 {
        color: #fff;
        font-weight: bold;
        text-align: center;
        background-color: #f85a40;
        width: 120px;
        height: 120px;
        line-height: 120px;
        /* position: absolute; */
        top: 80px;
        left: 200px;
        }

    /* #missionDiscuss{

        position: relative;
    } */
    </style>

    <title>Biking Mission</title>
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

        <div class="container" id="mission">
            <div style="text-align: center;">
                <h4 class="fw-bolder mt-4 mb-4 border border-dark">Biking Mission</h4>
            </div>

            <div class="row justify-content-center">

                <div class="col-5">
                    <div style="text-align: center;">
                        <h5 class="fw-bolder mt-4 mb-4 border border-primary text-primary">Mission Spec</h5>
                    </div>
                    <form action="/websport/hiking/mission/join" method = "get">
                    
                    	<input id="mhid" type="hidden" readonly="readonly" name="mHid" value="${mBid}" >
                    
                        <div class="mb-3">
                            <label for="mName" class="form-lab fw-bolder">Mission Name</label>
                            <input id="mName" class="form-control" type="text" readonly="readonly" value="${mName}" > 
                        </div>

                        <div class="mb-3">
                            <label for="mLevel" class="form-label fw-bolder">Mission Level</label>
                            <input type="text" class="form-control" id="mLevel" readonly="readonly" value="${mLevel}">
                        </div>

                        <div class="mb-3">
                            <label for="mTime" class="form-label fw-bolder">Mission Time</label>
                            <input type="text" class="form-control" id="mTime" readonly="readonly" value="${mTime}">
                        </div>

                        <div class="mb-3">
                            <label for="mDis" class="form-label fw-bolder">Mission Distance</label>
                            <input type="text" class="form-control" id="mDis" readonly="readonly" value="${mDis}">
                        </div>

                        <div class="mb-3">
                            <label for="mDoc" class="form-lab fw-bolder">Mission Doc</label>
                            <!--  <input id="mDoc" class="form-control" type="text" readonly="readonly" value="${mDoc}">-->
                            <textarea style="resize:none" class="form-control" id="mDoc" rows="10" readonly="readonly">${mDoc}</textarea> 
                        </div>

                        <div class="mb-3">
                            <label for="mType" class="form-lab fw-bolder">Mission Type</label>
                            <input id="mType" class="form-control" type="text" readonly="readonly" value="${mType}"> 
                        </div>

                        <div class="mb-3">
                            <label for="mClass" class="form-label fw-bolder">Mission Class</label>
                            <input type="text" class="form-control" id="mClass" readonly="readonly" value="${mClass}">
                        </div>

                        <div style="text-align: center;">
                            <button type="submit" class="btn btn-primary">Join</button>
                        </div>

                    </form>
                </div>

                <div class="col-7">
                    <div style="text-align: center;">
                        <h5 class="fw-bolder mt-4 mb-4 border border-primary text-primary">Mission Photo</h5>
                    </div>

                    <div class="mb-3" style="text-align: center;">
                        <img src="/websport/biking/image/${bImage}" alt="" style="object-fit: cover; width: 100%;">
                    </div>

                </div>
            </div>
        </div>

        <div class="container position-relative">
            <div >
                <h4 class="fw-bolder mt-4 mb-4 border border-dark" style="text-align: center;">Mission Discuss</h4>
            </div>
                
            <div id="missionDiscuss">
            <!--  
                <div>
                    <div class="row justify-content-center">
                        <div class="col">
                            <div class="mb-3 border-end text-center">
                                <img src="/resources/img/test/phototest1.jpg" alt="" style="object-fit: cover;height: 30;">
                            </div>
                            <h5 class="fw-bolder text-center">Tom</h5>
                        </div>

                        <div class="col-9">
                            test
                        </div>

                    </div>
                </div>

                <div>
                    <div class="row justify-content-center">
                        <div class="col">
                            <div class="mb-3 border-end text-center">
                                <img src="/resources/img/test/phototest1.jpg" alt="" style="object-fit: cover;height: 30;">
                            </div>
                            <h5 class="fw-bolder text-center">Tom</h5>
                        </div>

                        <div class="col-9">
                            test
                        </div>

                    </div>
                </div>

                <div class="text-end">
                    <button type="button" id="bMissioDiscuss" class="btn btn-primary">Edit</button>
                </div>
			-->
			
            </div>
            
                <div class="text-end">
                    <button type="button" id="bMissioDiscuss" class="btn btn-primary">Edit</button>
                </div>
            

            <div id="uMissionDiscuss" class="container position-absolute top-0 start-50 translate-middle-x w-75 bg-light border border-dark">

                <div class=" w-100" style="text-align: center;">
                    <h5 class="fw-bolder mt-4 mb-4 border border-primary text-primary">Mission Discuss</h5>
                </div>
        
                <div class="mb-4">
                <form action="/websport/member/biking/mission/discuss/update" method = "Post">
                
                	<input id="mhid" type="hidden" readonly="readonly" name="umBid" value="${mBid}" >
                
                    <div class="mb-3 w-100  text-center">
                        <textarea class="form-control border" id="mClass" rows="10" name="umBDoc"></textarea>
                    </div>
                    
                    <div class="row justify-content-center">
        
	                    <div class="text-center col">
	                        <button type="submit" id="uBMissioDiscuss" class="btn btn-primary">Update</button>
	                    </div>
	                    
	                    <div class="text-center col">
	                        <button type="button" id="uBMissioDiscussc" class="btn btn-primary">Cancel</button>
	                    </div>
	                    
	                </div>
        
                </form>
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

            $("#uMissionDiscuss").hide();

            document.getElementById("bMissioDiscuss").addEventListener("click",bMissionDiscuss);
            function bMissionDiscuss(){
                $("#uMissionDiscuss").show();
            }

            document.getElementById("uBMissioDiscuss").addEventListener("click",uBMissionDiscuss);
            document.getElementById("uBMissioDiscussc").addEventListener("click",uBMissionDiscuss);
            function uBMissionDiscuss(){
                $("#uMissionDiscuss").hide();
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
  			url:"/websport/member/biking/mission/discuss/"+${mBid},
  			contentType:"application/json",
  			success:function(data){
  				var json = JSON.stringify(data, null, 4);
  				console.log("success"+json);
  				
  				var jsonArray = JSON.parse(json);
  				$("#missionDiscuss").empty("");
  					if(json == null){
  						$("#missionDiscuss").append("No Result");
  					}else{
  						$.each(jsonArray, function(i,n){
  							
  							var content =
  				                `<div>
		  		                    <div class="row justify-content-center">
		  		                        <div class="col">
		  		                            <div class="mb-3 border-end text-center">
		  		                                <img src="/websport/biking/mission/discuss/userphoto/`+n.name+`" alt="" style="object-fit: cover;height: 30;">
		  		                            </div>
		  		                            <h5 class="fw-bolder text-center">`+n.name+`</h5>
		  		                        </div>
		
		  		                        <div class="col-9">
		  		                            `+n.bContent+`
		  		                        </div>
		
		  		                    </div>
		  		                </div>`

		                        $("#missionDiscuss").append(content);
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