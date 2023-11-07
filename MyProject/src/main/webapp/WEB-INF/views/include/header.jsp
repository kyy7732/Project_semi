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
    <title>Document</title>

    <style>
      .container {
        display: flex;
        width: 80%;
        height: 80px;
        margin: 0 auto;
        align-items: flex-end;
      }
      .title {
        background: transparent url(/img/logoHeader.png) no-repeat center;
        flex-grow: 3;
        min-width: 298px;
        min-height: 75px;
        margin-right: 50px;
      }
      .popular {
        display: flex;
        background: #e8ebf1;
        flex-grow: 4;
        border: 1px solid lightgray;
        height: 60px;
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
        background: transparent url(/img/soundIcon.png) no-repeat center;
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
        background: url(/resources/static/img/upper.png) no-repeat center;
        text-indent: -9999px;
        width: 49px;
        height: 29px;
        border: none;
      }
      #decrease {
        margin-bottom: 5px;
        background: url(/resources/static/img/lower.png) no-repeat center;
        text-indent: -9999px;
        width: 49px;
        height: 29px;
        border: none;
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
        border: none;
      }
      .btn-area .like {
        background: url(/resources/static/img/like.png) no-repeat center;
        text-indent: -9999px;
        margin-bottom: 7px;
      }
      .btn-area .like:hover {
        background: url(/resources/static/img/likeDarker.png) no-repeat center;
        text-indent: -9999px;
        margin-bottom: 7px;
      }
      .login-btn {
        margin-bottom: 7px;
      }
      .join-btn {
        margin-bottom: 7px;
      }
    </style>
  </head>
  <body>
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
        <button class="btn like">좋아요목록</button>
      </div>
    </div>
    <script>
      document.querySelector('.container').addEventListener('click', (e) => {
        e.preventDefault();
        //main logo 클릭 시 main으로 이동
        if (e.target.matches('.title')) {
          location.href = '${pageContext.request.contextPath}/';
          console.log('wefwf');
          return;
        }
        //로그인페이지로 이동
        if (e.target.matches('.login-btn')) {
          location.href = '${pageContext.request.contextPath}/user/login';
          return;
        }
        //회원가입 페이지로 이동
        if (e.target.matches('.join-btn')) {
          location.href = '${pageContext.request.contextPath}/user/join';
          return;
        }
        //좋아요 목록으로 이동
        if (e.target.matches('.like')) {
          location.href = '${pageContext.request.contextPath}/user/likeList';
          return;
        }
      });
    </script>
  </body>
</html>
