<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>관리자 페이지</title>

		<style>
			.wrap {
				width: 1800px;
				margin: auto;
				height: auto;
				overflow: hidden;
				border: 1px solid;
			}

			.content1 {
				height: 100px;
				background-color: #d88634;
				position: relative;
			}

			#content1_text {
				position: absolute;
				right: 50px;
				bottom: 10px;
				color: white;
				font-size: 20px;

			}

			.content2 {
				display: flex;
				height: 1000px;
			}

			#main-content1 {
				width: 25%;
				border: 1px solid;
				background-color: rgb(248, 215, 220);
			}

			#main-content2 {
				width: 75%;
				border: 1px solid;
			}

			#profile-photo {
				height: 40%;
				border: 1px solid;
			}

			#photo {
				height: 90%;
				border-radius: 50%;
			}

			#userName {
				text-align: center;
				height: 10%;
				box-sizing: border-box;
			}

			#tab1,
			#tab2 {
				display: flex;
				width: 100%;
				height: 12%;
				box-sizing: border-box;
				cursor: pointer;
			}

			#tab1:hover,
			#tab2:hover {
				background-color: orange;
			}

			#tab1:active {
				background-color: orange;
			}

			#tab1_1 {
				width: 10px;
			}

			#tab1_2 {
				width: 20px;
				background-color: #d88634;
			}

			#tab1_3 {
				width: 100px;
				margin: auto;
			}

			#tab1_4 {
				width: 300px;
				margin: auto;
			}

			#tab1_3>img {
				width: 90px;
			}




			#tab2_1 {
				width: 100px;
			}

			#photo {
				background-image: url("../assets/chill.png");
				background-size: cover;
				background-position: center;
				background-repeat: no-repeat;
			}



			.userInfo {
				width: 1200px;
				;
				margin: auto;
				height: 800px;
				border-radius: 10%;
				margin-top: 100px;
			}

			.container {
				width: 80%;
				margin: 20px auto;
				display: flex;
			}

			.table {
				width: 100%;
				border-collapse: collapse;
				margin-top: 10px;
			}

			.table th,
			.table td {
				border: 1px solid #ddd;
				padding: 10px;
				text-align: left;
			}

			.table th {
				background-color: #f4f4f4;
			}

			.user-img {
				width: 30px;
				height: 30px;
				border-radius: 50%;
				margin-right: 10px;
			}

			.btn {
				background-color: #f4a261;
				color: white;
				padding: 8px 12px;
				border: none;
				cursor: pointer;
				border-radius: 5px;
				justify-items: right;
			}

			.pagination {
				margin-top: 10px;
				text-align: center;
			}

			.pagination button {
				padding: 5px 10px;
				margin: 3px;
				border: 1px solid #ddd;
				background-color: white;
				cursor: pointer;
			}

			.pagination .active {
				background-color: #6c5ce7;
				color: white;
			}

			.card {
				width: 30%;
				aspect-ratio: 2 / 3;
				background: #c0ddfa;
				border-radius: 20px;
				display: flex;
				justify-content: center;
				align-items: center;
				position: relative;
				overflow: hidden;
				cursor: pointer;
				margin: auto;
				margin-top: 200px;
				transition: transform 0.75s;
				position: relative;
			}

			.upload-icon {
				font-size: 24px;
				color: #999;
			}

			.card:hover {
				transform: scale(1.1);
				border-radius: 50%;
			}

			.card img {
				width: 100%;
				height: 100%;
				object-fit: cover;
				position: absolute;
				margin-right: 10px;
			}

			.upload-icon {
				position: absolute;
				font-size: 24px;
				color: #6c757d;
				z-index: 1;
			}

			input[type="file"] {
				display: none;
			}
		</style>
	</head>
	<meta charset="UTF-8">


	<body>
		<div class="wrap">
			<div class="content1">
				<div id="content1_text">관리자 페이지</div>
			</div>
			<div class="content2">
				<div id="main-content1">
					<div id="profile-photo">
						<div id="photo"></div>
						<div id="userName">여기는 관리자 아이디가 올 자리입니다. </div>
					</div>
					<div id="tab1">
						<div id="tab1_1"></div>
						<div id="tab1_2"></div>
						<div id="tab1_3"><img src="../assets/book.png" alt=""></div>
						<div id="tab1_4">모든 회원 정보</div>
					</div>
					<br>
					<div id="tab2">
						<div id="tab1_1"></div>
						<div id="tab1_2"></div>
						<div id="tab1_3"><img src="../assets/facebook.png" alt=""></div>
						<div id="tab1_4"> 관리자 PICK</div>
					</div>

				</div>
				<form action="<%=contextPath%>/pickinsert.pi" id="enroll-form" method="post" enctype="multipart/form-data">
                    

							
							<tr>
									<th>상세 이미지</th>
									<td><img id="contentImg1" width="150" height="120" onclick="chooseFile(1)"></td>
									<td><img id="contentImg2" width="150" height="120" onclick="chooseFile(2)"></td>
									<td><img id="contentImg3" width="150" height="120" onclick="chooseFile(3)"></td>
							</tr>
					</table>

					<div id="file-area" style="display:none;">
							<input type="file" name="file1" id="file1" onchange="loadImg(this, 1)">
							<input type="file" name="file2" id="file2" onchange="loadImg(this, 2)">
							<input type="file" name="file3" id="file3" onchange="loadImg(this, 3)">

					</div>
					<script>
					
						function chooseFile(num){
							$("#file"+ num ).click();
						}
						
					
					
							function loadImg(inputFile, num) {
									//input 파일에는 현재 변화가 일어난 input tyoe-"file" 요소객체
									//num : 몇번째 input 요소인지 확인 후 
									// 해당 그 영역에 미리보기 하기 위해 전달받은 숫자.


									// v파일을 어떻게 찾아야 하나.
									//선택된 파일이 있다면 inputFile.files[] 내부 속상에 선택됨 파일이 담겨있다. 
									// inputFile.files.legth 또한 1일 될 것이다. 
									if (inputFile.files.length == 1) {
											// 파일이 선택된 경우, 읽어들여서 미리보기 할 수 있게 해야한다.
											// v파일을 읽어들일수 있는 객체를 생성해야한다.
											// FileReader 라는게 있는데, 이 객체를 생성해보자. 
											const reader = new FileReader();

											// 파일을 읽어들이는 메소드가 필요해졌다. 이제.
											reader.readAsDataURL(inputFile.files[0]);

											// 쟤는 해당 파일을 읽어들이는 순간 해당 파일만의 고유 url을 부여해준다. 

											// 고유 url을 부여 했다는 말은 파일 읽어들이기가 완료가 되었다는 말이다. 실행할 함수를 정의해보자. 

											reader.onload = function (e) {
													// e.target.result 안에보면, 내가 읽어들인 파일의 url이 이 안에 들어가있다. 
													switch (num) {
															case 1: $("#contentImg1").attr("src", e.target.result); break;
															case 2: $("#contentImg2").attr("src", e.target.result); break;
															case 3: $("#contentImg3").attr("src", e.target.result); break;
													}

											}

									} else {
											// 선택된 파일이 취소된 경우 => 미리보기 된 것도 사라지게 해야한다.

											switch (num) {
													case 1: $("#contentImg1").attr("src", null); break;
													case 2: $("#contentImg2").attr("src", null); break;
													case 3: $("#contentImg3").attr("src", null); break;
											}
									}
							}

					</script>


					<br>
					<div align="center">
							<button type="submit">등록하기</button>
					</div>
			</form>


	</body>

	</html>