<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="./resources/css/sportStyle.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="./resources/fontawesome-free-5.15.4-web/css/all.css">

    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-rwdImageMaps/1.6/jquery.rwdImageMaps.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <title>Sign Up</title>

</head>
<!-- <body class="d-flex justify-content-center" style="background-color: #74b9ff;"> -->
<body class="d-flex justify-content-center mb-4" background="/resources/img/cycling/Cycling6.jpg" style="background-repeat: no-repeat ;background-size:cover; background-color: rgba(0, 0, 0, .1)">
    <div class="d-flex justify-content-center mt-5 border rounded-3" style="background-color: #ffffff; width: 576px;">
        <div class="container"  style="width:90%">
            <div class="mt-5 mb-4" style="text-align: center;">
                <h2 class="fw-bolders">Sign Up</h2>
            </div>

            <form action="/websport/signup" method="post" onsubmit="return check()">
                <div class="form-group mb-4">
                    <label for="signUpName" class="form-label fs-5">Name</label><span id="signUpMsg"></span>
                    <input id="signUpName" name="name" type="text" class="form-control">
                </div>
                
                <div class="form-group mb-4">
                    <label for="signUpNName" class="form-label fs-5">NickName</label><span id="signUpMsg"></span>
                    <input id="signUpNName" name="nName" type="text" class="form-control">
                </div>
                
                <div class="form-group mb-4 mt-1">
                    <label for="signUpPassword" class="form-label fs-5">Password</label><span id="signUpPasswordMsg"></span>
                    <input id="signUpPassword" name="password" type="password" class="form-control">
                </div>

                <div class="form-group mb-4 mt-1">
                    <label for="signUpComPassword" class="form-label fs-5">Comfirm Password</label><span id="signUpComPasswordMsg"></span>
                    <input id="signUpComPassword" type="password" class="form-control">
                </div>
                
                <div class="form-group mb-4 mt-1">
                    <label for="signUpEmail" class="form-label fs-5">Email</label><span id="signUpEmailMsg"></span>
                    <input id="signUpEmail" name="email" type="text" class="form-control">
                </div>
                
                <div class="form-group mb-4 mt-1">
                    <input id="signUpMPhoto" name="mPhoto" value="mPhoto" type="hidden" class="form-control">
                </div>
                
                <div class="form-group mb-4 mt-1">
                    <input class="form-control btn btn-primary fs-5" type="submit" value="Submit">
                </div>
            </form>

            <div class="mb-5 mt-1">
                <a class="btn btn-primary form-control fs-5" href="/websport/index" role="button">Return</a>
            </div>

        </div>
    </div>

    <script>
        document.getElementById("signUpName").addEventListener("blur",checkName);

        function checkName(){
            var check=false;
            let userName=document.getElementById("signUpName");
            let userNameVal=userName.value;
            let userNamelen=userNameVal.length;
            console.log(userNameVal);

            let userNameMsg=document.getElementById("signUpMsg");

            if(userNameVal==""){
                userNameMsg.outerHTML='<span id="signUpMsg" style="color:red"> (not blank)</span>'
                check=false;
            }else if(userNamelen<3 && userNamelen>0){
                userNameMsg.outerHTML='<span id="signUpMsg" style="color:red"> (At least 3 words)</span>'
                check=false;
            }else{
                userNameMsg.outerHTML='<span id="signUpMsg" style="color:blue"> (pass)</span>'
                check=true;
            }
            return check;
        }

        document.getElementById("signUpEmail").addEventListener("blur",checkemail);

        function checkemail(){
            var check=false;
            let email=document.getElementById("signUpEmail").value;
            let emaillen=email.length;
            console.log(email);

            let astart=email.indexOf("@");
            let dstart=email.indexOf(".");

            if(emaillen==""){
                signUpEmailMsg.outerHTML='<span id="signUpEmailMsg" style="color:red"> (not blank)</span>'
                check=false;
            }else if(astart==-1){
                signUpEmailMsg.outerHTML='<span id="signUpEmailMsg" style="color:red"> (need "@")</span>'
                check=false;
            }else if(dstart==-1){
                signUpEmailMsg.outerHTML='<span id="signUpEmailMsg" style="color:red"> (need ".")</span>'
                check=false;
            }else if(astart==0 | astart+2>dstart | dstart+1==emaillen){
                signUpEmailMsg.outerHTML='<span id="signUpEmailMsg" style="color:red"> (Error)</span>'
                check=false;
            }else{
                signUpEmailMsg.outerHTML='<span id="signUpEmailMsg" style="color:blue"> (pass)</span>'
                check=true;
            }
            return check;
        }
    
        document.getElementById("signUpPassword").addEventListener("blur",newPwd);
        function newPwd(){
            var check=false;
            let newuserPwd=document.getElementById("signUpPassword");
            let newuserPwdVal=newuserPwd.value;
            let newuserPwdLen=newuserPwdVal.length;

            // let newuserPwdMsg=document.getElementById("signUpPasswordMsg");

            if(newuserPwdVal==""){
                signUpPasswordMsg.outerHTML='<span id="signUpPasswordMsg" style="color:red"> (not blank)</span>'
                check=false;
            }else if(newuserPwdLen<6 && newuserPwdLen>0){
                signUpPasswordMsg.outerHTML='<span id="signUpPasswordMsg" style="color:red"> (At least 6 words)</span>'
                check=false;
            }else{
                signUpPasswordMsg.outerHTML='<span id="signUpPasswordMsg" style="color:blue"> (pass)</span>'
                check=true;
            }
            return check;
        }

        document.getElementById("signUpComPassword").addEventListener("blur",checkNewPwd);
            function checkNewPwd(){
                var check=false;
                let newPwd=document.getElementById("signUpPassword").value;
                let comPwd=document.getElementById("signUpComPassword").value;
                
                if(comPwd==newPwd){
                    signUpComPasswordMsg.outerHTML='<span id="signUpComPasswordMsg" style="color:blue"> (pass)</span>'
                    check=true;
                }else{
                    signUpComPasswordMsg.outerHTML='<span id="signUpComPasswordMsg" style="color:red"> (check again)</span>'
                    check=false;
                }
            }

        function check(){
            var check=checkName() &&checkemail() &&newPwd() &&checkNewPwd();
            return check;
        }

    </script>
</body>
</html>
