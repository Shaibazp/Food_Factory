<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <!-- Basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">

        <!-- Site Metas -->
        <title>Food Funday Restaurant - One page HTML Responsive</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- color -->
        <link id="changeable-colors" rel="stylesheet" href="css/colors/orange.css" />

        <!-- Modernizer -->
        <script src="js/modernizer.js"></script>

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>
        <div id="loader">
            <div id="status"></div>
        </div>
        <div id="site-header">
            <header id="header" class="header-block-top">
                <div class="container">
                    <div class="row">
                        <div class="main-menu">
                            <nav class="navbar navbar-default" id="mainNav">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <div class="logo">
                                        <a class="navbar-brand js-scroll-trigger logo-header" href="#">
                                            <img src="images/logo.png" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div id="navbar" class="navbar-collapse collapse">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li class="active"><a href="#banner">Home</a></li>
                                        <li><a href="myorder.jsp">My Order</a></li>
                                        <li><a href="bills.jsp">My Bills</a></li>
                                        <li><a href="review.jsp">Review</a></li>
                                        <li><a href="feedback.jsp">Feedback</a></li>
                                        <li><a href="gallery.jsp">Gallery</a></li>
                                        <li><a href="AboutUS.jsp">About us</a></li>
                                        <li><a href="#footer">Contact us</a></li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </header>
        </div>

        <div id="banner" class="banner full-screen-mode parallax">
            <div class="container pr">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="banner-static">
                        <div class="banner-text">
                            <div class="banner-cell">
                                <h1>Dinner with us  <span class="typer" id="some-id" data-delay="200" data-delim=":" data-words="Friends:Family:Officemates" data-colors="red"></span><span class="cursor" data-cursorDisplay="_" data-owner="some-id"></span></h1>
                                <h2>Accidental appearances </h2>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diem nonummy nibh euismod</p>


                            </div>
                            <!-- end banner-cell -->
                        </div>
                        <!-- end banner-text -->
                    </div>
                    <!-- end banner-static -->
                </div>
                <!-- end col -->
            </div>
            <!-- end container -->
        </div>
        <!-- end banner -->

        <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
            <h2 class="block-title text-center">
                Menu Details	
            </h2>
        </div>
        <br>

        <div id="fh5co-tours" class="fh5co-section-gray">
            <div class="container">
                <%  String pno = null;     
                    try {
                        PreparedStatement pstn1 = con.prepareStatement("select * from fooddetails where FoodCategory='South Indian' AND MenuCategory='Starter'");
                        ResultSet rs = pstn1.executeQuery();
                        while (rs.next()) {
                            byte[] imgData = rs.getBytes(7);
                            String encode = Base64.getEncoder().encodeToString(imgData);
                            request.setAttribute("imgbase", encode);
                          
%>
                <div class="card mb-3">
                    <img src="data:image/jpeg;base64,${imgbase}" class="card-img-top" style="height: 300px;">
                    <div class="card-body">
                        <h1 class="card-title" style="font-style: italic;"><b><%=rs.getString(2)%></b></h1>
                        <p class="card-text">Dish Name = <%=rs.getString(2)%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Food Category = <%=rs.getString(4)%></p>
                        <p class="card-text">Menu Category = <%=rs.getString(5)%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Price = <%=rs.getString(3)%></p>
                        <p class="card-text">Info = <%=rs.getString(6)%>
                        <div class="form-box" style="width: 300px;">
                            <select name="NoOfPlats" id="Menu_Category" class="selectpicker">
                                <option selected disabled>Number Of Plates</option>
                                <%
                                    PreparedStatement pstn12 = con.prepareStatement("select * from plates");
                        ResultSet rs2 = pstn12.executeQuery();
                        while (rs2.next()) {
                            pno = rs2.getString(2);
                                %>
                                <option value="<%=pno%>"><%=pno%></option>
                                <%
                                }
                                %>

                            </select>
                        </div>
                        <div class="reserve-book-btn" style="margin-left: 370px;margin-top: -105px;">
                            <a href="orderbook.jsp?dname=<%=rs.getString(2)%>&fcate=<%=rs.getString(4)%>&mcate=<%=rs.getString(5)%>&price=<%=rs.getString(3)%>&noplates=<%=pno%>" class="btn btn-primary" style="height: 50px;width: 300px;">Add to Cart</a>
                        </div> <br /><br />
                    </div>
                    <!--                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                            <div class="form-box">
                                                <select name="NoOfPlats" id="Menu_Category" class="selectpicker">
                                                    <option selected disabled>Number Of Plates</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                    
                                                </select>
                    
                                            </div>
                                        </div>
                                        <div class="reserve-book-btn" style="margin-left: 370px;margin-top: -28px;">
                                            <input type="submit"  value="Add to Cart" class="btn btn-primary" style="height: 50px;width: 200px;">
                                        </div>-->
                </div>


                <%
                       
}
                    } catch (Exception e) {
                        System.out.println(e);
                    }

                %>
            </div>
        </div>


        <!-- end reservations-main -->

        <div id="footer" class="footer-main">

            <!-- end footer-news -->
            <div class="footer-box pad-top-70">
                <div class="container">
                    <div class="row">
                        <div class="footer-in-main">
                            <div class="footer-logo">
                                <div class="text-center">
                                    <img src="images/logo.png" alt="" />
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-box-a">
                                    <h3>About Us</h3>
                                    <p>Aenean commodo ligula eget dolor aenean massa. Cum sociis nat penatibu set magnis dis parturient montes.</p>
                                    <ul class="socials-box footer-socials pull-left">
                                        <li>
                                            <a href="#">
                                                <div class="social-circle-border"><i class="fa  fa-facebook"></i></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="social-circle-border"><i class="fa fa-twitter"></i></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="social-circle-border"><i class="fa fa-google-plus"></i></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="social-circle-border"><i class="fa fa-pinterest"></i></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="social-circle-border"><i class="fa fa-linkedin"></i></div>
                                            </a>
                                        </li>
                                    </ul>

                                </div>
                                <!-- end footer-box-a -->
                            </div>
                            <!-- end col -->
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-box-b">
                                    <h3>New Menu</h3>
                                    <ul>
                                        <li><a href="#">Italian Bomba Sandwich</a></li>
                                        <li><a href="#">Double Dose of Pork Belly</a></li>
                                        <li><a href="#">Spicy Thai Noodles</a></li>
                                        <li><a href="#">Triple Truffle Trotters</a></li>
                                    </ul>
                                </div>
                                <!-- end footer-box-b -->
                            </div>
                            <!-- end col -->
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-box-c">
                                    <h3>Contact Us</h3>
                                    <p>
                                        <i class="fa fa-map-signs" aria-hidden="true"></i>
                                        <span>6 E Esplanade, St Albans VIC 3021, Australia</span>
                                    </p>
                                    <p>
                                        <i class="fa fa-mobile" aria-hidden="true"></i>
                                        <span>
                                            +91 80005 89080 
                                        </span>
                                    </p>
                                    <p>
                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                        <span><a href="#">support@foodfunday.com</a></span>
                                    </p>
                                </div>
                                <!-- end footer-box-c -->
                            </div>
                            <!-- end col -->
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-box-d">
                                    <h3>Opening Hours</h3>

                                    <ul>
                                        <li>
                                            <p>Monday - Thursday </p>
                                            <span> 11:00 AM - 9:00 PM</span>
                                        </li>
                                        <li>
                                            <p>Friday - Saturday </p>
                                            <span>  11:00 AM - 5:00 PM</span>
                                        </li>
                                    </ul>
                                </div>
                                <!-- end footer-box-d -->
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end footer-in-main -->
                    </div>
                    <!-- end row -->
                </div>
                <!-- end container -->
                <div id="copyright" class="copyright-main">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h6 class="copy-title"> Copyright &copy; 2017 Food Funday is powered by <a href="#" target="_blank"></a> </h6>
                            </div>
                        </div>
                        <!-- end row -->
                    </div>
                    <!-- end container -->
                </div>
                <!-- end copyright-main -->
            </div>
            <!-- end footer-box -->
        </div>
        <!-- end footer-main -->

        <a href="#" class="scrollup" style="display: none;">Scroll</a>

        <section id="color-panel" class="close-color-panel">
            <a class="panel-button gray2"><i class="fa fa-cog fa-spin fa-2x"></i></a>
            <!-- Colors -->
            <div class="segment">
                <h4 class="gray2 normal no-padding">Color Scheme</h4>
                <a title="orange" class="switcher orange-bg"></a>
                <a title="strong-blue" class="switcher strong-blue-bg"></a>
                <a title="moderate-green" class="switcher moderate-green-bg"></a>
                <a title="vivid-yellow" class="switcher vivid-yellow-bg"></a>
            </div>
        </section>

        <!-- ALL JS FILES -->
        <script src="js/all.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- ALL PLUGINS -->
        <script src="js/custom.js"></script>
    </body>

</html>