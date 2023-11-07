<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
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
  top:50%; left:20%;
  transform: translate(-50%,-50%);
  max-width: 60%;
  min-height: 30%;
  background:#fff;
  border: 1px solid black;
  
}
.modal-header {
  font-size:20px; 
  padding: 20px; 
  background : gold;
  /* border: 1px solid red; */
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

/* #modal{
  border: 100px solid red;
} */
</style>

<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>
<body>
    <div id="wrap">
        <a href="javascript:openModal('modal1');" class="button modal-open">모달열기</a>
       
      </div>
      
      <div id="modal"></div>
        <div class="modal-con modal1">
            <div class="modal-header">
                <input type="text" placeholder="좋아요 리스트">
                <a href="javascript:;" class="portal">ㅎㅇ</a>
                <a href="#" class="close">x</a>
            </div>
                <div class="board_list_wrap">
                    <div class="board_list">
                        <div class="ftv1">
                            <div class="num">1</div>
                            <div class="title"><a href="#">글제목</a></div>
                            <div class="likebtn">♡</div>
                        </div>
                        <div class="ftv2">
                            <div class="num">2</div>
                            <div class="title"><a href="#">글제목</a></div>
                            <div class="likebtn">♡</div>
                        </div>
                        <div class="ftv3">
                        <div class="num">3</div>
                        <div class="title"><a href="#">글제목</a></div>
                        <div class="likebtn">♡</div>
                        </div>
                        <div class="ftv4">
                        <div class="num">4</div>
                        <div class="title"><a href="#">글제목</a></div>
                        <div class="likebtn">♡</div>
                        </div>
                        <div class="ftv5">
                        <div class="num">5</div>
                        <div class="title"><a href="#">글제목</a></div>
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
        
        <script>
            
            function openModal(modalname){
              $("#modal").fadeIn(300);
              $("."+modalname).fadeIn(300);
            }
            
            $("#modal, .close").on('click',function(){
              $("#modal").fadeOut(300);
              $(".modal-con").fadeOut(300);
            });
        </script>
       
        
</body>

</html>