<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>modalLogin</title>
<style>
/* 헤더 */
 /* #header{
            height: 44px;
            margin: 0;
            background-color: #2177CE;
        }
        #nav{
            margin: 0;
            padding: 0;
            list-style: none;
            font: 14px sans-serif;
            text-align: center;
            line-height: 44px;
        }
        #nav>li{
            display: inline;
            margin-right: 70px;
        }
        /* li태그 안에 존재하는 a태그의 글꼴 색을 회색(#eee)으로
        그리고 밑줄은 없앤다. 
        마우스가 올라가면 살짝 어두운 색(#e2e2e2)로 지정하자!*/
        /* #nav>li>a{
            color: #eee;
            text-decoration: none;
        }
        #nav>li>a:hover{
            color: #e2e2e2;
        }
        #apple{
            background-image: url(images/icon_apple.svg);
            width: 48px;
            position: absolute;
            top: 2px;
            background-size: 16px 44px;
            background-repeat: no-repeat;
            background-position: center center;

            margin-left: -24px;
            text-align: center;
            z-index: 1; 
            /* border: 1px solid red; */
       /* }
        body{ 
            margin: 0;
            padding: 0;
        } */ 

/*로그인*/
#modal.modal-overlay {
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0;
	top: 0;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	/* background: rgba(100, 85, 85, 0.25); */
	box-shadow: 0 8px 32px 0 rgba(158, 164, 164, 0.68);
	backdrop-filter: blur(1.5px);
	-webkit-backdrop-filter: blur(10.5px);
	border-radius: 10px;
	border: 1px solid rgba(163, 25, 25, 0.18);
}

#modal .modal-window {
	background: rgba(204, 216, 216, 0.329);
	box-shadow: 0 8px 32px 0 rgba(158, 164, 164, 0.68);
	backdrop-filter: blur(13.5px);
	-webkit-backdrop-filter: blur(13.5px);
	border-radius: 10px;
	border: 1px solid rgba(247, 207, 207, 0.18);
	width: 400px;
	height: 500px;
	position: relative;
	top: -100px;
	padding: 10px;
}

#modal .title {
	padding-left: 10px;
	display: inline;
	/* text-shadow: 1px 1px 2px rgb(161, 96, 96); */
	color: black;
}

#modal .title h2 {
	display: inline;
}

#modal .close-area {
	display: inline;
	float: right;
	padding-right: 10px;
	cursor: pointer;
	text-shadow: 1px 1px 2px gray;
	color: black;
}

#find_pw {
	display: inline-block;
	width: 100%;
	height: 100%;
	background: url(../user/images/idpw.png) no-repeat;
	text-indent: -9999px;
}
</style>
</head>

<!-- <div id="wrap">
       <header id="header">
        <ul id="nav">
            <li><a href="" id="apple">&nbsp;</a></li>
            <li><a href="" id="">지역축제알리미</a></li>
            <li><a href="" id=""></a></li>
            <li><a href="" id=""></a></li>
            <li><a href="" id=""></a></li>
            <li><a href="" id=""></a></li>
            <li><a href="" id=""></a></li>
            <li><a href="" id="">로그인</a></li>
            <li><a href="" id="">회원가입</a></li>
        </ul>
       </header>
</div> -->
<!-- 이미지 div -->
<!-- <img src="images/mapImg.png" style= "opacity: 100%"/> -->

<!-- 로그인 창 -->
<div id="modal" class="modal-overlay">
	<div class="modal-window">
		<div class="title">
			<h2>지역축제알리미</h2>

			<div class="close-area">x</div>
		</div>

		<div class="alrimi_login_input">
			<input type="text" name="username" placeholder="Username" />
		</div>

		<div class="alrimi_login_input">
			<input type="password" name="password" placeholder="Password" />
		</div>

		<div class="alrimi_login_btn">
			<input type="submit" class="btn_alrimi" id="btn_login" value="로그인" />
			<input type="button" class="btn_alrimi" value="회원가입" onclick="#" />
			<div class="find_pw">
				<!--아이디 or 비번 까먹었을 때 들어가는 url -->
				<a href="#">아이디/비밀번호 찾기</a> <input type="checkbox" name="chk"
					id="ch01" /> <label for="ch01"> 자동로그인 </label>
			</div>

			<fieldset>
				<legend>로그인 방법 선택</legend>
				<input id="login-naver" type="radio" /> <label for="login-naver">네이버
					로그인</label> <input id="login-kakao" type="radio" /> <label
					for="login-kakao">카카오 로그인</label> <input id="login-kakao"
					type="radio" /> <label for="login-kakao">회원 로그인</label>
			</fieldset>


		</div>
	</div>
</div>


</body>
</html>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>