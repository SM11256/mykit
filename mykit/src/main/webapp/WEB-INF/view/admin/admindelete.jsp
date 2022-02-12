<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
<%-- /webapp/WEB-INF/view/admin/admindelete.jsp --%>    
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
	<tr><td><input class="mypage-info" type="button" value="회원관리" onclick="location.href='../admin/list'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="상품관리" onclick="location.href='../item/list'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="밀키트 데뷔전" onclick="location.href='../recipe/rclist'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="로그아웃"  onclick="location.href='../user/userlogout'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="Q&A"  onclick="location.href='../board/qalist'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="공지&이벤트"  onclick="location.href='../board/evlist'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="홈으로"  onclick="location.href='../user/main'"></td></tr>
</table>
<table id="mypage-t1">
	<tr><th id="mypage-th"><h3 id="user-name">회원 정보</h3></th></tr>
	<tr><td>
	<table id="mypage-t2">
		<tr><td class="mypage-td1">🧀 아이디 </td><td class="user-info">${user.userid}</td></tr>
		<tr><td class="mypage-td1">🧀 이름 </td><td class="user-info">${user.username}</td></tr>
		<tr><td class="mypage-td1">🧀 생년월일 </td><td class="user-info">
		<fmt:formatDate value="${user.birth}" pattern="yyyy-MM-dd" /></td></tr>
		<form method="post" action="admindelete" name="deleteform">
		<tr><td class="mypage-td1">🧀 비밀번호 </td><td class="user-info">
		<input type="hidden" name="userid" value="${param.id}">
		<input type="password" name="password">
		</td></tr>
		</form>
	</table>
	</td></tr>
	<tr><td id="mypage-admin-icon2">
		<i class="fas fa-user-slash fa-border" onclick="javascript:deleteform.submit()"></i>
		<i class="fas fa-sign-out-alt fa-border" onclick="location.href='list'"></i>
	</td></tr>
</table>
</div>
</body>
</html>