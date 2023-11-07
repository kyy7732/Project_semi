<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>modalLogin</title>
    <style>

  /* 모달전체화면  */
  .white-bg {
    border-radius: 5px;
    padding: 30px;
    width: 350px;
    height: 600px;
    border: 1px solid blue;
    background: skyblue;
  } 

  /* 모달켜고 끄기 */
  .noshow {
      display:none; 
  }

  /* 전체화면 */
  #modal.black-bg {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 10;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            /* background: rgba(100, 85, 85, 0.25); */
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            /* backdrop-filter: blur(1.5px); */
            /* -webkit-backdrop-filter: blur(10.5px); */
            border-radius: 10px;
            border: 1px solid blue;
            /* z-index : 5; */
            padding: 30px;
        }

        .modal-con {
            /* border: 1px solid black; */
            width: 100%;
            height: 25px;
        }

        /* #modal .modal-window {
            background: rgba(40, 65, 122, 0.7);
            box-shadow: 0 8px 32px 0 rgba(55, 56, 70, 0.37);
            backdrop-filter: blur(13.5px);
            -webkit-backdrop-filter: blur(13.5px);
            border-radius: 10px;
            border: 1px solid rgba(133, 23, 23, 0.18);
            width: 400px;
            height: 600px;
            position: relative;
            top: -100px;
            padding: 10px;
        } */

        /* #modal .modal-window h2 {
            border: 1px solid #000;
            margin-top: -5px;
        } */

        /* #modal .title {
            padding-left: 10px;
            display: inline;
            text-shadow: 1px 1px 2px rgb(94, 50, 50);
            color: black;

        } */

        /* #modal .title h2 {
            display: inline;
        } */

        /* #modal .close-area {
            display: inline;
            float: right;
            padding-right: 10px;
            cursor: pointer;
            text-shadow: 1px 1px 2px rgb(168, 47, 47);
            color: black;
        } */

        /* #modal .content {
            margin-top: 20px;
            padding: 0px 10px;
            text-shadow: 1px 1px 2px rgb(79, 35, 35);
            color: white;
        } */

        /* .bt_wrap {
           margin-top: 30px;
           text-align: center;
           font-size: 0;
           text-align: center;
        } */

        .bt_wrap a {
            display: inline-block;
            min-width: 80px;
            margin-left: 10px;
            padding: 10px;
            border: 1px solid #000;
            border-radius: 2px;
            font-size: 1.4rem;
        }

        /* .bt_wrap a:first-child {
            margin-left: 0;
        }

        .bt_wrap a.on {
            background: #000;
            color: #fff;
        } */

        /* 모달 좋아요 목록 색변환 */
        .board_list {
        background: white;
        }

        .ftv1:hover{
          background: skyblue;
        }

        .ftv2:hover{
          background: skyblue;
        }

        .ftv3:hover{
          background: skyblue;
        }

        .ftv4:hover{
          background: skyblue;
        }

        .ftv5:hover{
          background: skyblue;
        }
        
        .board_list > div {
            border-bottom: 1px solid #ddd;
        }
        
        .board_list > div.top {
            border-bottom: 1px solid #999;
        }

        /* .board_list > div:last-child {
            border-bottom: 1px solid blue;
        }

        .board_list > div:last-child {
            border-bottom: 1px solid blue;
        } */

        /* 모달 중심 맞추기 */
        .board_list > div > div {
            display: inline-block;
            padding: 15px 0;
            text-align: center;
        }

        /* 모달 좋아요 글 번호 */
        .board_list .num {
            width: 10%;
        }

        /* 모달 좋아요 글 */
        .board_list .title {
            width: 60%;
            text-align: left;
        }

        .board_list .top .title {
            text-align: left;
        }

        .board_list .like {
            width: 10%;
        }

        .board_page {
            margin-top: 0px;
            text-align: center;
            font-size: 0;
            /* border: 1px solid #000; */
        }

        .board_page a {
            display: inline-block;
            width: 32px;
            box-sizing: border-box;
            vertical-align: middle;
            border: 1px solid #ddd;
            border-left: 0;
            line-height: 100%;
        }

        .board_page a.bt {
            padding-top: 10px;
            font-size: 1.2rem;
            letter-spacing: -1px;
        }

        .board_page a.bt {
            padding-top: 10px;
            font-size: 1.2rem;
            letter-spacing: -1px;
        }

        .board_page a.num {
            padding-top: 9px;
            font-size: 1.4rem;
        }

        .board_page a.num.on {
            border-color: #000;
            background: #000;
            color: #fff;
        }

        .board_page a:first-child {
            border-left:  1px solid #ddd;
        }

        /* 모달 검색창 */
        input {
            border: 1px solid blue;
            font-size: 20px;
            width: 200px;
            height: 24px;
            padding: 7px;
            outline: none;
            float: left;
        }

        /* 모달 검색버튼 */
        button {
            
            height: 26px;
            border: 0px;
            background: blue;
            outline: none;
            color: #ffffff;
            padding: 4px;
        }
        /* 모달 창끄기 버튼 */
        .close{
            height: 25px;
            border: 0px;
            background: blue; 
            outline: none;
            float: right;
            color: #ffffff;
            
            
        }

        #pagination{
            border: 1px solid black;
            display: flex;
            font-size: 17px;
            list-style: none;
        }

        .ssk{
            border: 1px solid black;
        }

        
    </style>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>

<body>

    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<link
         href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
         rel="stylesheet"
         integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
         crossorigin="anonymous"
      />

    <form action="" method="#">
    <div id="modal" class="black-bg noshow">
        <div class="white-bg">
            <div class="modal-con">
            <input type="text" placeholder="좋아요 리스트">
            <!-- <button type="button">검색</button> -->
            <a href="javascript:;" class="portal">검색</a>
            <a href="javascript:;" class="close">X</a>
            </div>
            <!-- <button type="button" id="closeBtn">Χ</button> -->  
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

                <input type="hidden" name="pageNo" value="3">
                <input type="hidden" name="amount" value="10">
                <input type="hidden" name="keyword" value="">
                <input type="hidden" name="condition" value="">
		    </form>
        </div>  
    </div>
  </form>
  <button id ='like_list'>좋아요 목록</button>
    
  <section>
    
  </section>

  <!-- <script>
    document.querySelector('#like_list').addEventListener('click',function(){
      document.querySelector('.black-bg').classList.remove('noshow');
    }) -->
    <!-- // 좋아요 목록을 누르면, 모달창의 노쇼클래스가 사라진다. 즉, 모달창이 눈에 보인다

    // document.querySelector('#closeBtn').addEventListener('click',function(){
    //   document.querySelector('.black-bg').classList.add('noshow');
    // })
    //닫기 버튼을 누르면, 모달창의 노쇼클래스가 추가된다. 즉, 모달창이 사라진다
  
    </script> -->
     <script>
            
            function openModal(modalname){
              $('#like_list').fadeIn(300);
              $("."+modalname).fadeIn(300);
            }
            
            $(".close").on('click',function(){
              $(".white-bg").fadeOut(300);
              $(".modal-con").fadeOut(300);
            });
        </script>

</body>


    
