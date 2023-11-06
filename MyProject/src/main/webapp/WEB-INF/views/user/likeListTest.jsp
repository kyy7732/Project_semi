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
  top:50%; left:50%;
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

<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>
<body>
    <div id="wrap">
        <a href="javascript:openModal('modal1');" class="button modal-open">모달열기1</a>
       
      </div>
      
      <div id="modal"></div>
        <div class="modal-con modal1">
            <div class="modal-header">
                <input type="text" placeholder="좋아요 리스트">
                <a href="javascript:;" class="portal">검색</a>
                <a href="javascript:;" class="close">X</a>
            </div>
                <div class="board_list_wrap">
                    <div class="board_list">
                        <div class="ftv1">
                            <div class="num">1</div>
                            <div class="title"><a href="#">축제명1</a></div>
                            <div class="like">♥</div>
                        </div>
                        <div class="ftv2">
                            <div class="num">2</div>
                            <div class="title"><a href="#">축제명2</a></div>
                            <div class="like">♡</div>
                        </div>
                        <div class="ftv3">
                        <div class="num">3</div>
                        <div class="title"><a href="#">축제명3</a></div>
                        <div class="like">♥</div>
                        </div>
                        <div class="ftv4">
                        <div class="num">4</div>
                        <div class="title"><a href="#">축제명4</a></div>
                        <div class="like">♡</div>
                        </div>
                        <div class="ftv5">
                        <div class="num">5</div>
                        <div class="title"><a href="#">축제명5</a></div>
                        <div class="like">♥</div>
                        </div>
                </div>        
            </div>
            <form action="#" name="pageForm">
                <div class="text-center">
                    <hr>
                    <ul id="pagination" class="pagination pagination-sm">
                            <li class="ssk"><a href="#" data-pagenum="1">1</a></li>
                                       
                            <li class=""><a href="#" data-pagenum="2">2</a></li>
                                       
                            <li class="active"><a href="#" data-pagenum="3">3</a></li>
                                       
                            <li class=""><a href="#" data-pagenum="4">4</a></li>
                                       
                            <li class=""><a href="#" data-pagenum="5">5</a></li>
    
                            <li><a href="#" data-pagenum="6">다음</a></li>
                    </ul>
                </div>
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