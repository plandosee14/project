<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="/web/toyProject/DreamUp_View/resources/js/common/jquery.js"></script>
<script src="/web/toyProject/DreamUp_View/resources/js/support/supportView.js"></script>
<script src="/web/toyProject/DreamUp_View/resources/js/project/projectRegister.js"></script>
<script type="text/javascript">
     function next() {
         document.location.href='/web/toyProject/DreamUp_View/views/support/support_selectReward_view.jsp';
     }
		
</script>

<title>${project.project_title }</title>
<link rel="icon" href="/web/toyProject/DreamUp_View/resources/img/title.png" type="image/x-icon">
<!-- jQuery -->
</head>
<header> <%-- 	<%@include file="../views/mainView/header.jsp" %> --%>
<%@include file="../mainView/header.jsp"%> </header>
<%-- 회원 번호 : ${session.member_no }<br>
등록자 번호 : ${project.member_no }<br>
프로젝트 번호 : ${project.project_no }<br> --%>
<input type="hidden" id="project_no" value="${project.project_no }">


<c:if test="${project.project_register_state eq 'F'}">
	<article> <%@include
		file="../project/register/projectTabList.jsp"%>
	</article>
</c:if>

<body>
	<div class="wrap">
		<div class="container">
			<div class="col-md-12 panel">
				<div class="row" style="margin-bottom: 35px; margin-top: 25px">
					<div class="col col-md-8" style="background-color: white">

						<%-- <c:if test="${project.project_video_type eq 'youtube_video' }"> --%>
							<embed width="730" height="430"
								src="http://www.youtube.com/v/${project.project_video }"
								type="application/x-shockwave-flash" allowscriptaccess="always"
								allowfullscreen="true"></embed>
						<%-- </c:if> --%>
						<%-- <embed src="resources/member/thumbnail${project.project_video }" clickto autoplay="false"></embed> --%>
						<%-- <object [width="485" height="480"] data="resources/member/thumbnail${project.project_video }" showstatusbar="1"> --%>
						<c:if test="${project.project_video_type eq 'member_video' }">
						    
						    <!-- 썸네일 비디오 -->
							<!-- <video width="730" height="430" controls> poster속성을 이용하여 동영상 썸네일 이미지 설정 가능 -->
							
							<video width="320" height="240" poster="/images/w3html5.gif" controls>
							<!-- 다음 url의 코드를 이용하여 clickToPlay 구현할것 --> <!--https://www.w3schools.com/html/tryit.asp?filename=tryhtml5_video_js_prop  -->
							<source src="/web/upload/1.JPG" type="video/mp4">
							<source src="/web/upload/1.JPG" type="video/ogg">
							<%-- <source src="resources/member/thumbnail${project.project_`	video }" type="video/mp4">
					<source src="resources/member/thumbnail${project.project_video }" type="video/ogg"> --%></video>
						</c:if>
						<!-- showstatusbar="1" autoplay="false" hidden="false" -->
						<%-- <div class='progress'>
								<c:choose>
										<div class='progress-bar' role='progressbar' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100' align='center' style='width: 60%'></div>
									<c:when test="${project.projectOperDTO.project_percentage > 100}">
									</c:when>
									<c:otherwise>
										<div class='progress-bar' role='progressbar' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100' align='center' style='width: 70%'></div>
									</c:otherwise>
								</c:choose>
							</div>		 --%>	
						<div class="col-md-12" align="left">
							<div class="col-md-10">
								<legend>
									<h3>
										<b>COLORVERSE 첫번째 프로젝트 잉크</b>
									</h3>
								</legend>
										<font color="gray">COLORVERSE 첫번째 프로젝트 잉크 !!! 만년필의 색을 담아내다.</font> 
								<br>
							</div>
							<div class="pull-right">
							    <br>
								조회수 : <b>139회</b>
								<br> 후원수 : <b>27명</b><br>
								좋아요 : <b>67회</b>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<center>

							<font size="4px"><b>870,000원</b></font><br>후원액<br><br>
							<font size="4px"><b>1,270,000원</b></font><br>목표액<br><br>
							<font size="4px"><b>23명</b></font><br>후원수<br><br> 
							<font size="4px"><b>86%</b></font><br>달성률<br> <br>
							<font size="4px"><b>21일</b></font><br>잔여기간<br><br>
							<font size="4px"><b>2020년 11월 3일 ~ 2020년 12월 25일</b></font><br>후원기간 <br> <br>
							

							<%-- <c:if
								test="${session.member_no eq null or session.member_no ne project.member_no}">
								<c:if test="${project.project_register_state eq 'T'}"> --%>
									<div class="col-md-12">
										<button style="height: 50px; background-color: #33ADFF" id="support_project_view"
											class="btn btn-basic" onclick="next()">후원하기</button>
										<button style="width: 48%; background-color : #C2E4FF; margin-right: 1%; margin-top: 10px" class="btn btn-basic">
											<svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-bookmark-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5V2z"/>
</svg>
										</button>

										<button style="width: 48%; background-color : #C2E4FF; margin-left: 1%; margin-top: 10px" class="btn btn-basic	">
											<svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-shield-fill-exclamation" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8 .5c-.662 0-1.77.249-2.813.525a61.11 61.11 0 0 0-2.772.815 1.454 1.454 0 0 0-1.003 1.184c-.573 4.197.756 7.307 2.368 9.365a11.192 11.192 0 0 0 2.417 2.3c.371.256.715.451 1.007.586.27.124.558.225.796.225s.527-.101.796-.225c.292-.135.636-.33 1.007-.586a11.191 11.191 0 0 0 2.418-2.3c1.611-2.058 2.94-5.168 2.367-9.365a1.454 1.454 0 0 0-1.003-1.184 61.09 61.09 0 0 0-2.772-.815C9.77.749 8.663.5 8 .5zM8 4a.905.905 0 0 0-.9.995l.35 3.507a.553.553 0 0 0 1.1 0l.35-3.507A.905.905 0 0 0 8 4zm.002 6a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
</svg>
										</button>
									</div>
								<%-- </c:if> --%>
							<%-- </c:if> --%>
							<br>
						</center>
					</div>
				</div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-3" align="center">
							<img src="/web/upload/1.JPG" width="120px">
							<br>
							<legend>원마일클로저</legend>
						</div>

						<div class="col-md-8">
							<legend>
								<b>등록자 소개</b>
							</legend>
							SNS: https://www.instagram.com/honest_lab/
						</div>

				<%-- 		<div class="col-md-5">
							<legend>
								<b>프로젝트 소개</b>
							</legend>
							${project.project_summary}
						</div> --%>
					</div>
					<div class="row" style="margin-top: 35px">
						<div class="col-md-12">프로젝트 설명</div>

					</div>
				</div>

				<div class="col-md-4">
					<legend>
						<b>리워즈</b>
					</legend>
					<%-- <c:forEach items="${rewards}" var="rewards"> --%>
						<%-- 회원 번호 : ${rewards.member_no}<br>
						프로젝트 번호 : ${rewards.project_no}<br>
						전체 리워드 번호 : ${rewards.total_reward_no}<br>
						번호 : ${rewards.reward_no}<br> --%>
						<div class="row"
							style="background-color: ghostwhite; border-radius: 10px; border-color: lightblue; margin-bottom: 15px; padding-top: 10px; padding-bottom: 10px">
							<legend align="center"># 리워드1</legend>
							<label class="col-md-5 control-label col-md-offset-1">리워드
								: </label><label class="col-md-5 control-label">만연필을 포함한 패키지</label>
							<label class="col-md-5 control-label col-md-offset-1">리워드
								가격 : </label><label class="col-md-5 control-label">30,000원</label>
							<label class="col-md-5 control-label col-md-offset-1">한정
								수량 : </label><label class="col-md-5 control-label">34개</label>
							<label class="col-md-5 control-label col-md-offset-1">배송
								예정일 : </label><label class="col-md-5 control-label">2020년 12월</label>
						</div>
					<%-- </c:forEach> --%>
					<%-- <c:forEach items="${rewards}" var="rewards"> --%>
						<%-- 회원 번호 : ${rewards.member_no}<br>
						프로젝트 번호 : ${rewards.project_no}<br>
						전체 리워드 번호 : ${rewards.total_reward_no}<br>
						번호 : ${rewards.reward_no}<br> --%>
						<div class="row"
							style="background-color: ghostwhite; border-radius: 10px; border-color: lightblue; margin-bottom: 15px; padding-top: 10px; padding-bottom: 10px">
							<legend align="center"># 리워드2</legend>
							<label class="col-md-5 control-label col-md-offset-1">리워드
								: </label><label class="col-md-5 control-label">만연필 패키지와 사무용품 수납세트</label>
							<label class="col-md-5 control-label col-md-offset-1">리워드
								가격 : </label><label class="col-md-5 control-label">50,000원</label>
							<label class="col-md-5 control-label col-md-offset-1">한정
								수량 : </label><label class="col-md-5 control-label">27개</label>
							<label class="col-md-5 control-label col-md-offset-1">배송
								예정일 : </label><label class="col-md-5 control-label">2020년 12월</label>
						</div>
					<%-- </c:forEach> --%>
				</div>

				<c:if test="${project.project_register_state eq '5'}">
					<div class="pull-right row">
						<a href="#" id="cancel_project_register" value="취소"
							class="btn btn-danger">취소</a> <a id="project_register" value="등록"
							class="btn btn-success">등록</a>
					</div>
				</c:if>
			</div>
		</div>
</body>
</html>
<footer> <%@include file="../mainView/footer.jsp"%>
</footer>

