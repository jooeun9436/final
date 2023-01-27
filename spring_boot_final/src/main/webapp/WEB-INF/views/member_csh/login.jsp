<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 화면</title>
		<!--  head -->         
        	<c:import url="/WEB-INF/views/layout/header_main.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/login.css'/>">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/js_csh/login.js'/>"></script>
		<script src="<c:url value='/js/js_csh/findIdForm.js'/>"></script>
		<style type="text/css">
		
		.w3-card-4, .w3-hover-shadow:hover {
    box-shadow: 0 4px 10px 0 rgb(135 206 235), 0 4px 20px 0 rgb(135 206 235);
}
.w3-input:focus {
    border-bottom: 2px solid orange;
	outline: none;
}
h1 {
    color: #87ceeb;
    font-family: "Lato", Arial, sans-serif;
    font-weight: 400;
    margin: 0 0 20px 0;
}
		.mybtn{
		  width:150px;
		  height:40px;
		  padding:0;
		  display:inline; 
		  border-radius: 4px; 
		  background: #87ceeb;
		  color: #fff;
		  margin-top: 20px;
		  transition: all 0.5s ease-in-out 0s;
		}
		.mybtn:hover .mybtn:focus {
		  border-color:  #87ceeb; 
  		  border-radius: 4px; 
   		  border: solid 2px #000;
		  background: white;
		  color: #212529;
		  text-decoration: none;
		}
		</style>
	</head>
	<body>
	<div id="wrap">
	<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
		<div class="w3-content w3-container w3-margin-top loginbox">
			<div class="w3-container w3-card-4 w3-auto login" style="width: 382px;height: 456.3px;">
				<div class="w3-center w3-large w3-margin-top">
					<h1>로그인</h1>
				</div>
				<form id="loginForm" name="loginForm">			
					<label>아이디</label>
					<input class="w3-input" type="text" maxlength="13" id="id" name="id" value="${memId}"
					placeholder="아이디를 입력해 주세요." required/>
					
					<label>비밀번호</label>
					<input class="w3-input" type="password" maxlength="15" id="pwd" name="pwd" 
					placeholder="비밀번호를 입력해 주세요." required>
					<ul>
						<li><a href="<c:url value="/member_csh/findIdForm"/>">아이디 찾기</a></li>
						<li><a href="<c:url value="/member_csh/findPwdForm"/>">비밀번호 찾기</a></li>
						<li><a href="<c:url value="/member_csh/signUp"/>">회원가입</a></li>
					</ul>
					<p class="w3-center">
					<button type="submit" class="w3-button w3-hover-white w3-ripple w3-margin-top w3-round mybtn">로그인</button>
					</p>
				</form>
			</div>
		</div>
	</div>
	</body>
	<footer>
        <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/footer.jsp" />
    </footer>
</html>