<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="./include/header.jsp" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <style>
    * {
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      box-sizing: border-box;
    }
    body {
      background: url(/resources/static/img/scrolling-gradient.png) no-repeat
        center fixed;
      background-size: cover;
    }

    .buttons {
      margin: 10%;
      text-align: center;
    }

    .btn-hover {

      width: 200px;
      font-size: 16px;
      font-weight: 600;
      color: #fff;
      cursor: pointer;
      margin: 20px;
      height: 55px;
      text-align: center;
      border: none;
      background-size: 300% 100%;

      border-radius: 50px;
      moz-transition: all 0.4s ease-in-out;
      -o-transition: all 0.4s ease-in-out;
      -webkit-transition: all 0.4s ease-in-out;
      transition: all 0.4s ease-in-out;
    }

    .btn-hover:hover {
      background-position: 100% 0;
      moz-transition: all 0.4s ease-in-out;
      -o-transition: all 0.4s ease-in-out;
      -webkit-transition: all 0.4s ease-in-out;
      transition: all 0.4s ease-in-out;
    }

    .btn-hover:focus {
      outline: none;
    }

    .btn-hover.color-9 {
      background-image: linear-gradient(
        to right,
        #457acf 0%,
        #83bad1 51%,
        #a1c4fd 100%
      );
      box-shadow: 0 4px 15px 0 rgba(65, 132, 234, 0.75);
    }
  </style>
  <body>
    <div class="buttons">
      <button class="btn-hover color-9">축제 보러가기</button>
    </div>

    <script>
      document.querySelector('.color-9').addEventListener('click', (e) => {
        location.href = '${pageContext.request.contextPath}/festival/';
      });

      const logout = '${logout}';
      if (logout) {
        alert('정상적으로 로그아웃 되었습니다.');
      }
    </script>
  </body>
</html>

<%@ include file="./include/footer.jsp" %>
