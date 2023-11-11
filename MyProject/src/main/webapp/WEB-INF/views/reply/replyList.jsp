<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="/WEB-INF/views/include/header.jsp" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Canvas</title>
    <style type="text/css">
      body {
        line-height: 2em;
        font-family: '맑은 고딕';
      }
      ul,
      li {
        list-style: none;
        text-align: center;
        padding: 0;
        margin: 0;
      }

      #mainWrapper {
        width: 800px;
        margin: 0 auto; /*가운데 정렬*/
      }

      #mainWrapper > ul > li:first-child {
        text-align: center;
        font-size: 14pt;
        height: 40px;
        vertical-align: middle;
        line-height: 30px;
      }

      #ulTable {
        margin-top: 10px;
      }

      #ulTable > li:first-child > ul > li {
        background-color: #c9c9c9;
        font-weight: bold;
        text-align: center;
      }

      #ulTable > li > ul {
        clear: both;
        padding: 0px auto;
        position: relative;
        min-width: 40px;
      }
      #ulTable > li > ul > li {
        float: left;
        font-size: 10pt;
        border-bottom: 1px solid silver;
        vertical-align: baseline;
      }

      #ulTable > li > ul > li:first-child {
        width: 10%;
      } /*No 열 크기*/
      #ulTable > li > ul > li:first-child + li {
        width: 45%;
      } /*제목 열 크기*/
      #ulTable > li > ul > li:first-child + li + li {
        width: 20%;
      } /*작성일 열 크기*/
      #ulTable > li > ul > li:first-child + li + li + li {
        width: 15%;
      } /*작성자 열 크기*/
      #ulTable > li > ul > li:first-child + li + li + li + li {
        width: 10%;
      } /*조회수 열 크기*/

      #divPaging {
        clear: both;
        margin: 0 auto;
        width: 220px;
        height: 50px;
      }

      #divPaging > div {
        float: left;
        width: 30px;
        margin: 0 auto;
        text-align: center;
      }

      #liSearchOption {
        clear: both;
      }
      #liSearchOption > div {
        margin: 0 auto;
        margin-top: 30px;
        width: auto;
        height: 100px;
      }

      .left {
        text-align: left;
      }
    </style>
  </head>
  <body>

    
    <div id="mainWrapper">
      <ul>
        <br />
        <li><strong><h3>내 댓글 목록</strong></li>

        <li>
          <ul id="ulTable">
            <li>
              <ul>
                <li>No</li>
                <li>댓&emsp;&emsp;&emsp;글</li>
                <li>작성일</li>
                <li>작성자</li>
              </ul>
            </li>
            
            <!-- 게시물이 출력될 영역 -->
            
            <!-- <c:forEach var="vo" items="${replyList}">
	                            <tr>
	                                <td>${vo.commentNum}</td>
	                                <td>${vo.content}</td>
	                                <td>${vo.userId}</td>
	                                <td>${vo.regDate}</td>
	                            </tr>
                            </c:forEach>-->
            <li>
              <ul>
                <li>1</li>
                <li class="left">제목제목제목제목1</li>
                <li>2014.07.09</li>
                <li>자바킹</li>
              </ul>
            </li>

            <li>
              <ul>
                <li>2</li>
                <li class="left">제목제목제목제목1</li>
                <li>2014.07.09</li>
                <li>자바킹</li>
              </ul>
            </li>

            <li>
              <ul>
                <li>3</li>
                <li class="left">제목제목제목제목1</li>
                <li>2014.07.09</li>
                <li>자바킹</li>
              </ul>
            </li>

            <li>
              <ul>
                <li>4</li>
                <li class="left">제목제목제목제목1</li>
                <li>2014.07.09</li>
                <li>자바킹</li>
              </ul>
            </li>

            <li></li>
          </ul>
        </li>

        <form action="${pageContext.request.contextPath}/user/reply" name="pageForm">
            <div class="text-center">
                <hr>
                    <ul id="pagination" class="pagination pagination-sm">
                        <c:if test="${pc.prev}"> <!-- pc.prev가 true면 이전버튼 활성 -->
                        <li><a href="#" data-pagenum="${pc.begin-1}">이전</a></li> <!-- 시작페이지보다 -1 작은 곳으로-->
                        </c:if>
                        
                        <c:forEach var="num" begin="${pc.begin}" end="${pc.end}">
                            <li class="${pc.page.pageNo == num ? 'active' : ''}"><a href="#" data-pagenum="${num}">${num}</a></li>
                        </c:forEach>
                        
                        <c:if test="${pc.next}"> <!-- pc.next가 true면 다음버튼 활성 -->
                            <li><a href="#" data-pagenum="${pc.end+1}">다음</a></li>
                        </c:if>
                    </ul>
                <button type="button" class="btn btn-info" onclick="location.href='${pageContext.request.contextPath}/user/freeRegist'">글쓰기</button>
            </div>
    
            <input type="hidden" name="pageNo" value="${pc.page.pageNo}">
            <input type="hidden" name="amount" value="${pc.page.amount}">
            <input type="hidden" name="keyword" value="${pc.page.keyword}">
            <input type="hidden" name="condition" value="${pc.page.condition}">
    
    
    </form>
    

        <!-- 검색 폼 영역 -->
        <li id="liSearchOption">
          <div>
            <select id="selSearchOption">
              <option value="A">제목+내용</option>
              <option value="T">제목</option>
              <option value="C">내용</option>
            </select>
            <input id="txtKeyWord" />
            <input
              type="button"
              value="검색"
            />
          </div>
        </li>
      </ul>
    </div>
    <%@ include file="../include/footer.jsp" %>

  </body>
</html>
