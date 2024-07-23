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
        <c:url value="CSS/style113.css" var="style"/>
        <link href="${bootstrap}" rel="stylesheet" type="text/css"/>
        <link href="CSS/style113.css" rel="stylesheet" type="text/css"/>
        <!-- SPECIFIC CSS -->
        <c:url value="/CSS/blog.css" var="blog"/>
        <link href="${blog}" rel="stylesheet" type="text/css"/>

        <!-- YOUR CUSTOM CSS -->
        <link href="CSS/custom.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500&family=Lato:wght@300;400;700&display=swap" rel="stylesheet">
        
        <title> Blog Detail</title>
        <style>.full-width-image {
    width: 100%;
    margin: 0;
    padding: 0;
}

.full-width-image img {
    width: 100%;
    height: auto;
    display: block;
}</style>
        <%@include file="../../Template/libheader.jsp" %>
    </head>
    <body>
    />
   <%@include file="../../Template/navbar.jsp" %>
	
	<div id="page">
	
	
	
	
	<main class="bg_gray">
		<div class="container margin_30">
                    <c:set var="blog" value="${requestScope.blog}"></c:set>
			<!-- /page_header -->
			<div class="row">
				<div class="col-lg-9">
					<div class="singlepost">
                                            <figure class="full-width-image"><img alt="" class="img-fluid" src="${blog.blog_image}"></figure>
						<h1>${blog.blog_title}</h1>
						<div class="postmeta">
							<ul>
								<li><a href="#"><i class="ti-folder"></i> ${blog.category_id}</a></li>
								<li><i class="ti-calendar"></i> ${blog.blog_create_day}</li>
								<li><a href="#"><i class="ti-user"></i> ${blog.user_id}</a></li>
								<li><a href="#"><i class="ti-comment"></i> ${requestScope.reaction}</a></li>
							</ul>
						</div>
						<!-- /post meta -->
						<div class="post-content">
							<div class="dropcaps">
								<p>${blog.blog_content} </p>
							</div>

						</div>
						<!-- /post -->
					</div>
					<!-- /single-post -->

					<div id="comments">
						<h5>Comments</h5>
						<ul>
							<li>
								<div class="avatar">
									<a href="#"><img src="img/avatar1.jpg" alt="">
									</a>
								</div>
								<div class="comment_right clearfix">
									<div class="comment_info">
										By <a href="#">Anna Smith</a><span>|</span>25/10/2019<span>|</span><a href="#"><i class="icon-reply"></i></a>
									</div>
									<p>
                                                                            
									</p>
								</div>
								<ul class="replied-to">
									<li>
										<div class="avatar">
											<a href="#"><img src="img/avatar2.jpg" alt="">
											</a>
										</div>
										<div class="comment_right clearfix">
											<div class="comment_info">
												By <a href="#">Anna Smith</a><span>|</span>25/10/2019<span>|</span><a href="#"><i class="icon-reply"></i></a>
											</div>
											<p>
												Nam cursus tellus quis magna porta adipiscing. Donec et eros leo, non pellentesque arcu. Curabitur vitae mi enim, at vestibulum magna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed sit amet sem a urna rutrumeger fringilla. Nam vel enim ipsum, et congue ante.
											</p>
											<p>
												Aenean iaculis sodales dui, non hendrerit lorem rhoncus ut. Pellentesque ullamcorper venenatis elit idaipiscingi Duis tellus neque, tincidunt eget pulvinar sit amet, rutrum nec urna. Suspendisse pretium laoreet elit vel ultricies. Maecenas ullamcorper ultricies rhoncus. Aliquam erat volutpat.
											</p>
										</div>
										<ul class="replied-to">
											<li>
												<div class="avatar">
													<a href="#"><img src="img/avatar2.jpg" alt="">
													</a>
												</div>
												<div class="comment_right clearfix">
													<div class="comment_info">
														By <a href="#">Anna Smith</a><span>|</span>25/10/2019<span>|</span><a href="#"><i class="icon-reply"></i></a>
													</div>
													<p>
														Nam cursus tellus quis magna porta adipiscing. Donec et eros leo, non pellentesque arcu. Curabitur vitae mi enim, at vestibulum magna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed sit amet sem a urna rutrumeger fringilla. Nam vel enim ipsum, et congue ante.
													</p>
													<p>
														Aenean iaculis sodales dui, non hendrerit lorem rhoncus ut. Pellentesque ullamcorper venenatis elit idaipiscingi Duis tellus neque, tincidunt eget pulvinar sit amet, rutrum nec urna. Suspendisse pretium laoreet elit vel ultricies. Maecenas ullamcorper ultricies rhoncus. Aliquam erat volutpat.
													</p>
												</div>
											</li>
										</ul>
									</li>
								</ul>
							</li>
							<li>
								<div class="avatar">
									<a href="#"><img src="img/avatar3.jpg" alt="">
									</a>
								</div>

								<div class="comment_right clearfix">
									<div class="comment_info">
										By <a href="#">Anna Smith</a><span>|</span>25/10/2019<span>|</span><a href="#"><i class="icon-reply"></i></a>
									</div>
									<p>
										Cursus tellus quis magna porta adipiscin
									</p>
								</div>
							</li>
						</ul>
					</div>

					<hr>

					<h5>Leave a comment</h5>
					<div class="row">
						<div class="col-md-4 col-sm-6">
							<div class="form-group">
								<input type="text" name="name" id="name2" class="form-control" placeholder="Name">
							</div>
						</div>
						<div class="col-md-4 col-sm-6">
							<div class="form-group">
								<input type="text" name="email" id="email2" class="form-control" placeholder="Email">
							</div>
						</div>
						<div class="col-md-4 col-sm-12">
							<div class="form-group">
								<input type="text" name="email" id="website3" class="form-control" placeholder="Website">
							</div>
						</div>
					</div>
					<div class="form-group">
						<textarea class="form-control" name="comments" id="comments2" rows="6" placeholder="Comment"></textarea>
					</div>
					<div class="form-group">
						<button type="submit" id="submit2" class="btn_1 add_bottom_15">Submit</button>
					</div>
					
				</div>
				<!-- /col -->

				<aside class="col-lg-3">
					<div class="widget search_blog">
						<div class="form-group">
							<input type="text" name="search" id="search" class="form-control" placeholder="Search..">
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
					<!-- /widget -->
					<div class="widget">
						<div class="widget-title">
							<h4>Categories</h4>
						</div>
						<ul class="cats">
							<li><a href="#">Food <span>(12)</span></a></li>
							<li><a href="#">Places to visit <span>(21)</span></a></li>
							<li><a href="#">New Places <span>(44)</span></a></li>
							<li><a href="#">Suggestions and guides <span>(31)</span></a></li>
						</ul>
					</div>
					<!-- /widget -->
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
	
	
	</div>
	<!-- page -->
	
	<div id="toTop"></div><!-- Back to top button -->
	
	<!-- COMMON SCRIPTS -->
    <script src="js/common_scripts.min.js"></script>
    <script src="js/main.js"></script>

		
</body>
</html>
