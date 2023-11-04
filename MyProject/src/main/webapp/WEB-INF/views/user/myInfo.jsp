<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
      href="/MyProject/src/main/webapp/resources/static/css/myInfo.css"
      rel="stylesheet"
    />
<title>Insert title here</title>


</style>
</head>
<body>
    
    <div id="wrap">
        <!--  상단영역  -->
        
            
        </header>
        <!-- 상단영역 끝 -->
        
        <!--  콘텐츠영역  -->
        <div id="contents">
            
            <form action="" method="post">
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
                                <label for="sAdr">이메일</label>
                            </th>
                            <td class="pn_td">
                                <p class="pn_txt">
                                    <input type="text" id="sMail" name="uMail" class="join">
                                    @
                                    <input type="text" id="sMail2" name="uMail2" class="join">&nbsp;
                                    <select type="select" id="sMail2" name="uMail2">
                                        <option value="">::직접입력</option>
                                        <option value="gmail.common">gmail.com</option>
                                        <option value="naver.common">naver.com</option>
                                        <option value="daum.common">daum.net</option>
                                        <option value=""></option>
                                        <input type="button" value="이메일 인증">
                                    </select>&nbsp;&nbsp;
                                    
                                </p>
                                
                                
                                
                            </td>
                        </tr>
                        
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="sPw">비밀번호</label>
                            </th>
                            <td>
                                <p class="guide_txt">
                                    <input type="password" id="sPw" name="uPw" class="join">&nbsp;&nbsp;&nbsp;&nbsp;<br/>
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
                                    <input type="password" id="sPw2" name="uPw2" class="join"><br/>
                                    입력하신 비밀번호 확인을 위해 다시 한번 입력해 주세요
                                </p>
                            </td>
                        </tr>

                    </tbody>
                </table>
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