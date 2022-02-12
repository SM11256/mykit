<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%-- /webapp/WEB-INF/view/review/write.jsp --%>    
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성</title>
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
	<tr><th id="mypage-th"><h3 id="user-name">${item.itemname}</h3></th></tr>
	<tr><td>
	<form:form modelAttribute="review" action="write" enctype="multipart/form-data" name="f">
	<table>
		<tr><td colspan="4"><hr></td></tr>
		<tr>
			<th id="review-up">아이디</th><td><form:input path="userid" value="${user.userid}" readonly="true"/></td>
			<th id="review-up">상품번호</th><td><form:input path="itemid" value="${item.itemid}" readonly="true"/></td>
		</tr>
		<tr>
			<th id="review-up">점수입력</th><td id="review-up-er" colspan="3"><form:input type="number" path="score" min="1" max="5"/>
			<font color="red"><form:errors path="score"/></font></td>
		</tr>
		<tr>
			<td id="review-up-er" colspan="4"><form:textarea path="recontent" rows="20" cols="70"/>
			<script type="text/javascript" >
				CKEDITOR.replace("recontent", { filebrowserImageUploadUrl : "imgupload" });
    		</script>
			<font color="red"><form:errors path="recontent"/></font></td>
		</tr>
	</table>
	<tr><td>
	<div id="review-detail-m">
		<a href="javascript:document.f.submit()"><i class="far fa-check-circle fa-border"></i></a>
		<a href="list?id=${sessionScope.loginUser.userid}"><i class="fas fa-th-list fa-border"></i></a>
	</div>
	</td></tr>
</form:form>
</td></tr>
</table>
</div>
</body>
</html>