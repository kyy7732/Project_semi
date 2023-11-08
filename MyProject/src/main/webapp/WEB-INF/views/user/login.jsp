<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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

      h2 {
        text-indent: -9999px;
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

      #log button {
        display: inline;
      }
    </style>
  </head>

  <body>
    <div>
      <div class="login-wrapper">
        <img
          src="/resources/static/img/logoHeader.png"
          class="mainLogo"
        />

        <h2>Login</h2>
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

          <!-- 네이버 로그인 -->
          <button>
            <div id="naver_id_login"></div>
          </button>

          <!-- 카카오로그인 -->
          <botton>
            <a href="javascript:kakaoLogin()">
              <img src="../img/kakaoLoginBtn.png" />
            </a>
          </botton>
        </form>
      </div>
    </div>

    <script
      type="text/javascript"
      src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
      charset="utf-8"
    ></script>
    <script type="text/javascript">
      var clientId = 'XmmhhALGCdL5aknyTbYR';
      var callbackUrl = 'https://localhost:80/project/user/login.jsp';
      var naver_id_login = new naver_id_login(clientId, callbackUrl);
      var state = naver_id_login.getUniqState();
      naver_id_login.setButton('green', 2, 40);
      naver_id_login.setDomain('localhost:8000/BBS/main.jsp');
      naver_id_login.setState(state);
      naver_id_login.setPopup();
      naver_id_login.init_naver_id_login();
    </script>

    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
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
      ////////////

      ////////////카카오 ///////////////
      window.Kakao.init('');
      function kakaoLogin() {
        window.Kakao.Auth.login({
          scope: 'profile_nickname',
          success: function (authObj) {
            console.log(authObj);
            window.Kakao.API.request({
              url: '/v2/user/me',
              success: (res) => {
                const kakao_account = res.kakao_account;
                console.log(kakao_account);
              },
            });
          },
        });
      }
      document.querySelector('.mainLogo').addEventListener('click', (e) => {
        location.href = '${pageContext.request.contextPath}/';
      });
    </script>
  </body>
</html>

<%@ include file="../include/footer.jsp" %>
