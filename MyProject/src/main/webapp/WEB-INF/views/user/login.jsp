<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>modalLogin</title>
    <style>
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
            background: rgba(100, 85, 85, 0.25);
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
            text-shadow: 1px 1px 2px rgb(161, 96, 96);
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

<body>
    
    <!-- 이미지 -->
    <div id="container">
        <h2></h2>
        
    </div>

    <!-- 로그인 창 -->
    <div id="modal" class="modal-overlay">
        <div class="modal-window">
            <div class="title">
                <h2>지역축제알리미</h2>
                <div class="close-area">x</div>
            </div>
            <div class="alrimi_login_input">
                <input type="text" name="username" placeholder="Username">
            </div>
            <div class="alrimi_login_input">
                <input type="password" name="password" placeholder="Password">
            </div>
            <div class="alrimi_login_btn">
                <input type="submit" class="btn_alrimi" id="btn_login" value="로그인">
                <input type="button" class="btn_alrimi" value="회원가입" onclick="#">
                <div class="find_pw"> <!-- 아이디 or 비번 까먹었을 때 들어가는 url-->
                    <a href='#'>아이디/비밀번호 찾기</a>
                    <input type="checkbox" name="chk" id="ch01"/>
                    <label for="ch01">
                       자동로그인
                    </label>
                </div>
                
                <fieldset>
                    <legend>로그인 방법 선택</legend>
                    <input id="login-naver" type="radio">
                    <label for="login-naver">네이버 로그인</label>
                    <input id="login-kakao" type="radio">
                    <label for="login-kakao">카카오 로그인</label>
                    <input id="login-kakao" type="radio">
                    <label for="login-kakao">회원 로그인</label>
                </fieldset>
            </div>
        </div>
    </div>
    </div>

</body>