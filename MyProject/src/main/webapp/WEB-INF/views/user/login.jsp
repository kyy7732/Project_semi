<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://www.springframework.org/tags"
prefix="spring"%>
<spring:eval
  expression="@customProperties['clientId']"
  var="clientId"
/>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0"
    />
    <title>Login</title>
    <style>
      html body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 80vh;
      }

      h3 {
        text-indent: -9999px;
        font-size: 10px;
      }
      .login-wrapper {
        text-align: center;
        width: 400px;
        height: 500px;
        padding: 40px;
        padding-right: 40px;
        box-sizing: border-box;
        border: 1px solid #747474;
        border-radius: 10px;
      }

      #loginForm > input {
        width: 88%;
        height: 48px;
        padding: 0 10px;
        margin-bottom: 10px;
        border-radius: 6px;
        background-color: #f8f8f8;
      }

      #loginForm > button {
        width: 95%;
        height: 48px;
        padding: 0 10px;
        box-sizing: border-box;
        margin-bottom: 10px;
        border-radius: 6px;
        background-color: #f8f8f8;
        border: none; /* 버튼 테두리 없애기 */
      }

      #loginForm > button[type='button'] {
        text-align: center;
        width: 300px;
        height: 45px;
        color: #fff;
        font-size: 16px;
        background-color: #0356a9;
      }

      #loginButtonsContainer {
        display: flex; /* 가로로 나열하기 위해 flex 컨테이너로 설정 */
        justify-content: space-between; /* 두 버튼 간격을 최대로 벌리기 위해 간격을 늘립니다. */
        width: 300px; /* 컨테이너의 적절한 너비를 설정합니다. */
        margin: 0 auto; /* 수평 중앙 정렬을 위해 margin을 사용합니다. */
      }

      #loginButtonsContainer button {
        align-items: center;
        padding: 0px;
        justify-content: space-between;
      }

      #joinDiv {
        display: flex;
        justify-content: space-between;
        align-items: center;
        width: 295px;
        padding-left: 10px;
        height: 45px;
        font-size: 11px;
        margin-top: 5px;
      }

      #joinDiv button {
        height: 40px;
        width: 300px;
      }

      #joinDiv .joinimage {
        width: 300px;
        background-color: #f8f8f8;
        border: none;
        text-align: center;
        border-radius: 6px;
        font-size: 16px;
        height: 45px;
        text-align: center;
        color: #fff;
        border-radius: 6px;
      }
      #joinDiv .joinBtn {
        width: 300px;
        height: 45px;
        border-radius: 6px;
      }

      #border {
        border: 1px solid rgb(173, 170, 170);
        margin-top: 15px;
      }
    </style>
  </head>

  <body>
    <div>
      <div class="login-wrapper">
        <a href="${pageContext.request.contextPath}/">
          <img
            src="/resources/static/img/logoHeader.png"
            class="mainLogo"
          />
        </a>

        <div id="border"></div>
        <h3>Login</h3>
        <form
          method="post"
          id="loginForm"
          name="loginForm"
          action="${pageContext.request.contextPath}/user/login"
        >
          <input
            type="text"
            id="userId"
            name="userId"
            placeholder="ID"
          />
          <input
            type="password"
            id="userPw"
            name="userPw"
            placeholder="Password"
          />
          <button
            type="button"
            id="loginBtn"
          >
            로그인
          </button>

          <!-- 회원가입 -->
          <div id="joinDiv">
            <a href="${pageContext.request.contextPath}/user/join">
              <img
                src="/img/joinBtn.png"
                class="joinBtn"
              />
            </a>
          </div>
        </form>
      </div>
    </div>

    <script>
      const msg = '${msg}';
      if (msg === 'joinSuccess') {
        alert('회원가입을 환영합니다!');
      } else if (msg === 'loginFail') {
        alert('로그인에 실패했습니다. 아이디와 비밀번호를 확인하세요');
      }
      ///////////userLogin///////////////////
      document.getElementById('loginBtn').onclick = () => {
        if (document.loginForm.userId.value === '') {
          alert('아이디를 입력해주세요');
          return;
        }
        if (document.loginForm.userPw.value === '') {
          alert('비밀번호를 입력해주세요');
          return;
        }

        document.loginForm.submit();
      };
    </script>
  </body>
</html>

<%@ include file="../include/footer.jsp" %>
