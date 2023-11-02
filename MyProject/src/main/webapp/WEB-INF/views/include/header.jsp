<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>전국축제알리미</title>
    <style>
      /* 헤더 스타일 */
      #menu {
        list-style: none;
        margin: 0;
        padding: 0;
        font-size: 0;
        word-spacing: 0;
        /* background-color: #0054a8; */
        /* border: 1px solid red; */
      }
      #menu > li {
        /* 인라인레벨이면서 크기변경이 가능한 inline-block으로 지정함! */
        display: inline-block;
        width: 290px;
        height: 75px;
        /* border: 1px solid #fff; */
        margin: 0;
        padding: 0;
      }
      #menu > li > a {
        /* border: 1px solid yellow; */
        display: inline-block;
        width: 100%;
        height: 100%;
        overflow: hidden;
      }
      #menu > li > a#logoHeader {
        /* background-image: url(MyProject\src\main\webapp\resources\static\img\logoHeader.png); */
        /* background-image: url(/resources/static/img/logoHeader.png);
        background-repeat: no-repeat; */
        width: 298px !important;
      }
      #menu > li > a#a {
        text-indent: -9999px;
      }
      #menu > li > a#b {
        text-indent: -9999px;
      }
      #menu > li > a#c {
        text-indent: -9999px;
      }
      #menu > li > a#login,
      #menu > li > a#join {
        /* background-image: url(MyProject\src\main\webapp\resources\static\img\logoHeader.png); */
        /* background-image: url(/resources/static/img/logoHeader.png);
        background-repeat: no-repeat; */
        /* background-image: url(/resources/static/img/logoHeader.png); */
        /* background-repeat: no-repeat; */
        display: inline-block;
        position: relative;
        width: 100px;
        height: 53px;
      }
      #menu > li > a img#login_img,
      #menu > li > a img#join_img {
        display: inline-block;
        width: 100px;
        height: 53px;
        position: relative;

        margin-bottom: 15px;
      }
      #menu > li > a img#login_img {
        position: relative;
        top: 25px;
        left: 190px;
      }
      #menu > li > a img#join_img {
        position: relative;
        top: 25px;
        left: 3px;
      }
    </style>
  </head>
  <body>
    <div id="nav">
      <ul id="menu">
        <li id="logoHeader">
          <a href="">
            <img
              id="logoHeader_img"
              src="/resources/static/img/logoHeader.png"
          /></a>
        </li>
        <!-- <li id="store">
          <a
            id="a"
            href=""
            >store</a
          >
        </li> -->
        <li id="mac">
          <a
            id="b"
            href=""
            >mac</a
          >
        </li>
        <li id="ipod">
          <a
            id="c"
            href=""
            >ipod</a
          >
        </li>
        <li id="">
          <a
            id=""
            href=""
            ><img
              id=""
              src=""
          /></a>
        </li>
        <li id="login">
          <a
            id="login_a"
            href=""
            ><img
              id="login_img"
              src="/resources/static/img/loginButton.png"
            />로그인</a
          >
        </li>
        <li id="join">
          <a
            id="join_a"
            href=""
            ><img
              id="join_img"
              src="/resources/static/img/joinButton.png"
            />회원가입</a
          >
        </li>
      </ul>
    </div>
  </body>
  <script>
    document.getElementById('menu').addEventListener('click', (e) => {
      //   if (
      //     e.target === document.getElementById('login_img') ||
      //     e.target === document.getElementById('join_img')
      //   ) {
      //     return;
      //   }

      if (e.target === document.getElementById('logoHeader_img')) {
        return;
      }
      e.preventDefault();
    });

    //로그인페이지로 이동
    document.getElementById('login_img').addEventListener('click', (e) => {
      location.href = '${pageContext.request.contextPath}/user/login';
    });
    //회원가입 페이지로 이동
    document.getElementById('join_img').addEventListener('click', (e) => {
      location.href = '${pageContext.request.contextPath}/user/join';
    });
  </script>
</html>
