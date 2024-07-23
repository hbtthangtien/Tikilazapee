<%-- 
    Document   : listBlog
    Created on : Jul 8, 2024, 9:45:55 AM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Ansonika">


        <!-- Favicons-->
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
        <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
        <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
        <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

        <!-- GOOGLE WEB FONT -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

        <!-- BASE CSS -->
        <c:url value="/CSS/bootstrap.min.css" var="bootstrap"/>
        <c:url value="/CSS/style.css" var="style"/>
        <link href="${bootstrap}" rel="stylesheet" type="text/css"/>
        <link href="${style}" rel="stylesheet" type="text/css"/>
        <!-- SPECIFIC CSS -->
        <c:url value="/CSS/blog.css" var="blog"/>
        <link href="${blog}" rel="stylesheet" type="text/css"/>

        <!-- YOUR CUSTOM CSS -->
        <link href="../../CSS/custom.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500&family=Lato:wght@300;400;700&display=swap" rel="stylesheet">
        
        <title>List Blog</title>
        <%@include file="../../Template/libheader.jsp" %>
    </head>
    <body>
        <link
      href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
      rel="stylesheet"
    />
    <%@include file="../../Template/navbar.jsp" %>
        <div id="page">

            <main class="bg_gray">
                <div class="container margin_30">
                    <div class="page_header">

                        <h1>Tikilazapee Blog &amp; News</h1>
                    </div>
                    <!-- /page_header -->
                    <div class="row">
                        <div class="col-lg-9">
                            <div class="widget search_blog d-block d-sm-block d-md-block d-lg-none">
                                <div class="form-group">
                                    <input type="text" name="search" id="search" class="form-control" placeholder="Search..">
                                    <button type="submit"><i class="ti-search   "></i></button>
                                </div>
                            </div>
                            <!-- /widget -->
                            
                            <div class="row">
    <c:forEach items="${listAll}" var="i">
        <div class="col-md-6">
            <article class="blog">
                <figure>
                    <a href="blogdetail?blog_id=${i.blog_id}"><img src="${i.blog_image}" alt="">
                        <div class="preview"><span>Read more</span></div>
                    </a>
                </figure>
                <div class="post_info">
                    <small>${i.category_id} - ${i.blog_create_day}</small>
                    <h2><a href="blog-post.html">${i.blog_title}</a></h2>
                    
                    <p style="display: none;">${i.blog_content}</p>
                    <ul>
                        <li>
                            <div class="thumb"><img src="image\image_avatar_user\avataruser(1).jpg" alt=""></div> $(i.user_id)
                        </li>
                        <li><i class="bi bi-chat-dots-fill"></i>4</li>
                    </ul>
                </div>
            </article>
            <!-- /article -->
        </div>
    </c:forEach>
    <!-- /col -->
</div>

                            <!-- /row -->

                            <div class="pagination__wrapper no_border add_bottom_30">
                                <ul class="pagination">
                                    <li><a href="#0" class="prev" title="previous page">&#10094;</a></li>
                                    <li>
                                        <a href="#0" class="active">1</a>
                                    </li>
                                    <li>
                                        <a href="#0">2</a>
                                    </li>
                                    <li>
                                        <a href="#0">3</a>
                                    </li>
                                    <li>
                                        <a href="#0">4</a>
                                    </li>
                                    <li><a href="#0" class="next" title="next page">&#10095;</a></li>
                                </ul>
                            </div>
                            <!-- /pagination -->

                        </div>
                        <!-- /col -->

                        <aside class="col-lg-3">
                            <div class="widget search_blog d-none d-sm-none d-md-none d-lg-block">
                                <div class="form-group">
                                    <input type="text" name="search" id="search_blog" class="form-control" placeholder="Search...">
                                    <button type="submit"><i class="ti-search"></i></button>
                                </div>
                            </div>
                            <!-- /widget -->
                            <div class="widget">
                                <div class="widget-title">
                                    <h4>Latest Post</h4>
                                </div>
                                <ul class="comments-list">
                                    <li>
                                        <div class="alignleft">
                                            <a href="http://localhost:9999/tikilazapee/blogdetail?blog_id=15"><img src="image/image_blog/blog_id6.jpg" alt=""></a>
                                        </div>
                                        <small>Balo - 2024/07/06</small>
                                        <h3><a href="#" title="">Balo - Người Bạn Đồng Hành Không Thể Thiếu Trong Cuộc Sống Hiện Đại</a></h3>
                                    </li>
                                    <li>
                                        <div class="alignleft">
                                            <a href="http://localhost:9999/tikilazapee/blogdetail?blog_id=18"><img src="image/image_blog/blog_id9.jpg" alt=""></a>
                                        </div>
                                        <small>Cosmetic - 2024/07/05</small>
                                        <h3><a href="#" title="">Sáp Vuốt Tóc - Bí Quyết Tạo Kiểu Hoàn Hảo Cho Mái Tóc Của Bạn</a></h3>
                                    </li>
                                    <li>
                                        <div class="alignleft">
                                            <a href="http://localhost:9999/tikilazapee/blogdetail?blog_id=17"><img src="image/image_blog/blog_id8.jpg" alt=""></a>
                                        </div>
                                        <small>Laptop - 2024/11/06</small>
                                        <h3><a href="http://localhost:9999/tikilazapee/blogdetail?blog_id=18" title="">Laptop - Người Bạn Đồng Hành Không Thể Thiếu Trong Thời Đại Số</a></h3>
                                    </li>
                                </ul>
                            </div>
                            
                            <div class="widget">
                                <div class="widget-title">
                                    <h4>Popular Tags</h4>
                                </div>
                                <div class="tags">
                                    <a href="#">Food</a>
                                    <a href="#">Bars</a>
                                    <a href="#">Cooktails</a>
                                    <a href="#">Shops</a>
                                    <a href="#">Best Offers</a>
                                    <a href="#">Transports</a>
                                    <a href="#">Restaurants</a>
                                </div>
                            </div>
                            <!-- /widget -->
                        </aside>
                        <!-- /aside -->
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </main>
            <!--/main-->

           
            <!--/footer-->
        </div>
        <!-- page -->

        <div id="toTop"></div><!-- Back to top button -->

        <!-- COMMON SCRIPTS -->
        <script src="js/common_scripts.min.js"></script>
        <script src="js/main.js"></script>


    </body>
</html>
