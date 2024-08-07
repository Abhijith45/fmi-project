<%-- 
    Document   : adminhome
    Created on : 15 Sep, 2023, 10:27:07 AM
    Author     : Abhijeet Rawat
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
    if(session.getAttribute("adminid")==null){
        response.sendRedirect("../login.jsp");
    }
    else{
%>

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
        <title>Cold Storage | FMI</title>
        <style>
            .admin-row .col-sm-2{
                background: url('../images/user-icon.png');
                background-position: center;
                background-size: contain;
                background-repeat: no-repeat;
                border-radius: 8px 0 0 8px;
            }
            .admin-row .col-sm-8{
                border-radius: 0 8px 8px 0;
                text-shadow:0 0 3px white;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            
            <jsp:include page="header.jsp"/>
            <!--Main Contents-->
            <div class="row flex-nowrap" style="background: url(../videoes/bg-video.mp4)">                
                <div class="col-md-12 ps-2">
                    <div class="row admin-row mt-4">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-2 bg-secondary">                           
                        </div>
                        <div class="col-sm-8 bg-secondary">
                            <h2 class="display-4 mt-4 fw-bold">Hukmawati</h2>
                            <p class="fw-bold">Executive Director (ED)</p>
                            <p class="py-0 bg-white " style="height:3px;width:60%;"></p>
                        </div>
                        <div class="col-sm-1"></div>
                    </div>
                    
                    <div class="row mt-4 ps-5 pt-2 pb-4 mb-2" style="display:flex;width:100%;gap:1.5rem 2rem;justify-content:center;">
                        <%
                            DbManager dm=new DbManager();
                            ResultSet rs1=dm.select("select count(*) from news");
                            ResultSet rs2=dm.select("select count(*) from farmerinfo");
                            ResultSet rs3=dm.select("select count(*) from enquiry");
                            ResultSet rs4=dm.select("select count(*) from booking");
                            ResultSet rs5=dm.select("select count(*) from booking where restamt='0'");
                            rs1.next();
                            rs2.next();
                            rs3.next();
                            rs4.next();
                            rs5.next();
                        %>
                        <div class="card p-0" style="width:18rem;">
                            <div class="card-body" style="background-color:orange;border-radius:5px 5px 0 0;">
                                <h2 style="text-align:center;" class="pe-3">News & Events</h2>
                          </div>
                            <div class="card-body bg-primary" style="border-radius:0 0 5px 5px;">
                                <h1 style="text-align:center;" class="pe-3"><%out.print(rs1.getInt(1));%></h1>
                          </div>
                        </div>
                        <div class="card p-0" style="width:18rem;">
                            <div class="card-body" style="background-color:orange;border-radius:5px 5px 0 0;">
                                <h2 style="text-align:center;" class="pe-3">Farmer Reg.</h2>
                          </div>
                            <div class="card-body bg-primary" style="border-radius:0 0 5px 5px;">
                                <h1 style="text-align:center;" class="pe-3"><%out.print(rs2.getInt(1));%></h1>
                          </div>
                        </div>
                        <div class="card p-0" style="width:18rem;">
                            <div class="card-body" style="background-color:orange;border-radius:5px 5px 0 0;">
                                <h2 style="text-align:center;" class="pe-3">Enquires</h2>
                          </div>
                            <div class="card-body bg-primary" style="border-radius:0 0 5px 5px;">
                                <h1 style="text-align:center;" class="pe-3"><%out.print(rs3.getInt(1));%></h1>
                          </div>
                        </div>
                        <div class="card p-0" style="width:18rem;">
                            <div class="card-body" style="background-color:orange;border-radius:5px 5px 0 0;">
                                <h2 style="text-align:center;" class="pe-3">Booking</h2>
                          </div>
                            <div class="card-body bg-primary" style="border-radius:0 0 5px 5px;">
                                <h1 style="text-align:center;" class="pe-3"><%out.print(rs4.getInt(1));%></h1>
                          </div>
                        </div>
                        <div class="card p-0" style="width:18rem;">
                            <div class="card-body" style="background-color:orange;border-radius:5px 5px 0 0;">
                                <h2 style="text-align:center;" class="pe-3">Closing</h2>
                          </div>
                            <div class="card-body bg-primary" style="border-radius:0 0 5px 5px;">
                                <h1 style="text-align:center;" class="pe-3"><%out.print(rs5.getInt(1));%></h1>
                          </div>
                        </div>
                    </div>
                    
                </div>
                
            </div>
            
            <jsp:include page="footer.jsp"/>
            
        </div>
    </body>
</html>


<%
    }
%>