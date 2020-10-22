<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>헤르메스 - 일본 여행의 길잡이</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">
	
    <link rel="stylesheet" href="<c:url value='/resources/css/open-iconic-bootstrap.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/animate.css'/>">
    
    <link rel="stylesheet" href="<c:url value='/resources/css/owl.carousel.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/owl.theme.default.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/magnific-popup.css'/>">

    <link rel="stylesheet" href="<c:url value='/resources/css/aos.css'/>">

    <link rel="stylesheet" href="<c:url value='/resources/css/ionicons.min.css'/>">

    <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap-datepicker.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/jquery.timepicker.css'/>">

    
    <link rel="stylesheet" href="<c:url value='/resources/css/flaticon.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/icomoon.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
  </head>
  <body>
    
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="/hermes">Hermes</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> 메뉴
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">			<a href="<c:url value='/'/>" 				 class="nav-link">메인 화면</a></li>
          <li class="nav-item active">	<a href="<c:url value='/about'/>"			 class="nav-link">이용 방법</a></li>
          <li class="nav-item">			<a href="<c:url value='/tour'/>"			 class="nav-link">여행 정보</a></li>
          <li class="nav-item">			<a href="<c:url value='/map/mapmain'/>"		 class="nav-link">지도 정보</a></li>
          <li class="nav-item">			<a href="<c:url value='/board/boardmain'/>"  class="nav-link">게시판</a></li>
          <c:choose>
          	<c:when test="${sessionScope.userid != null}">
          	  <li class="nav-item"><a href="<c:url value='/member/logout'/>" class="nav-link"><span>로그아웃</span></a></li>
	          <li class="nav-item cta"><a href="<c:url value='/member/profile'/>" class="nav-link"><span>${sessionScope.userid}</span></a></li>
          	</c:when>
          	<c:otherwise>
	          <li class="nav-item"><a href="<c:url value='/member/loginForm'/>" class="nav-link">로그인 / 회원가입</a></li>
          	</c:otherwise>
          </c:choose>
        </ul>
      </div>
    </div>
  </nav>
    <!-- END nav -->
 
    <div class="hero-wrap js-fullheight" style="background-image: url(https://post-phinf.pstatic.net/MjAxODAyMTJfMTUg/MDAxNTE4NDA3MjE5Mzgw.zVS_BG88s8BJoxkvljzIyxs2x5uXuKMHxe7LbCGN4WAg.iJXTcwJoopT5uf7EcP-_aguUS2fNtZ9BdXANtlc-XHsg.JPEG/%EB%A1%9C%EB%A7%A8%ED%8B%B1%EA%B3%A0%EB%B2%A0%EC%BD%98%EC%B2%B4%EB%A5%B4%ED%86%A0%ED%81%AC%EB%A3%A8%EC%A6%88_%281%29.jpg?type=w1200);">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span>헤르메스 활용 가이드</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">이용 방법</h1>
          </div>
        </div>
      </div>
    </div>
    
    <section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row justify-content-start mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          	<span class="subheading">이용 전에 확인!</span>
            <h2 class="mb-4"><strong>헤르메스 이용 가이드</strong></h2>
          </div>
        </div>  
    		<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div id="accordion">
    					<div class="row">
    						<div class="col-md-6">
    							<div class="card">
						        <div class="card-header">
										  <a class="card-link" data-toggle="collapse"  href="#menuone" aria-expanded="true" aria-controls="menuone">
										   헤르메스는 어떤 사이트인가요?
										  <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
						        </div>
						        <div id="menuone" class="collapse show">
						          <div class="card-body">
						          <img src="<c:url value='/resources/images/about01.JPG'/>" style="width: 500px" height="300px">
						          <hr>
									<p>헤르메스는 일본 여행의 도우미입니다. 
									주요 기능으로는 여행 정보, 지도, 게시판 기능을 포함하고 있습니다.
									다양한 기능들을 통해 일본 여행의 전문가가 되어보세요! 
									</p>
						          </div>
						        </div>
						      </div>

						      <div class="card">
						        <div class="card-header">
										  <a class="card-link" data-toggle="collapse"  href="#menutwo" aria-expanded="false" aria-controls="menutwo">
										 여행 정보 기능 이용 방법
										  <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
						        </div>
						        <div id="menutwo" class="collapse">
						          <div class="card-body">
						          <img src="<c:url value='/resources/images/about02.JPG'/>" style="width: 500px" height="300px">
						          <hr>
								<p>여행 정보 페이지에 들어가시면
								좌측 사이드 메뉴를 통해 항공편 정보, 환율 정보, 이벤트 정보를 열람하실 수 있습니다.
								또한 여행지에 관한 자세한 정보와 날씨 정보를 열람하실 수 있습니다.
								</p>
						          </div>
						        </div>
						      </div>

						      <div class="card">
						        <div class="card-header">
										  <a class="card-link" data-toggle="collapse"  href="#menu3" aria-expanded="false" aria-controls="menu3">
										   지도 정보 이용 방법
										   <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
						        </div>
						        <div id="menu3" class="collapse">
						          <div class="card-body">
						          <img src="<c:url value='/resources/images/about03.JPG'/>" style="width: 500px" height="300px">
						          <hr>
									<p>출발지, 목적지, 도착지를 입력하시면 지도 정보와 함께 가는 방법을 제공합니다.
									또한 하단의 메뉴를 통해 도보와 운전 두 가지의 경우를 확인 가능합니다.
									또한 회원이시라면 입력했던 정보를 프로필에 저장하여 불러들일 수 있습니다.
									주변 정보와 리뷰까지 제공됩니다!
									
									</p>
						          </div>
						        </div>
						      </div>
    						</div>

    						<div class="col-md-6">
    							<div class="card">
						        <div class="card-header">
										  <a class="card-link" data-toggle="collapse"  href="#menu4" aria-expanded="false" aria-controls="menu4">
										  게시판 활용하기
										  <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
						        </div>
						        <div id="menu4" class="collapse">
						          <div class="card-body">
						          <img src="<c:url value='/resources/images/about04.JPG'/>" style="width: 500px" height="300px">
						          <hr>
									<p>게시판은 회원들끼리 자유롭게 소통할 수 있는 공간입니다. 작성글을 게시할 수 있으며 덧글도 달 수 있습니다.
									회원들간의 QnA나 여행 Tips등을 통해
									다양한 정보를 얻을 수 있으므로 여행이 익숙하지 않다면 적극 이용해보세요.</p>
						          </div>
						        </div>
						      </div>

						      <div class="card">
						        <div class="card-header">
										  <a class="card-link" data-toggle="collapse"  href="#menu5" aria-expanded="false" aria-controls="menu5">
										  회원 가입과 로그인
										  <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
						        </div>
						        <div id="menu5" class="collapse">
						          <div class="card-body">
						          <img src="<c:url value='/resources/images/about05_1.JPG'/>" style="width: 500px" height="300px">
						          <hr>
									<p>헤르메스는 카카오톡, 네이버 로그인을 지원합니다!
									헤르메스의 회원이 되셔서 지도 정보를 저장하거나, 게시판에 글을 작성하셔서
									당신의 일본 여행을 더욱 빛내 보세요!</p>
						          </div>
						        </div>
						      </div>

						      <div class="card">
						        <div class="card-header">
										  <a class="card-link" data-toggle="collapse"  href="#menu6" aria-expanded="false" aria-controls="menu6">
										  유저 정보(프로필)
										  <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
						        </div>
						        <div id="menu6" class="collapse">
						          <div class="card-body">
						          <img src="<c:url value='/resources/images/about06.JPG'/>" style="width: 500px" height="300px">
						          <hr>
									<p>프로필 화면에서는 자신의 아이디, 메일 주소를 확인할 수 있습니다.
									또한 비밀번호를 변경할 수 있으며 회원 탈퇴도 가능합니다.
									저장된 여행 정보를 불러오는것도 가능합니다.</p>
						          </div>
						        </div>
						      </div>
    						</div>
    					</div>
				    </div>
    			</div>
    		</div>
    	</div>
    </section>   


     <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">대표자</h2>
              <p>SWDO 4기 4조 프론트엔드 담당 HDS
              </p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Navigation</h2>
              <ul class="list-unstyled">
                <li><a href="<c:url value='/'/>" 					class="py-2 d-block">메인 화면</a></li>
                <li><a href="<c:url value='/about'/>" 				class="py-2 d-block">이용 방법</a></li>
                <li><a href="<c:url value='/tour'/>" 				class="py-2 d-block">여행 정보</a></li>
                <li><a href="<c:url value='/map/mapmain'/>"			class="py-2 d-block">지도 정보</a></li>
                <li><a href="<c:url value='/board/boardmain'/>" 	class="py-2 d-block">게시판</a></li>
                <li>
                <c:choose>
          			<c:when test="${sessionScope.userid != null}">
          	 			 <li><a href="<c:url value='/member/profile'/>" 	class="py-2 d-block">회원 정보</a></li>
	         		</c:when>
          			<c:otherwise>
	          			<li><a href="<c:url value='/member/loginForm'/>" 	class="py-2 d-block">로그인</a></li>
          			</c:otherwise>
        		  </c:choose>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">외부 사이트</h2>
              <ul class="list-unstyled">
                <li><a href="https:www.google.com" class="py-2 d-block">구글</a></li>
                <li><a href="https:www.naver.com" class="py-2 d-block">네이버</a></li>
                <li><a href="https:kakaocorp.com" class="py-2 d-block">카카오</a></li>
                <li><a href="https:www.youtube.com" class="py-2 d-block">유튜브</a></li>
                <li><a href="https:softsociety.net/ictcenter" class="py-2 d-block">SWDO</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Q/A</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">광주 SWDO 4기 Hermes Project</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">010-0000-0000</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">wg4544@gmail.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p>
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
  All rights reserved <br>
  This Site is made with 
  by Hermes
 </p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="<c:url value='/resources/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/js/jquery-migrate-3.0.1.min.js'/>"></script>
  <script src="<c:url value='/resources/js/popper.min.js'/>"></script>
  <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
  <script src="<c:url value='/resources/js/jquery.easing.1.3.js'/>"></script>
  <script src="<c:url value='/resources/js/jquery.waypoints.min.js'/>"></script>
  <script src="<c:url value='/resources/js/jquery.stellar.min.js'/>"></script>
  <script src="<c:url value='/resources/js/owl.carousel.min.js'/>"></script>
  <script src="<c:url value='/resources/js/jquery.magnific-popup.min.js'/>"></script>
  <script src="<c:url value='/resources/js/aos.js'/>"></script>
  <script src="<c:url value='/resources/js/jquery.animateNumber.min.js'/>"></script>
  <script src="<c:url value='/resources/js/bootstrap-datepicker.js'/>"></script>
  <script src="<c:url value='/resources/js/jquery.timepicker.min.js'/>"></script>
  <script src="<c:url value='/resources/js/scrollax.min.js'/>"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="<c:url value='/resources/js/google-map.js'/>"></script>
  <script src="<c:url value='/resources/js/main.js'/>"></script>
    
  </body>
</html>
