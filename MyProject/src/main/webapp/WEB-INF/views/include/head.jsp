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
        display: flex;
        list-style: none;
        margin: 0;
        padding: 0;
        font-size: 0;
        word-spacing: 0;
        /* background-color: #0054a8; */
        /* border: 1px solid red; */
        justify-content: space-between;
        align-items: center;
      }
      #menu > li {
        /* 인라인레벨이면서 크기변경이 가능한 inline-block으로 지정함! */
        /* width: 300px;
        height: 75px; */
        /* border: 1px solid #fff; */
        /* margin: 0;
        padding: 0; */
      }
      #menu > li > a {
        border: 1px solid yellow;
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
        height: 75px;
      }
      #menu > li > a#logoHeader #logoHeader_img {
        display: inline-block;

        width: 298px !important;
        height: 75px;
      }

      /* 조회수 */
      /* #menu > li#r {
        border: 1px solid yellow;
        background-color: #e9ecf3;
        margin-bottom: 0;
        width: 60%;
        height: 60px;
      }
      .rank {
        /*div*/
        /* background-color: #e9ecf3;*/
        /*margin: 0 auto;
        width: 100%;
        height: 100%;
      }
      .rank .container {
        display: flex;
        justify-content: space-between;
        /* align-items: center; 
      }
      .rank section {
        align-items: center;
      } */
      /* 조회수 제목부 */
      /* .rank img#megaphone {
        display: inline-block;
        width: 21px;
        height: 26px;
      }
      .rank .container #title {
        text-align: center;
        line-height: 100%;
        font-weight: bold;
      }

      input {
        border: none;
        border-radius: 10px;
        background-color: #e9ecf3;
      } */
      /* 버튼부 */
      /* #menu > li > a#login,
      #menu > li > a#join {
        /* background-image: url(MyProject\src\main\webapp\resources\static\img\logoHeader.png); */
        /* background-image: url(/resources/static/img/logoHeader.png);
        background-repeat: no-repeat; */
        /* background-image: url(/resources/static/img/logoHeader.png); */
        /* background-repeat: no-repeat; */
       /* display: inline-block;
        position: relative;
        width: 100px;
        height: 53px;
      }
      #menu > li > a img#login_img,
      #menu > li > a img#join_img {
        display: inline-block;

        position: relative;

        margin-bottom: 15px;
        text-align: justify;
      }
      #menu > li > a img#login_img {
        position: relative;
        top: 25px;
        left: 190px;
        width: 100px;
        height: 53px;
      }
      #menu > li > a img#join_img {
        position: relative;
        top: 25px;
        left: 3px;
        width: 100px;
        height: 54px;
      } */
      
      /* 다시!! */
      .container {
        display: flex;
        width: 80%;
        height: 80px;
        margin: 0 auto;
      }
      .title {
        background: transparent url(./logoHeader.png) no-repeat center;
        flex-grow: 3;
      }
      .popular {
        display: flex;
        background: #e8ebf1;
        flex-grow: 4;
        border: 1px solid lightgray;
      }
      .real-time {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-grow: 1;
      }
      .real-time .sound-icon {
        width: 20px;
        height: 30px;
        background: transparent url(./soundIcon.png) no-repeat center;
        margin-right: 10px;
      }
      .real-time .real-time-icon {
        font-weight: bold;
      }
      .fest-name {
        display: flex;
        align-items: center;
        flex-grow: 5;
        padding-left: 10px;
        border-left: 3px solid rgba(204, 202, 202, 0.929);
      }
      .fest-name span {
        font-weight: bold;
      }
      .counter-container {
        display: flex;
        flex-direction: column;
        justify-content: center;
        padding-right: 50px;
      }
      #increase {
        margin-bottom: 5px;
      }
      .btn-area {
        display: flex;
        flex-grow: 0.5;
        justify-content: space-around;
        align-items: center;
        margin-left: 50px;
      }
      .btn-area .btn {
        background-color: #0356a9;
        color: #fff;
        width: 100px;
        height: 30px;
        border-radius: 20px;
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
        <!-- <li id="mac">
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
        </li> -->

        <!-- 조회 순위판 -->
        <!-- <li id="r">
          <div class="rank">
            <div class="container">
              <section>
                <img
                  src="/resources/static/img/soundIcon.png"
                  id="megaphone"
                />
                <p id="title">실시간 인기 많은 축제</p>
                <img
                  src="/resources/static/img/line.png"
                  id="line"
                />
              </section>
              <section>
                <a href=""
                  ><input
                    type="text"
                    readonly
                    value="1위 여의도불꽃축제"
                /></a>
                <a href=""
                  ><img
                    src="/resources/static/img/noticeButton.png"
                    id="upDownBtn"
                    alt="버튼"
                /></a>
              </section>
            </div>
          </div>
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
    </div> -->
    <!-- 다시!! -->
    <div class="container">
      <div class="title"></div>
      <div class="popular">
        <div class="real-time">
          <div class="sound-icon"></div>
          <div class="real-time-icon">실시간 인기많은 축제</div>
        </div>
        <div class="fest-name"><span>1위 여수밤바다불꽃축제</span></div>
        <div class="counter-container">
          <button id="increase">↑</button>
          <button id="decrease">↓</button>
        </div>
      </div>
      <div class="btn-area">
        <button class="btn login-btn">로그인</button>
        <button class="btn join-btn">회원가입</button>
      </div>
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

      // if (e.target === document.getElementById('logoHeader_img')) {
      //   return;
      // }
      e.preventDefault();
    });
    //main logo 클릭 시 main으로 이동
    document.getElementById('logoHeader_img').addEventListener('click', (e) => {
      location.href = '${pageContext.request.contextPath}';
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
