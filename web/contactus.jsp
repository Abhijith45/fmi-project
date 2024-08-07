<%-- 
    Document   : contactus
    Created on : 11 Sep, 2023, 12:18:00 PM
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
        <style>
            #contform{
            min-height: 395px;
            border-radius:10px;
            box-shadow:0 0 10px white;
            border:1px solid white;
            transition: transform .5s ease
            }
            .map{
                transition: transform .5s ease
            }
            #contform:hover,.map:hover{
                transform: scale(1.01);
            }
            #contform h2{
                color: white;
                width: 50%;
                text-align: center;
                margin: auto;
                border-bottom: 4px solid;
                /*border-bottom-style: dashed;*/
            }
            #contform form{
                width: 70%;
                /*border: 1px solid;*/
                margin: auto;
            }
            #contform form input[type="radio"]{
                box-shadow: none;
            }
            #contform form input[type="text"],#contform form textarea{
                color: white;
                border-color: #2d3047;
                border-radius: 0;
                box-shadow: none;
                outline: none;
                background:none;
                border-bottom: 1px solid;
            }
            #contform form input[type="text"]::placeholder,#contform form textarea::placeholder{
                color: white;
                opacity: 0.6;
            }
            #contform form input[type="text"]:focus,#contform form textarea:focus{
                border: 1px solid white; 
                background-color: whitesmoke;
                transition: 0.5s linear;
                border-radius: 5px;
                color: #2d3047;
                font-weight: bold;
                font-family: Calibri;
            }
            
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>           
            <!--Imgage-->
            <div class="row" style="height:210px;background:url('images/enquiry.jpg');background-size:cover;background-position: center;background-repeat: no-repeat;">
                <span class="display-3 fw-bolder text-white mt-5 pt-1" style="width:480px;">
                    Contact Us
                </span>
            </div>
            
            <!--Row-->
            <div class="row" style="background-color: #2d3047;">
                <div class="col-sm-6 mx-auto mt-2" id="contform" >
                    <h2 class="h2 mt-1 pb-2">Enquiry Form</h2>
                    <form method="post" class="form-group mt-4 mb-2" style="width:70%;" action="controller.jsp" >
                        <input type="hidden" name="page" value="contactus" />
                        <input type="text" name="name" class="form-control my-3 py-0 px-1" placeholder="Enter Name" required/>
                        <input type="radio" name="gender" value="Male" class="form-check-input" required/> <span class="text-white fw-semiboldbold"> Male</span>
                        <input type="radio" name="gender" value="Female" class="form-check-input" required/> <span class="text-white fw-semibold"> Female</span>
                        <input type="text" name="address" class="form-control my-3 py-0 px-1" placeholder="Enter Address" required/>
                        <input type="text" name="contactno" class="form-control my-3 py-0 px-1" required maxlength="10" placeholder="Enter Contact No"/>
                        <input type="text" name="emailaddress" class="form-control my-3 py-0 px-1" required placeholder="Enter Email Address" />
                        <textarea name="enquirytext" rows="1" class="form-control my-3 py-0 px-1" required placeholder="Enter Enquiry Text" ></textarea>
                        <button type="submit" class="btn btn-success">Submit</button>
                    </form>
                </div>
            </div>
            <div class="row py-5" style="background-color: #2d3047;">
                <h3 class="h2 mb-4 text-white mx-auto" style="text-align:center;text-shadow:0 0 2px white;">
                    Hukmawati Cold Storage Pvt Ltd</h3>
                <div class="col-sm-6 d-flex mx-auto map" style="min-height:400px;border-radius:10px;box-shadow: 0 0 10px white;">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3557.3596061207495!2d80.9616290748466!3d26.923811976640575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399957cc00000043%3A0xe946d5cb9b782188!2sSoftpro%20India%20Computer%20Technologies%20Pvt%20Ltd!5e0!3m2!1sen!2sin!4v1694885052867!5m2!1sen!2sin" width="100%" height="100%" style="border:2px solid;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
