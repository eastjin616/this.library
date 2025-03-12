<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
.wrap {
	width: 1000px;
	height: 1000px;
	margin: auto;
}

a {
	text-decoration-line: none;
	color: black;
}

header {
	width: 100%;
	margin-top: 10px;
	border: 1px solid;
}

.header1 {
	width: 100%;
	height: 100px;
	display: flex;
	box-sizing: border-box;
}

#keyWordLogo {
	height: 100%;
	width: 20%;
}

#keyWordLogo img {
	width: 100%;
	height: 100%;
}

#headSearchBar {
	width: 60%;
	height: 100%;
}

#search-container {
	display: flex;
	align-items: center;
	border: 1px solid #ccc;
	border-radius: 30px;
	overflow: hidden;
	width: 500px;
	height: 50px;
	/* 높이를 #header_1_3_2 크기에 맞춤 */
	background-color: white;
	margin: auto;
	margin-top: 5%;
}

#search-filter {
	height: 100%;
	width: 20%;
	border: none;
	background-color: white;
	color: black;
	font-size: 14px;
	padding: 5px;
	cursor: pointer;
}

#search-bar {
	flex: 1;
	height: 100%;
	border: none;
	padding: 5px;
	font-size: 16px;
	outline: none;
}

#search-btn {
	height: 100%;
	width: 15%;
	border: none;
	background-color: burlywood;
	color: black;
	font-size: 14px;
	cursor: pointer;
}

#search-btn:hover {
	opacity: 0.7;
}

/* --------------------------------content---- */
.header2 {
	width: 100%;
	height: 150px;
	box-sizing: border-box;
}

#greenBox {
	width: 80%;
	height: 80%;
	margin: auto;
	margin-top: 1.5%;
	border-radius: 5px;
	background-color: rgb(197, 241, 227);
	display: flex;
}

#headPicture {
	width: 20%;
	height: 100%;
}

#headText {
	width: 80%;
	height: 100%;
}

#headPicture img {
	margin: 10px 0 0 30px;
}

/* ======================================================== */
.bookList {
	width: 100%;
	border: 1px solid;
	box-sizing: border-box;
	display: flex;
}

.bookList * {
	border: 1px solid;
}

#bookImg>img {
	width: 200px;
	box-sizing: border-box;
}

#bookInfo {
	width: 60%;
	border: 1px solid;
	padding-left: 30px;
}

#bookInfoTitle, #bookInfoAuthor, #bookInfoGenre, #bookInfoPublisher,
	#bookInfoLikeCount, #bookInfoVoteResult {
	width: 100%;
	height: 15%;
	display: flex;
	align-items: center;
	border: 1px solid #ccc;
}

#chooseThisBook {
	width: 16.5%;
	display: flex;
}

#chooseThisBook>button {
	width: 100%;
}

#chooseThisBook>button:hover {
	cursor: pointer;
}
</style>
</head>

<body>
<<<<<<< HEAD
	<div class="wrap">
		<header>
			<div class="header1">
				<div id="keyWordLogo">
					<img src="../assets/This_서고 로고.png" alt="">
				</div>
				<div id="headSearchBar">
					<div id="search-container">
						<select id="search-filter">
							<option value="all">통합검색</option>
							<option value="genre">장르별검색</option>
							<option value="national">국가별검색</option>
							<option value="languague">언어별선택</option>
							<option value="author">작가별선택</option>
						</select> <input type="text" id="search-bar"
							placeholder="검색어를 입력하세요">
						<button id="search-btn">검색</button>
					</div>
				</div>
			</div>
=======
  <div class="wrap">
    <header>
      <div class="header1">
        <div id="keyWordLogo"><img src="../serviceCenter/assets/This_서고 로고.png" alt=""></div>
        <div id="headSearchBar">
          <div id="search-container">
            <select id="search-filter">
              <option value="all">통합검색</option>
              <option value="genre">장르별검색</option>
              <option value="national">국가별검색</option>
              <option value="languague">언어별선택</option>
              <option value="author">작가별선택</option>
            </select>
            <input type="text" id="search-bar" placeholder="검색어를 입력하세요">
            <button id="search-btn">검색</button>
          </div>
        </div>
      </div>
>>>>>>> fnaPage




<<<<<<< HEAD
			<div class="header2">
				<div id="greenBox">
					<div id="headPicture">
						<img src="../assets/icons8-book-100.png" alt="">
					</div>
					<div id="headText">
						<pre>
=======
      <div class="header2">
        <div id="greenBox">
          <div id="headPicture"><img src="../serviceCenter/assets/icons8-book-100.png" alt=""></div>
          <div id="headText">
            <pre>
>>>>>>> fnaPage
              <b>[태그]</b> 책에 연관되어 있는 태크 단어들을 검색하여 원하는 책을 검색 할 수 있다. <br>
              <b>[장르]</b> 책의 장르를 검색하여 손 쉽게 검색해 보세요!<br>
              <b>[온라인 투표]</b> 책 사진 우측에 온라인 투표 결과가 포함되어 보여집니다. 
            </pre>
					</div>
				</div>
			</div>
		</header>
		<br> <b>검색결과 : <input id="searchCount" type="number"></b>
		<br>
		<br>
		<content>

<<<<<<< HEAD
		<div class="bookList">
			<div id="bookImg">
				<img src="../assets/book3.jpg" alt="">
			</div>
			<div id="bookInfo">
				<div id="bookInfoTitle">222</div>
				<div id="bookInfoAuthor"></div>
				<div id="bookInfoGenre"></div>
				<div id="bookInfoPublisher"></div>
				<div id="bookInfoLikeCount"></div>
				<div id="bookInfoVoteResult"></div>
			</div>
			<div id="chooseThisBook">
				<button>등록띠</button>
			</div>
=======
      <div class="bookList">
        <div id="bookImg"><img src="../serviceCenter/assets/book1.jpg" alt=""></div>
        <div id="bookInfo">
          <div id="bookInfoTitle">222</div>
          <div id="bookInfoAuthor"></div>
          <div id="bookInfoGenre"></div>
          <div id="bookInfoPublisher"></div>
          <div id="bookInfoLikeCount"></div>
          <div id="bookInfoVoteResult"></div>
        </div>
        <div id="chooseThisBook"><button>등록띠</button></div>
        
      </div>
      <br>
      <div class="bookList">
        <div id="bookImg"><img src="../serviceCenter/assets/book1.jpg" alt=""></div>
        <div id="bookInfo">
          <div id="bookInfoTitle">222</div>
          <div id="bookInfoAuthor"></div>
          <div id="bookInfoGenre"></div>
          <div id="bookInfoPublisher"></div>
          <div id="bookInfoLikeCount"></div>
          <div id="bookInfoVoteResult"></div>
        </div>
        <div id="chooseThisBook"><button>등록띠</button></div>
        <br><br>
      </div>
      <br>
      <div class="bookList">
        <div id="bookImg"><img src="../serviceCenter/assets/book1.jpg" alt=""></div>
        <div id="bookInfo">
          <div id="bookInfoTitle">222</div>
          <div id="bookInfoAuthor"></div>
          <div id="bookInfoGenre"></div>
          <div id="bookInfoPublisher"></div>
          <div id="bookInfoLikeCount"></div>
          <div id="bookInfoVoteResult"></div>
        </div>
        <div id="chooseThisBook"><button>등록띠</button></div>
        <br><br>
      </div>
      <br>
      <div class="bookList">
        <div id="bookImg"><img src="../serviceCenter/assets/book1.jpg" alt=""></div>
        <div id="bookInfo">
          <div id="bookInfoTitle">222</div>
          <div id="bookInfoAuthor"></div>
          <div id="bookInfoGenre"></div>
          <div id="bookInfoPublisher"></div>
          <div id="bookInfoLikeCount"></div>
          <div id="bookInfoVoteResult"></div>
        </div>
        <div id="chooseThisBook"><button>등록띠</button></div>
        <br><br>
      </div>
      <br>
      <div class="bookList">
        <div id="bookImg"><img src="../serviceCenter/assets/book1.jpg" alt=""></div>
        <div id="bookInfo">
          <div id="bookInfoTitle">222</div>
          <div id="bookInfoAuthor"></div>
          <div id="bookInfoGenre"></div>
          <div id="bookInfoPublisher"></div>
          <div id="bookInfoLikeCount"></div>
          <div id="bookInfoVoteResult"></div>
        </div>
        <div id="chooseThisBook"><button>등록띠</button></div>
        <br><br>
      </div>
      
      
>>>>>>> fnaPage

		</div>
		<br>
		<div class="bookList">
			<div id="bookImg">
				<img src="../assets/book2.jpg" alt="">
			</div>
			<div id="bookInfo">
				<div id="bookInfoTitle">222</div>
				<div id="bookInfoAuthor"></div>
				<div id="bookInfoGenre"></div>
				<div id="bookInfoPublisher"></div>
				<div id="bookInfoLikeCount"></div>
				<div id="bookInfoVoteResult"></div>
			</div>
			<div id="chooseThisBook">
				<button>등록띠</button>
			</div>
			<br>
			<br>
		</div>
		<br>
		<div class="bookList">
			<div id="bookImg">
				<img src="../assets/book4.jpg" alt="">
			</div>
			<div id="bookInfo">
				<div id="bookInfoTitle">222</div>
				<div id="bookInfoAuthor"></div>
				<div id="bookInfoGenre"></div>
				<div id="bookInfoPublisher"></div>
				<div id="bookInfoLikeCount"></div>
				<div id="bookInfoVoteResult"></div>
			</div>
			<div id="chooseThisBook">
				<button>등록띠</button>
			</div>
			<br>
			<br>
		</div>
		<br>
		<div class="bookList">
			<div id="bookImg">
				<img src="../assets/book5.jpg" alt="">
			</div>
			<div id="bookInfo">
				<div id="bookInfoTitle">222</div>
				<div id="bookInfoAuthor"></div>
				<div id="bookInfoGenre"></div>
				<div id="bookInfoPublisher"></div>
				<div id="bookInfoLikeCount"></div>
				<div id="bookInfoVoteResult"></div>
			</div>
			<div id="chooseThisBook">
				<button>등록띠</button>
			</div>
			<br>
			<br>
		</div>
		<br>
		<div class="bookList">
			<div id="bookImg">
				<img src="../assets/book6.jpg" alt="">
			</div>
			<div id="bookInfo">
				<div id="bookInfoTitle">222</div>
				<div id="bookInfoAuthor"></div>
				<div id="bookInfoGenre"></div>
				<div id="bookInfoPublisher"></div>
				<div id="bookInfoLikeCount"></div>
				<div id="bookInfoVoteResult"></div>
			</div>
			<div id="chooseThisBook">
				<button>등록띠</button>
			</div>
			<br>
			<br>
		</div>



		</content>
	</div>



</body>

</html>