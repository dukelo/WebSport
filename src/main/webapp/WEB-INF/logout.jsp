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
    <title>Logout</title>
</head>

<body class="d-flex justify-content-center mb-4" background="/resources/img/cycling/Cycling6.jpg" style="background-repeat: no-repeat ;background-size:cover; background-color: rgba(0, 0, 0, .1)">
    <div class="d-flex justify-content-center mt-5 border rounded-3" style="background-color: #ffffff; width: 576px;">
        <div class="container"  style="width:90%">
            <div class="mt-5 mb-4" style="text-align: center;">
                <h2 class="fw-bolders">Logout</h2>
            </div>

            <form action="/logout" method="post">
                <div class="form-group mb-4 mt-1">
                    <input class="form-control btn btn-primary fs-5" type="submit" value="Logout">
                </div>
            </form>
            
            <div class="mb-5 mt-1">
                <a class="btn btn-primary form-control fs-5" href="/websport/index" role="button">Return</a>
            </div>

        </div>
    </div>

</html>