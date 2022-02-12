<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- /webapp/WEB-INF/view/admin/mail.jsp --%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메일 보내기</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link href="../css/fonts.css" rel="stylesheet">
<link href="../css/styleUser.css" rel="stylesheet">
<script type="text/javascript">
   function idinputchk(f) {
	   if(f.naverid.value == "") {
		   alert("네이버 아이디를 입력하세요");
		   f.naverid.focus();
		   return false;
	   }
	   if(f.naverpw.value == "") {
		   alert("네이버 비밀번호를 입력하세요");
		   f.naverpw.focus();
		   return false;
	   }
	   return true;
   }
</script>
</head>
<body>
<div id="mypage-total" style="height:1100px;">
<table id="mypage-menu">
	<tr><td><input class="mypage-info" type="button" value="회원관리" onclick="location.href='../admin/list'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="상품관리" onclick="location.href='../item/list'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="밀키트 데뷔전" onclick="location.href='../recipe/rclist'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="로그아웃"  onclick="location.href='../user/userlogout'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="Q&A"  onclick="location.href='../board/qalist'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="공지&이벤트"  onclick="location.href='../board/evlist'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="홈으로"  onclick="location.href='../user/main'"></td></tr>
</table>
<form name="mailform" method="post" action="mail" enctype="multipart/form-data" onsubmit="return idinputchk(this)">
<table id="mypage-t1" style="height:1000px;">
	<tr><th id="mypage-th"><h3 id="user-name">메일 보내기</h3></th></tr>
	<tr><td>
	<table id="mypage-t2-m">
		<tr><td class="mypage-m">🧀 관리자 네이버 ID </td><td><input type="text" name="naverid" placeholder="@ 이전까지만 써주십시오"></td></tr>
		<tr><td class="mypage-m">🧀 관리자 네이버 PW </td><td><input type="password" name="naverpw"></td></tr>
		<tr><td class="mypage-m">🧀 보내는 사람 </td><td class="user-info">${loginUser.username}</td></tr>
		<tr>
			<td class="mypage-m">🧀 받는 사람 </td>
			<td><input type="text" name="recipient" size="100" value='<c:forEach items="${list}" var="user">${user.username} &lt;${user.email}&gt;,</c:forEach>'></td>
		</tr>
		<tr><td class="mypage-m">🧀 제목 </td><td><input type="text" name="title" size="100"></td></tr>
		<tr>
			<td class="mypage-m">🧀 메시지 형식 </td>
			<td>
				<select name="mtype">
		       		<option value="text/html; charset=utf-8">HTML</option>
		       		<option value="text/plain; charset=utf-8">TEXT</option>
	       		</select>
       		</td>
       	</tr>
		<tr>
			<td class="mypage-m">1️⃣ 첨부파일 </td>
			<td id="mail-f">
				<input class="upload-name1" placeholder="첨부파일">
    			<label for="file1">파일선택</label>
    			<input type="file" name="file1" id="file1">
    		</td>
		</tr>
		<tr>
			<td class="mypage-m">2️⃣ 첨부파일 </td>
			<td id="mail-f">
				<input class="upload-name2" placeholder="첨부파일">
    			<label for="file2">파일선택</label>
    			<input type="file" name="file1" id="file2">
    		</td>
		</tr>
		<tr>
			<td colspan="2">
				<textarea name="contents" cols="120" rows="10"></textarea>
				<script>CKEDITOR.replace("contents")</script>
			</td>
		</tr>
	</table>
	</td></tr>
	<tr><td id="mypage-admin-icon3">
		<input type="submit" value="💌">
		<i class="fas fa-sign-out-alt fa-border" onclick="location.href='../admin/list'"></i>
	</td></tr>
</table>
</form>
</div>
<script type="text/javascript">
$("#file1").on('change',function(){
	   var fileName = $("#file1").val().split('\\').pop();
	   $(".upload-name1").val(fileName);
	 });
$("#file2").on('change',function(){
	   var fileName = $("#file2").val().split('\\').pop();
	   $(".upload-name2").val(fileName);
	 });
</script>
</body>
</html>