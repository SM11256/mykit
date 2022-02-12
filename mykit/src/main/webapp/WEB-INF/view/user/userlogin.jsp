<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- /WEB-INF/view/user/userlogin.jsp --%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 / LOGIN</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link href="../css/fonts.css" rel="stylesheet">
<link href="../css/styleTotal.css" rel="stylesheet">
<script type="text/javascript">
function win_open(page) {
	   var op = "width=500, height=350, left=50,top=150";
	   open(page,"",op);
}
</script>
</head>
<body>
<form:form modelAttribute="user" method="post" action="userlogin" name="loginform">
    <table class="user-total-box">
    <tr><td colspan="2" id="user-name">로그인</td></tr>
    <tr><td colspan="2" id="userlogin-info">가입하신 마이키트 아이디와 비밀번호를 입력해주세요.</td></tr>
    <tr>
	   	<td colspan="2" class="user-info">
	   		<i class="fas fa-user"></i>
	   		<form:input path="userid" placeholder="아이디" style="border:none"/>
	   		<span class="user-info-er"><form:errors path="userid" /></span>
	   	</td>
	</tr>
	<tr></tr><tr></tr>
   <tr>
   		<td colspan="2" class="user-info">
   			<i class="fas fa-lock"></i>
   			<form:password path="userpw" placeholder="패스워드" style="border:none"/>
   			<span class="user-info-er"><form:errors path="userpw" /></span>
   		</td>
   </tr>
   <tr></tr><tr></tr>
   <tr>
   		<td colspan="2" id="login-bt1">
			<input type="submit" value="로그인">
		</td>
   </tr>
   <tr></tr><tr></tr>
   <tr>
		<td colspan="2" id="login-bt2">
		<input type="button" value="아이디 찾기" onclick="win_open('idsearch')"><p>|</p>
		<input type="button" value="비밀번호 찾기" onclick="win_open('pwsearch')"><p>|</p>
		<input type="button" value="회원가입" onclick="location.href='userentry'">
   		</td>
   </tr>
   </table>
   <div class="error-box">
	<input type="hidden" name="username" value="유효성검증을위한 파라미터" >
	<input type="hidden" name="email" value="valid@aaa.bbb" >
  	<spring:hasBindErrors name="user"><%-- bresult.reject 해당 부분 --%>
    	<font color="red">
    		<c:forEach items="${errors.globalErrors}" var="error">
    			<spring:message code="${error.code}" />
      		</c:forEach>
      	</font>
    </spring:hasBindErrors>
    </div>
</form:form>
</body>
</html>