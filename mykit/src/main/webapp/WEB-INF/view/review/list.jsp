<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- /webapp/WEB-INF/view/review/list.jsp --%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 관리</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link href="../css/fonts.css" rel="stylesheet">
<link href="../css/styleUser.css" rel="stylesheet">
</head>
<body>
<div id="mypage-total" style="height:${ht}">
<table id="mypage-menu">
	<tr><td><input class="mypage-info" type="button" value="장바구니"  onclick="location.href='../cart/cartView'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="구매목록"  onclick="location.href='../user/myitemlist?id=${sessionScope.loginUser.userid}'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="리뷰관리"  onclick="location.href='../review/list?id=${sessionScope.loginUser.userid}'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="수정"  onclick="location.href='../user/userupdate?id=${sessionScope.loginUser.userid}'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="비밀번호 수정"  onclick="location.href='../user/password'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="로그아웃"  onclick="location.href='../user/userlogout'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="탈퇴"  onclick="location.href='../user/userdelete?id=${sessionScope.loginUser.userid}'"></td></tr>
</table>
<table id="mypage-t1" style="height:${tht}">
	<tr><th id="mypage-th"><h3 id="user-name">${sessionScope.loginUser.username}님의 리뷰목록</h3></th></tr>
	<tr><td>
	<table id="review-table">
		<tr>
			<td class="review-td1">리뷰</td>
			<td class="review-td1">상품</td>
			<td class="review-td1">점수</td>
			<td class="review-td1">내용</td>
			<td class="review-td1">작성 날짜</td>
		</tr>
		<c:forEach items="${reviewList}" var="review">
		<tr>
			<td class="td1">${review.renum}</td>
			<td class="td1">${review.itemid}</td>
			<td class="td1">${review.score}</td>
			<td class="td3">${review.recontent}</td>
			<td class="td2"><fmt:formatDate value="${review.redate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		</tr>
		<tr>
			<td id="review-bt" colspan="5">
				<a href="detail?num=${review.renum}"><button><i class="fas fa-search fa-border"></i></button></a>
				<a href="update?num=${review.renum}"><button><i class="fas fa-pen fa-border"></i></button></a>
				<a href="delete?num=${review.renum}"><button><i class="fas fa-trash-alt fa-border"></i></button></a>
			</td>
		</tr>
	</c:forEach>
	</table>
	</td></tr>
</table>
</div>
</body>
</html>