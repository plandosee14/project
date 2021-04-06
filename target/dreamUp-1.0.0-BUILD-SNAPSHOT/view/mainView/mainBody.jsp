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
<script type="text/javascript" src="../../resources/js/common/jquery.js"></script>

<!-- custom javascript -->
<script type="text/javascript"
	src="../../resources/js/mainBody/mainList.js"></script>


<title>Dream Up</title>
<link rel="icon" href="../../resources/img/logo.png" type="image/x-icon">
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
									<img class="slide-image" src="../../resourcesimg/sample.jpg" alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="../../resourcesimg/sample.jpg" alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="../../resourcesimg/sample.jpg" alt="">
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
							<legend style="font-size: xx-large;">최다 후원 프로젝트</legend>
							<!-- 시작 -->
							<div class='col-sm-6 col-lg-6 col-md-6'>
								<div class='thumbnail'>
									<a href='../project/projectInfoView.jsp'> <img
										src='../../resources/img/tempImg01.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>플라워 디자이너의 작품을 사진액자로 만나보세요.</b>
										</h4>
										<p>함께 나누고 싶은 소중한 추억을, 감사한 이에게 전하고 싶은 따뜻한 마음을, 레드만의 차별화된 카드/엽서로 표현해 보세요.</p>
										<p style="color: gray;">디자인</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>60%</b><br /> <small>달성도</small>
											</div>
											<div class='col-md-4' align="center">
												<b>173명</b><br /> <small>후원수</small>
											</div>
											<div class='col-md-4' align="center">
												<b>34일</b><br /> <small>잔여기간</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 끝 -->
							<!-- 시작 -->
							<div class='col-sm-6 col-lg-6 col-md-6'>
								<div class='thumbnail'>
									<a href='../project/projectInfoView.jsp'> <img
										src='../../resources/img/tempImg02.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>COLORVERSE 첫번째 프로젝트 잉크</b>
											<br>
										</h4>
										<p>COLORVERSE 첫번째 프로젝트 잉크 !!! 만년필의 색을 담아내다.</p>
										<br>
										<p style="color: gray;">제품</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>93%</b><br /> <small>달성도</small>
											</div>
											<div class='col-md-4' align="center">
												<b>235명</b><br /> <small>후원수</small>
											</div>
											<div class='col-md-4' align="center">
												<b>17일</b><br /> <small>잔여기간</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 끝 -->
						</div>

					</div>

					<div class="row">
						<div class="col-sm-12" align="left">
							<div class="col-md-10">
								<legend style="font-size: xx-large;">실시간 핫이슈</legend>
							</div>
							<!-- 시작 -->
							<div class='col-sm-4 col-lg-4 col-md-4'>
								<div class='thumbnail'>
									<a href='#'> <img
										src='../../resources/img/tempImg08.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>블루베리와 함께 즐기는 요거트</b>
											<hr>
										</h4>
										<p>상큼한 블루베리와 함께 즐기는 달콤한 요거트!</p>
										<br>
										<br>
										<p style="color: gray;">음식</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>39%</b><br /> <small>달성도</small>
											</div>
											<div class='col-md-4' align="center">
												<b>37명</b><br /> <small>후원수</small>
											</div>
											<div class='col-md-4' align="center">
												<b>71일</b><br /> <small>잔여기간</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 끝 -->
							<!-- 시작 -->
							<div class='col-sm-4 col-lg-4 col-md-4'>
								<div class='thumbnail'>
									<a href='#'> <img
										src='../../resources/img/tempImg07.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>새롭게 귓가를 찾아온 매혹.</b>
											<hr>
										</h4>
										<p>익스커션은 크고, 왜곡은 적은 맞춤 제작 드라이버가 파워풀한 베이스를 들려주고 놀랍도록 깨끗하고 순수한 사운드를 뽑아냅니다.</p>
										<p style="color: gray;">제품</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>78%</b><br /> <small>달성도</small>
											</div>
											<div class='col-md-4' align="center">
												<b>189명</b><br /> <small>후원수</small>
											</div>
											<div class='col-md-4' align="center">
												<b>27일</b><br /> <small>잔여기간</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 끝 -->
							<!-- 시작 -->
							<div class='col-sm-4 col-lg-4 col-md-4'>
								<div class='thumbnail'>
									<a href='#'> <img
										src='../../resources/img/tempImg03.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>'당 섭취'를 줄이고 군것질을 끊는 방법!</b>
											<hr>
										</h4>
										<p>실리콘밸리 '방탄커피로 당을 끊고 군것질을 줄여보세요 ! 키토제닉 식단의 필수품 『마이노멀 버터커피』를 소개합니다.</p>
										<p style="color: gray;">음식</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>63%</b><br /> <small>달성도</small>
											</div>
											<div class='col-md-4' align="center">
												<b>61명</b><br /> <small>후원수</small>
											</div>
											<div class='col-md-4' align="center">
												<b>47일</b><br /> <small>잔여기간</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 끝 -->
						</div>
					</div>
					<!-- <div class="pull-right" style="font-size: xx-large;">더보기 >></div> -->
				</div>
				<div id="hot_project_list"></div>
			</div>

			<div class="row">
				<div class="col-sm-12" align="left">
					<div class="col-md-10">
						<legend style="font-size: xx-large;">신규 등록 프로젝트</legend>
					</div>
					<!-- 시작 -->
							<div class='col-sm-4 col-lg-4 col-md-4'>
								<div class='thumbnail'>
									<a href='#'> <img
										src='../../resources/img/tempImg04.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>내 공간안에 들여놓는 나만의 정원</b>
											<hr>
										</h4>
										<p>실내에 있는 시간이 길어지는 요즘, 나만의 공간에서 손쉽게 꾸리는 귀여운 정원! 다육이 한번 길러보시겠어요? 다육이는 큰 것보다 작은게 더 튼튼하고 관리도 쉽다는 사실!</p>
										<p style="color: gray;">디자인</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>60%</b><br /> <small>달성도</small>
											</div>
											<div class='col-md-4' align="center">
												<b>5명</b><br /> <small>후원수</small>
											</div>
											<div class='col-md-4' align="center">
												<b>60일</b><br /> <small>잔여기간</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 끝 --><!-- 시작 -->
							<div class='col-sm-4 col-lg-4 col-md-4'>
								<div class='thumbnail'>
									<a href='#'> <img
										src='../../resources/img/tempImg05.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>식감이 살아있는, 리얼수제 딸기레몬청</b>
											<hr>
										</h4>
										<p>딸기가 살아있는듯 남다른 과육, 정성이 듬뿍 담긴 리얼 수제 딸기레몬청으로 온 가족들과 함께 홈카페를 즐겨 보세요</p>
										<br>
										<p style="color: gray;">푸드</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>81%</b><br /> <small>달성도</small>
											</div>
											<div class='col-md-4' align="center">
												<b>95명</b><br /> <small>후원수</small>
											</div>
											<div class='col-md-4' align="center">
												<b>12일</b><br /> <small>잔여기간</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 끝 --><!-- 시작 -->
							<div class='col-sm-4 col-lg-4 col-md-4'>
								<div class='thumbnail'>
									<a href='#'> <img
										src='../../resources/img/tempImg06.jpg'></a>

									<div class='progress'>
										<div class='progress-bar' role='progressbar'
											aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'
											align='center' style='width: 60%'></div>
									</div>

									<div class='caption'>
										<h4>
											<b>순간 광채 쿠션과 4컬러 립스틱까지!</b>
											<hr>
										</h4>
										<p>쿠션 하나로 메이크업을 끝낼 수 있다면, 우리 생활은 얼마나 간편해질까요? #블로우 광채풀메쿠션!</p>
										<br>
										<br>
										<p style="color: gray;">뷰티</p>
										<div class="point" style="font-size: large">
											<div class='col-md-4' align='center'>
												<b>73%</b><br /> <small>달성도</small>
											</div>
											<div class='col-md-4' align="center">
												<b>37명</b><br /> <small>후원수</small>
											</div>
											<div class='col-md-4' align="center">
												<b>83일</b><br /> <small>잔여기간</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 끝 -->
						</div>
					</div>
					<!-- <div class="pull-right" style="font-size: xx-large;">더보기 >></div> -->
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
