<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<% String contextPath=request.getContextPath(); %>
		<!DOCTYPE html>
		<html lang="en">
			<link rel="stylesheet"
			href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=edit" />
		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>Document1</title>
			

			<style>
				@font-face {
					font-family: 'Gyeonggi_Batang_Regular';
					src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2410-3@1.0/Batang_Regular.woff') format('woff');
					font-weight: 400;
					font-style: normal;
				}

				body * {
					font-family: 'Gyeonggi_Batang_Regular';
					font-weight: 700;

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

				/*-------------------------------------------------------------  */


				#content>#content1 {
					background-image:
						url("<%=contextPath%>/resources/assets/Container81.png");
					background-size: cover;
					/* 이미지를 요소 크기에 맞게 채움 */
					background-position: center;
					/* 중앙 정렬 */
					background-repeat: no-repeat;
					/* 이미지 반복 방지 */
				}

				#content1 {
					width: 100%;
					height: 300px;
					display: flex;
					object-fit: cover;
				}

				#content2 {
					width: 70%;
					height: 400px;
					margin-left: 15%;
				}

				#content3 {
					width: 100%;
					margin-bottom: 10px;
				}

				#textcontent {
					font-size: 30px;
					line-height: 100px;
					margin-left: 150px;
				}

				#content2_1,
				#content2_2 {
					width: 100%;
					height: 50%;
					display: flex;
				}

				#content2_1_1,
				#content2_1_2,
				#content2_1_3,
				#content2_1_4 {
					width: 50%;
				}

				#contentDiv1_1,
				#contentDiv2_1,
				#contentDiv3_1,
				#contentDiv4_1 {
					width: 100%;
					height: 60%;
					text-align: center;
					box-sizing: border-box;
					margin-bottom: -20px;
				}

				#contentDiv1_2,
				#contentDiv2_2,
				#contentDiv3_2,
				#contentDiv4_2 {
					width: 100%;
					height: 30%;
					text-align: center;
					box-sizing: border-box;
				}

				#contentDiv1_3,
				#contentDiv2_3,
				#contentDiv3_3,
				#contentDiv4_3 {
					width: 100%;
					height: 10%;
					text-align: center;
					box-sizing: border-box;
				}

				#content2 img {
					width: 100px;
					cursor: pointer;
				}



				.material-symbols-outlined {
					font-variation-settings:
						'FILL' 0,
						'wght' 400,
						'GRAD' 0,
						'opsz' 24
				}
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
          margin-top: 20px;
        }

        .pagination a {
          margin: 0 5px;
          text-decoration: none;
          color: #333;
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
		<!-- ------------------------------------------------------------------ -->

		<body>
			<div class="wrap">
				<div id="header">
					<div id="header_1">
						<!-- <div id="header_1_1"> -->
						<div id="header_1_1_1">
							<a href="<%= contextPath %>/views/common/mainPage.jsp"><img src="<%= contextPath %>/resources/assets/This_서고 로고.png" alt=""
									style="height: 70%; width: 70%;"></a>
						</div>
						<div id="navigator">
							<a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a> 
							<a href="<%=contextPath%>/views/vote/voteList.jsp">온라인투표</a> 
							<a href="<%= contextPath %>/list.bo">자유게시판</a>
							<a href="<%=contextPath%>/views/member/myPage.jsp">마이페이지</a> 
							<a href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
						</div>
						<div id="header_login_btn" style="height: 100%; width: 9%;">
							<button class="btn" id="login" onclick="login()">Log In</button>
						</div>
						<div id="header_signin_btn" style="height: 100%; width: 9%;">
							<button class="btn" id="signin" onclick="signin()">Sign In</button>
						</div>
						<div id="header_mypage_btn" style="height: 100%; width: 7%;">
							<button class="btn" id="mypage" onclick="mypage()">
								<img src="<%=contextPath%>/resources/assets/user01.png" alt="">
							</button>
						</div>
					</div>
				</div>
				<!-- -------------------------------------------------------------------- -->



				<div id="content">
					<div id="content1">
						<div id="textcontent">
							<pre>
              어떤 어려운이 있으신가요? 
              <b>고객센터 입니다.</b>
              </pre>
						</div>
					</div>
					<br>
					<br>
					<br>
					<br>
					<br>
					<div id="content2">
						<div id="content2_1">
							<div id="content2_1_1">
								<div id="contentDiv1_1">
									<a href="<%=contextPath%>/views/serviceCenter/customerServiceDetail.jsp" style="border: none;">
										<img src="<%=contextPath%>/resources/assets/interview_15747273.gif">
									</a>
								</div>
								<div id="contentDiv1_2">
									<p>
										<a href="<%=contextPath%>/views/serviceCenter/customerServiceDetail.jsp" style="text-decoration-line: none;">
											<b>1:1 문의 접수</b>
										</a>
									</p>
								</div>
								<div id="contentDiv1_3">
									<a>고객센터에 문의글 접수중입니다.</a>
								</div>
							</div>
							<div id="content2_1_2">
								<div id="contentDiv2_1">
									<a href="<%=contextPath%>/views/serviceCenter/fnaList.jsp">
										<img src="<%=contextPath%>/resources/assets/faq_12205153.gif">
									</a>	
								</div>
								<div id="contentDiv2_2">
									<p>
										<a href="<%=contextPath%>/views/serviceCenter/fnaList.jsp"
											style="text-decoration-line: none;">
											<b>F&A</b>
										</a>
									</p>
								</div>
								<div id="contentDiv2_3">
									자주 문의되는 질문에 대한 답변을 보실 수 있습니다.
								</div>
							</div>
						</div>
						<div id="content2_2">
							<div id="content2_1_3">
								<div id="contentDiv3_1">
									<img src="<%=contextPath%>/resources/assets/conversation_15578485.gif">
								</div>
								<div id="contentDiv3_2">
									<p>
										<a><b>1:1 문의 내역</b></a>
									</p>
								</div>
								<div id="contentDiv3_3">사용자가 문의한 글 내역을 확인합니다.</div>
							</div>
							<div id="content2_1_4">
								<div id="contentDiv4_1">
									<img src="<%=contextPath%>/resources/assets/virtual-assistant_15579142.gif">
								</div>
								<div id="contentDiv4_2">
									<p>
										<a><b>전화 상담</b></a>
									</p>
								</div>
								<div id="contentDiv4_3">고객 센터에 연결되어 상담자와 연결이 됩니다.</div>
							</div>
						</div>
					</div>
					<br>
					
					<br>
					<br>
					<div id="content3">

						<div class="notice-form">
							<!-- 자유게시판 -->
        <div class="board-container">
          <h2>공지사항</h2>
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
              <tr onclick="window.location.href='<%= contextPath %>/views/board/boardDetail.jsp'">
                <td>10</td>
                <td>네이버 지도(v5) 임베드asdasdasdasdasdsadasdasdasdadasd</td>
                <td>아임웹</td>
                <td>2019-12-17</td>
                <td>120</td>
              </tr>
              <tr>
                <td>9</td>
                <td>제목</td>
                <td>아임웹</td>
                <td>2019-12-16</td>
                <td>160</td>
              </tr>
              <tr>
                <td>8</td>
                <td>구글 지도 게시물에 임베드 하기</td>
                <td>아임웹</td>
                <td>2019-12-16</td>
                <td>77</td>
              </tr>
              <tr>
                <td>7</td>
                <td>구글 지도 게시물에 임베드 하기</td>
                <td>아임웹</td>
                <td>2019-12-16</td>
                <td>99</td>
              </tr>
              <tr>
                <td>6</td>
                <td>구글 지도 게시물에 임베드 하기</td>
                <td>아임웹</td>
                <td>2019-12-16</td>
                <td>50</td>
              </tr>
              <tr>
                <td>5</td>
                <td>구글 지도 게시물에 임베드 하기</td>
                <td>아임웹</td>
                <td>2019-12-16</td>
                <td>1</td>
              </tr>
              <tr>
                <td>4</td>
                <td>구글 지도 게시물에 임베드 하기</td>
                <td>아임웹</td>
                <td>2019-12-16</td>
                <td>9015</td>
              </tr>
              <tr>
                <td>3</td>
                <td>구글 지도 게시물에 임베드 하기</td>
                <td>아임웹</td>
                <td>2019-12-16</td>
                <td>60</td>
              </tr>
              <tr>
                <td>2</td>
                <td>구글 지도 게시물에 임베드 하기</td>
                <td>아임웹</td>
                <td>2019-12-16</td>
                <td>111560</td>
              </tr>
              <tr>
                <td>1</td>
                <td>구글 지도 게시물에 임베드 하기</td>
                <td>아임웹</td>
                <td>2019-12-16</td>
                <td>1105</td>
              </tr>
            </tbody>
          </table>


          <div class="pagination">
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
          </div>

          <div style="display: flex;">
            <a href="<%= contextPath %>/views/board/boardInsertForm.jsp" class="write-btn" style="margin-left: auto;">글쓰기</a>
          </div>

        </div>
        <!-- 자유게시판 끝 -->
						</div>



					</div>
				</div>
				<!-- -------------------------------------------------------------------- -->
				<div id="footer" style="background-color: #fdf5f1;">
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
			<!-- -------------------------------------------------------------------- -->
			<script>
				function login() {
					location.href = "<%=contextPath%>/views/member/loginform.jsp";
				}

				function signin() {
					location.href = "<%=contextPath%>/views/member/signin.jsp";
				}

				function mypage() {
	     location.href="<%= contextPath %>/views/member/myPage.jsp";
	   }
			</script>
		</body>

		</html>