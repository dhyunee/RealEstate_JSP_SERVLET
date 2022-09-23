<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<!-- JavaScript -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
<!-- Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>

<!-- 
    RTL version
-->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.rtl.min.css"/>
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.rtl.min.css"/>
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.rtl.min.css"/>
<!-- Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.rtl.min.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>로그인</title>
<meta charset="utf-8" />
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css"
	rel="stylesheet" />
<style>
* {
	box-sizing: border-box;
	font-family: "Noto Sans KR", sans-serif;
	border-radius: 5px;
}

body {
	margin: 0;
	background-color: #a3afad;
}

.login-form {
	width: 300px;
	background-color: #eeeff1;
	margin-right: auto;
	margin-left: auto;
	margin-top: 150px;
	padding: 20px;
	text-align: center;
	border: none;
}

.text-field {
	font-size: 14px;
	padding: 10px;
	border: none;
	width: 260px;
	margin-bottom: 15px;
}

.text-name {
	font-size: 14px;
	padding: 10px;
	width: 160;
	margin-bottom: 15px;
}

.text-age {
	font-size: 14px;
	padding: 10px;
	width: 95px;
	margin-bottom: 15px;
}

.submit-btn {
	font-size: 14px;
	margin-top: 7%;
	border: none;
	padding: 10px;
	width: 260px;
	background-color: #3e5e58;
	margin-bottom: 20px;
	color: white;
}
</style>
</head>

<body>
	<div class="login-form">

		<input type="text" name="userName" id="userName" class="text-field"
			placeholder="이름" /> <input type="password" name="userPassword"
			id="userPassword" class="text-field" placeholder="비밀번호" /> <input
			type="text" name="userEmail" id="userEmail" class="text-field"
			placeholder="Email" /> 
			<input type="button" value="회원 가입"
			class="submit-btn" id="btnRegister" />

	</div>

	<script>

	
		   document.querySelector("#btnRegister").onclick=function(){
		        if(document.querySelector("#userName").value==null||
		        		document.querySelector("#userPassword").value==null||
		        		document.querySelector("#userEmail").value==null)
		        	alert("회원 가입 실패");
		        
		        
		       register();
		      }
	      
	      async function register() {
	        // validate() 가 true를 return 하면 수행
	        // 백엔드로 전송한 데이터(파라미터) 준비
	        // 비동기로 요청
	        // POST
	        // 로그인 성공 => 게시판 메인 페이지로 이동(/board)
	        // 로그인 실패 => alert

	        let userName = document.querySelector("#userName").value;
	        let userPassword = document.querySelector("#userPassword").value;
	        let userEmail = document.querySelector("#userEmail").value;

	        // parameter
	        let urlParams = new URLSearchParams({
	          userName:userName,
	          userEmail: userEmail,
	          userPassword: userPassword,
	        });
	        //fetch options
	        let fetchOptions = {
	          method: "POST",
	          body: urlParams,
	        };

	        let response = await fetch("<%=contextPath%>/register", fetchOptions);
	        let data = await response.json(); // json => javascript object <= JSON.parse()
			alert("회원등록 완료");
	        
	          window.location.href = "<%=contextPath%>/login.jsp";


	        // fetch(url,Option);
	
	      }
	  
    </script>
</body>
</html>
