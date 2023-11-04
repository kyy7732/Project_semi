<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0"/>
    <title>Login</title>
    <style>
      html
      body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 80vh;
      }

      h2 {
        margin-bottom: 10px;
        text-indent: -9999px;
        
      }
      .login-wrapper {
        text-align: center;
        width: 400px;
        height: 500px;
        padding: 40px;
        box-sizing: border-box;
        border: 1px solid #747474;
        border-radius: 10px;
      }

      #loginForm > input {

        width: 100%;
        height: 48px;
        padding: 0 10px;
        margin-bottom: 10px;
        border-radius: 6px;
        background-color: #f8f8f8;
       
      }

      #loginForm > button {

        width: 100%;
        height: 48px;
        padding: 0 10px;
        box-sizing: border-box;
        margin-bottom: 10px;
        border-radius: 6px;
        background-color: #f8f8f8;
      }

      #loginForm > input::placeholder {

        color: #d2d2d2;
      }
      #loginForm > button[type='submit'] {
        color: #fff;
        font-size: 16px;
        background-color: #0356a9;
      }

      #loginForm > button[type='submit'][class='kakaoLog'] {
        color: #fff;
        font-size: 16px;
        font-weight: bold;
        background-color: #f9e000;

      }
      #loginForm > button[type='submit'][class='naverLog'] {
        font-weight: bold;
        color: #fff;
        font-size: 16px;
        background-color: #19ce60;
       
      }
    </style>
  </head>
  
  <body>
    <div class="login-wrapper">
      <img
        src="../img/mainLogo.png"
        class="mainLogo"
      />
      <h2>Login</h2>
      <form
        method="post"
        id="loginForm"
        name="loginForm"
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
          type="submit"
          id="loginBtn"
        >
          로그인
        </button>

        <button
          type="submit"
          id="naverLog"
          class="naverLog"
        >
          네이버 로그인
        </button>
        <button
          type="submit"
          id="kakaoLog"
          class="kakaoLog"
          
        ><a href="javascript:kakaoLogin();"></a>
          카카오로그인
  </a>
        </button>
      </form>
    </div>

          </div>

        </div>
      </div>
    </div>
    
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>
      window.Kakao.init("");
      function kakaoLogin(){
        window.Kakao.Auth.login({
          scope:'profile_nickname',
          success: function(authObj){
            console.log(authObj);
            window.Kakao.API.request({
              url:'/v2/user/me',
              success: res=>{

                const kakao_account = res.kakao_account;
                console.log(kakao_account);
              }
            });
          }
        });
      }
    </script>
  </body>
</html>

<%@ include file="../include/footer.jsp" %>
