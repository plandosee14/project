<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dream Up</title>
<link rel="icon" href="resources/img/title.png" type="image/x-icon">
<style type="text/css">
.mainTest {
	background-color: white;
	border-radius: 30px;
}

.mainTest:hover {
	background-color: lightgray;
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
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>프로젝트 카테고리</h1>

					<div class="row">
						<div class="col-sm-12 col-lg-12 col-md-12" align="left">
							<div align="center" id="category_list">

								<c:forEach items="${project_category }" var="project_category">
									<div class="col-sm-3 col-lg-3 col-md-3"
										title="${project_category.project_category }">
										<div class="thumbnail mainTest boxSpace" style="font-size: x-large;">${project_category.project_category }
											(${project_category.category_count })</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="col-sm-12" align="left">
							<div id="project_category_title"></div>
						</div>


					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!--시작-->
	<div class="row">
		<div class="col-md-10">
			<legend style="font-size: xx-large;">뷰티 </legend>
		</div>
		<div class="pull-right"style="font-size: xx-large;     margin-right: 19px;">더보기 >></div>
	
			<div id="category_projects{{project_category}}"></div>
	</div>
	<!--끝-->
	<!--시작-->
	<div class="row">
		<div class="col-md-10">
			<legend style="font-size: xx-large;">디자인 </legend>
		</div>
		<div class="pull-right"style="font-size: xx-large;     margin-right: 19px;">더보기 >></div>
	
			<div id="category_projects{{project_category}}"></div>
	</div>
	<!--끝-->
	
	<!--구분  -->
	
	<!-- 시작 -->
	<div class='col-sm-3 col-lg-3 col-md-3'>{{search_count}}
		<div class='thumbnail'>
			<a href='/dream/projectInfoView?project_no={{project_no}}'>
			<img src='resources{{project_thumbnail}}'></a>
			
			<div class='progress'>
				<div class='progress-bar' role='progressbar' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100' align='center' style='width: {{projectOperDTO.project_percentage}}%'></div>
			</div>
			
			<div class='caption'>
				<h4>
					<b>{{project_title }}</b>
					<hr>
				</h4>
				<p>{{project_summary }}</p>
				<p style="color: gray;">{{project_category}}</p>
				<div class="point">
					<div class='col-md-4' align='center'>
						<b>{{projectOperDTO.project_percentage}}%</b><br/>
						<small>달성도</small>
					</div>
					<div class='col-md-4' align="center">
						<b>{{supporting_count}}명</b><br />
						<small>후원수</small>
					</div>
					<div class='col-md-4' align="center">
						<b>{{projectOperDTO.project_d_day}}일</b><br />
						<small>잔여기간</small>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 끝 -->
<header> <%@include file="../mainView/footer.jsp"%>
</body>
</html>
</header>

<script type="text/javascript"
	src="resources/js/mainBody/main_category.js"></script>
<%@include file="../jsp_piece/main/feature_category_project.jsp"%>
<%@include file="../jsp_piece/main/project_point_info.jsp"%>