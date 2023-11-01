<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div id="wrap">
        <!--  상단영역  -->
        
            
        </header>
        <!-- 상단영역 끝 -->
        
        <!--  콘텐츠영역  -->
        <div id="contents">
            <h1 class="sub_title title01">
                회원가입
            </h1>
            <p class="title_src">
                
            </p>
            <p class="guide_txt">
                기본회원정보를 입력해 주세요
                <span class="txt_r">
                    <span class="req"></span>
                    필수입력사항
                </span>
            </p>
            <br>
            <form action="${pageContext.request.contextPath}/user/join" method="post" name="joinForm">
                <table class="table_type">
                    <colgroup>
                        <col width="130px"/>
                        <col width="*">
                    </colgroup>
                    <tbody>
                        <!-- <tr>
                            <th>이름</th>
                            <td>마루치</td>
                        </tr> -->
                        
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_id">아이디</label>
                                
                            </th>
                            <td>
                                <p class="guide_txt">
                                    <input type="text" id="s_id" name="s_id" class="join">
                                <span class="btn b_bdcheck">
                                    <input type="button" id="idCheckBtn" value="중복확인">
                                </span>&nbsp;&nbsp;&nbsp;&nbsp;
                                    6~12자리의 영문, 숫자(혼용가능)를 입력해 주세요.       
                                <span id="msgId"></span>                             
                                </p>
                                
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_pw">비밀번호</label>
                            </th>
                            <td>
                                <p class="guide_txt">
                                    <input type="password" id="s_pw" name="s_pw" class="join">&nbsp;&nbsp;&nbsp;&nbsp;
                                    10개 이상의 문자조합(영문 대소문자 + 숫자 또는 기호(!~#@))을 입력해 주세요.
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
                                    <input type="password" id="s_pw2" name="u_pw2" class="join">&nbsp;&nbsp;&nbsp;&nbsp;
                                    입력하신 비밀번호 확인을 위해 다시 한번 입력해 주세요
                                </p>
                            </td>
                        </tr>

                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_name">이름</label>
                            </th>
                            <td>
                                <input type="text" id="s_name" name="u_name" class="join">
                            </td>
                        </tr>
                            
                        
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_adr">휴대전화번호</label>
                            </th>
                            <td class="pn_td">
                                <p class="pn_txt">
                                    <select id="s_pn" name="u_pn">
                                        <option value="010">010</option>
                                        <option value=""></option>
                                    </select>
                                    -
                                    <input type="text" id="s_pn" name="u_pn">
                                    -
                                    <input type="text" id="s_pn" name="u_pn">
                                </p>
                                
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="email">이메일</label>
                            </th>
                            <td class="pn_td">
                                    <input type="text" id="email" name="email">
                                    @
                                    <input type="text" class="box" id="email1" name="email1">&nbsp;
                                    <select type="select" class="box" id="email2" name="email2">
                                    	<option value="type">직접입력</option>
                                        <option value="@naver.com">naver.com</option>
                                        <option value="@gmail.com">gmail.com</option>
                                        <option value="@daum.com">daum.net</option>
                                    </select>&nbsp;&nbsp;
                                    <span class="btn b_bdcheck">
                                        <input type="button" class="btn btn_primary" id="check_btn" value="이메일 인증">
                                    </span>
                                    <div class="mail_check_box">
                                    	<input type="text" class="form_control mail_check_input" placeholder="인증번호 6자리를 입력하세요." maxlength="6" disabled="disabled">
                                    	<span id="mail_check_warn"></span>
                                    </div>
                                
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="btn_area">
                    <span class="btn b_ok">
                        <input type="button" value="확인">
                    </span>
                    <span class="btn b_cancel">
                        <input type="button" value="취소">
                    </span>
                </div>
        </form>
        </div>
        <!-- 콘텐츠영역 끝 -->

        <!--  하단영역  -->
        
        <!-- 하단영역 끝 -->
    </div>
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		let code = '';
		let idFlag, pwFlag;

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
    console.log('완성된 email: ', email);

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
      document.getElementById('email1').setAttribute('readonly', true);
      document.getElementById('email2').setAttribute('readonly', true);

      e.target.style.display = 'none';

      const $email2 = document.getElementById('email1');

      $email2.setAttribute(
        'onFocus',
        'this.initialSelect = this.selectedIndex'
      );
      $email2.setAttribute(
        'onChange',
        'this.selectedIndex = this.initialSelect'
      ); // 사용자가 옵션을 바꾸려고 하면 초기 설정값으로 돌아간다
    } else {
      $resultMsg.textContent = '인증번호를 다시 확인해 주세요.';
      $resultMsg.style.color = 'red';
      e.target.focus();
    }
  }; // 인증번호 검증 끝.
        
        

		/*
        document.getElementById('idCheckBtn').onclick = () => {

            const userId = document.getElementById('s_id').value;
            if(userId === '') {
                alert('아이디는 필수값입니다.');
                return;
            }

            if(!idFlag) {
                alert('유효하지 않은 아이디 입니다.')
                return;
            }
            fetch('${pageContext.request.contextPath}/user/id/' + userId)
                .then(rest => res.text())
                .then(data => {
                    if(data === 'ok') {
                        document.getElementById('s_id').setAttribute('readonly', true);
                        document.getElementById('idCheckBtn').setAttribute('disabled', true);
                        document.getElementById('msgId').textContent = '사용 가능한 아이디 입니다.';
                    } else {
                        document.getElementById('msgId').textContent = '중복된 아이디 입니다.';
                        document.getElementById('s_id').value = '';
                        document.getElementById('s_id').focus();
                    }
                });
        }

        document.getElementById('check_btn').onclick = function() {
            const email = document.getElementById('email').value + document.getElementById('email1').value;
            console.log('완성된 email: ', email);

            fetch('${pageContext.request.contextPath}/user/email', {
                method: 'post',
                headers: {
                    'Content-Type': 'text/plain'
                },
                body: email
            })
            .then(res => res.text())
            .then(data => {
                console.log('인증번호: ', data);
                document.querySelector('.mail_check_input').disabled = false;
                code = data;
                alert('인증번호가 전송되었습니다.')
            })
            .catch(error => {
                console.log(error);
                alert('관리자에게 문의 하세요!');
            });
        };

        document.querySelector('.mail_check_input').onblur = function(e) {
            const inputCode = e.target.value;
            const $resultMsg = document.getElementById('mail_check_warn');
            console.log('사용자가 입력한 값: ', inputCode);
        }

        if(inputCode === code) {
            $resultMsg.textContent = '인증번호가 일치합니다.';
            $resultMsg.style.color = 'green';

            document.getElementById('mail_check_btn').disabled = true;
            document.getElementById('email').setAttribute('readonly', true);
            document.getElementById('email1').setAttribute('readonly', true);
            document.getElementById('email2').setAttribute('readonly', true);

            e.target.style.display = 'none'

            const $email2 = document.getElementById('email2');

            $email2.setAttribute('onFocus', 'this.initialSelect = this.selectedIndex');
            $email2.setAttribute('onChange', 'this.selectedIndex = this.initialSelect');
        } else {
            $resultMsg.textContent = '인증번호를 다시 확인해 주세요.';
            $resultMsg.style.color = 'red';
            e.target.focus();
        }
	*/
		
	
	
	</script>
</body>
</html>





























