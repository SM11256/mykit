<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%-- /webapp/WEB-INF/view/review/detail.jsp --%>    
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 상세</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link href="../css/fonts.css" rel="stylesheet">
<link href="../css/styleUser.css" rel="stylesheet">
</head>
<body>
<div id="mypage-total" style="height:600px;">
<table id="mypage-menu">
	<tr><td><input class="mypage-info" type="button" value="장바구니"  onclick="location.href='../cart/cartView'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="구매목록"  onclick="location.href='../user/myitemlist?id=${sessionScope.loginUser.userid}'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="리뷰관리"  onclick="location.href='../review/list?id=${sessionScope.loginUser.userid}'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="수정"  onclick="location.href='../user/userupdate?id=${sessionScope.loginUser.userid}'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="비밀번호 수정"  onclick="location.href='../user/password'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="로그아웃"  onclick="location.href='../user/userlogout'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="탈퇴"  onclick="location.href='../user/userdelete?id=${sessionScope.loginUser.userid}'"></td></tr>
</table>
<table id="mypage-t1" style="height:600px;">
	<tr><th id="mypage-th"><h3 id="user-name">${itemname}</h3></th></tr>
	<tr><td>
	<table id="review-detail">
	<tr class="review-tr1">
		<th>상품번호</th><td>${review.itemid}</td>
	</tr>
	<tr class="review-tr1">
		<th>아이디</th><td>${review.userid}</td>
	</tr>
	<tr class="review-tr1">
		<th>점수</th><td colspan="3">${review.score}</td>
	</tr>
	<tr>
		<th>내용</th><td colspan="3" id="review-td1">${review.recontent}</td>
	</tr>
</table>
</td></tr>
<tr><td>
	<div id="review-detail-m">
		<a href="list?id=${sessionScope.loginUser.userid}"><i class="fas fa-th-list fa-border"></i></a>
		<a href="update?num=${review.renum}"><i class="fas fa-pen fa-border"></i></a>
		<a href="delete?num=${review.renum}"><i class="fas fa-trash-alt fa-border"></i></a>
		<a href="../user/myitemlist?id=${sessionScope.loginUser.userid}"><i class="fas fa-hand-holding-usd fa-border"></i></a>
	</div>
</td></tr>
</table>
</div>
</body>
</html>