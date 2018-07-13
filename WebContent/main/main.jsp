<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String name = (String) session.getAttribute("name");
	String id = (String) session.getAttribute("id");
	
%>
<html>
<head>
<title>TXT by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="<%=path %>/assets/css/main.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"> 
<script src="https://code.jquery.com/jquery-1.11.3.js"></script> 
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> 
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!--  이미지 자동 변경 -->
<script> 
$(document).ready(function(){ 
    var main = $('.bxslider').bxSlider({ 
    mode: 'fade', 
    auto: true, //자동으로 슬라이드 
    controls : true,    //좌우 화살표    
    autoControls: true, //stop,play 
    pager:true, //페이징 
    pause: 3000, 
    autoDelay: 0,   
    slideWidth: 800, 
    speed: 500, 
    stopAutoOnclick:true
}); 
    
$(".bx-stop").click(function(){ // 중지버튼 눌렀을때 
    main.stopAuto(); 
    $(".bx-stop").hide(); 
    $(".bx-start").show(); 
    return false; 
}); 
 
$(".bx-start").click(function(){    //시작버튼 눌렀을때 
    main.startAuto(); 
    $(".bx-start").hide(); 
    $(".bx-stop").show(); 
    return false; 
}); 
 
  $(".bx-start").hide();    //onload시 시작버튼 숨김. 
}); 
</script> 

<style type="text/css">

#userId {
	font-size: 15px;
	padding-left: 100px;	
	text-decoration: none;
}
footer{
position: relative;
font-size: 12px;
text-decoration: none;
  text-align: center;
  text-indent: 6px;  
color: gray;
}
</style>
<script>				
function goPopup() {			
window.open('login/loginForm.jsp','window','width=800,height=650,left=570,top=250');			
// window.open(URL,"팝업 구분값(팝업 1개일 경우 상관없음)","팝업 창 옵션")				
}				
</script>
</head>
<body class="homepage is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header">
					<div class="logo container">
						<div>
							
							<p>나눔의 민족! 여기와서 나누자!!</p>
						</div>
					</div>
				</header>

			<!-- Nav -->
				<nav id="nav">
					<ul>
						<li class="current"><a href="<%=path %>/main.nanum">Home</a></li>
						
						<li><a href="#">소개</a>
						<ul>
						<li><a href="introduce.html">개발진들</a></li>
						</ul>
						</li>
						
						<li><a href="#">공지사항</a>
						<ul>
						<li><a href="#">개인정보 주의</a></li>
						</ul>
						</li>
						
						<li>
							<a href="#">배달나눔</a>
							<ul>
								<li><a href="#">현재 인기있는 나눔 물품</a></li>
								<li><a href="#"> 나눔 예정인 물품</a></li>
								<li>
									<a href="#">나와 가까운 곳에서 진행중인 나눔 물품</a>
									
								</li>
								
							</ul>
						</li>
						<li>
							<a href="#">이벤트</a>
							<ul>
								<li><a href="#">협력업체 이벤트</a></li>
								<li><a href="#">시간할인 이벤트</a></li>
								<li>
									<a href="#">별점할인 이벤트</a>
									
								</li>
					</ul>
					
						<li>
						<a href="#">고객센터</a>
						</li>			
															
					<%if(id == null){ %>
					<li><a href="index.jsp" onclick="goPopup()">Login</a></li>
					<%}else if(id.equals("admin")){ %>
					<li><a href="<%=path %>/admin.nanum">관리자페이지</a></li>
					<li><a href="logout.nanum">Logout</a></li>
					<b id = userId> <a href="#"><%out.print(name);%></a> 님 안녕하세요!</b>
					<%}else{ %>	
					<li><a href="<%=path%>/myPage.nanum">마이페이지</a></li>
					<li><a href="logout.nanum">Logout</a></li>
					<b id = userId> <a href="<%=path%>/myPage.nanum"><%out.print(name);%></a> 님 안녕하세요!</b>	
					<%} %>							
					</ul>					
				</nav>		
				
	<div class="container">
		<h1><p class="text-center"><b>나눔의 민족</b></p></h1>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="<%=path %>/images/05.jpg" style="width: 100%;">
				</div>

				<div class="item">
					<img src="<%=path %>/images/06.jpg" style="width: 100%;">
				</div>

			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<br>
	<br>


	<!--  구글지도 
	 <iframe
		src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7792.376720191432!2d128.805493756368!3d35.9128068876473!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3566726281568c53%3A0x73386aadf1c5fa44!2z64yA6rWs6rCA7Yao66at64yA7ZWZ6rWQ!5e1!3m2!1sko!2skr!4v1530689750167"
		width="400" height="300" frameborder="0" style="border: 0"
		allowfullscreen></iframe> -->
	<br>
	<br>
	<br>
	<br>

	<div class="container">

		<div class="row my-4">
			<div class="col-lg-4">
				<h4>개요</h4>
				<h2>나눔의 민족 이용방법</h2>
			</div>
		</div>

		<br> <br>

		<!-- /.col-md-4 -->
		<div class="row">
			<div class="col-md-3 mb-3">
				<div class="card h-100">
					<div class="card-body">
						<h3 class="card-title">검색</h3><br>
						<p class="card-text">검색하고자 하는 음식과 음식점의 위치를 파악하고 게시판을 검색 후
							입력합니다.</p>
						<br>
						<p class="card-text">
						<p class="text-danger">
							<b>주의사항</b>
						</p>
						음식과 음식금액을 정확히 입력해주세요.
						<br>
					</div>
				</div>
			</div>
			<div class="col-md-3 mb-3 col-md-offset-1">
				<div class="card h-100">
					<div class="card-body">
						<h3 class="card-title">주문</h3><br>
						<p class="card-text">최소주문금액이 맞춰지면 게시판 작성자가 주문을 합니다.</p>
					</div>
				</div>
			</div>
			<div class="col-md-3 mb-3 col-md-offset-1">
				<div class="card h-100">
					<div class="card-body">
						<h3 class="card-title">대기</h3><br>
						<p class="card-text">배달출발 시 배달원이 전송한 문자를 확인 후 도착예정시간에 맞춰
							대기합니다.</p>
						<br>
						<p class="card-text">
						<p class="text-danger">
							<b>주의사항</b>
						</p>
						배달원이 도착하기 전에 대기해주세요.
						<br>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>



	<!-- Heading Row -->
	<div class="container">
		<div class="row my-4">
			<div class="col-lg-4">
				<h4>더 보기</h4>
				<h2>주문 서비스 상세 요청</h2>
			</div>
			<!-- /.col-md-4 -->
		</div>
		<!-- /.row -->

		<br> <br>

		<!-- Content Row -->
		<div class="row">
			<div class="col-md-3 mb-3">
				<div class="card h-100">
					<div class="card-body">
						<h3 class="card-title">음식점 검색</h3><br>
						<p class="card-text">현재 주문하고자 하는 음식점을 검색합니다.</p>
						<br>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-default">나와 가까운 음식점</a><br> <br>
						<a href="#" class="btn btn-default">메뉴 추천받기</a>
					</div>
				</div>
			</div>
			<!-- /.col-md-4 -->
			<div class="col-md-3 mb-3 col-md-offset-1">
				<div class="card h-100">
					<div class="card-body">
						<h3 class="card-title">진행중인 게시판</h3><br>
						<p class="card-text">현재 최소주문금액을 맞추기 위해 진행중인 게시판을 검색합니다.</p>
						<br>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-default">게시판 바로가기</a>
					</div>
				</div>
			</div>
			<!-- /.col-md-4 -->
			<div class="col-md-3 mb-3 col-md-offset-1">
				<div class="card h-100">
					<div class="card-body">
						<h3 class="card-title">원활한 결제</h3><br>
						<p class="card-text">결제결제</p>
						<br>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-default">결제하기</a>
					</div>
				</div>
			</div>
			<!-- /.col-md-4 -->

		</div>
		<br> <br> <br> <br>

		<div class="row">
			<div class="col-md-3 mb-3">
				<div class="card h-100">
					<div class="card-body">
						<h3 class="card-title">대기하기</h3><br>
						<p class="card-text">배달원의 도착예정시간에 맞춰 대기합니다.</p>
						<br>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-default">도착시간 확인하기</a><br> <br>
					</div>
				</div>
			</div>
			<div class="col-md-3 mb-3 col-md-offset-1">
				<div class="card h-100">
					<div class="card-body">
						<h3 class="card-title">주문 평가하기</h3><br>
						<p class="card-text">평가는 안전하고, 믿을 수 있으며, 즐거운 서비스를 만드는 데 도움이
							됩니다.</p>
						<br>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-default">평가하기</a><br> <br>
					</div>
				</div>
			</div>
		</div>
		<!-- /.row -->

	</div>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- /.container -->

<footer><br><br>
(주) 나눔의 민족<br>
대구가톨릭대학교 공과대학 534호<br>
대표전화 : 010-1234-1234<br>
대표메일 : email@email.com
</footer><br><br><br>

		

		<!-- Scripts -->
			<script src="<%=path %>/assets/js/jquery.min.js"></script>
			<script src="<%=path %>/assets/js/jquery.dropotron.min.js"></script>
			<script src="<%=path %>/assets/js/jquery.scrolly.min.js"></script>
			<script src="<%=path %>/assets/js/browser.min.js"></script>
			<script src="<%=path %>/assets/js/breakpoints.min.js"></script>
			<script src="<%=path %>/assets/js/util.js"></script>
			<script src="<%=path %>/assets/js/main.js"></script>

	</body>
</html>