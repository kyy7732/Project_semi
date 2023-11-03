<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
    * {
      padding: 0;
      margin: 0;
      border: none;
    }
    body {
      display: flex; /* ë´ì©ì ìí ë° ìì§ì¼ë¡ ê°ì´ë° ì ë ¬íê¸° ìí´ flexboxë¥¼ ì¬ì©í©ëë¤ */
      justify-content: center; /* ìí ê°ì´ë° ì ë ¬ */
      align-items: center; /* ìì§ ê°ì´ë° ì ë ¬ */
      height: 80vh; /* bodyë¥¼ ë·°í¬í¸ì ì ì²´ ëì´ë¡ ì¤ì  */

    }

    h2{
        margin-bottom: 10px;
        text-indent: -9999px;
    }
    .login-wrapper {

      width: 400px;
      height: 350px;
      padding: 40px;
      box-sizing: border-box;
      color: #244cfe;
    }

    .login-wrapper {
    text-align: center;
    width: 400px;
    height: 500px;
    padding: 40px;
    box-sizing: border-box;
    border: 1px solid #747474; /* 1í½ì ëê»ì ê²ìì íëë¦¬ ì¶ê° */
    border-radius: 10px;
    
    }

    #login-form > input {

      width: 100%;
      height: 48px;
      padding: 0 10px;
      box-sizing: border-box;
      margin-bottom: 10px;
      border-radius: 6px;
      background-color: #f8f8f8;
    }
    #login-form > input::placeholder {

      color: #d2d2d2;
    }
    #login-form > input[type='submit']{

      color: #fff;
      font-size: 16px;
      background-color: #244cfe;
    }

    #login-form > input[type='submit'][value='ì¹´ì¹´ì¤ ë¡ê·¸ì¸'] {
        color: #fff;
        font-size: 16px;
        font-weight: bold;
        background-color:  #f9e000; 

    }
    #login-form > input[type='submit'][value='ë¤ì´ë² ë¡ê·¸ì¸'] {
        font-weight: bold;
        color: #fff;
        font-size: 16px;
        background-color:#19CE60; /* ë¸ëì ë°°ê²½ ììì¼ë¡ ë³ê²½ */

    }

  </style>
  </head>
 
  <body>
    <div class="login-wrapper">
    <img src="../img/mainLogo.png" class="mainLogo">
    <h2>Login</h2>
    <form method="post"  action="ìë²ìurl"
        id="login-form"
      >
        <input
          type="text"
          name="userName"
          placeholder="ID"
        />
        <input
          type="password"
          name="userPassword"
          placeholder="Password"
        />
        </label>
        <input type="submit" value="ë¡ê·¸ì¸" class="loginBtn"  />
        <input type="submit" value="ì¹´ì¹´ì¤ ë¡ê·¸ì¸" class="kakaoLog" />
        <input type="submit" value="ë¤ì´ë² ë¡ê·¸ì¸" class="naverLog"/>


      </form>
    </div>
  </body>
</html>