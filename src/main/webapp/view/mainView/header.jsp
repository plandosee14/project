<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- jstl core libary -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
<!-- Bootstrap Core CSS -->
<link href="/dreamUp/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- --------------------------- Custom CSS --------------------------- -->
<!-- Custom CSS -->
<link href="/dreamUp/resources/css/shop-homepage.css" rel="stylesheet">
<link href="/dreamUp/resources/css/common/commonStyle.css" rel="stylesheet">

<link href="/dreamUp/resources/css/custom/index.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/dreamUp/resources/css/member/findView.css">

<!-- Dream Up Login.css -->
<link href="/dreamUp/resources/css/common/login.css" rel="stylesheet"type="text/css" />

<!-- jQuery -->
<script src="/dreamUp/resources/js/common/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/dreamUp/resources/js/common/bootstrap.min.js"></script>

<!-- Naver Login API -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>

<!-- handlebars libray  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<!-- --------------------------- Custom javascript --------------------------- -->
<!-- header.js -->
<script type="text/javascript" src="/dreamUp/resources/js/header/header.js"></script>
<!-- login.js -->
<script type="text/javascript" src="/dreamUp/resources/js/login/login.js"></script>

<!-- mypage.js -->

<script type="text/javascript">
// 세션검사 함수부
$(function(){ 
	//$('#loginModal').modal({backdrop : "static"});		
	
	// 해당 요청이 세션을 필요로 하는 요청일 경우 
	//1. interCepter에서 세션 검사 후 세션이 널인 경우(비로그인 요청일 경우)
	//2. preHandle에서 임시 세션 needLoginSession 발급
	//3. 이후 발급된 임시 세션 needLoginSession의 값을 가지고 컨트롤러에서 
	var needLoginSession = '${needLoginSession}';

	if(needLoginSession =='needLoginSession'){
		var loginConfirm = confirm("로그인이 필요한 서비스 입니다. 로그인 하시겠습니까?");
		if(loginConfirm){
			$('#loginModal').modal({backdrop : "static"});	
			$('#loginCancelBtn').click(function(){
				location.href = "/dream"
			});//loginCancelBtn click event
		}else{
			location.href = "/dream"
		}
	}// if end
});//ready
</script>
</head>
<!-- Navigation --> 
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<!-- <div class=""> -->
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
<!-- 			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button> -->
				<a class="navbar-brand" href="/dreamUp/view/mainView/mainBody.jsp">
				<img src="/dreamUp/resources/img/logo_renew.png" width="150"></a> 
		</div>
	
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a id="main_category" href="/dreamUp/view/mainView/category_project_list.jsp">카테고리별 프로젝트</a></li>
					<li><a id="projectRegiterView" href="/dreamUp/projectBasicInfoView.do">프로젝트 등록</a></li>
	
				<%-- <c:if test="${session.member_mail ne null || session.member_mail ==''}"> --%>
					<!-- <li><a href="#">마이 프로젝트</a></li> -->
				
				<input type="hidden" id="needLoginSession" value="${needLoginSession}">
				<div class="navbar-form navbar-left">
					<div class="input-group">
						<input type="text" class="form-control" id="project_search_keyword" placeholder="검색어를 입력하세요">
						<div class="input-group-btn">
							<button class="btn btn-default" id="project_search_btn">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</div> 
				<%-- </c:if> --%>
			</ul>
	
			<!--navbar 우측 정렬 -->
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/dreamUp/view/board/qna.jsp">고객 센터</a></li>
				<!-- search bar  -->
				
		
	
				<!-- 로그인 버튼 및 로그인 완료시 사용자 드롭다운 메뉴 -->
				<c:if test="${session.member_Name != '' || session.member_Name ne null}">
					<li class="dropdown" style="margin-right: 20px">
					<c:if test="${session.member_Name ne null}">
					<c:choose>
						<c:when test="${session.member_Profile eq 'NO PROFILE'}">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#">${session.member_Name }<span class="caret"></span></a>				
						</c:when>
						<c:otherwise>
							<a class="dropdown-toggle"  data-toggle="dropdown"><img height="35px" src="resources${session.member_Profile }"><span class="caret"></span></a>										
						</c:otherwise>
					</c:choose>
					<input id="session_mail" type="hidden" value="${session.member_Mail }">
					<input id="session_no" type="hidden" value="${session.member_No }">
					<input id="session_name" type="hidden" value="${session.member_Name }">
					</c:if>
						<ul class="dropdown-menu">
							<li><a id="mypage_Main">마이페이지</a></li>
							<li class="divider"></li>
		
							<%-- <c:if test="${session.Total_Project_Count > 0}"> --%>
							<li><a href="#">마이 프로젝트</a></li>
							<%-- </c:if> --%>
		
							<%-- <c:if test="${session.Supporting_Count > 0 }"> --%>
							<li><a href="#">후원 프로젝트</a></li>
							<li><a href="#">결제 내역</a></li>
							<%-- </c:if> --%>
		
							<li><a id="member_Info">내 정보 보기</a></li>
		
							<li class="divider"></li>
							<li><a id="logout">로그아웃</a></li>
						</ul>
					</li>
				</c:if>
				<c:if test="${session.member_Mail =='' || session.member_Mail eq null}">
 					<li id="loginBtn"><a href="#"><span
							class="glyphicon glyphicon-log-in"></span>로그인</a></li>
				</c:if> 
			</ul>
		
		</div><!-- /.navbar-collapse -->
	
	</div><!-- /.container --> 

	<!-- nav -->
	</nav> 
	
	<div class="container">
		<!-- <div class="row"> -->
			<!-- Login Modal -->
			<div class="modal fade" id="loginModal" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header" style="padding: 35px 50px;">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="loginSpan">
								<span class="glyphicon glyphicon-lock"></span> Login
							</h4>
						</div>
						<div class="modal-body" style="padding: 40px 50px;">
							<form role="form">
								<div class="form-group">
									<label for="usrname"><span class="glyphicon glyphicon-user"></span> 이메일</label>
										<input type="email" class="form-control" id="login_mail" placeholder="이메일을 입력하세요">
								</div>
								
								<div class="form-group">
									<label for="psw"><span class="glyphicon glyphicon-eye-open"></span> 비밀번호</label>
									 <input type="password" class="form-control" id="login_pass"
										placeholder="비밀번호를 입력하세요">
								</div>
						
								<a id="login" class="btn btn-info btn-block" role="button">로그인</a>
								<br>
						<!-- 		<div class="social-login">
									<ul>
										<li><a href=""><i class="fa fa-facebook"></i> Facebook</a></li>
										<li><a href=""><i class="fa fa-google-plus"></i>Google+</a></li>
										<li><a href=""><i class="fa fa-twitter"></i> Twitter</a></li>
									</ul>
								</div> -->

								<br>
								<hr>
								<!-- <div class="text-muted center-block" style="text-align: center;"><h2>or</h2></div> -->
						
								<a href="/dreamUp/view/member/joinForm.jsp" class="btn btn-success btn-block" role="button">회원가입</a>
								<!-- <a href="companyJoinForm" class="btn btn-success btn-block" role="button">기업 회원가입</a> -->
		 						
		 				
							
								<div class="checkbox">
									<!-- <label class="pull-left"><input type="checkbox" value="" checked>자동 로그인</label> -->
									<label class="pull-right"><a href="../member/findView.jsp">아이디 / 비밀번호 찾기</a></label>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<!-- <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"> -->
							<button id="loginCancelBtn" type="submit" class="btn btn-danger btn-block" data-dismiss="modal">
								<span class="glyphicon glyphicon-remove"></span> 취소
							</button>
						</div>
					</div>

				</div>
			</div>
		</div><!-- /.container --> 
	</div>
	
	
<script type="text/javascript" src="/dreamUp/resources/js/header/project_search.js"></script>
