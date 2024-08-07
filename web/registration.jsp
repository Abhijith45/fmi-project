<%-- 
    Document   : registration
    Created on : 13 Sep, 2023, 11:01:10 AM
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
            #leftbox .x{
                background-image: url('images/rs_slide/slide_c.jpg');
                background-position: center;
                background-size: contain;
                background-repeat: no-repeat;
            }
            #rightbox h2{
                width: 40%;
                background: white;
                color: #2d3047;
                margin: auto;
                border-radius: 5px;
            }
            #rightbox form{
                background: none;
                border: 1px solid white;
            }
            #rightbox form table{
                background: none;
                border: none;
            }
            #rightbox form tr{
                background: none;
            }
            #rightbox form tr td{
                background: none;
                color: white;
                font-weight: bold;
            }
            #rightbox form tr td input[type="text"],
            #rightbox form tr td input[type="number"]{
                height: 1.8em;
                box-shadow: none;
                border: none;
                outline: none;
                margin-bottom: 7px;
                margin-top: 7px;
            }
            #rightbox form tr td:nth-child(1){
                font-size: 1.15rem;
            }
            #rightbox form tr td input[type="radio"]{
                box-shadow: none;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
               
           
            <div class="row" style="background-color: #2d3047;">
                <!--Left part-->
                
                
                <!--Right part-->
                <div class="col-sm-7 mx-auto" id="rightbox" style="min-height: 600px;">
                    <h2 style="text-align: center;" class="h2 py-1 mt-4">Registration Form</h2>
                    <form method="post" class="form-group px-3 mt-4 py-3" style="width: 80%;margin: auto;" action="controller.jsp" >
                        <input type="hidden" name="page" value="register" />
                        <table class="" style="margin: auto;width: 98%;">
                            <tr>
                                <td style="width: 32%;">Enter Name</td>
                                <td>
                                    <input type="text" name="name" autofocus="true" class="form-control px-1" />
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Father Name</td>
                                <td>
                                    <input type="text" name="fname" class="form-control px-1" />
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Mother Name</td>
                                <td>
                                    <input type="text" name="mname" class="form-control px-1" />
                                </td>
                            </tr>
                            <tr>
                                <td>Select Gender</td>
                                <td>
                                    <input type="radio" name="gender" value="Male" class="form-check-input"/> Male
                                    <input type="radio" name="gender" value="Female" class="form-check-input"/> Female
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Village</td>
                                <td>
                                    <input type="text" name="village" class="form-control px-1" />
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Post</td>
                                <td>
                                    <input type="text" name="post" class="form-control px-1" />
                                </td>
                            </tr>
                            <tr>
                                <td>Enter District</td>
                                <td>
                                    <input type="text" name="district" class="form-control px-1" />
                                </td>
                            </tr>
                            <tr>
                                <td>Enter State</td>
                                <td>
                                    <input type="text" name="state" class="form-control px-1" />
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Pin code</td>
                                <td>
                                    <input type="number" name="pincode" class="form-control px-1" maxlength="10"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Contact No</td>
                                <td>
                                    <input type="number" name="contactno" class="form-control px-1" size="10" maxlength="10"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Aadhaar No</td>
                                <td>
                                    <input type="number" name="aadharno" class="form-control px-1" size="10" minlength="10" maxlength="10"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Pan No</td>
                                <td>
                                    <input type="text" name="panno" class="form-control px-1" />
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success py-1 mt-3">Submit</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
<div class="row pb-4" style="background-color:#2d3047;">
                <div class="col-sm-5  px-0 mx-auto" id="leftbox" style="min-height: 600px;">   
                    <div class="row px-5 my-4 h3 text-white mx-auto" style="width: 75%;text-align: center;'">
                        "वो तपती धूप में गेहूं काटता है खेतों में, फिर आटा मिलता है दुकानों में।"
                    </div> 
                    <div class="row x" style="height: 80%"></div>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
