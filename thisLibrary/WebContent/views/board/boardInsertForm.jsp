<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <% String contextPath=request.getContextPath(); %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document1</title>

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
                    /* margin-top: 80px; */
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
                    width: 70%;
                    height: 50%;
                    border-radius: 5px;
                    background-color: #ea916e;
                    color: white;
                    border: none;
                }

                #signin {
                    width: 70%;
                    height: 50%;
                    border-radius: 5px;
                    background-color: #ea916e;
                    color: white;
                    border: none;
                }

                /* ---------------------------------------------- */
                #mypage {
                    border-radius: 50%;
                    width: 50%;
                    height: 50%;
                    background-color: #ea916e;
                    border: none;
                }

                #mypage>img {
                    width: 90%;
                    height: 60%;
                }

                /* ---------------------------------------------- */
                .btn:hover {
                    opacity: 0.7;
                    color: white;
                    cursor: pointer;
                }

                /* ---------------------------------------------- */

                /* 자유게시판 게시글 작성 스타일 */
                .post-container {
                    max-width: 1000px;
                    margin: 50px auto;
                    margin-top: 70px;
                    margin-bottom: 70px;
                    background: white;
                    padding: 20px;
                    border-radius: 10px;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                }

                h2 {
                    margin-bottom: 10px;
                }

                hr {
                    border: 0;
                    border-top: 1px solid #333;
                    margin-bottom: 20px;
                }

                label#title,
                label#content {
                    font-weight: bold;
                    display: block;
                    margin-bottom: 5px;
                }

                input,
                textarea {
                    width: 100%;
                    padding: 10px;
                    border: 1px solid #333;
                    border-radius: 5px;
                    font-size: 14px;
                }

                textarea {
                    height: 200px;
                    resize: none;
                }

                input[type="file"] {
                    border: none;
                    padding: 5px 0;
                }

                .file-upload-container {
                    display: flex;
                    align-items: center;
                    /* 요소들을 같은 높이에 정렬 */
                    justify-content: space-between;
                    /* 양 끝 정렬 */
                    margin-top: 10px;
                }

                .file-upload-container input[type="file"] {
                    flex-grow: 1;
                    /* 파일 선택 창이 왼쪽 공간을 채우도록 설정 */
                }

                .button-group {
                    display: flex;
                    gap: 10px;
                    /* 버튼 간격 */
                }

                button:hover {
                    opacity: 0.7;
                }


                .back-btn,
                .button-group button {
                    background: #ea916e;
                    color: white;
                    border: none;
                    padding: 10px 15px;
                    border-radius: 5px;
                    cursor: pointer;
                    font-size: 14px;
                    width: 85px;
                }




                .hidden-file-input {
                    display: none;
                    /* input 숨기기 */
                }

                .custom-file-label {
                    display: inline-block;
                    padding: 10px 15px;
                    background-color: #f0f0f0;
                    cursor: pointer;
                    background: #ea916e;
                    color: white;
                    border-radius: 5px;
                    font-size: 14px;

                }

                .custom-file-label:hover {
                    opacity: 0.7;
                }

                /* 자유게시판 게시글 작성 스타일 끝 */

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

                #footer_1_1>img {
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
            <div class="wrap">
                <div id="header">
                    <!-- 기존 헤더 내용 -->
                    <div id="header_1">
                        <div id="header_1_1_1">
                            <a href="<%=contextPath%>"><img src="<%=contextPath%>/resources/assets/This_서고 로고.png"
                                    alt="" style="height: 100%; width: 100%;"></a>
                        </div>
                        <div id="navigator">
                            <a a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a> <a href="">온라인투표</a> <a
                                href="<%= contextPath %>/views/board/boardList.jsp">자유게시판</a>
                            <a href="">마이페이지</a> <a
                                href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
                        </div>
                        <div id="header_login_btn" style="height: 100%; width: 9%;">
                            <button class="btn" id="login"
                                onclick="location.href='<%=contextPath%>/views/member/loginform.jsp'">Log
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

                <!-- 자유게시판 게시글 작성 -->
                <div class="post-container">
                    <h2>글쓰기</h2>
                    <hr>
                    <form action="#" method="POST" enctype="multipart/form-data">
                        <label for="title" id="title">제목</label>
                        <input type="text" id="title" name="title" style="width: 980px; margin-bottom: 10px;" required>

                        <label for="content" id="content">내용</label>
                        <textarea id="content" name="content" style="width: 980px; height: 300px; margin-bottom: 10px; "
                            required></textarea>

                        <div class="file-upload-container">
                            <label for="fileUpload" class="custom-file-label">첨부파일</label>
                            <input type="file" id="fileUpload" class="hidden-file-input">


                            <div class="button-group">
                                <button onclick="goBack()">뒤로가기</button>
                                <button onclick="submitPost()">작성하기</button>
                            </div>
                        </div>
                        <p style="margin-top: 5px;" id="fileName">선택된 파일 없음</p>
                    </form>
                </div>

                <!-- 자유게시판 게시글 작성 끝 -->

                <div id="footer" style="background-color: #fdf5f1;">
                    <!-- 기존 푸터 내용 -->
                    <div id="footer_1">
                        <div id="footer_1_1">
                            <img src="<%=contextPath%>/resources/assets/This_서고 로고.png" alt="">
                        </div>
                        <div id="navigator" class="navigator">
                            <a a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a> <a href="">온라인투표</a> <a
                                href="">자유게시판</a>
                            <a href="">마이페이지</a> <a
                                href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
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

                function goBack() {
                    location.href = "<%= contextPath %>/views/board/boardList.jsp"
                }

                document.getElementById("fileUpload").addEventListener("change", function () {
                    let fileName = this.files.length > 0 ? this.files[0].name : "선택된 파일 없음";
                    document.getElementById("fileName").textContent = fileName;
                });
            </script>
            <!-- -------------------------------------------------------------------- -->
        </body>

        </html>