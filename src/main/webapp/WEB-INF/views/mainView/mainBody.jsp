<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <footer><%@include file="../mainView/footer.jsp" %></footer> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<script id="max_support_project" type="text/x-handlebars-template">

<!-- jquery -->
<script type="text/javascript" src="/web/toyProject/DreamUp_View/resources/js/common/jquery.js"></script>

<!-- custom javascript -->
<script type="text/javascript"
	src="/web/toyProject/DreamUp_View/resources/js/mainBody/mainList.js"></script>


<title>Dream Up</title>
<link rel="icon" href="/web/upload/1.JPG" type="image/x-icon">
<style type="text/css">
.mainTest {
	background-color: orange;
}

.mainTest_data {
	background-color: blue;
}

.row {
	margin-top: 25px;
	margin-bottom: 25px;
}
</style>
</head>
<header> <%-- 	<%@include file="../views/mainView/header.jsp" %> --%>
<%@include file="../mainView/header.jsp"%> </header>
<body>
	<div class="wrap">
		<!-- Page Content -->
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!-- Main carousel -->
					<!-- 		<div class="row carousel-holder">

					<div class="col-md-12">
						<div id="carousel-example-generic" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0"
									class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<img class="slide-image" src="/web/toyProject/DreamUp_View/resourcesimg/sample.jpg" alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="/web/toyProject/DreamUp_View/resourcesimg/sample.jpg" alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="/web/toyProject/DreamUp_View/resourcesimg/sample.jpg" alt="">
								</div>
							</div>
							<a class="left carousel-control" href="#carousel-example-generic"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span>
							</a> <a class="right carousel-control"
								href="#carousel-example-generic" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span>
							</a>
						</div>
					</div>

				</div> -->
					<div class="row" style="align-items: center;">
						<div class="col-md-11">
							<legend style="font-size: xx-large;">?????? ?????? ????????????</legend>
							<!-- ?????? -->
							<div class='col-sm-6 col-lg-6 col-md-6'>
								<div class='thumbnail'>
									<a href='/web/toyProject/DreamUp_View/views/project/projectInfoView.jsp'> <img
										src='/web/toyProject/DreamUp_View/resources/img/tempImg01.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>????????? ??????????????? ????????? ??????????????? ???????????????.</b>
										</h4>
										<p>?????? ????????? ?????? ????????? ?????????, ????????? ????????? ????????? ?????? ????????? ?????????, ???????????? ???????????? ??????/????????? ????????? ?????????.</p>
										<p style="color: gray;">?????????</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>60%</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>173???</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>34???</b><br /> <small>????????????</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- ??? -->
							<!-- ?????? -->
							<div class='col-sm-6 col-lg-6 col-md-6'>
								<div class='thumbnail'>
									<a href='/web/toyProject/DreamUp_View/views/project/projectInfoView.jsp'> <img
										src='/web/toyProject/DreamUp_View/resources/img/tempImg02.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>COLORVERSE ????????? ???????????? ??????</b>
											<br>
										</h4>
										<p>COLORVERSE ????????? ???????????? ?????? !!! ???????????? ?????? ????????????.</p>
										<br>
										<p style="color: gray;">??????</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>93%</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>235???</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>17???</b><br /> <small>????????????</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- ??? -->
						</div>

					</div>

					<div class="row">
						<div class="col-sm-12" align="left">
							<div class="col-md-10">
								<legend style="font-size: xx-large;">????????? ?????????</legend>
							</div>
							<!-- ?????? -->
							<div class='col-sm-4 col-lg-4 col-md-4'>
								<div class='thumbnail'>
									<a href='#'> <img
										src='/web/toyProject/DreamUp_View/resources/img/tempImg08.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>??????????????? ?????? ????????? ?????????</b>
											<hr>
										</h4>
										<p>????????? ??????????????? ?????? ????????? ????????? ?????????!</p>
										<br>
										<br>
										<p style="color: gray;">??????</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>39%</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>37???</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>71???</b><br /> <small>????????????</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- ??? -->
							<!-- ?????? -->
							<div class='col-sm-4 col-lg-4 col-md-4'>
								<div class='thumbnail'>
									<a href='#'> <img
										src='/web/toyProject/DreamUp_View/resources/img/tempImg07.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>????????? ????????? ????????? ??????.</b>
											<hr>
										</h4>
										<p>??????????????? ??????, ????????? ?????? ?????? ?????? ??????????????? ???????????? ???????????? ???????????? ???????????? ???????????? ????????? ???????????? ???????????????.</p>
										<p style="color: gray;">??????</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>78%</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>189???</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>27???</b><br /> <small>????????????</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- ??? -->
							<!-- ?????? -->
							<div class='col-sm-4 col-lg-4 col-md-4'>
								<div class='thumbnail'>
									<a href='#'> <img
										src='/web/toyProject/DreamUp_View/resources/img/tempImg03.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>'??? ??????'??? ????????? ???????????? ?????? ??????!</b>
											<hr>
										</h4>
										<p>??????????????? '??????????????? ?????? ?????? ???????????? ??????????????? ! ???????????? ????????? ????????? ??????????????? ?????????????????? ???????????????.</p>
										<p style="color: gray;">??????</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>63%</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>61???</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>47???</b><br /> <small>????????????</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- ??? -->
						</div>
					</div>
					<!-- <div class="pull-right" style="font-size: xx-large;">????????? >></div> -->
				</div>
				<div id="hot_project_list"></div>
			</div>

			<div class="row">
				<div class="col-sm-12" align="left">
					<div class="col-md-10">
						<legend style="font-size: xx-large;">?????? ?????? ????????????</legend>
					</div>
					<!-- ?????? -->
							<div class='col-sm-4 col-lg-4 col-md-4'>
								<div class='thumbnail'>
									<a href='#'> <img
										src='/web/toyProject/DreamUp_View/resources/img/tempImg04.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>??? ???????????? ???????????? ????????? ??????</b>
											<hr>
										</h4>
										<p>????????? ?????? ????????? ???????????? ??????, ????????? ???????????? ????????? ????????? ????????? ??????! ????????? ?????? ?????????????????????? ???????????? ??? ????????? ????????? ??? ???????????? ????????? ????????? ??????!</p>
										<p style="color: gray;">?????????</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>60%</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>5???</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>60???</b><br /> <small>????????????</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- ??? --><!-- ?????? -->
							<div class='col-sm-4 col-lg-4 col-md-4'>
								<div class='thumbnail'>
									<a href='#'> <img
										src='/web/toyProject/DreamUp_View/resources/img/tempImg05.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>????????? ????????????, ???????????? ???????????????</b>
											<hr>
										</h4>
										<p>????????? ??????????????? ????????? ??????, ????????? ?????? ?????? ?????? ?????? ????????????????????? ??? ???????????? ?????? ???????????? ?????? ?????????</p>
										<br>
										<p style="color: gray;">??????</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>81%</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>95???</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>12???</b><br /> <small>????????????</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- ??? --><!-- ?????? -->
							<div class='col-sm-4 col-lg-4 col-md-4'>
								<div class='thumbnail'>
									<a href='#'> <img
										src='/web/toyProject/DreamUp_View/resources/img/tempImg06.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>?????? ?????? ????????? 4?????? ???????????????!</b>
											<hr>
										</h4>
										<p>?????? ????????? ??????????????? ?????? ??? ?????????, ?????? ????????? ????????? ??????????????????? #????????? ??????????????????!</p>
										<br>
										<br>
										<p style="color: gray;">??????</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>73%</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>37???</b><br /> <small>?????????</small>
											</div>
											<div class='col-md-4' align="center">
												<b>83???</b><br /> <small>????????????</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- ??? -->
						</div>
					</div>
					<!-- <div class="pull-right" style="font-size: xx-large;">????????? >></div> -->
				</div>
				<div id="new_project_list"></div>
			</div>

			<div class="row">
				<div id="loading-mask">
					<!-- <img src='/web/upload/1.JPG' width="100px" height="100px"> -->
				</div>

			</div>

		</div>

	</div>

	</div>
	<!-- /.container -->
	</div>
	<footer><%@include file="../mainView/footer.jsp"%></footer>
</body>

</html>
<%@include file="../jsp_piece/main/project_point_info.jsp"%>
<%@include file="../jsp_piece/main/max_support_project.jsp"%>
