<%@page import="com.kh.common.model.vo.PageInfo"%>
<%@page import="com.kh.member.model.vo.Member"%>
<%@page import="com.kh.board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <% 
  	String contextPath=request.getContextPath();
  
		// 글번호, 닉네임, 제목, 내용, 조회수, 작성일
  	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
  
  	String alertMsg = (String)session.getAttribute("alertMsg");
  	
  	Member loginMember= (Member)session.getAttribute("loginMember");
  	
		PageInfo pi = (PageInfo)request.getAttribute("pi");
	
		int currentPage = pi.getCurrentPage();
		int startPage = pi.getStartPage();
		int endPage = pi.getEndPage();
		int maxPage = pi.getMaxPage();
  %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document1</title>
			
			<script
    		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js">
			</script>
			
      <style>
        @font-face {
          font-family: 'Gyeonggi_Batang_Regular';
          src:
            url('https://fastly.jsdelivr.net/gh/projectnoonnu/2410-3@1.0/Batang_Regular.woff') format('woff');
          font-weight: 400;
          font-style: normal;
        }

        body * {
          font-family: 'Gyeonggi_Batang_Regular';
        }

        /* div {box-sizing: border-box;border: 1px solid red;} */
        .wrap {
          width: 1500px;
          margin: auto;
          height: auto;
          overflow: hidden;
        }

        #header {
          height: 50px;
        }

        #footer {
          height: 150px;
          margin-top: 50px;
        }

        #header>div {
          height: 100%;
        }

        #header_1>div,
        #header_1_3>div {
          float: left;
        }

        #header_1_1_1 {
          width: 15%;
          height: 100%;
        }

        #navigator {
          position: relative;
          width: 60%;
          height: 100%;
          display: flex;
          align-items: center;
          justify-content: space-around;
        }

        #navigator>a {
          text-decoration: none;
          color: black;
          font-size: 13px;
        }

        /*-------------------------------------------------------------  */
        #header_mypage_btn,
        #header_login_btn,
        #header_signin_btn {
          display: flex;
          justify-content: center;
          align-items: center;
        }

        #login {
      width: 50%;
      height: 50%;
      border-radius: 5px;
      background-color: #ea916e;
      color: white;
      border: none;
    }

    #signin {
      width: 50%;
      height: 50%;
      border-radius: 5px;
      background-color: #ea916e;
      color: white;
      border: none;
    }

    /* ---------------------------------------------- */
    #mypage {
      border-radius: 50%;
      width: 40%;
      height: 60%;
      background-color: #ea916e;
      border: none;
    }

    #mypage>img {
      width: 100%;
      height: 100%;
    }

        /* ---------------------------------------------- */
        .btn:hover {
          opacity: 0.7;
          color: white;
          cursor: pointer;
        }

        /* ---------------------------------------------- */

        /* 자유게시판 스타일 */
        .board-container {
          max-width: 1000px;
          margin: 120px auto;
          background: white;
          padding: 20px;
          border-radius: 10px;
          box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
          width: 100%;
          border-collapse: collapse;
        }

        th,td {
          border-bottom: 1px solid #ddd;
          padding: 10px;
          text-align: left;
        }

        th {
          background-color: #f4f4f4;
        }

				.pagination {
					text-align: center;
					margin-top: 15px;
				}

				.pagination span {
					display: inline-block;
					padding: 5px 10px;
					margin: 2px;
					cursor: pointer;
					border: 1px solid #ddd;
					border-radius: 3px;
				}

				.pagination span:hover {
					background: #f0f0f0;
				}

        .write-btn {
          display: block;
          width: 80px;
          padding: 10px;
          /* margin: auto; */
          background-color: #ea916e;
          color: white;
          text-align: center;
          border-radius: 5px;
          text-decoration: none;
        }

        .write-btn:hover{
          opacity: 0.7;
          
        }

        div .write-btn>a {
          text-align: right;
        }

        .board-container tbody tr:hover{
          background-color: lightgrey;
          cursor: pointer;
        }

        

        /* ==============footer======================================= */
        #footer_1 {
          width: 100%;
          height: 65%;
        }

        #footer_1>div {
          float: left;
        }

        #footer_1_1 {
          height: 100%;
          width: 20%;
        }

        #footer_1_1 img {
          display: flex;
          margin: auto;
          width: 60%;
          height: 60%;
          margin-top: 20%;
        }

        #footer_2 {
          width: 100%;
          height: 35%;
          text-align: center;
          margin-top: 2%;
        }
      </style>
    </head>

    <body>
    		<% if(alertMsg != null){ %>
					<script>
						alert("<%= alertMsg %>");
					</script>
						<% session.removeAttribute("alertMsg"); %> <!-- 이걸 안해주면 다른 곳 가도 한번 더 읽혀서 창이 계속 뜸 -->
				<% } %>
      <div class="wrap">
        <div id="header">
          <!-- 기존 헤더 내용 -->
          <div id="header_1">
            <div id="header_1_1_1">
              <a href="<%=contextPath%>"><img src="<%=contextPath%>/resources/assets/This_서고 로고.png" alt=""
                  style="height: 100%; width: 100%;"></a>
            </div>
            <div id="navigator">
              <a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a> 
              <a href="<%=contextPath%>/views/vote/voteList.jsp">온라인투표</a> 
              <a href="<%= contextPath %>/list.bo">자유게시판</a>
              <a href="<%=contextPath%>/views/member/myPage.jsp">마이페이지</a> 
              <a href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
            </div>
            <div id="header_login_btn" style="height: 100%; width: 9%;">
              <button class="btn" id="login" onclick="location.href='<%=contextPath%>/views/member/loginform.jsp'">Log
                In</button>
            </div>
            <div id="header_signin_btn" style="height: 100%; width: 9%;">
              <button class="btn" id="signin" onclick="signin()">Sign In</button>
            </div>
            <div id="header_mypage_btn" style="height: 100%; width: 7%;">
              <button class="btn" id="mypage">
                <img src="<%=contextPath%>/resources/assets/user01.png" alt="">
              </button>
            </div>

          </div>
        </div>

        <!-- 자유게시판 -->
        <div class="board-container">
          <h2>자유게시판</h2>
          <table>
            <thead>
              <tr>
                <th>No</th>
                <th>제목</th>
                <th>글쓴이</th>
                <th>작성일자</th>
                <th>조회수</th>
              </tr>
            </thead>
            <tbody>
     				<% if(list == null) { %>
						<!-- case1. 게시글이 없을 경우 -->
							<tr>
								<td colspan="5">조회된 게시글이 없습니다.</td>
							</tr>
						<% }else{ %>
							
							<!-- case2. 게시글이 있을 경우 -->
	            <%for(Board b : list){ %>
		              <tr>
		                <td><%=b.getBoardNo() %></td>
		                <td><%=b.getBoardTitle() %></td>
		                <td><%=b.getBoardWriter() %></td>
		                <td><%=b.getWriteDate() %></td>
		                <td><%=b.getCount() %></td>
		              </tr>
	              <%} %>
              <%} %>
            </tbody>
          </table>
					<script>
						$(function(){
							$(".board-container tbody>tr").click(function(){
								location.href="<%= contextPath %>/detail.bo?bno="+ $(this).children().eq(0).text();
							})
						})
					</script>

          <div class="pagination">
	          <!-- 페이징바 -->
						<% if(currentPage != 1){ %>
								<span onclick="location.href='<%= contextPath %>/list.bo?cpage=<%= currentPage - 1 %>'">&lt;</span>
						<% } %>
						<% for(int p=startPage; p<=endPage; p++){ %>					
								<% if(p == currentPage){ %>
										<button disabled><%= p %></button>
								<% }else{ %>
										<span onclick="location.href='<%= contextPath %>/list.bo?cpage=<%= p %>'"><%= p %></span>
								<% } %>
						<% } %>
						
						<% if(currentPage != maxPage){ %>
								<span onclick="location.href='<%= contextPath %>/list.bo?cpage=<%= currentPage + 1 %>'">&gt;</span>
						<% } %>
          </div>
					
					<%if(loginMember != null){ %>
          <div style="display: flex;">
            <a href="<%= contextPath %>/views/board/boardInsertForm.jsp" class="write-btn" style="margin-left: auto;">글쓰기</a>
          </div>
					<%} %>
        </div>
        <!-- 자유게시판 끝 -->

        <div id="footer" style="background-color: #fdf5f1;">
          <!-- 기존 푸터 내용 -->
          <div id="footer_1">
            <div id="footer_1_1"><a href="<%= contextPath %>/views/common/mainPage.jsp"><img src="<%= contextPath %>/resources/assets/This_서고 로고.png" alt=""></a></div>
            <div id="navigator" class="navigator">
              <a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a> 
              <a href="<%=contextPath%>/views/vote/voteList.jsp">온라인투표</a> 
              <a href="<%= contextPath %>/list.bo">자유게시판</a>
              <a href="<%=contextPath%>/views/member/myPage.jsp">마이페이지</a> 
              <a href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
            </div>
          </div>
          <div id="footer_2">© 2025 YourCompany. All Rights Reserved.</div>
        </div>
      </div>
      <script>
        function login() {
          location.href = "<%=contextPath%>/views/member/loginform.jsp";
        }

      </script>

      <script>
        function signin() {
          location.href = "<%=contextPath%>/views/member/signin.jsp";
        }

      </script>
      <!-- -------------------------------------------------------------------- -->
    </body>

    </html>