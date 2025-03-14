<%-- 
    Document   : dashboard
    Created on : 20 Sep, 2023, 11:35:20 PM
    Author     : Abhijeet Rawat
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <link href="../css/fontawesome.css" rel="stylesheet" type="text/css"/>
        <link href="../css/adminstyle.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="../images/favicon1.ico"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="../js/bootstrap.bundle.js"></script>
        <title>Farmer Merchant Integration</title>
        <style>
            .nav pills li:hover{
                background-color: blue;
            } 
        </style>
    </head>
    <body>
        <div class="container-fluid">
            
            <jsp:include page="header.jsp"/>
            <!--Main Contents-->
            <div class="row flex-nowrap" >
                <div class="col-auto bg-dark col-md-3 col-lg-2 min-vh-100 d-flex flex-column justify-content-between" style="min-height: 600px;background-color: aliceblue;">
                    <div class="bg-dark p-2">
                        <a class="d-flex mt-1 text-white text-decoration-none align-items-center">
                            <span class="fs-4 fw-bold d-none d-sm-inline">
                                Admin Dashboard
                            </span>
                        </a>
                        <ul class="nav nav-pills flex-column mt-4">
                            <li class="nav-item py-2 py-sm-0">
                                <a href="#" class="nav-link text-white">
                                <i class="fs-5 fa fa-house"></i><span class="fs-4 d-none d-sm-inline ms-2">Home</span>
                                </a>
                            </li>
                            <li class="nav-item py-2 py-sm-0">
                                <a href="#" class="nav-link text-white">
                                    <i class="fs-5 fa fa-table-list"></i><span class="fs-4 d-none d-sm-inline ms-2">News</span>
                                </a>
                            </li>
                            <li class="nav-item py-2 py-sm-0">
                                <a href="#" class="nav-link text-white">
                                    <i class="fs-5 fa fa-table-list"></i><span class="fs-4 d-none d-sm-inline ms-2">Events</span>
                                </a>
                            </li>
                            <li class="nav-item py-2 py-sm-0">
                                <a href="#" class="nav-link text-white">
                                    <i class="fs-5 fa fa-table-list"></i><span class="fs-4 d-none d-sm-inline ms-2">Enquiries</span>
                                </a>
                            </li>
                            <li class="nav-item py-2 py-sm-0">
                                <a href="#" class="nav-link text-white">
                                    <i class="fs-5 fa fa-table-list"></i><span class="fs-4 d-none d-sm-inline ms-2">Registration</span>
                                </a>
                            </li>
                            <li class="nav-item py-2 py-sm-0">
                                <a href="#" class="nav-link text-white">
                                    <i class="fs-5 fa fa-table-list"></i><span class="fs-4 d-none d-sm-inline ms-2">Booking</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="dropdown open p-3">
                        <button class="btn border-none dropdown-toggle text-white" type="button" id="triggerId" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fa fa-user"></i>
                            <span class="ms-2">User</span>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="triggerId">
                            <button class="dropdown-item" href="#">Setting</button>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-9 ps-2">
                    <div class="row ">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-3">
                            <img src="../images/user-icon.png" style="width:100%;"/>
                        </div>
                        <div class="col-sm-8">
                            <h2 class="display-2 mt-5 fw-bold">Admin admin</h2>
                            <p class="fw-bold">Senior executive officer</p>
                            <p class="py-0 bg-secondary" style="height:5px;width:60%;"></p>
                        </div>
                    </div>
                    
                    <div class="row mt-4 ps-5" style="display:flex;width:100%;">
                        <%
                            DbManager dm=new DbManager();
                            ResultSet rs1=dm.select("select count(*) from news");
                            ResultSet rs2=dm.select("select count(*) from farmerinfo");
                            ResultSet rs3=dm.select("select count(*) from enquiry");
                            ResultSet rs4=dm.select("select count(*) from booking");
                            rs1.next();
                            rs2.next();
                            rs3.next();
                            rs4.next();
                        %>
                        <div class="card" style="width:18rem;">
                            <div class="card-body" style="background-color:orange;border-radius:5px 5px 0 0;">
                                <h2 style="text-align:center;" class="pe-3">News & Events</h2>
                          </div>
                            <div class="card-body bg-primary" style="border-radius:0 0 5px 5px;">
                                <h1 style="text-align:center;" class="pe-3"><%out.print(rs1.getInt(1));%></h1>
                          </div>
                        </div>
                        <div class="card" style="width:18rem;">
                            <div class="card-body" style="background-color:orange;border-radius:5px 5px 0 0;">
                                <h2 style="text-align:center;" class="pe-3">Farmer Reg.</h2>
                          </div>
                            <div class="card-body bg-primary" style="border-radius:0 0 5px 5px;">
                                <h1 style="text-align:center;" class="pe-3"><%out.print(rs2.getInt(1));%></h1>
                          </div>
                        </div>
                        <div class="card" style="width:18rem;">
                            <div class="card-body" style="background-color:orange;border-radius:5px 5px 0 0;">
                                <h2 style="text-align:center;" class="pe-3">Enquires</h2>
                          </div>
                            <div class="card-body bg-primary" style="border-radius:0 0 5px 5px;">
                                <h1 style="text-align:center;" class="pe-3"><%out.print(rs3.getInt(1));%></h1>
                          </div>
                        </div>
                        <a href="#" class="text-decoration-none m-4" style="width:18rem;">
                        <div class="card" style="width:18rem;">
                            <div class="card-body" style="background-color:orange;border-radius:5px 5px 0 0;">
                                <h2 style="text-align:center;" class="pe-3">Booking</h2>
                          </div>
                            <div class="card-body bg-primary" style="border-radius:0 0 5px 5px;">
                                <h1 style="text-align:center;" class="pe-3"><%out.print(rs4.getInt(1));%></h1>
                          </div>
                        </div>
                        <div class="card" style="width:18rem;">
                            <div class="card-body" style="background-color:orange;border-radius:5px 5px 0 0;">
                                <h2 style="text-align:center;" class="pe-3">Closing</h2>
                          </div>
                            <div class="card-body bg-primary" style="border-radius:0 0 5px 5px;">
                                <h1 style="text-align:center;" class="pe-3">0</h1>
                          </div>
                        </div>
                    </div>
                    
                </div>
                
            </div>
            
            <jsp:include page="footer.jsp"/>
            
        </div>
    </body>
</html>

