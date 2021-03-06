<%-- 
    Document   : MenuAlternativo
    Created on : 10/11/2018, 06:35:47 AM
    Author     : Rony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

        <title>AMERICAS HOTEL</title>

        <!-- Bootstrap core CSS -->
        <link href="plugins/assets/css/bootstrap.css" rel="stylesheet">
        <!--external css-->
        <link href="plugins/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="plugins/assets/css/zabuto_calendar.css">
        <link rel="stylesheet" type="text/css" href="plugins/assets/js/gritter/css/jquery.gritter.css" />
        <link rel="stylesheet" type="text/css" href="plugins/assets/lineicons/style.css">   

        <!-- Custom styles for this template -->
        <link href="plugins/assets/css/style.css" rel="stylesheet">
        <link href="plugins/assets/css/style-responsive.css" rel="stylesheet">




    </head>

    <body>

        <section id="container" >
            <!-- **********************************************************************************************************************************************************
            TOP BAR CONTENT & NOTIFICATIONS
            *********************************************************************************************************************************************************** -->
            <!--header start-->
            <header class="header black-bg">

                <!--logo start-->
                <a href="Menu.html" class="logo"><b>HOTEL LAS AMERICAS</b></a>
                <!--logo end-->
                <div class="nav notify-row" id="top_menu">
                    <!--  notification start -->

                    <!--  notification end -->
                </div>
                <div class="top-menu">
                    <ul class="nav pull-right top-menu">
                        <li><a class="logout" href="login.jsp">Salir</a></li>
                    </ul>
                </div>
            </header>
            <!--header end-->

            <!-- **********************************************************************************************************************************************************
            MAIN SIDEBAR MENU
            *********************************************************************************************************************************************************** -->
            <!--sidebar start-->
            <aside>
                <div id="sidebar"  class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu" id="nav-accordion">              


                        <li class="sub-menu">
                            <a class="active" href="#">
                                <i class="fa fa-calendar fa-lg"></i>
                                <span>Reserva</span>
                            </a>
                        </li>
                           <li class="sub-menu">
                            <a href="#">
                                <i class="fa fa-sign-in fa-lg"></i>
                                <span>Recepcion</span>
                            </a>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class="fa fa-cube fa-lg"></i>
                                <span>Modulo Caja</span> <span class="arrow"></span>
                            </a>
                            <ul class="sub">
                                <li><a  href="Menuprincipal.jsp">Apertura Caja</a></li>
                                <li><a  href="#">Cierre caja</a></li>
                                <li><a  href="#">Resumen Liquidacion</a></li>
                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class="fa fa-cogs"></i>
                                <span>Components</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="calendar.html">Calendar</a></li>
                                <li><a  href="gallery.html">Gallery</a></li>
                                <li><a  href="todo_list.html">Todo List</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class="fa fa-book"></i>
                                <span>Extra Pages</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="blank.html">Blank Page</a></li>
                                <li><a  href="login.html">Login</a></li>
                                <li><a  href="lock_screen.html">Lock Screen</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class="fa fa-tasks"></i>
                                <span>Forms</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="form_component.html">Form Components</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class="fa fa-th"></i>
                                <span>Data Tables</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="basic_table.html">Basic Table</a></li>
                                <li><a  href="responsive_table.html">Responsive Table</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class=" fa fa-bar-chart-o"></i>
                                <span>Charts</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="morris.html">Morris</a></li>
                                <li><a  href="chartjs.html">Chartjs</a></li>
                            </ul>
                        </li>

                    </ul>
                    <!-- sidebar menu end-->
                </div>
            </aside>
            <!--sidebar end-->

            <!-- **********************************************************************************************************************************************************
              CONTENIDO
            *********************************************************************************************************************************************************** -->
            <!--main content start-->


            <!--main content end-->
            <!--footer start-->
            <footer class="site-footer">
                <div class="text-center">
                    2014 - Alvarez.is
                    <a href="Menu.html" class="go-top">
                        <i class="fa fa-angle-up"></i>
                    </a>
                </div>
            </footer>
            <!--footer end-->
        </section>
        <script src="plugins/assets/js/jquery.js"></script>
        <script src="plugins/assets/js/jquery-1.8.3.min.js"></script>
        <script src="plugins/assets/js/bootstrap.min.js"></script>
        <script class="include" type="text/javascript" src="plugins/assets/js/jquery.dcjqaccordion.2.7.js"></script>
        <script src="plugins/assets/js/jquery.scrollTo.min.js"></script>
        <script src="plugins/assets/js/jquery.nicescroll.js" type="text/javascript"></script>
        <script src="plugins/assets/js/jquery.sparkline.js"></script>


        <!--common script for all pages-->
        <script src="plugins/assets/js/common-scripts.js"></script>

        <script type="text/javascript" src="plugins/assets/js/gritter/js/jquery.gritter.js"></script>
        <script type="text/javascript" src="plugins/assets/js/gritter-conf.js"></script>

        <!--script for this page-->
        <script src="plugins/assets/js/sparkline-chart.js"></script>    
        <script src="plugins/assets/js/zabuto_calendar.js"></script>	



        <script type="application/javascript">
              $(document).ready(function () {
                    $("#date-popover").popover({html: true, trigger: "manual"});
                    $("#date-popover").hide();
                    $("#date-popover").click(function (e) {
                        $(this).hide();
                    });
        
                    $("#my-calendar").zabuto_calendar({
                        action: function () {
                            return myDateFunction(this.id, false);
                        },
                        action_nav: function () {
                            return myNavFunction(this.id);
                        },
                        ajax: {
                            url: "show_data.php?action=1",
                            modal: true
                        },
                        legend: [
                            {type: "text", label: "Special event", badge: "00"},
                            {type: "block", label: "Regular event", }
                        ]
                    });
                });
        
        
                function myNavFunction(id) {
                    $("#date-popover").hide();
                    var nav = $("#" + id).data("navigation");
                    var to = $("#" + id).data("to");
                    console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
                }
        </script>
    </body>
</html>

