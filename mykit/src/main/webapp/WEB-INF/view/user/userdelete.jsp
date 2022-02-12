<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
<%-- /webapp/WEB-INF/view/user/userdelete.jsp --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link href="../css/fonts.css" rel="stylesheet">
<link href="../css/styleUser.css" rel="stylesheet">
</head>
<body>
<div id="mypage-total">
<table id="mypage-menu">
	<tr><td><input class="mypage-info" type="button" value="장바구니"  onclick="location.href='../cart/cartView'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="구매목록"  onclick="location.href='myitemlist?id=${sessionScope.loginUser.userid}'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="리뷰관리"  onclick="location.href='../review/list?id=${sessionScope.loginUser.userid}'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="수정"  onclick="location.href='userupdate?id=${sessionScope.loginUser.userid}'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="비밀번호 수정"  onclick="location.href='password'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="로그아웃"  onclick="location.href='userlogout'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="탈퇴"  onclick="location.href='userdelete?id=${sessionScope.loginUser.userid}'"></td></tr>
</table>
<table id="mypage-t1">
	<tr><th id="mypage-th"><h3 id="user-name">회원 탈퇴</h3></th></tr>
	<tr><td>
	<table id="mypage-t2">
		<tr><td class="mypage-td1" style="width:30%;">🧀 아이디 </td><td class="user-info" style="width:70%;">${user.userid}</td></tr>
		<tr><td class="mypage-td1" style="width:30%;">🧀 이름 </td><td class="user-info" style="width:70%;">${user.username}</td></tr>
		<tr><td class="mypage-td1" style="width:30%;">🧀 생년월일 </td><td class="user-info" style="width:70%;">
		<fmt:formatDate value="${user.birth}" pattern="yyyy-MM-dd" /></td></tr>
		<form method="post" action="userdelete" name="deleteform">
		<tr><td class="mypage-td1" style="width:30%;">🧀 비밀번호 </td><td class="user-info" style="width:70%;">
		<input type="password" name="password">
		</td></tr>
		</form>
	</table>
	</td></tr>
	<tr><td id="mypage-admin-icon2">
		<i class="fas fa-user-slash fa-border" onclick="javascript:deleteform.submit()"></i>
		<i class="fas fa-sign-out-alt fa-border" onclick="location.href='mypage?id=${sessionScope.loginUser.userid}'"></i>
	</td></tr>
</table>
</div>
</body>
</html>