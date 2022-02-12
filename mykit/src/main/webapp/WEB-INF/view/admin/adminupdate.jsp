<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- /webapp/WEB-INF/view/admin/adminupdate.jsp --%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 정보 수정</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link href="../css/fonts.css" rel="stylesheet">
<link href="../css/styleUser.css" rel="stylesheet">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }
            if(data.userSelectedType === 'R'){
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                document.getElementById("address").value = extraAddr;
            } else {
                document.getElementById("address").value = '';
            }
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("address").value = addr;
        }
    }).open();
}
</script>
</head>
<body>
<div id="mypage-total" style="height:900px;">
<table id="mypage-menu">
	<tr><td><input class="mypage-info" type="button" value="회원관리" onclick="location.href='../admin/list'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="상품관리" onclick="location.href='../item/list'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="밀키트 데뷔전" onclick="location.href='../recipe/rclist'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="로그아웃"  onclick="location.href='../user/userlogout'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="Q&A"  onclick="location.href='../board/qalist'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="공지&이벤트"  onclick="location.href='../board/evlist'"></td></tr>
	<tr><td><input class="mypage-info" type="button" value="홈으로"  onclick="location.href='../user/main'"></td></tr>
</table>
<form:form modelAttribute="user" method="post" action="adminupdate" id="admin-update">
<table id="mypage-t1" style="height:800px;">
	<tr><th id="mypage-th" style="margin-bottom:20px;"><h3 id="user-name">회원 정보 수정</h3></th></tr>
	<tr><td>
	<spring:hasBindErrors name="user">
    <font color="red">
      <c:forEach items="${errors.globalErrors}" var="error">
        <spring:message code="${error.code}" />
      </c:forEach>
    </font>
  </spring:hasBindErrors>
	</td></tr>
	<tr><td>
	<table id="mypage-t2-up">
		<tr>
    		<td class="user-info">아이디</td>
    		<td class="update-td1"><form:input path="userid" readonly="true" /></td>
    		<td></td>
    	</tr>
    	<tr>
    		<td></td>
    		<td colspan="2" class="admin-up-er"><font color="red"><form:errors path="userid" /></font></td>
    	</tr>
    	<tr>
    		<td class="user-info">비밀번호</td>
    		<td class="update-td1"><form:password path="userpw" /></td>
    		<td></td>
    	</tr>
    	<tr>
    		<td></td>
    		<td colspan="2" class="admin-up-er"><font color="red"><form:errors path="userpw" /></font></td>
    	</tr>
   		<tr>
    		<td class="user-info">이름</td>
    		<td class="update-td1"><form:input path="username" /></td>
    		<td></td>
    	</tr>
    	<tr>
    		<td></td>
    		<td colspan="2" class="admin-up-er"><font color="red"><form:errors path="username" /></font></td>
    	</tr>
	    <tr>
	    	<td class="user-info">전화번호</td>
	    	<td class="update-td1"><form:input path="phoneno" /></td>
	    	<td></td>
	    </tr>
	    <tr>
	    	<td></td>
	    	<td colspan="2" class="admin-up-er"><font color="red"><form:errors path="phoneno" /></font></td>
	    </tr>
	    <tr>
	    	<td class="user-info">우편번호</td>
	    	<td class="update-td1"><form:input path="zipcode" /></td>
	    	<td  class="update-bt1"><input type="button" onclick="sample6_execDaumPostcode()" value="우편번호"></td>
	    </tr>
	    <tr>
	    	<td></td>
	    	<td colspan="2" class="admin-up-er"><font color="red"><form:errors path="zipcode" /></font></td>
	    </tr>
	    <tr>
	    	<td class="user-info">주소</td>
	    	<td class="update-td1"><form:input path="address" /></td>
	    	<td></td>
	    </tr>
	    <tr>
	    	<td></td>
	    	<td colspan="2" class="admin-up-er"><font color="red"><form:errors path="address" /></font></td>
	    </tr>
	    <tr>
	    	<td class="user-info">이메일</td>
	    	<td class="update-td1"><form:input path="email" /></td>
	    	<td></td>
	    </tr>
	    <tr>
	    	<td></td>
	    	<td colspan="2" class="admin-up-er"><font color="red"><form:errors path="email" /></font></td>
	    </tr>
	    <tr>
	    	<td class="user-info">생년월일</td>
	    	<td class="update-td1"><form:input path="birth" /></td>
	    	<td></td>
	    </tr>
	    <tr>
	    	<td></td>
	    	<td colspan="2" class="admin-up-er"><font color="red"><form:errors path="birth" /></font></td>
	    </tr>
	</table>
	</td></tr>
	<tr><td id="mypage-admin-icon2">
		<i class="far fa-times-circle fa-border" onclick="location.href='list'"></i>
		<i class="far fa-check-circle fa-border" onclick="document.getElementById('admin-update').submit();"></i>
	</td></tr>
</table>
</form:form>
</div>
  </body>
  </html>