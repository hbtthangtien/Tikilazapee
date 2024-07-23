<%-- 
    Document   : admin
    Created on : Feb 24, 2024, 7:18:48 PM
    Author     : hbtth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Model.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin page</title>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <!-- Material Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">
        
    </head>
    <body>
        <div class="grid-container">
            <!-- Sidebar -->
            <aside id="sidebar">
                <div class="sidebar-title">
<!--                    <div class="sidebar-brand">
                        <a href="client">
                        <span class="material-icons-outlined">shopping_cart</span> STORE
                        </a>
                    </div>-->
                    <span class="material-icons-outlined" onclick="closeSidebar()">close</span>
                </div>

                <ul class="sidebar-list">
                    <li class="sidebar-list-item">
                        <a href="dashboard" >
                            <span class="material-icons-outlined">dashboard</span> Dashboard
                        </a>
                    </li>
                    <li class="sidebar-list-item">
                        <a href="manageproduct" >
                            <span class="material-icons-outlined">inventory_2</span> Products Management
                        </a>
                    </li>
                    <li class="sidebar-list-item">
                        <a href="adminmanagecategory" >
                            <span class="material-icons-outlined">category</span> Categories
                        </a>
                    </li>
                    <li class="sidebar-list-item">
                        <a href="manageuser" >
                            <span class="material-icons-outlined">groups</span> Customers Management
                        </a>
                    </li>
                    <li class="sidebar-list-item">
                        <a href="#" target="_blank">
                            <span class="material-icons-outlined">fact_check</span> Inventory
                        </a>
                    </li>
                    <li class="sidebar-list-item">
                        <a href="#" >
                            <span class="material-icons-outlined">settings</span> Settings
                        </a>
                    </li>
                    <li class="sidebar-list-item">
                        <a href="logout" >
                            <span class="material-icons-outlined">logout</span> Logout
                        </a>
                    </li>
                </ul>
            </aside>
            <!-- End Sidebar -->

            <!-- Main -->
            <main class="main-container">
                <div class="main-title">
                    <h2>DASHBOARD</h2>
                </div>

                <div class="main-cards">

                    <div class="card">
                        <div class="card-inner">
                            <h3>PRODUCTS</h3>
                            <span class="material-icons-outlined">inventory_2</span>
                        </div>
                        <h1></h1>
                    </div>

                    

                    <div class="card">
                        <div class="card-inner">
                            <h3>FOLLOwERS</h3>
                            <span class="material-icons-outlined">groups</span>
                        </div>
                        <h1></h1>
                    </div>

                    <div class="card">
                        <div class="card-inner">
                            <h3>ALERTS</h3>
                            <span class="material-icons-outlined">notification_important</span>
                        </div>
                        <h1>23</h1>
                    </div>

                </div>

                <div class="charts">

                    <div class="charts-card">
                        <h2 class="chart-title" >Top 5 Products</h2>
                        <div id="bar-chart"></div>
                    </div>

<!--                    <div class="charts-card">
                        <h2 class="chart-title">Purchase and Sales Orders</h2>
                        <div id="area-chart"></div>
                    </div>-->

                </div>
            </main>
            <!-- End Main -->

        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/3.35.5/apexcharts.min.js"></script>
        <script src="JS/adminView.js"></script>
    </body>
</html>
