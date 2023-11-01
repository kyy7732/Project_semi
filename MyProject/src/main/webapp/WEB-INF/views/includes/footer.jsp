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
      #footer {
        width: auto;
        background: #eee;
        margin-top: 80px;
        padding: 40px 0px 50px; /* 위   좌/우   아래 */
      }
      .foot_guide {
        width: 900px;
        margin: auto;
      }
      .foot_menu {
        overflow: hidden;
        margin-left: 267px;
      }
      .foot_menu li {
        display: inline-block;
        padding: 0 10px;
        border-left: 1px solid #999;
      }

      .foot_menu li:first-child {
        border-left: none;
        padding-left: 0;
      }
      .foot_menu li a {
        color: #777;
        font-size: 12px;
        font-weight: bold;
      }
      .foot_menu li a:hover {
        color: #ff4f00;
      }

      .addr {
        font-size: 12px;
        color: #777;

        width: 300px;
        margin-left: auto;
        margin-right: auto;
      }
      .copyright {
        font-size: 11px;
        margin-left: auto;
      }

      .middle {
        width: 300px;
        margin-left: auto;
        margin-right: auto;
      }
    </style>
    <link
      rel="stylesheet"
      type="text/css"
      href="./css/footer.css"
    />
  </head>

  <body>
    <!--  footer 영억  -->
    <footer id="footer">
      <div class="foot_guide">
        <ul class="foot_menu">
          <li><a href="#">개인정보처리방침</a></li>
          <li><a href="#">제휴문의</a></li>
          <li><a href="#">광고문의</a></li>
        </ul>
        <p class="addr middle">서울특별시 마포구 백범로 23 대표이사: 김준혁</p>
        <p class="copyright middle">Copyright (c) 2023 ICT</p>
      </div>
    </footer>
  </body>
</html>
