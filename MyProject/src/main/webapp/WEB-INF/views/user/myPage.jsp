<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
  
  @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');

        
  
        body{
            margin: 0px;
            padding: 0px;
        }
        .header {
            padding-top: 0px;
            border: solid 1px black;
            height: 110px;
            margin: 0%;
            padding: 0px;
        }

        .foter {
            width: 100%;
            padding: 0 25px;
            line-height: 60px;
            color: #8a8c8f;
            border-top: 1px solid #dee5e7;
            background-color: #f2f2f2;
            border: solid 1px;
            position: absolute;
            bottom: 0px;
        }

        #nav{
            list-style-type: none;
            margin: 0px;
            overflow: auto;
        }
        ul#menu {
            list-style: none;
            padding-left: 0px;
            margin: 0px;
            margin-top: 30px;
        }
        header {
            border: solid;
            margin: 0px;
            padding: 0px;
        }
        li {
            width: 200px;
            border-right: solid 2px rgb(186, 199, 216);
            border-bottom: #cbdef1 dotted 2px;
            font-size: 17px;
        }
        .aButton {
            display: block;
            padding: 12px;
            text-decoration-line: none;

        }
        a {
            color: #0356A9;
        }
        .hTable{
            position: relative;
            left: 5px;
        }
        a:hover{
            color: #158aff;
        }
        #page {
            text-align: center;
            line-height: 100px;
            margin: 0px;
        }
        #no:hover {
            color: #000;
        }

    </style>
</head>

<body>
    <div id="wrap">
        <div class="header">
            <h1>헤더 페이지</h1>
            <p>
                <h1>---------------------------------------------</h1>
            </p>
        </div>
        <table id="nav">
            <ul id="menu">
                <li id="no">
                    <h1 id="page"><strong>마이 페이지</strong></h1>
                </li>
                <div id="menu2">
                <li>
                    <a href="${pageContext.request.contextPath}/user/myInfo" class="aButton"><h2 class="hTable">내 정보 수정</h2></a>
                </li>
                <li>
                    <a href="#" class="aButton"><h2 class="hTable">내 댓글 목록</h2></a>
                </li>
                <li>
                    <a href="#" class="aButton"><h2 class="hTable">좋아요 목록</h2></a>
                </li>
            </div>

            </ul>
    </table>
    </div>
    </div>
    
    <script>

    </script>
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>

</html>