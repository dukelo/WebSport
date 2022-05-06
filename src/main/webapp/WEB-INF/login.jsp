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
    <title>Login</title>
</head>
<!-- <body class="d-flex justify-content-center" style="background-color: #74b9ff;"> -->
<body class="d-flex justify-content-center mb-4" background="/resources/img/cycling/Cycling6.jpg" style="background-repeat: no-repeat ;background-size:cover; background-color: rgba(0, 0, 0, .1)">
    <div class="d-flex justify-content-center mt-5 border rounded-3" style="background-color: #ffffff; width: 576px;">
        <div class="container"  style="width:90%">
            <div class="mt-5 mb-4" style="text-align: center;">
                <h2 class="fw-bolders">Login</h2>
            </div>

            <form action="/login/page" method="post" onsubmit="return check()">
                <div class="form-group mb-4">
                    <label for="loginName" class="form-label fs-5">Name</label><span id="loginMsg"></span>
                    <input name="username" id="loginName" type="text" class="form-control">
                    <p class="loginp fs-6">(1.Not blank 2. At least 3 words)</p>
                </div>

                <div class="form-group mb-4 mt-1">
                    <label for="loginPassword" class="form-label fs-5">Password</label><span id="pwdMsg"></span>
                    <input name="password" id="loginPassword" type="password" class="form-control">
                    <p class="loginp fs-6">(1.Not blank 2. At least 6 words)</p>
                    <span></span>
                </div>
                
                <div class="fs-5 mb-4">
					<input type="checkbox" name="remember-me">
					<label>
					    RememberMe
					</label>
									
                </div>

                <div class="form-group mb-4 mt-1">
                    <input class="form-control btn btn-primary fs-5" type="submit" value="Submit">
                </div>
            </form>

            <div class="mb-4 mt-1">
                <a class="btn btn-primary form-control fs-5" href="/reSend/page" role="button">Forget Password</a>
            </div>

            <div class="mb-4 mt-1">
                <a class="btn btn-primary form-control fs-5" href="/signUp/page" role="button">Create Account</a>
            </div>

            <div class="mb-5 mt-1">
                <a class="btn btn-primary form-control fs-5" href="/websport/index" role="button">Return</a>
            </div>

        </div>
    </div>

    <script>
        document.getElementById("loginName").addEventListener("blur",checkName);
        function checkName(){
            var check=false;
            let userName=document.getElementById("loginName");
            let userNameVal=userName.value;
            let userNamelen=userNameVal.length;
            console.log(userNameVal);

            let userNameMsg=document.getElementById("loginMsg");

            if(userNameVal==""){
                userNameMsg.outerHTML='<span id="loginMsg" style="color:red"> (not blank)</span>'
                check=false;
            }else if(userNamelen<3 && userNamelen>0){
                userNameMsg.outerHTML='<span id="loginMsg" style="color:red"> (At least 3 words)</span>'
                check=false;
            }else{
                userNameMsg.outerHTML='<span id="loginMsg" style="color:blue"> (pass)</span>'
                check=true;
            }
            return check;
        }

        document.getElementById("loginPassword").addEventListener("blur",checkPwd);
        function checkPwd(){
            var check=false;
            let userPwd=document.getElementById("loginPassword");
            let userPwdVal=userPwd.value;
            let userPwdLen=userPwdVal.length;

            let userPwdMsg=document.getElementById("pwdMsg");

            if(userPwdVal==""){
                userPwdMsg.outerHTML='<span id="pwdMsg" style="color:red"> (not blank)</span>'
                check=false;
            }else if(userPwdLen<6 && userPwdLen>0){
                userPwdMsg.outerHTML='<span id="pwdMsg" style="color:red"> (At least 6 words)</span>'
                check=false;
            }else{
                userPwdMsg.outerHTML='<span id="pwdMsg" style="color:blue"> (pass)</span>'
                check=true;
            }
            return check;
        }

        function check(){
            var check=checkName() && checkPwd();
            return check;
        }


    </script>
</body>
</html>