<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>myPage</title>
<style>
  /* myPage css  */
  body{
            margin: 0px;
            padding: 0px;
        }
        .header {
            padding-top: 0px;
            border: solid 1px black;
            height: 100px;
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
            position: relative;
            list-style: none;
            padding-left: 0px;
            margin: 0px;
            margin-top: 30px;
        }
        li.border {
            width: 200px;
            border-right: solid 2px rgb(186, 199, 216);
            border-bottom: #cbdef1 dotted 2px;
            font-size: 12px;
            border-top: 1px solid #ddd;
            border-left: 1px solid #ddd;
            border-bottom: 1px solid #ddd;
        }
        .aButton{
            display: block;
            padding: 12px;
            text-decoration-line: none;
            color: #0356A9;

        }
        .aButton:hover{
            display: block;
            padding: 12px;
            text-decoration-line: none;
            color: #fff;
            background-color: #0356A9;
        }
        .hTable{
            position: relative;
            left: 5px;
        }
        a:hover{
            color: #158aff;
        }
        #page5 {
            margin-top: 100px;
            text-align: center;
            line-height: 100px;
            margin-left: 100px;
            
        }
        #no:hover {
            color: #000;
        }
        /* #menu2>li{
            
            display: inline-block;
        } */

#wrap {
  margin-left: -00px;
  margin-top: 150px;
}

#contents {
  width: 900px;
  height: auto;
  margin: auto;
}
.button {
  --background: #275efe;
  --text: #fff;
  --font-size: 15px;
  --duration: 0.44s;
  --move-hover: -4px;
  --shadow: 0 2px 8px -1px rgba(39, 94, 254, 0.32);
  --shadow-hover: 0 4px 20px -2px rgba(39, 94, 254, 0.5);
  --font-shadow: var(--font-size);
  margin-left: 300px;
  margin-top: -10px;
  width: 60px;
  height: 15px;
  padding: 16px 32px;
  font-family: 'Roboto';
  font-weight: 500;
  line-height: var(--font-size);
  border-radius: 10px;
  display: block;
  outline: none;
  text-decoration: none;
  font-size: var(--font-size);
  letter-spacing: 0.5px;
  background: var(--background);
  color: var(--text);
  box-shadow: var(--shadow);
  transform: translateY(var(--y)) translateZ(0);
  transition: transform var(--duration) ease, box-shadow var(--duration) ease;
}
.tab1 {
  --background: #fff;
  --text: #0a0000;
  --font-size: 15px;
  --duration: 0.44s;
  --move-hover: -4px;
  --shadow: 0 2px 8px -1px rgba(39, 94, 254, 0.32);
  --shadow-hover: 0 4px 20px -2px rgba(39, 94, 254, 0.5);
  --font-shadow: var(--font-size);
  margin-left: -15px;
  margin-top: -10px;
  width: 60px;
  height: 15px;
  padding: 16px 32px;
  font-family: 'Roboto';
  font-weight: 500;
  line-height: var(--font-size);
  border-radius: 10px;
  display: block;
  outline: none;
  text-decoration: none;
  font-size: var(--font-size);
  letter-spacing: 0.5px;
  background: var(--background);
  color: var(--text);
  box-shadow: var(--shadow);
  transform: translateY(var(--y)) translateZ(0);
  transition: transform var(--duration) ease, box-shadow var(--duration) ease;
}
.guide_txt {
  /* border: 1px solid black; */
  position: relative;
  font-size: 10px;
  color: #777;
  padding-bottom: 7px;
}
.txt_r {
  font-size: 12px;
  color: #777;
  /* padding-bottom: 7px; */
  display: inline-block;
  /* border: 1px solid black; */
  /* width: 88px; */
  position: absolute;
  right: 0;
  /* padding-left: 15px; */
}
.req {
  display: inline-block;
  width: 0px;
  height: 8px;
  background: url(../images/bult.png) no-repeat;
  text-indent: -9999px;
  background-position: 0 2px;
}

/************* 테이블 작업 ************/
table.table_type {
  position: relative;
  top: -325px;
  left: 215px;
  width: 800px;
  border-collapse: collapse;
  /* border: 1px solid #ddd;
    border-left: none;
    border-right: none; */
  border: none;
  border-right: 1px solid #ddd;
}

table.table_type th {
  border: 1px solid #ddd;
  font-weight: bold;
  padding: 10px 0 10px 10px;
  background-color: #0356A9;
  text-align: left;
  border-left: none;
  color:#fff;
}
table.table_type td {
  border: 1px solid #ddd;
  padding: 10px;
  border-right: none;
}
.join {
  padding: 3px 6px;
  border: 1px solid #ddd;
  border-radius: 5px;
}

.join.pn_td {
  padding: 3px 6px;
  border: 1px solid #ddd;
  border-radius: 5px;
}

.b_bdcheck {
  width: 58px;
  height: 25px;
  background-position: 0 -150px;
  /* border: 1px solid black; */
  position: absolute;
  margin: 0 10px;
}

.fr {
  text-align: right;
}
div.btn_area {
  text-align: center;
  margin: -250px;
  margin-left: 150px;
}




</style>



</head>
<body>
    
    <div id="wrap">
        <!--  상단영역  -->
        
            
        </header>
        <!-- 상단영역 끝 -->
        
        <!--  콘텐츠영역  -->
        <div id="contents"">
          <table id="nav">
            <ul id="menu">
                    <h1 id="page5">마이 페이지</h1>
                </li>
                <div id="menu2">
                <li class="border">
                    <a href="${pageContext.request.contextPath}/user/myPage" class="aButton"><h2 class="hTable">내 정보 수정</h2></a>
                    <!--<a href="${pageContext.request.contextPath}/user/myInfo" class="aButton"><h2 class="hTable">내 정보 수정</h2></a>-->
                </li>
                <li class="border">
                    <a href="${pageContext.request.contextPath}/user/reply" class="aButton"><h2 class="hTable">내 댓글 목록</h2></a>
                </li>
                <li class="border">
                    <a href="${pageContext.request.contextPath}/user/likeList" class="aButton"><h2 class="hTable">좋아요 목록</h2></a>
                </li>
                <li class="border">
                  <a href="#" id="deleteBtn" class="aButton" ><h2 class="hTable">회원 탈퇴</h2></a>
              </li>
            </div>
            </ul>
    </table>
            <div id="contents">
            <form action="" method="post">
                <table class="table_type">
                    <colgroup>
                        <col width="150px" />
                        <col width="*">
                    </colgroup>
                    <tbody>

                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="sId">아이디</label>
                            </th>
                            <td>
                                    <input class="join" type="text" id="sId" name="uId" disabled="disabled" />
                            </td>
                        </tr>
                        
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_name" >이름</label>
                            </th>
                            <td>
                                <input class="join" type="text" id="sName" name="uName" disabled="disabled" />
                            </td>
                        </tr>

                        <tr>
                          <th>
                              <span class="req"></span>
                              <label for="s_pw">비밀번호</label>
                          </th>
                          <td>
                              <p class="guide_txt">
                                  <input type="password" id="userPw" name="userPw" class="join"><br/>
                                  <span id="msgPw">10개 이상의 문자조합(영문 대소문자 + 숫자 또는 기호(!~#@))을 입력해 주세요.</span>
                              </p>
                          </td>
                      </tr>
                      <tr>
                          <th>
                              <span class="req"></span>
                              <label for="s_pw2">비밀번호 확인</label>
                          </th>
                          <td>
                              <p class="guide_txt">
                                  <input type="password" id="userPw2" name="userPw2" class="join"><br/>
                                  <span id="userPwC">입력하신 비밀번호 확인을 위해 다시 한번 입력해 주세요</span>
                              </p>
                          </td>
                      </tr>

                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="email">이메일</label>
                            </th>
                            <td class="pn_td">
                                <input type="text" id="sMail" name="uMail" class="join" >
                                @
                                <input class="join type="text" class="box" id="email1" name="email1">&nbsp;
                                    <select type="select" class="box" id="email2" name="email2">
                                    	<option value="type">직접입력</option>
                                        <option value="@naver.com">naver.com</option>
                                        <option value="@gmail.com">gmail.com</option>
                                        <option value="@daum.net">daum.net</option>
                                    </select>&nbsp;&nbsp;
                                    <span class="btn b_bdcheck">
                                        <input type="button" class="btn btn_primary" id="check_btn" value="이메일 인증">
                                    </span>

                                    <div class="mail_check_box">
                                    	<input type="text" class="form_control mail_check_input" placeholder="인증번호 6자리를 입력하세요." maxlength="6" style="width: 185px;">
                                    	<span id="mail_check_warn"></span>
                                    </div>
                                
                            </td>
                        </tr>
                        
                        

                    </tbody>
                </table>
              </div>
                <div class="btn_area">
                    <span class="btn b_ok">
                        <a href="" class="button">수정</a>
                    </span>
                    
                </div>
        </form>
        </div>
        <!-- 콘텐츠영역 끝 -->

        <!--  하단영역  -->
        
        <!-- 하단영역 끝 -->
    </div>

</body>
</html>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    // 비밀번호 유효성 검사 스크립트
    const $userPw = document.getElementById('userPw');
    const $msgPw = document.getElementById('msgPw');
    $userPw.onkeyup = () => {

        var regex = /^[A-Za-z0-9+]{8,16}$/;
        if(regex.test($userPw.value)){
            $userPw.style.borderColor = 'green';
            $msgPw.innerHTML = '사용가능합니다.';
            pwFlag = true;

        } else{
            $userPw.style.borderColor = 'red';
            $msgPw.innerHTML = '비밀번호를 제대로 입력하세요.';
            pwFlag = false;
        }
    }

    const $userPwC = document.getElementById('userPwC');
    const $msgPwC = document.getElementById('msgPwC');
    $userPwC.onkeyup = () => {
        if($userPwC.value === $userPw.value){
            $userPwC.style.borderColor = 'green';
            $msgPwC.innerHTML = '비밀번호가 일치합니다.';
        } else {
            $userPwC.style.borderColor = 'red';
            $msgPwC.innerHTML = '비밀번호가 일치하지 않습니다.';
        }
    }






        // 이메일 직접입력 구현
        const emailInput = document.querySelector('#email1')
        const emailBox = document.querySelector('#email2')
        
        emailBox.addEventListener('change', (event) => {
            if(event.target.value !== "type"){
                emailInput.value = event.target.value
                emailInput.disabled = true
            } else {
                emailInput.value = ""
                emailInput.disabled = false
            }
        })
        
    
     document.getElementById('check_btn').onclick = function () {
    const email =
      document.getElementById('email').value +
      document.getElementById('email1').value;

    fetch('${pageContext.request.contextPath}/user/email', {
      method: 'post',
      headers: {
        'Content-Type': 'text/plain',
      },
      body: email,
    })
      .then((res) => res.text())
      .then((data) => {
        console.log('인증번호: ', data);
 
        document.querySelector('.mail_check_input').disabled = false; 
        code = data; 
        alert('인증번호가 전송되었습니다. 확인 후 입력란에 정확히 입력하세요.');
      })
      .catch((error) => {
        console.log(error);
        alert('알 수 없는 문제가 발생했습니다. 관리자에게 문의하세요!');
      });
  };


  document.querySelector('.mail_check_input').onblur = function (e) {
    const inputCode = e.target.value;
    const $resultMsg = document.getElementById('mail_check_warn');
    console.log('사용자가 입력한 값: ', inputCode);

    if (inputCode === code) {
      $resultMsg.textContent = '인증번호가 일치합니다.';
      $resultMsg.style.color = 'green';

        document.getElementById('check_btn').disabled = true;
        document.getElementById('email').setAttribute('readonly', true);
    	  const select = document.getElementById('email2');
    	  const input = document.getElementById('email1');
        
    	    select.disabled = true;
    	    input.readOnly = true;

            select.addEventListener('change', function() {
    	    input.value = select.value;
    	  })	
          e.target.style.display = 'none';
        } else {
            $resultMsg.textContent = '인증번호를 다시 확인해 주세요.';
            $resultMsg.style.color = 'red';
            e.target.focus();
        }
     
    	};
      document.getElementById('deleteBtn').onclick = e => {
      if (confirm("정말로 삭제하시겠습니까?")) {
        alert("삭제되었습니다.");
        location.href = "${pageContext.request.contextPath}/user/delete?userId=${userId}";
      } else {
        return;
        // 삭제가 취소된 경우 실행할 코드를 작성할 수 있습니다.
      }
    }
      

    </script>
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>