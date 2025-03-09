<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Kakao JavaScript SDK</title>
  <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.7.4/kakao.min.js" 
  integrity="sha384-DKYJZ8NLiK8MN4/C5P2dtSmLQ4KwPaoqAfyA/DfmEc1VDxu4yyC7wy6K1Hs90nka" 
  crossorigin="anonymous">
  </script>
</head>
<body>
  <a id="kakao-login-btn" href="javascript:loginWithKakao()">
    <img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="222" alt="카카오 로그인 버튼" />
  </a>
  <p id="token-result"></p>
  <button class="api-btn" onclick="requestUserInfo()" style="visibility:hidden">사용자 정보 가져오기</button>

  <script>
    Kakao.init('93a0920238e62f6613575ad15d4e692c');

    function setCookie(name, value, days) {
      var expires = "";
      if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        expires = "; expires=" + date.toUTCString();
      }
      document.cookie = name + "=" + (value || "") + expires + "; path=/";
    }

    function loginWithKakao() {
      Kakao.Auth.authorize({
        redirectUri: 'http://localhost:8777/this/views/common/kyh/kakaoLogin2.jsp',
        state: 'userme',
      });
    }

    function requestUserInfo() {
      Kakao.API.request({
        url: '/v2/user/me',
      })
      .then(function(res) {
        alert(JSON.stringify(res));
      })
      .catch(function(err) {
        alert('failed to request user information: ' + JSON.stringify(err));
      });
    }

    function getQueryParam(param) {
      const urlParams = new URLSearchParams(window.location.search);
      return urlParams.get(param);
    }

    window.onload = function() {
      const accessToken = getQueryParam('access_token');
      if (accessToken) {
        setCookie('authorize-access-token', accessToken, 1);
        displayToken();
      } else {
        displayToken();
      }
    };

    function displayToken() {
      var token = getCookie('authorize-access-token');
      if (token) {
        document.getElementById('token-result').innerText = 'login success, token: ' + token;
      } else {
        console.log("토큰없음");
      }
    }

    function getCookie(name) {
      var parts = document.cookie.split(name + '=');
      if (parts.length === 2) { return parts[1].split(';')[0]; }
    }
  </script>
</body>
</html>
