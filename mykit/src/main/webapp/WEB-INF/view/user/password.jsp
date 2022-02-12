<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- /webapp/WEB-INF/view/user/userpassword.jsp --%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link href="../css/fonts.css" rel="stylesheet">
<link href="../css/styleUser.css" rel="stylesheet">
<script type="text/javascript">
   function inchk(f) {
	   if(f.chgpass.value != f.chgpass2.value) {
		   alert("변경 비밀번호와 변경 비밀번호 재입력이 다릅니다.");
		   f.chgpass2.value="";
		   f.chgpass2.focus();
		   return false;   
	   }
	   //chgpass 값이 3자리 미만인 경우 오류 발생
	   let passlen = f.chgpass.value.length;
	   if(passlen < 3 || passlen > 10) {
		   alert("비밀번호는 3자리 이상 10자 미만이어야 합니다!");
		   f.chgpass.focus();
		   return false;   
	   }
	   alert("비밀번호가 변경되었습니다! 다시 로그인해주세요.");
	   return true;
   }
</script>
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
<form action="password" method="post" name="f" onsubmit="return inchk(this)">
<table id="mypage-t1">
	<tr><th id="mypage-th"><h3 id="user-name">비밀번호 변경</h3></th></tr>
	<tr><td>
	<table id="mypage-t2">
		<tr><td class="mypage-td1" style="width:30%;">🧀 현재 비밀번호 </td><td class="user-info" style="width:70%;"><input type="password" name="password"></td></tr>
		<tr><td class="mypage-td1" style="width:30%;">🧀 변경 비밀번호 </td><td class="user-info" style="width:70%;"><input type="password" name="chgpass"></td></tr>
		<tr><td class="mypage-td1" style="width:30%;">🧀 변경 비밀번호 재입력 </td><td class="user-info" style="width:70%;"><input type="password" name="chgpass2"></td></tr>
	</table>
	</td></tr>
	<tr><td id="mypage-admin-icon3">
		<input type="submit" value="⭕">
		<i class="fas fa-sign-out-alt fa-border" onclick="location.href='mypage?id=${sessionScope.loginUser.userid}'"></i>
	</td></tr>
</table>
</form>
</div>
</body>
</html>