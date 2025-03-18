<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>로그인 페이지</title>

        <!-- Google Identity Services 라이브러리 -->
        <script src="https://accounts.google.com/gsi/client" async defer></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <style>
            body {
                font-family: Arial, sans-serif;
                text-align: center;
                margin: 50px;
            }

            .login-container {
                max-width: 400px;
                margin: auto;
                padding: 20px;
                border: 1px solid #ddd;
                border-radius: 10px;
                box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
            }
        </style>
    </head>

    <body>

        <div class="login-container">
            <h2>로그인</h2>

            <!-- 기존 ID/PW 로그인 -->
            <form action="loginProcess.jsp" method="post">
                <label for="userId">아이디:</label>
                <input type="text" id="userId" name="userId" required><br><br>

                <label for="userPw">비밀번호:</label>
                <input type="password" id="userPw" name="userPw" required><br><br>

                <button type="submit">로그인</button>
            </form>

            <hr>

            <!-- 구글 로그인 버튼 -->
            <div id="g_id_onload"
                data-client_id="92235338763-ljnuftbgbj6nn3ol95bno95j36v9hsci.apps.googleusercontent.com"
                data-callback="handleCredentialResponse" data-auto_prompt="false">
            </div>
            <div class="g_id_signin" data-type="standard"></div>
        </div>

        <script>
            function handleCredentialResponse(response) {
                console.log("JWT ID Token:", response.credential);

                // 구글에서 받은 ID 토큰을 서버로 전송
                $.ajax({
                    url: "GoogleLogin",
                    type: "POST",
                    data: { id_token: response.credential },
                    success: function (data) {
                        console.log(data);
                        console.log("서버 응답:", data);
                        if (data.status === "success") {
                            alert("로그인 성공! " + data.name);
                            window.location.href = "welcome.jsp";
                        } else {
                            alert("로그인 실패: " + data.message);
                        }
                    },
                    error: function (err) {
                        console.error("로그인 실패:", err);
                        alert("로그인 중 오류 발생");
                    }
                });
            }
        </script>

    </body>

    </html>