<%-- 
    Document   : login
    Created on : 14 Sep, 2023, 10:25:15 AM
    Author     : Abhijeet Rawat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hukmawati Cold Storage | FMI</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/fontawesome.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="images/favicon1.ico"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="js/bootstrap.bundle.js"></script>
    </head>
    <style>
        /*        .col-sm-8{
                    background: radial-gradient(green,lightblue);
                }*/
        .col-sm-8 h2{
            text-align: center;
            color: blue;
            font-family: monospace;
            font-weight: bold;
            width: 250px;
            border: 1px solid;
            margin: auto;
        }
        
        #loginform input[type="text"]:focus,
        #loginform input[type="password"]:focus{
            box-shadow: 0 0 7px black,0 0 5px black,0 0 5px black;
        }
    </style>
    <body>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>



<div class="row d-flex" style="height:250px;background-color:#2d3047;">
    <div style="margin:0 auto;padding-left: 39%;">
        <img src="images/img-login.png" height="250px;"/>
    </div>
</div>
            <div class="row pb-1" style="background-color: #2d3047;">
                <div class="col-sm-8 mx-auto mb-5" style="min-height:350px;background:url('images/slider_10.jpg');border-radius: 20px;box-shadow:0 0 15px white;">
<!--                    <h2 class="mt-5 bg-white rounded">Admin Login</h2>-->
                    <!--login form-->
                    <form method="post" action="controller.jsp" style="width:60%;margin: auto;box-shadow:0 0 45px black;" class="mt-5 bg-white py-3 px-3 rounded"  id="loginform">
                        <input type="hidden" name="page" value="login"/>
                        <label for="userid" class="fw-bold" >Enter User Id</label>
                        <input type="text" name="userid" class="form-control mt-1 mb-3 border-dark" placeholder="user@email.com" autofocus="true" autocomplete="false" required/>
                        <label for="password" class="fw-bold">Enter password</label>
                        <input type="password" name="password" class="form-control mt-1 mb-3 border-dark" placeholder="password" required/>
                        <button type="submit" class="btn btn-success mt-3 me-auto d-block"> Login </button>
                    </form>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
