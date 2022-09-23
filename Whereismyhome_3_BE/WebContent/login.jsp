<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String contextPath=request.getContextPath();  %>
<!DOCTYPE html>
<ht>
  <head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>로그인</title>
    <meta charset="utf-8" />
    <link
      href="https://fonts.googleapis.com/earlyaccess/notosanskr.css"
      rel="stylesheet"
    />

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
        margin-bottom: 10px;
      }

      .submit-btnlg {
        font-size: 14px;
        margin-top: 7%;
        border: none;
        padding: 10px;
        width: 260px;
        background-color: #3e5e58;
        margin-bottom: 25px;
        color: white;
      }

      .links {
        text-align: center;
        margin-bottom: 5px;
      }

      .links a {
        font-size: 12px;
        color: #9b9b9b;
      }
    </style>
  </head>
  <div class="login-form">
    <form action="./index.html">
      <input type="text" name="userEmail" id="userEmail"class="text-field" placeholder="email" />
      <input
        type="password"
        name="userPassword"
        id="userPassword"
        class="text-field"
        placeholder="비밀번호"
      />
     
        <input type="submit" value="로그인" class="submit-btnlg" id="btnLogin" />
      
      <div class="links">
        <a href="findpassword.html">비밀번호를 잊어버리셨나요?</a>
      </div>
    
    <script>
    window.onload = function () {
        document.querySelector("#btnLogin").onclick = function () {
          let userEmialValue = document.querySelector("#userEmail").value;
          let userPasswordValue = document.querySelector("#userPassword").value;

          console.log(userEmialValue, userPasswordValue);
          login();
          }
        };


      async function login() {


        let userEmail = document.querySelector("#userEmail").value;
        let userPassword = document.querySelector("#userPassword").value;

        // parameter
        let urlParams = new URLSearchParams({
          userEmail: userEmail,
          userPassword: userPassword,
        });
        //fetch options
        let fetchOptions = {
          method: "POST",
          body: urlParams,
        };


        let response = await fetch("<%= contextPath%>/login", fetchOptions);
        console.log(response);
        let data = await response.json(); // json => javascript object <= JSON.parse()
        if (data.result == "success") {
          //login.jsp => boardMain.jsp 로 페이지 이동 ( 새로운 페이지 (html...)요청)
          window.location.href = "<%= contextPath%>/board.jsp";
        } else if (data.result == "fail") {
          alertify.error("아이디 또는 패스워드를 확인하세요.");
        }
        // fetch(url,Option);
      }
        
     
    </script>
   </form>
  </div>
  </body>
</html>