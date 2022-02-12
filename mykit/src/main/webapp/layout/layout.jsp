<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- /WEB-INF/view/layout.jsp --%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<%-- <decorator:title />  : 원래 작성된 HTML 중 <title>태그의 내용  --%>
		<link href="${path}/img/icon.ico" rel="shortcut icon" type="image/x-icon">
		<%-- <decorator:title />  : 원래 작성된 HTML 중 <title>태그의 내용  --%>
		<title><decorator:title /></title>
		<%-- CDN 방식으로 Jquery의 자바스크립트 파일 로드  --%>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script type="text/javascript" src="http://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>
		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
		<script type="text/javascript" src="js/main.js"></script>
		<script>
			function logoutCheck(){
				var result = confirm("로그아웃 하시겠습니까?")
				if(result){
					location.href='${path}/user/mainlogout'
				}
			}
		</script>
		<decorator:head />
		<link href="${path}/css/layout.css" rel="stylesheet" >

	</head>
	<body>
	<center>
	<div class="wrap"><!--상단 바까지의 영역-->
		<header>
			<div class="layout-hd">
				<form action="${path}/item/list" method="post" name="searchform">
				<div class="search">
					<input type="search" name="shkey" value="${param.shkey}" placeholder="검색어를 입력하세요!" />
					<input type="image" name="sh-en" src="${path}/img/sh.png">
				</div>
				</form>
				<div class="logo"><a href="${path}/user/main"><img src="${path}/img/yumlogo2.png" alt="mykit" /></a></div>
				<div class="top">
				<ul>
					<c:if test="${sessionScope.loginUser.userid == null}">
						<li><a href="${path}/user/userlogin">😊 로그인</a></li>
					</c:if>
					<c:if test="${sessionScope.loginUser.userid != null}">
						<li><a href="javascript:logoutCheck();">😢 로그아웃</a></li>
					</c:if>
					<li class="l">|</li>
					<li><a href="${path}/user/userentry">😍 회원가입</a></li>
					<li class="l">|</li>
					<li><a href="${path}/user/mypage?id=${sessionScope.loginUser.userid}">🍰 𝐌𝐘𝐏𝐀𝐆𝐄</a></li>
					<li class="l">|</li>
					<li><a href="${path}/cart/cartView">👛 장바구니</a></li>
				</ul>
				</div>
			</div>
		</header>
	</div>
	<nav class="menu">
		<!-- -----menu 시작 ----- -->
		<!-- header태그에서 뺀 이유: position:sticky는 부모요소들 중 어느 하나라도 overflow: hidden 값인 경우에도 동작하지 않음 -->
		<div>
			<ul class="navi">
				<!-- -----navi 시작----- -->
				<li id="sub-navi"><a href="${path}/item/list">☰ 전체 상품</a>
					<ul>
						<li><a href="${path}/item/list?itype=kor">한식 키트</a></li>
						<li><a href="${path}/item/list?itype=chn">중식 키트</a></li>
						<li><a href="${path}/item/list?itype=jpn">일식 키트</a></li>
						<li><a href="${path}/item/list?itype=wes">양식 키트</a></li>
					</ul>
				</li>
				<li id="sub-navi"><a href="${path}/item/list?userpick=newitem">추천 상품</a></li>
				<li id="sub-navi"><a href="${path}/item/list?userpick=useritem">당선 상품</a></li>
				<li id="sub-navi-special">
					<a href="${path}/recipe/rclist" id="special">
						<span>밀</span><span>키</span><span>트</span>
						<span>데</span><span>뷔</span><span>전</span>
					</a>
				</li>
				<li id="sub-navi"><a href="${path}/board/qalist">고객센터</a>
					<ul>
						<li><a href="${path}/board/qalist">Q&A</a></li>
						<li><a href="${path}/board/faq">FAQ</a></li>
						<li><a href="${path}/board/evlist">공지&이벤트</a></li>
					</ul></li>
				<!-- /커뮤니티 -->
			</ul>
			<!-- -----navi 끝----- -->
		</div>
	</nav>
	
	<decorator:body />
	
	<div class="bottom-menu">
	<div class="wrap-bottom">
		<a href="#" class="b1"><img src="${path}/img/yumlogo1.png" width=150px;></a>
		<div class="b2">
			<ul>
				<li>Customer Center</li>
				<li>📞 070.123.4567</li>
				<li>평일 오전 09:00 ~ 오후 06:00</li>
				<li>점심 오후 01:00 ~ 오후 02:00</li>
				<li>휴일, 주말에는 게시판을 이용해주세요!</li>
			</ul>
		</div>
		<div class="b3">
			<ul>
				<li><a href="#">회사소개</a></li>
				<li>|</li>
				<li><a href="#">이용약관</a></li>
				<li>|</li>
				<li><a href="#">개인정보처리방침</a></li>
				<li>|</li>
				<li><a href="#">이용안내</a></li>
				<li>|</li>
				<li><a href="#">입점문의</a></li>
			</ul>
			<img src="${path}/img/addr-b.png">
			<a href="#"><img src="${path}/img/insta.png"></a>
			<a href="#"><img src="${path}/img/face.png"></a>
			<a href="#"><img src="${path}/img/youtu.png"></a>
			<a href="#"><img src="${path}/img/naver.png"></a>
		</div>
	</div>
	</div>
	</center>
	</body>
	</html>