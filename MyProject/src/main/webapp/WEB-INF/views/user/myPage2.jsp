<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #contents{
    width: 900px;
    height: auto;
    margin: auto;
}
.guide_txt{
    /* border: 1px solid black; */
    position: relative;
    font-size: 10px;
    color: #777;
    padding-bottom: 7px;
    
}
.txt_r{
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
.req{
    display: inline-block;
    width: 0px;
    height: 8px;
    background: url(../images/bult.png) no-repeat;
    text-indent: -9999px;
    background-position: 0 2px;
}

/************* 테이블 작업 ************/
table.table_type{
    width: 900px;
    border-collapse: collapse;
    /* border: 1px solid #ddd;
    border-left: none;
    border-right: none; */
    border: none;
}

table.table_type th{
    border: 1px solid #ddd;
    font-weight: bold;
    padding: 10px 0 10px 10px;
    background-color: #efefef;
    text-align: left;
    border-left: none;
}
table.table_type td{
    border: 1px solid #ddd;
    padding: 10px;
    border-right: none;
}
.join{
    padding: 3px 6px;
    border: 1px solid #ddd;
    border-radius: 5px;
}
.b_bdcheck{
    width: 58px;
    height: 25px;
    background-position: 0 -150px;
    /* border: 1px solid black; */
    position: absolute;
    margin: 0 10px;
}
dt{
    display: inline-block;
    width: 90px;
    height: 30px;
    line-height: 30px;
    /* border: 1px solid red; */
}
dd{
    display: inline-block;
    width: 190px;
}
.post_num{
    width: 80px;
    height: 25px;
    background-position: -58px -150px;
    margin: 2px 10px;
    vertical-align: top; /* 수직정렬 */
}


.fr{ text-align: right;}
div.btn_area{
    text-align: center;
    margin: 20px;
}
div.btn_area span{
    margin-top: 30px;
    padding: 3px 0;
}
.b_ok{
    width: 70px;
    height: 40px;
    background-position: 0 -100px;
}
.b_cancel{
    width: 70px;
    height: 40px;
    background-position: -100px -100px;
}
.pn{
    /* display: inline-block; */
    width: 300px;
    border: 1px solid red;
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
            <h1 class="sub_title title01">
                나의 정보 관리
            </h1>
            <p class="title_src">
                
            </p>
            <p class="guide_txt">
                회원정보 수정 페이지
            </p>
            <br>
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
                                <label for="s_name">이름</label>
                            </th>
                            <td>
                                <input type="text" id="s_name" name="u_name" disabled="disabled class="join" >
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_id">아이디</label>
                                
                                
                            </th>
                            <td>
                                <p class="guide_txt">
                                    <input type="text" id="s_id" name="u_id" class="join" disabled="disabled">
                                <!-- <button type="button">중복확인</button> -->                      
                                </p>
                                
                            </td>
                        </tr>

                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_adr">이메일</label>
                            </th>
                            <td class="pn_td">
                                <p class="pn_txt">
                                    <input type="text" id="s_mail" name="u_mail">
                                    @
                                    <input type="text" id="s_mail" name="u_mail">&nbsp;
                                    <select type="select" id="s_mail" name="u_mail">
                                        <option value="">::직접입력</option>
                                        <option value="gmail.common">gmail.com</option>
                                        <option value="naver.common">naver.com</option>
                                        <option value="daum.common">daum.net</option>
                                        <option value=""></option>
                                    </select>&nbsp;&nbsp;
                                    
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
                                    <input type="password" id="s_pw" name="u_pw" class="join">&nbsp;&nbsp;&nbsp;&nbsp;<br/>
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
                                    <input type="password" id="s_pw2" name="u_pw2" class="join"><br/>
                                    입력하신 비밀번호 확인을 위해 다시 한번 입력해 주세요
                                </p>
                            </td>
                        </tr>

                    </tbody>
                </table>
                <div class="btn_area">
                    <span class="btn b_ok">
                        <input type="button" value="수정">
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