<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>join</title>
    <style>
        
        #contents {
            width: 900px;
            margin-left: 500px;

        }

        .guide_txt {
            position: relative;
            font-size: 12px;
            color: #666;
        }

        .txt_r {
            font-size: 12px;
            color: #777;
            display: inline-block;
            position: absolute;
            right: 0;
        }

        .req {
            display: inline-block;
            width: 0px;
            height: 8px;
            text-indent: -9999px;
            background-position: 0 2px;
        }

        /************* 테이블 작업 ************/
        table.table_type {
            width: 900px;
            border-collapse: collapse;
            /* border: 1px solid #ddd;
    border-left: none;
    border-right: none; */
            border: none;
        }

        table.table_type th {
            border: 1px solid #ddd;
            font-weight: bold;
            padding: 10px 0 10px 10px;
            background-color: #efefef;
            text-align: left;
            border-left: none;
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
            margin-bottom: 5px;
        }

        .b_bdcheck {
            width: 58px;
            height: 25px;
            background-position: 0 -150px;
            /* border: 1px solid black; */
            position: absolute;
            margin: 0 10px;
        }

        dt {
            display: inline-block;
            width: 90px;
            height: 30px;
            line-height: 30px;
            /* border: 1px solid red; */
        }

        dd {
            display: inline-block;
            width: 190px;
        }

        .post_num {
            width: 80px;
            height: 25px;
            background-position: -58px -150px;
            margin: 2px 10px;
            vertical-align: top;
            /* 수직정렬 */
        }

        div.btn_area {
            text-align: center;
            margin: 20px;
            height: 30px;
        }

        div.btn_area span {
            margin-top: 50px;
            padding: 3px 0;
            height: 30px;
        }

        .b_ok {
            width: 70px;
            height: 40px;
            background-position: 0 -100px;
        }

        .b_cancel {
            width: 70px;
            height: 40px;
            background-position: -100px -100px;
        }

        .pn {
            /* display: inline-block; */
            width: 300px;
            border: 1px solid red;
        }

        .title01 {
            display: inline-block;
            text-indent: -9999px;
        }

        .mainLogo {
            display: inline-block;
            width: 230px;
            height: 65px;
            text-indent: -9999px;
            margin-left: 40%;
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <div id="wrap">
        <!--  상단영역  -->


        </header>
        <!-- 상단영역 끝 -->

        <!--  콘텐츠영역  -->
        <div id="contents">
            <span class="sub_title title01">
                회원가입
            </span>
            <p class="title_src">

            </p>
            <p class="guide_txt">
                회원 가입을 위해 아래 정보를 입력해주세요
            </p>
            <br>
            <form action="${pageContext.request.contextPath}/user/join" method="post" name="joinForm">
                <table class="table_type">
                    <colgroup>
                        <col width="130px" />
                        <col width="*">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="userId">아이디</label>

                            </th>
                            <td>
                                <p class="guide_txt">
                                    <input type="text" id="userId" name="userId" class="join">
                                    <input type="button" id="idCheck" name="idCheck" value="중복확인">
                                    <br />
                                    <span id="msgId">6~12자리의 영문, 숫자(혼용가능)를 입력해 주세요.
                                    </span>
                                </p>

                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="userPw">비밀번호</label>
                            </th>
                            <td>
                                <p class="guide_txt">
                                    <input type="password" id="userPw" name="userPw" class="join">
                                    <span id="msgPw">8개 이상의 문자조합(영문 대소문자 + 숫자 또는 기호(!~#@))을 입력해 주세요.</span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="userPwC">비밀번호 확인</label>
                            </th>
                            <td>
                                <p class="guide_txt">
                                    <input type="password" id="userPwC" name="userPwC" class="join">
                                    <span id="msgPwC">입력하신 비밀번호 확인을 위해 다시 한번 입력해 주세요</span>
                                </p>
                            </td>
                        </tr>

                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="name">이름</label>
                            </th>
                            <td>
                                <input type="text" id="name" name="name" class="join">
                            </td>
                        </tr>


                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="email">이메일</label>
                            </th>
                            <td class="pn_td">
                                <input type="text" id="email" name="email" class="join">
                                @
                                <input class="join email box" type="text" id="email1" name="email1" />&nbsp;
                                <select type="select" class="box" id="email2" name="email2">
                                    <option value="type"  selected>직접입력</option>
                                    <option value="naver.com">naver.com</option>
                                    <option value="gmail.com">gmail.com</option>
                                    <option value="daum.net">daum.net</option>
                                </select>&nbsp;&nbsp;
                                <span class="btn b_bdcheck">
                                    <input type="button" class="btn btn_primary" id="check_btn_dup" value="중복확인" >
                                    <input type="button" class="btn btn_primary" id="check_btn" value="이메일 인증" style="display: none;">
                                </span>
                                <div class="mail_check_box">
                                    <input type="text" class="form_control mail_check_input"
                                        placeholder="인증번호 6자리를 입력하세요." maxlength="6" disabled="disabled">
                                    <span id="mail_check_warn"></span>
                                </div>

                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="btn_area">
                    <span class="btn b_ok">
                        <input type="button" name="joinBtn" value="확인">
                    </span>
                </div>
            </form>
        </div>
        <!-- 콘텐츠영역 끝 -->

        <!--  하단영역  -->
        <%@ include file="../include/footer.jsp"  %>
        <!-- 하단영역 끝 -->
    </div>

    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        let code = '';
        let idFlag, pwFlag, emailFlag;
        const $msgId = document.getElementById('msgId');

        
        
        //아이디 중복 검사 스크립트
        const $idCheck = document.joinForm.idCheck;
        const $userId = document.getElementById('userId');

        $idCheck.onclick = e => {
            const userId = document.getElementById('userId').value;
            if (!idFlag) {
                alert('유효하지 않은 아이디 입니다.');
                return;
            }
            fetch('${pageContext.request.contextPath}/user/id/' + userId)
                .then(res => res.text())
                .then(text => {
                    if (text === 'ok') {
                        console.log('ok');
                        $msgId.innerHTML = '사용 가능한 아이디입니다.';
                        $userId.setAttribute('readonly', true);
                        $idCheck.setAttribute('disabled', true);
                    } else {
                        console.log('duplicated');
                        $msgId.innerText = '이미 존재하는 아이디입니다.';
                    }
                })

        }

        //아이디 유효성 검사 스크립트
        $userId.onkeyup = () => {

            var regex = /^[A-Za-z0-9+]{6,12}$/;
            if (regex.test($userId.value)) {
                $userId.style.borderColor = 'green';
                $msgId.innerHTML = '아이디 중복 체크는 필수 입니다.';
                idFlag = true;
            } else {
                $userId.style.borderColor = 'red';
                $msgId.innerHTML = '유효하지 않은 아이디 입니다.';
                idFlag = false;
            }
        }

        // 비밀번호 유효성 검사 스크립트
        const $userPw = document.getElementById('userPw');
        const $msgPw = document.getElementById('msgPw');
        $userPw.onkeyup = () => {

            var regex = /^[A-Za-z0-9~!@#$%^&*()_+|<>?:{}+]{8,16}$/;
            var pattern_spc = /[~!@#$%^&*()_+|<>?:]/
            if (regex.test($userPw.value) && pattern_spc.test($userPw.value)) {
                $userPw.style.borderColor = 'green';
                $msgPw.innerHTML = '사용가능합니다.';
                pwFlag = true;
            } else {
                $userPw.style.borderColor = 'red';
                $msgPw.innerHTML = '비밀번호를 제대로 입력하세요.';
                pwFlag = false;
            }
        }

        // 비밀번호 확인 스크립트
        const $userPwC = document.getElementById('userPwC');
        var $msgPwC = document.getElementById('msgPwC');
        $userPwC.onkeyup = () => {
            if ($userPwC.value == $userPw.value) {
                $userPwC.style.borderColor = 'green';
                $msgPwC.innerHTML = '비밀번호가 일치합니다.';
                pwFlag = true;
            } else {
                $userPwC.style.borderColor = 'red';
                $msgPwC.innerHTML = '비밀번호가 일치하지 않습니다.';
                pwFlag = false;
            }
        }

        
        
        
		// 이메일 중복 검사 스크립트
        // 이메일 직접입력 구현
        const emailInput = document.querySelector('#email1')
        const emailBox = document.querySelector('#email2')
        
        emailBox.addEventListener('change', (event) => {
            if (event.target.value !== "type") {
                emailInput.value = event.target.value;
                emailInput.readOnly = true;
                console.log(emailInput.value);
            } else {
                emailInput.value = "";
                emailInput.value = document.getElementById('email1').value;
                emailInput.readOnly = false;
            }
        })

        document.getElementById('check_btn_dup').onclick = function () {

            if(document.getElementById('email').value ==='' || document.getElementById('email1').value === ''){
                alert('이메일을 입력해주세요.')
                return;
            }

            const email =
            document.getElementById('email').value +
            '@' +
            document.getElementById('email1').value;
            
            fetch('${pageContext.request.contextPath}/user/email/' + email)
            .then(res => res.text())
            .then(text => {
                if(text === 'duplicated'){
                    alert('이미 존재하는 이메일 입니다.');
                    emailFlag = true;
                    return;
                } else if(text === 'possible'){
                    alert('사용 가능한 이메일 입니다. \n이메일 인증을 완료해주세요.')
                    document.getElementById('check_btn_dup').style.display = 'none';
                    document.getElementById('check_btn').style.display = 'block';
                }
            })
        };
            
            document.getElementById('check_btn').onclick = function () {
                const email =
                document.getElementById('email').value +
                '@' +
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
                         //중복된 이메일이면 이거 안떠야되는데 플래그
                    })
                    .catch((error) => {
                        console.log(error);
                        alert('알 수 없는 문제가 발생했습니다. 관리자에게 문의하세요!');
                    });

            }


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

                select.addEventListener('change', function () {
                    input.value = select.value;
                })
                e.target.style.display = 'none';
            } else {
                $resultMsg.textContent = '인증번호를 다시 확인해 주세요.';
                $resultMsg.style.color = 'red';
                e.target.focus();
            }

        };

        //폼 데이터 검증 스크립트
        document.joinForm.joinBtn.onclick = () => {

            if (idFlag && pwFlag) {
                if (!$userId.getAttribute('readonly')) {
                    alert('아이디 중복체크는 필수입니다.')
                    return;
                }
                if (document.getElementById('name').value == '') {
                    alert('이름은 필수 입력값입니다.')
                    return;
                }
                if (!document.getElementById('check_btn').disabled) {
                    alert('이메일 인증을 완료해주세요.')
                    return;
                }
                if (confirm('회원가입을 진행합니다.')) {
                    document.joinForm.submit();
                } else return;
            } else {
                alert('입력값을 다시 한번 확인해주세요.');
                return;
            }

                    

        }

	</script>
</body>

</html>