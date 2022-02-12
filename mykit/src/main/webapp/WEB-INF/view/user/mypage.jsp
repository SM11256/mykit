<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
<%-- /WEB-INF/view/user/mypage.jsp --%>    
<!DOCTYPE>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MyPage</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link href="../css/fonts.css" rel="stylesheet">
<link href="../css/styleUser.css" rel="stylesheet">
<script type="text/javascript">
	$(function() {
		$('button').click(function() {
			$('button').removeClass()
				$(this).addClass('on')
		})
	})
</script>
</head>
<body>
<c:if test="${loginUser.userid != 'admin'}">
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
	<tr><th id="mypage-th"><h3 id="user-name">${sessionScope.loginUser.username}님 환영합니다!</h3></th></tr>
	<tr><th id="mypage-th"><h3 id="user-name">현재 포인트는 
		<span class="user-special blinking">${rpoint}</span>입니다.</h3></th></tr>
	<tr><td>
	<table id="mypage-t2">
		<tr><td class="mypage-td1" style="width:30%;">🧀 아이디 </td><td class="user-info" style="width:70%;">${sessionScope.loginUser.userid}</td></tr>
		<tr><td class="mypage-td1" style="width:30%;">🧀 이름 </td><td class="user-info" style="width:70%;">${sessionScope.loginUser.username}</td></tr>
	</table>
	</td></tr>
</table>
</div>
</c:if>
<c:if test="${loginUser.userid == 'admin'}">
<div id="mypage-total">
<table id="mypage-menu">
	<tr><td><input class="mypage-info" type="button" value="회원관리" onclick="location.href='../admin/list'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="상품관리" onclick="location.href='../item/list'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="밀키트 데뷔전" onclick="location.href='../recipe/rclist'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="로그아웃"  onclick="location.href='userlogout'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="Q&A"  onclick="location.href='../board/qalist'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="공지&이벤트"  onclick="location.href='../board/evlist'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="홈으로"  onclick="location.href='main'"></td></tr>
</table>
<table id="mypage-t1">
	<tr><th id="mypage-th"><h3 id="user-name">어서오세요, ${sessionScope.loginUser.username}님.</h3></th></tr>
	<tr><th id="mypage-th"><h3 id="user-name">현재 포인트는 
		<span class="user-special blinking">${rpoint}</span>입니다.</h3></th></tr>
	<tr><td>
	<table id="mypage-t2">
		<tr><td class="mypage-td1" style="width:30%;">🧀 아이디 </td><td class="user-info" style="width:70%;">${sessionScope.loginUser.userid}</td></tr>
		<tr><td class="mypage-td1" style="width:30%;">🧀 이름 </td><td class="user-info" style="width:70%;">${sessionScope.loginUser.username}</td></tr>
	</table>
	</td></tr>
	<tr><td id="mypage-admin-icon">
		<i class="fas fa-home fa-border" onclick="location.href='main'"></i>
		<i class="fas fa-sign-out-alt fa-border" onclick="location.href='userlogout'"></i>
	</td></tr>
</table>
</div>
</c:if>
</body>
</html>