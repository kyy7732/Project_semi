<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="./include/header.jsp" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
  </head>
  <style>
    html,
    body {
      /* background-image: url(); */
      /* background: url(MyProject\src\main\webapp\resources\static\img\mountain.jpg);
      background-size: cover; */
      height: 100%;
      width: 100%;
      margin: 0;
      overflow: hidden;
      -ms-overflow-style: none;
    }

    body > #wrap {
      display: flex;
      /* flex-direction: column; */
      justify-content: center;
      width: 100%;
      height: 100%;
      text-align: center;
      /* background: url(/resources/static/img/mapImg1.png) no-repeat center fixed; */
      /* background-size: cover;
      background-color: #0356a9; */
      background: url(/resources/static/img/scrolling-gradient.png) no-repeat;
    }
    body > #wrap > #img-area {
    }
    .buttons {
      margin: 10%;
      text-align: center;
    }
    .btn-hover {
      width: 200px;
      font-size: 16px;
      font-weight: 600;
      /* color: #fff; */
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
        #25aae1,
        #4481eb,
        #04befe,
        #3f86ed
      );
      box-shadow: 0 4px 15px 0 rgba(65, 132, 234, 0.75);
    }

    /* .container {
      width: 100vw;
      height: 100vh;
      background: pink;
    }  */
  </style>
  <body>
    <div
      id="wrap"
      class="buttons"
    >
      <button
        type="button"
        class="btn-hover color-10"
      >
        축제 보러가기
      </button>
    </div>

    <script></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

<%@ include file="./include/footer.jsp" %>
