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
    <title>New Password</title>
</head>
<!-- <body class="d-flex justify-content-center" style="background-color: #74b9ff;"> -->
<body class="d-flex justify-content-center mb-4" background="/resources/img/cycling/Cycling6.jpg" style="background-repeat: no-repeat ;background-size:cover; background-color: rgba(0, 0, 0, .1)">
    <div class="d-flex justify-content-center mt-5 border rounded-3" style="background-color: #ffffff; width: 576px;">
        <div class="container"  style="width:90%">
            <div class="mt-5 mb-4" style="text-align: center;">
                <h2 class="fw-bolders">Name</h2>
            </div>

            <form action="index.html" onsubmit="return check()">
                <div class="form-group mb-4 mt-1">
                    <label for="newPassword" class="form-label fs-5">New Password</label><span id="newpwdMsg"></span>
                    <input id="newPassword" type="password" class="form-control">
                    <p class="loginp fs-6">(1.Not blank 2. At least 6 words)</p>
                </div>

                <div class="form-group mb-4 mt-1">
                    <label for="newComPassword" class="form-label fs-5">Confirm Password</label><span id="comPwdMsg"></span>
                    <input id="newComPassword" type="password" class="form-control">
                </div>

                <div class="form-group mb-4 mt-1">
                    <input class="form-control btn btn-primary fs-5" type="submit" value="Submit">
                </div>
            </form>

            <div class="mb-5 mt-1">
                <a class="btn btn-primary form-control fs-5" href="index.html" role="button">Return</a>
            </div>

            <script>
                document.getElementById("newPassword").addEventListener("blur",newPwd);

                function newPwd(){
                    var check=false;
                    let newuserPwd=document.getElementById("newPassword");
                    let newuserPwdVal=newuserPwd.value;
                    let newuserPwdLen=newuserPwdVal.length;

                    let newuserPwdMsg=document.getElementById("newpwdMsg");

                    if(newuserPwdVal==""){
                        newuserPwdMsg.outerHTML='<span id="newpwdMsg" style="color:red"> (not blank)</span>'
                        check=false;
                    }else if(newuserPwdLen<6 && newuserPwdLen>0){
                        newuserPwdMsg.outerHTML='<span id="newpwdMsg" style="color:red"> (At least 6 words)</span>'
                        check=false;
                    }else{
                        newuserPwdMsg.outerHTML='<span id="newpwdMsg" style="color:blue"> (pass)</span>'
                        check=true;
                    }
                    return check;
                }

                document.getElementById("newComPassword").addEventListener("blur",checkNewPwd);
                function checkNewPwd(){
                    var check=false;
                    let newPwd=document.getElementById("newPassword").value;
                    let comPwd=document.getElementById("newComPassword").value;
                    
                    if(comPwd==newPwd){
                        comPwdMsg.outerHTML='<span id="newpwdMsg" style="color:blue"> (pass)</span>'
                        check=true;
                    }else{
                        comPwdMsg.outerHTML='<span id="newpwdMsg" style="color:red"> (check again)</span>'
                        check=false;
                    }
                }

                function check(){
                    var check=newPwd() && checkNewPwd();
                    return check;
                }

            </script>

        </div>
    </div>
</body>
</html>