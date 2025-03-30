<%@page import="com.kh.board.model.vo.Attachment"%>
<%@page import="com.kh.board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% 
//String alertMsg=(String)session.getAttribute("alertMsg"); // 글번호, 닉네임, 제목, 내용, 조회수, 작성일 Board
Board b=(Board)request.getAttribute("b"); // 첨부파일이 없다면 null // 첨부파일이 있다면 파일번호, 원본명, 수정명, 저장경로 Attachment
Attachment at=(Attachment)request.getAttribute("at"); 
%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document1</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" 
integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" 
crossorigin="anonymous" referrerpolicy="no-referrer" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- ------------------------------------------------------------------------------------------ -->
<style>
div {
	box-sizing: border-box;
}

/*-------------------------------------------------------------  */
#content {
	margin-top: 200px
}

/* ---------------------------------------------- */
/* ---content 나누기--- */
#mainContent {
	display: flex;
}

#slideGem {
	width: 20%;
	margin-left: 30px;
}

#sidebar {
	height: auto;
	float: left;
}

#bookContent {
	height: auto;
	justify-content: center;
	align-items: center;
	width: 80%;
}

#bookInfo {
	display: flex;
}

/* ---------이제 디테일--------- */
#bookImg {
	width: 50%;
	display: flex;
	justify-content: center;
}

#bookImg>img {
	margin: auto;
	display: block;
	height: 100%;
}

#bookIntroduce {
	width: 70%;
	margin: auto;
}

#bookIntroduce>img {
	width: 50%;
}

#booktitle {
	margin-bottom: 130px;
}

#bookSimple {
	margin-left: 15%;
	height: 400px;
}

#bookSimple > div{
	font-size: large;
}

#bookPhoto>img {
	margin-left: 15%;
	height: 400px;
}

#libraryDetailInfo {
	background-color: rgb(235, 235, 235);
	margin: 2%;
	border-radius: 2%;
	width: 70%;
	padding: 2%;
}

#translatorDetail {
	background-color: rgb(235, 235, 235);
	margin: 2%;
	border-radius: 2%;
	width: 70%;
	padding: 2%;
}

/* ========================== */
#authorTitle {
	margin-top: 30px;
	margin-left: 20px;
}

#libraryInfo {
	height: auto;
}


#librarybox {
	margin-top: 30px;
	margin-left: 15px;
}



#authorPhoto {
	display: flex;
	margin-left: 45px;
}

.authorBookImg1,.authorBookImg2,.authorBookImg3{
	margin-left: 15px;
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
	gap: 5px;
	/* 사진 사이의 간격 설정 */
	height: 300px;
	align-items: stretch;
}

.authorBookImg1,.authorBookImg2,.authorBookImg3li:hover {
	color: white;
	font-weight: bold;
	transform: scale(1.05);
	cursor: pointer;
}


.authorBookImg1 img,.authorBookImg2 img,.authorBookImg3 img{
	width: 200px;
	height: 250px;
}

pre {
	margin-left: 30px;
	margin-top: 30px;
}

/* ========================== */
#translatorTitle {
	margin-top: 30px;
	margin-left: 20px;
}

#translatorInfo {
	height: auto;
}

#translatorName {
	margin-top: 30px;
	margin-left: 15px;
}

#translatorJob {
	margin-left: 15px;
}

#neyong {
	margin-left: 15px;
}

#translatorPhoto {
	display: flex;
	margin-left: 15px;
	margin-bottom: 150px;
}

/*--------사이드바---------------------------------------------  */
#sidebar {
	width: 10%;
	background-color: #fff7eb;
	border: 2px solid #a56b2a;
	border-radius: 15px;
	padding: 20px;
	box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.1);
	font-family: 'Gyeonggi_Batang_Regular';
	margin: auto;
	position: fixed;
}

#sidebar>h3 {
	font-size: 18px;
	color: #5a3e1b;
	margin-bottom: 15px;
	padding-bottom: 8px;
	border-bottom: 2px solid #d9a066;
}



/* ----------------------- */
/* ---------------------- */
.book-list {
	list-style: none;
	padding: 0;
}

.book-list li {
	font-size: 14px;
	color: #333;
	padding: 10px 15px;
	margin: 5px 0;
	border-radius: 8px;
	transition: all 0.3s ease-in-out;
}

.book-list li:hover {
	background-color: #d9a066;
	color: white;
	font-weight: bold;
	transform: scale(1.05);
	cursor: pointer;
}

/* ==============preview======================================= */
#preview {
	margin-left: 10%;
}

/* =======리뷰================================================ */
.post-container {
	width: 70%;
	margin: 30px auto;
	padding: 20px;
	background: white;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.post-header {
	border-bottom: 1px solid #ddd;
	padding-bottom: 10px;
	margin-bottom: 10px;
}

.post-header h2 {
	display: inline-block;
	margin: 0;
}

.label {
	background: #ff7f50;
	color: white;
	font-size: 12px;
	padding: 3px 6px;
	border-radius: 4px;
	margin-left: 5px;
}

.label:hover {
	opacity: 0.7;
}

.post-meta {
	font-size: 14px;
	color: #777;
}

.post-content {
	font-size: 16px;
	line-height: 1.6;
	margin-bottom: 20px;
}

.comment-section {
	border-top: 2px solid #ddd;
	padding-top: 20px;
}

/* 댓글 개수 스타일 */
.comment-count {
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 10px;
}

/* 댓글 입력 영역 */
.comment-form {
	background: #f9f9f9;
	padding: 15px;
	border-radius: 8px;
	border: 1px solid #ddd;
	display: flex;
	flex-direction: column;
	gap: 10px;
	position: relative;
}

/* 댓글 작성하기 제목 + 버튼 */
.comment-form-header {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.comment-form-header h4 {
	margin: 0;
	font-size: 16px;
	font-weight: bold;
}

/* 텍스트 입력 창 */
.comment-form textarea {
	width: 100%;
	height: 80px;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 5px;
	resize: none;
	font-size: 14px;
}

/* 글자 수 카운트 (0 / 300 자) */
.char-count {
	font-size: 12px;
	color: #777;
	text-align: right;
	padding-right: 5px;
}

.submit-btn {
	padding: 6px 12px;
	background-color: #ff7f50;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 14px;
}

.submit-btn:hover {
	opacity: 0.7;
}

.comment {
	border-bottom: 1px solid #eee;
	padding: 10px 0;
}

.comment p {
	margin: 5px 0;
}

.comment-meta {
	font-size: 15px;
	padding-bottom: 5px;
}

.comment-text {
	line-height: 1.2;
}

.set-comment button, .set-header button {
	border: 0;
	background-color: transparent;
}

.set-comment button:hover, .set-header button:hover {
	cursor: pointer;
	opacity: 0.7;
}

.star{
   border: none;
   background-color: #f9f9f9;
}
.star i {
    color: white; /* 내부 색상을 흰색으로 설정 */
    -webkit-text-stroke: 1px black; /* 테두리를 검은색으로 설정 */
}
.star:hover i,
.star.active i {
    color: yellow; /* 별 색 변경 */
}

/* -------------------- 모달 ------------------------*/
h2{
 		 text-align: center;
}
.modal_btn {
    display: block;
    margin: 40px auto;
    padding: 10px 20px;
    background-color: royalblue;
    border: none;
    border-radius: 5px;
    color: #fff;
    cursor: pointer;
    transition: box-shadow 0.2s;
}
.modal_btn:hover {
    box-shadow: 3px 4px 11px 0px #00000040;
}

/*모달 팝업 영역 스타일링*/
.modal {
/*팝업 배경*/
	display: none; /*평소에는 보이지 않도록*/
    position: absolute;
    top:0;
    left: 0;
    width: 100%;
    height: 100vh;
    overflow: hidden;
    background: rgba(0,0,0,0.5);
}
.modal .modal_popup {
/*팝업*/
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    padding: 20px;
    background: #ffffff;
    border-radius: 20px;
}
.modal .modal_popup .close_btn {
    padding: 10px 20px;
    background-color: rgb(116, 0, 0);
    border: none;
    border-radius: 5px;
    color: #fff;
    cursor: pointer;
    transition: box-shadow 0.2s;
}
.modal.on {
			  display: block;
}		









</style>
</head>
<!-- ------------------------------------------------------------------ -->

<body>

	
	<%@ include file="../common/menubar.jsp"%>
	<!-- -------------------------------------------------------------------- -->
	<% String loginNickname = (loginMember != null) ? loginMember.getNickname() : null; %>
	<% Integer loginMemNo = (loginMember != null) ? loginMember.getMemNo() : null; %>



	<div id="content">

		<div id="mainContent">
			<div id="slideGem">

				<div id="sidebar">
					<h3>개인서재 제목</h3>
					<ul class="book-list">
						<li>선재 업고 튀어</li>
						<li>호석군의 뉴질랜드</li>
						<li>동진이의 영국여행</li>
					</ul>
				</div>
			</div>

			<!-- ------------------------------------------------ -->
			<div id="bookContent">
				<div id="booktitle" style="text-align: center; font-size: larger;">
					<h1>책 제목이 올겁니다.</h1>
				</div>
				<div id="bookInfo">

					<div id="bookImg">
						<img src="" alt="" >
					</div>
					<div id="bookIntroduce">

						<div id="bookSimple">

							<div id="bookname"></div>
								<br>
							<div id="authors"></div>
							<br>
							<div id="translator"></div>
								<br>
							<div id="date"></div>
								<br>
							<div id="Year"></div>
								<br>
							<div id="description"></div>
							<br>
						</div>
						<hr style="width: 80%;">
						<div id="neyong" style="margin-left: 55px; font-size: large;">함께 대출된 도서</div>
						<br>
							<div id="authorPhoto">
								<br>
								<div class="authorBookImg1">
									<img src="" alt="">
									<input type="hidden">
								</div>
								<div class="authorBookImg2">
									<img src="" alt="">
									<input type="hidden">
								</div>
								<div class="authorBookImg3">
									<img src="" alt="">
									<input type="hidden">
								</div>
							</div>
					</div>
				</div>
				<br>
				<!-- ----------------------------------------------- -->
				<div id="bookExplan">
					<div id="authorTitle" style="text-align: left;">
						<h1>도서 소장 도서관 </h1>
						<select id="location" onchange="updateLibraryData()">
							<option value="11">서울</option>
							<option value="21">부산</option>
							<option value="22">대구</option>
							<option value="23">인천</option>
						</select>
					</div>

					<div id="libraryInfo">
						<div id="libraryDetailInfo">
					 <div id="librarybox">

					 </div>
						</div>
					</div>
					<!-- ============================================================== -->
					<div id="Table_of_Contents">
						<pre style="font-size: 40px; line-height: 60px;">
						</pre>
					</div>
				</div>
			</div>
		</div>
		<br>


		<div class="post-container" style="margin-top: 120px; margin-bottom: 120px;">

			<div class="comment-section">

				<h3 class="comment-count"></h3>
				<div style="border-bottom: 2px solid #eee"></div>
				
				
				<% if(loginMember == null){ %>
				
				<% }else{ %>
				<div class="comment-form">
				
					<div class="comment-form-header">
						<h4>댓글 작성하기
                     <div class="starFather" style=" width: 170px; border-radius: 20px; padding-left: 5px; padding-bottom: 3px; float: right;">
                        <button class="star"><i class="fa-solid fa-star"></i></button>
                        <button class="star"><i class="fa-solid fa-star"></i></button>
                        <button class="star"><i class="fa-solid fa-star"></i></button>
                        <button class="star"><i class="fa-solid fa-star"></i></button>
                        <button class="star"><i class="fa-solid fa-star"></i></button>
                     </div>
                  </h4>

						<button class="submit-btn" onclick="insertReply()">작성하기</button>
					</div>
					<textarea id="replyContent" placeholder="댓글을 입력하세요..."
						maxlength="300" style="width: 100%; box-sizing: border-box;"></textarea>
					<div class="char-count">0 / 300 자</div>
				</div>
				<% } %>
				
				<div class="comment-list">
					<!-- 여기에 댓글 목록이 동적으로 삽입됨 -->
				</div>
			</div>
			
								<!--모달 팝업-->
					<div class="modal">
					    <div class="modal_popup">
					        <h3>댓글 수정하기</h3>
					        <form action="<%=contextPath%>/rUpdate.bo" method="GET">
					        <textarea id="update_content" style="width:1000px; height: 100px;"></textarea>
					        <button type="button" class="close_btn">닫기</button>
					        <button type="submit" class="close_btn">수정하기</button>
					        <div id="hidden_area"></div>
					        </form>
					    </div>
					</div>
					<!--end 모달 팝업-->
					
		</div>

<script>
//====================================================================================================================================
const stars = document.querySelectorAll('.star');

stars.forEach((star, index) => {
    star.addEventListener('click', () => {
        stars.forEach((s, i) => {
            s.classList.toggle('active', i <= index);
        });
    });
});
//================================================================    
//================책 상세 정보======================================  
	
$(document).ready(function () {
    // URL에서 ISBN13 파라미터 추출
    //http://localhost:8777/this/views/book/bookDetail.jsp?isbn=9788954654753(메인페이지 북 처음꺼 눌렀을 때)
    var urlParams = new URLSearchParams(window.location.search);
    console.log(urlParams);
    var isbn = urlParams.get("isbn");//그냥 isbn이잖아 동진아 진짜 죽을래? 메인페이지에서 그냥 isbn으로 넘겼잖아 똑바로 생각 안할래?
    console.log(isbn);//여튼 잘 받아왔어
    
    // API URL
    const apiURL = "http://data4library.kr/api/srchDtlList?authKey=a111a214753e25635f54ae9ff411072670e715484fd9ff42afc5c103323cfc67&isbn13="
    	+isbn+"&format=json";

    // API 요청
    $.getJSON(apiURL, function (data) {
    	console.log("API 응답 데이터:", data);

      // 응답 데이터 확인
      if (!data.response || !data.response.detail || data.response.detail.length === 0) {//왜 여기서 에러가 뜨냐고
        console.error("❌ API에서 책 데이터가 없습니다!");
        return;
      }

      // 책 정보 추출
      let book = data.response.detail;
      console.log(book);
      
      if (!book) {
        console.error("❌ 책 데이터가 없습니다!");
        return;
      }
//---------------------------------------------------------------------

	
//book: {no: 1, bookname: '체리새우 :황영미 장편소설 ', authors: '지은이: 황영미', publisher: '문학동네', publication_date: '2019', …}
      //let detail = Array.isArray(book.detail) ? book.detail[0] : book.detail;
      let detail;
      
		if (Array.isArray(book)) {
		    detail = book[0]; // 배열이면 첫 번째 요소 사용
		} else {
		    detail = book; // 배열이 아니면 book 자체 사용
		}
		
		if (!detail) {
		    console.error("❌ book.detail이 없습니다. book 데이터:", book);
		    return;
		}
//------------------------------------------------------------
 
 
 			
      // 책 정보 추출
      let imageURL = detail.book.bookImageURL || "https://via.placeholder.com/150";
      let title = detail.book.bookname || "제목 없음";
      let authorFull = detail.book.authors || "작가 정보 없음";
      let publisher = detail.book.publisher || "출판사 정보 없음";
      let publicationYear = detail.book.publication_year || "출판일 정보 없음";
      let pubYear = detail.book.pubYear || "출판년도 정보 없음";
      let description = detail.book.description || "책 설명 정보 없음";

      // 작가와 번역가 분리
      let author = "작가 정보 없음";
      let translator = "번역가 정보 없음";

      if (authorFull.includes("지은이:")) {
        let parts = authorFull.split("지은이:");
        author = parts[1].split(";")[0].trim();
      }

      if (authorFull.includes("옮긴이:")) {
        let parts = authorFull.split("옮긴이:");
        translator = parts[1].split(";")[0].trim();
      }
//--------------------------------------------------------------------------
      // 책 이미지 업데이트
      let bookImageSelector = `#bookImg img`;
      if ($(bookImageSelector).length) {
          $(bookImageSelector).attr("src", imageURL);
      } else {
        console.error(`❌ 이미지 태그를 찾을 수 없습니다: ${bookImageSelector}`);
      }
// ========================================================================
	
	
      // 책 정보 업데이트
      let bookInform = `#bookSimple`;
      
      let bookInfotitle = `#booktitle`;
      
      let bookInfoSelector = `#libraryDetailInfo`;
      
      let intoBook = `#intoBook`
      
      if($(bookInfotitle).length){
    	  $(bookInfotitle).find('h1:eq(0)').text(title)
      }
 //================================================================                   
      if($(bookInform).length){
		  $(bookInform).find('div:eq(0)').text("제목 : "+title)
    	  $(bookInform).find('div:eq(1)').text("지은이 : "+author)
		  $(bookInform).find('div:eq(2)').text("번역가 : " +translator)
    	  $(bookInform).find('div:eq(3)').text("출판년도 : "+pubYear)
    	  $(bookInform).find('div:eq(4)').text("출판일자 : "+publicationYear)
    	  $(bookInform).find('div:eq(5)').text("책 속으로 : "+description)
      }
//================================================================  
	if($(intoBook).length){
		$(intoBook).find('p:eq(0)').text(description)
	}
	
    }).fail(function (jqXHR, textStatus, errorThrown) {
      console.error(`❌ API 요청 실패: ${textStatus}, 오류: ${errorThrown}`);
    });

// ===================================함께 대출된 책 img============================================
	
    const relatedBooksImgAPI = "http://data4library.kr/api/recommandList?authKey=a111a214753e25635f54ae9ff411072670e715484fd9ff42afc5c103323cfc67&isbn13="
    		+isbn
    		+ "&format=json";
    		
   	console.log(relatedBooksImgAPI);
	
	$.getJSON(relatedBooksImgAPI, function (data) {
        console.log("API 응답 데이터:", data);

        if (!data || !data.response || !data.response.docs || data.response.docs.length === 0) {
            console.error("❌ API에서 책 데이터가 없습니다!");
            return;
        }
        
        console.log("되냐고")
        
        let books = data.response.docs.slice(0, 3); // 첫 번째부터 세 번째 책까지 가져오기

        books.forEach((doc, index) => {
            let book = doc.book;
            let imageURL = book.bookImageURL || "https://via.placeholder.com/150";
			let isbnrelatedBooks = book.isbn13 || "isbn이 없습니다."
			console.log(isbnrelatedBooks)

            console.log(`책 ${index + 1} 이미지 URL:`, imageURL);

            let bookImage = `.authorBookImg\${index + 1} img`;  // 클래스명 동적으로 설정
						let bookInput = `.authorBookImg\${index + 1} input`;


            console.log(index);  // 출력해서 실제 CSS 선택자가 맞는지 확인
						

            // bookImage가 제대로 된 이미지 태그를 찾을 수 있는지 확인
            if ($(bookImage).length) {
                $(bookImage).attr("src", imageURL);  // 이미지 태그의 src를 업데이트
								$(bookInput).attr("value", isbnrelatedBooks); 

            } else {
                console.error(`❌ 이미지 태그를 찾을 수 없습니다: ${bookImage}`);  // 찾을 수 없을 경우 에러
            }
            
        });
				
        // ================상세페이지로==================
        $(".authorBookImg1,.authorBookImg2,.authorBookImg3").click(function () {
				let isbn = $(this).attr("isbn") || $(this).find("input").val();
				console.log("시발 : " + $(this))
	
			if (isbn && isbn !== "isbn 정보 없음") {
					location.href = "bookDetail.jsp?isbn=" + isbn;
			} else {
					alert("ISBN 정보가 없습니다.");
			}
	
			console.log("✅ 클릭된 ISBN:", isbn);
			});
  })

  
  // 여기다가 isbn 필요한거 가져와야항듯
  
console.log("오오오오 : "+ isbn)
  
	   $(function(){// 화면이 다 로드되고 나서 하는 행위
	      // 댓글 개수 조회
	      selectBoardAnswerCount();
	      
	      // 댓글조회
	      selectReplyList();
	      
	      // setInterval(주기적으로 실행할 함수, ms단위 시간);
	      //setInterval(selectReplyList, 1000); // 1초에 한번씩 새로고침
	      //setInterval(selectBoardAnswerCount, 1000); 
	      
	   })
	   
	   // ajax으로 댓글 작성용 함수
	   function insertReply(){
	      const content = replyContent.value.trim();
	       if (content.length === 0) {
	           alert('댓글을 입력하세요.');
	           return;
	       }else{
	                     $.ajax({
	                        url:"rinsert.bd",
	                        data:{
	                           content:$("#replyContent").val(),
	                           isbn:isbn,
	                        },
	                        type:"post",
	                        success:function(result){
	                           if(result > 0){ // 댓글 작성 성공 => 갱신된 댓글 리스트 조회
	                              selectReplyList();
	                              $("#replyContent").val("");
	                                 charCountDisplay.innerHTML = `0 / <span id="maxChars">\${maxChars}</span> 자`;
	                           }else{ // 댓글 작성 실패
	                              
	                           }
	                        },error:function(){
	                           console.log("댓글 작성용 ajax 통신 실패")
	                        }
	                     })
	       }
	   }
	   
	   // ajax으로 해당 게시글에 딸린 댓글 목록 조회용 함수
	   function selectReplyList(){
	      $.ajax({
	         url:"rlist.bd",
	         data:{isbn:isbn},
	         success:function(rlist){
	            let value = "";
	            let loginNickname = "<%= loginNickname %>"; // JSP에서 가져온 로그인 닉네임 (null 가능)
	            
	            
	            for(let i=0; i<rlist.length; i++){
	               let r = rlist[i].bAnswerNo; // 댓글 번호
	   let writer = rlist[i].nickName; // 댓글 작성자 닉네임
	   let content = rlist[i].answerContent; // 댓글 내용
	   let writerNo = rlist[i].memNo;
	   
	   /*
	   // 나 진짜 개천재인듯 ㅋ
	   if(isNaN(content)){
	      content = `'\${content}'` // content가 숫자일때만 값이 잘 넘겨져서 한글일때는 빽틱 이용해서 양쪽에 홑따음표 달아줌
	   }
	   */
	   
	               value += `<div class="comment"><p class="comment-meta"><strong>\${writer}</strong> | \${rlist[i].answerDate}`;
	               
	                      value += `<span></span> <span class="set-comment">`;
	                  
	                   if(loginNickname && loginNickname == writer){
	                         value += `<button class="update" style="margin-left:0px" onclick="updateReply(\${r})"> 수정 </button> | <button onclick="hideReply(\${r})"> 삭제 </button>`;
	                   }
	                   
	                   value += `</span></p><p class="comment-text">\${rlist[i].answerContent}</p></div>`;
	               
	                  $(".comment-list").html(value)
	            }
	         },error:function(){
	            console.log("댓글목록 조회용 ajax 통신 실패");
	         }
	      })
	   }
	   
	   
	   
	   
	   // 삭제 버튼 클릭 시 실행될 함수
	   function hideReply(rno) {
	       $.ajax({
	           url: "<%=contextPath%>/rDelete.bd", // 서블릿 URL
	           type: "POST", // UPDATE는 보통 POST 방식 사용
	           data: { 
	              rno: rno,
	              isbn:isbn %>
	           }, // 댓글 번호, 게시글 번호 전송
	           success:function(response){
	              alert("댓글이 성공적으로 삭제되었습니다.");
	           },error:function(){
	              alert("댓글 삭제에 실패했습니다.");
	           }
	       });
	   }
	   
	   function updateReply(rno){
	      
	      const modal = document.querySelector('.modal');
	      const modalOpen = document.querySelector('.modal_btn');
	      const modalClose = document.querySelector('.close_btn');
	      
	      //열기 버튼을 눌렀을 때 모달팝업이 열림
	      $(".comment-list").on('click', '.update',function(){
	            let rContent2 = $(this).closest('.comment').find('.comment-text').text();
	            let value = `<input type="hidden" name="rno" value="\${rno}"></input>`
	            $("#hidden_area").html(value);
	            value = `<input type="hidden" name="bno" value="<%=b.getBoardNo()%>"></input>`
	            $("#hidden_area").append(value);
	           //'on' class 추가
	          modal.classList.add('on');
	           $("#update_content").text(rContent2);
	        
	           
	           $("#update_content").on("input", function () {
	              let updatedContent = $(this).val(); // textarea의 변경된 값
	              // hidden 영역에 업데이트된 rcontent 값을 저장
	              $("#hidden_area").find("input[name='rcontent']").remove(); // 기존 값 제거
	              value = `<input type="hidden" name="rcontent" value="\${updatedContent}">`;
	              $("#hidden_area").append(value);
	          });
	      });
	      //닫기 버튼을 눌렀을 때 모달팝업이 닫힘
	      modalClose.addEventListener('click',function(){
	          //'on' class 제거
	          modal.classList.remove('on');
	      });
	      
	   }
	   
	   
	   
	   function selectBoardAnswerCount(){
	      $.ajax({
	         url:"rCount.bd",
	         data:{isbn:isbn},
	         success:function(rCount){
	            $(".comment-count").text("댓글 " + rCount);
	         },error:function(){
	            console.log("댓글 갯수 조회용 ajax 통신 실패");
	         }
	      })
	   }
	   
	   <!-- 댓글 수 카운트-->
	   const replyContent = document.getElementById('replyContent');
	   const charCountDisplay = document.querySelector('.char-count');
	   const maxChars = 300;
	   
	   replyContent.addEventListener('input', () => {
	       const currentLength = replyContent.value.length;
	       charCountDisplay.innerHTML = `\${currentLength} / <span id="maxChars">\${maxChars}</span> 자`;
	   
	   });
	   <!-- 여기까지 댓글 수 카운트 스크립트 -->
  
  
  
  
  
  
  
  
  
  
  
  
  
});

// =====================도서 소장 도서관 ===========================

function updateLibraryData() {
	var selectLocation = document.getElementById("location"); // 요소 가져오기
	console.log(selectLocation); 


    var urlParams = new URLSearchParams(window.location.search);
    console.log(urlParams);
    var isbn = urlParams.get("isbn"); 
    console.log(isbn);


    if (!selectLocation) {
        console.error("❌ selectLocation 요소를 찾을 수 없습니다!");
        return;
    }



    const libraryApi = "http://data4library.kr/api/libSrchByBook?authKey=a111a214753e25635f54ae9ff411072670e715484fd9ff42afc5c103323cfc67&isbn="
        + isbn +
        "&region="
        + selectLocation.value + // 이제 selectLocation을 사용할 수 있음
        "&format=json";
    
    console.log("📡 API 호출 URL:", libraryApi);

		$("#librarybox").empty(); // 기존 데이터 제거

    $.getJSON(libraryApi, function (data) {
        console.log("libAPI 응답 데이터:", data);

        if (!data.response || !data.response.libs || data.response.libs.length === 0) {
            console.error("❌ API에서 도서관 데이터를 가져올 수 없습니다!");
            return;
        }

        const librarys = data.response.libs;

        for (let i = 0; i < 4; i++) {
            let lib = librarys[i]?.lib; // ?.를 사용해 안전하게 접근

            if (!lib) {
                console.error(`❌ librarys[${i}].lib가 없습니다. library 데이터:`, librarys[i]);
                continue;
            }

            let libName = lib.libName || "해당 도서관 이름 없음";
            let address = lib.address || "해당 도서관 주소 없음";
            let tel = lib.tel || "해당 도서관 전화번호 없음";
            let fax = lib.fax || "해당 도서관 팩스 없음";
            let homepage = lib.homepage || "해당 홈페이지 없음";
            let closed = lib.closed || "휴무일 정보 없음";
            let opentime = lib.opentime || "개장시간 정보 없음";

						const regionEmojis = {
								"11": "🏙️", // 서울
								"21": "🌊", // 부산
								"22": "🔥", // 대구
								"23": "✈️"  // 인천
						};

						console.log(regionEmojis);

						
						let bookHtml = 
						'<div id="lib'+(i+1)+'">' 
							+'<div>'+ regionEmojis[selectLocation.value] +'</div> <br>'
							+'<div id="libraryNames"> <b>도서관 명</b> : '+ libName +'</div> <br>'
							+'<div> <b>도서관 주소</b> :'+address +'</div> <br>'
							+'<div> <b>전화번호</b> :'+tel +'</div> <br>'
							+'<div> <b>팩스번호</b> : '+fax +'</div> <br>'
							+'<div> <b>홈페이지</b> : <a href="'+homepage +'">'+homepage+'</a></div> <br>'
							+'<div> <b>마감시간</b> : '+closed +'</div> <br>'
							+'<div> <b>오픈시간</b> : '+opentime +'</div> <br>'
							+'<hr >'
						'</div>'

						console.log("생성된 HTML:", bookHtml);

						$("#librarybox").append(bookHtml);

        }
    }).fail(function (jqXHR, textStatus, errorThrown) {
        console.error("❌ API 요청 실패:", textStatus, errorThrown);
    });
};

</script>
<!-- -----------------------------댓글 관련 스크립트----------------------------------  -->


		<%@ include file="../common/footerbar.jsp"%>
</body>

</html>