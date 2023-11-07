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
      
      *{margin:0; padding:0;}
      a.button{display:inline-block; padding: 10px 20px; text-decoration:none; color:#fff; background:#000; margin:20px;}
      #modal{
        display:none;
        position:fixed; 
        width:100%; height:100%;
        top:0; left:0; 
        background:rgba(0,0,0,0.3);
      }
      .modal-con{
        display:none;
        position:fixed;
        top:50%; left:15%;
        transform: translate(-50%,-50%);
        max-width: 60%;
        min-height: 30%;
        background:#fff;
      }
      .modal-header {
        font-size:20px; 
        padding: 20px; 
        background : gold;
        border: 1px solid black;
      }
      .modal-con .con{
        font-size:15px; line-height:1.3;
        padding: 30px;
      }
      .modal-con .close{
        display:block;
        position:absolute;
        width:30px; height:30px;
        border-radius:50%; 
        border: 3px solid #000;
        text-align:center; line-height: 30px;
        text-decoration:none;
        color:#000; font-size:20px; font-weight: bold;
        right:10px; top:10px;
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
        <a href="javascript:openModal('modal1');" class="btn like">좋아요목록</a>
      </div>
    </div>

    <!-- 좋아요 목록 모달-->
    
    <!-- <div id="wrap">
      <a href="javascript:openModal('modal1');" class="button modal-open">모달열기</a>
     
    </div> -->

    <div id="modal"></div>
      <div class="modal-con modal1">
          <div class="modal-header">
              <input type="text" placeholder="좋아요 리스트">
              <a href="javascript:;" class="portal">검색</a>
              <a href="${pageContext.request.contextPath}/" class="close">X</a>
          </div>
              <div class="board_list_wrap">
                  <div class="board_list">
                      <div class="ftv1">
                          <div class="num">1</div>
                          <div class="modal_title"><a href="#">글제목</a></div>
                          <div class="likebtn">♡</div>
                      </div>
                      <div class="ftv2">
                          <div class="num">2</div>
                          <div class="modal_title"><a href="#">글제목</a></div>
                          <div class="likebtn">♡</div>
                      </div>
                      <div class="ftv3">
                      <div class="num">3</div>
                      <div class="modal_title"><a href="#">글제목</a></div>
                      <div class="likebtn">♡</div>
                      </div>
                      <div class="ftv4">
                      <div class="num">4</div>
                      <div class="modal_title"><a href="#">글제목</a></div>
                      <div class="likebtn">♡</div>
                      </div>
                      <div class="ftv5">
                      <div class="num">5</div>
                      <div class="modal_title"><a href="#">글제목</a></div>
                      <div class="likebtn">♡</div>
                      </div>
              </div>        
          </div>
              
              <form action="${pageContext.request.contextPath}/user/likeListTest2" name="pageForm">
              <div class="text-center">
                  <hr>
                  <ul id="pagination" class="pagination pagination-sm">
                      <c:if test="${pc.prev}">
                          <li><a href="#" data-pagenum="${pc.begin-1}">이전</a></li>
                      </c:if>
                      
                      <c:forEach var="num" begin="${pc.begin}" end="${pc.end}">               
                          <li class="${pc.page.pageNo == num ? 'active' : ''}"><a href="#" data-pagenum="${num}">${num}</a></li>
                      </c:forEach>
                      
                      <c:if test="${pc.next}">
                          <li><a href="#" data-pagenum="${pc.end+1}">다음</a></li>
                      </c:if>
                  </ul>
              </div>

              <input type="hidden" name="pageNo" value="${pc.page.pageNo}">
              <input type="hidden" name="amount" value="${pc.page.amount}">
              <input type="hidden" name="keyword" value="${pc.page.keyword}">
              <input type="hidden" name="condition" value="${pc.page.condition}"> 
              
      </div>
      <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
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
      
     function openModal(modalname){
              $("#modal").fadeIn(300);
              $("."+modalname).fadeIn(300);
             document.querySelector('.modal1').style.zIndex = '10';
            }
            
            $("#modal, .close").on('click',function(){
              $("#modal").fadeOut(300);
              $(".modal-con").fadeOut(300);
            });
  </script>
  </body>
</html>
