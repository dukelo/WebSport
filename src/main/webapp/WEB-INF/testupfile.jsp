<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
    <h4>File Upload</h4>
    <form action="/testservice" method="post" enctype="multipart/form-data">
        <div>
            <label>Title</label>
            <input type="text" name="title">
        </div>

        <div>
            <label>update name</label>
            <input type="text" name="name">
        </div>

        <div>
            <label>detail</label>
            <input type="text" name="detail">
        </div>
        
        <div>
            <label>file</label>
            <input type="file" name="img">        
        </div>
        

        <button type="submit">submit</button>

    </form>

</body>
</html>