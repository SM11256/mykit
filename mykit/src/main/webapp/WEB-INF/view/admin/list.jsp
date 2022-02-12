<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- /webapp/WEB-INF/view/admin/list.jsp --%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link href="../css/fonts.css" rel="stylesheet">
<link href="../css/styleUser.css" rel="stylesheet">
<script type="text/javascript">
   function allchkbox(allchk) {
	   $(".idchks").prop("checked",allchk.checked)
   }
</script>
</head>
<body>
<div id="mypage-total" style="height:${tht}">
<table id="mypage-menu">
	<tr><td><input class="mypage-info" type="button" value="회원관리" onclick="location.href='../admin/list'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="상품관리" onclick="location.href='../item/list'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="밀키트 데뷔전" onclick="location.href='../recipe/rclist'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="로그아웃"  onclick="location.href='../user/userlogout'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="Q&A"  onclick="location.href='../board/qalist'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="공지&이벤트"  onclick="location.href='../board/evlist'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="홈으로"  onclick="location.href='../user/main'"></td></tr>
</table>
<form action="mailForm" method="post" id="admin-mail">
<table id="mypage-t1" style="height:${ht}">
	<tr><th id="mypage-th"><h3 id="user-name">회원 목록</h3></th></tr>
	<tr><td>
	<table id="mypage-t2-list">
		<tr>
			<td class="list-mem">아이디</td>
			<td class="list-mem">이름</td>
			<td class="list-mem">전화</td>
			<td class="list-mem">생일</td>
			<td class="list-mem">이메일</td>
			<td class="list-mem">우편번호</td>
			<td class="list-mem">기타</td>
			<td class="mail-td"><input type="checkbox" name="allchk" onchange="allchkbox(this)"></td>
		</tr>
		<c:forEach items="${list}" var="user">
		  <tr>
		  	<td class="admin-mem">${user.userid}</td>
		  	<td class="admin-mem">${user.username}</td>
		  	<td>${user.phoneno}</td>
		    <td class="admin-mem"><fmt:formatDate value="${user.birth}" pattern="yyyy-MM-dd"/></td>
		    <td class="admin-mem">${user.email}</td>
		    <td class="admin-mem">${user.zipcode}</td>
		    <td class="admin-mem">
		    	<i class="fas fa-edit" onclick="location.href='../admin/adminupdate?id=${user.userid}'"></i>
		    	<i class="fas fa-times" onclick="location.href='../admin/admindelete?id=${user.userid}'"></i>
		    </td>
		    <td class="mail-td"><input type="checkbox" name="idchks" value="${user.userid}"></td>
		   </tr>
		  </c:forEach>
	</table>
	</td></tr>
	<tr><td id="mypage-admin-icon">
		<i class="fas fa-envelope fa-border" onclick="document.getElementById('admin-mail').submit();"></i>
		<i class="fas fa-sign-out-alt fa-border" onclick="location.href='../user/mypage?id=${sessionScope.loginUser.userid}'"></i>
	</td></tr>
</table>
</form>
</div>
</body>
</html>
