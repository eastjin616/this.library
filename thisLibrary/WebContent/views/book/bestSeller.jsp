<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document1</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<link rel="stylesheet"
   href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=favorite" />

<style>
@font-face {
   font-family: 'Gyeonggi_Batang_Regular';
   src:
      url('https://fastly.jsdelivr.net/gh/projectnoonnu/2410-3@1.0/Batang_Regular.woff')
      format('woff');
   font-weight: 400;
   font-style: normal;
}

body * {
   font-family: 'Gyeonggi_Batang_Regular';
}

/* div {box-sizing: border-box;border: 1px solid red;} */
#wrapContent {
  height: 1500px;
  width: 1500px;
  display: flex;
	justify-content: center;
	align-items: center;
 }

#content {
  height: 90%;
  width: 90%;
  display: flex;
  gap: 30px; /* 좌우 요소 사이 간격 추가 */
}

#content_1 {
  height: 100%;
  width: 25%;
  min-width: 250px; /* 최소 너비 설정 */
}

#content_2 {
  height: 100%;
  width: 75%;
  flex-grow: 1; /* 남는 공간 채우기 */
}

#content_1_1 {
  margin-top: 30px;
  width: 100%; /* 좌측 마진 제거 */
  height: auto; /* 높이 자동 조정 */
  min-height: 500px; /* 최소 높이 설정 */
  padding: 15px;
  box-sizing: border-box;
}

#genreTitle {
   margin-top: 5px;
   width: 90%;
   height: 2%;
   border-radius: 5px;
   margin-left: 5%;
}

#spare {
   height: 1%;
   border: none;
}

#checkBox {
  max-height: 500px; /* 최대 높이 설정 */
  overflow-y: auto; /* 스크롤 추가 */
}
#genreBtn {
   margin-left: 65%;
   border: none;
}

#content>#content_2 {
   height: 100%;
   width: 75%;
}

#content_2_2 {
  flex-grow: 1;
  width: 100%;
  display: flex;
  flex-direction: column;
  gap: 30px; /* 책 항목 사이 간격 */
}

.content_2_2_book {
  display: flex;
  width: 100%;
  height: 200px; /* 고정 높이 설정 */
  gap: 20px;
}

#content_2_2_0 {
   margin-top: 30px;
   margin-left: 60px;
   width: 90%;
   height: 98%;
   border-radius: 10px;
   border: none;
}

/* 모든 책 이미지 컨테이너에 적용 */
.content_2_2_book .book {
    width: 30%;
    height: 200px; /* 고정 높이 설정 */
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 15px;
    background: #f8f8f8; /* 배경색 추가 (선택사항) */
    border-radius: 5px;
}

/* 이미지 기본 설정 */
.content_2_2_book img {
    max-width: 100%;
    width: auto;
    height: auto;
    object-fit: contain;
}

.book {
  width: 50%;
  min-width: 150px;
  display: flex;
	justify-content: center;
	align-items: center;
}


.book img {
    width: 200px;/* 씨부레 책 이미지 크기 */
    height: 250px;/* 씨부레 책 이미지 크기 */
    object-position: center;
    mix-blend-mode: multiply; /* 이미지 배색 개선 */
}

.bookcon {
    height: 200px; /* 이미지 컨테이너와 동일한 높이 */
    width: 70%;
    display: flex;
    align-items: center; /* 세로 중앙 정렬 */
}

#content_2_2_1, #content_2_2_2, #content_2_2_3, #content_2_2_4 {
   width: 100%;
   height: 23%;
   display: flex;
}


.spare1 {
   height: 100%;
   width: 25%;
}

.bookinfo {
   height: 100%;
   width: 50%;
}
.bookinfo p{
   margin: 5px 0;
}

.heart {
   height: 100%;
   width: 25%;
   position: relative;
}

i {
   margin-top: 5px;
}

i:hover {
   cursor: pointer;
   background: lightgray;
   color: red;
   background-color: transparent;
   overflow: hidden;
}


.pagination{
  display: flex;
	justify-content: center;
	align-items: center;
}

.pagination span {
  display: inline-block;
  padding: 5px 10px;
  margin: 2px;
  cursor: pointer;
  border: 1px solid #ddd;
  border-radius: 3px;
 }

hr {
   width: 90%;
   margin-left: 0%;
}


</style>
</head>
<meta charset="UTF-8">
<!-- ------------------------------------------------------------------ -->

<body>
  <%@ include file="../common/menubar.jsp" %>
  
  <script src="https://kit.fontawesome.com/53a8c415f1.js"
		crossorigin="anonymous"></script>

		<!-- -------------------------------------------------------------------- -->
		

    <div id="wrapContent">
      <div id="content">
        <div id="content_1">
          <div id="content_1_1">
            <div id="genreTitle">
              장르 <button id="genreBtn" type="to">▼</button>
            </div>
            <div id="spare"></div>
            <div id="checkBox">
                <input type="checkbox" value="">소설<br><br>
                <input type="checkbox" value="">에세이/시/회곡<br><br>
                <input type="checkbox" value="">인문<br><br>
                <input type="checkbox" value="">자기계발<br><br>
                <input type="checkbox" value="">경제/경영<br><br>
                <input type="checkbox" value="">가정/취미/실용<br><br>
                <input type="checkbox" value="">의학/건강<br><br>
                <input type="checkbox" value="">여행/지리<br><br>
                <input type="checkbox" value="">과학/기술<br><br>
                <input type="checkbox" value="">사회과학<br><br>
                <input type="checkbox" value="">종교<br><br>
                <input type="checkbox" value="">역사/문학<br><br>
                <input type="checkbox" value="">인물/평전<br><br>
                <input type="checkbox" value="">예술/대중문화<br><br>
                <input type="checkbox" value="">외국어<br><br>
                <input type="checkbox" value="">컴퓨터<br><br>
                <input type="checkbox" value="">수험서/자격증/취업<br><br>
                <input type="checkbox" value="">사전<br><br>
                <input type="checkbox" value="">만화<br><br>
                <input type="checkbox" value="">잡지<br><br>
                <input type="checkbox" value="">유아<br><br>
                <input type="checkbox" value="">어린이<br><br>
                <input type="checkbox" value="">청소년<br><br>
                <input type="checkbox" value="">성인<br><br>
                <input type="checkbox" value="">부모<br><br>
            </div>
          </div>
        </div>
        <div id="content_2">
          <div id="content_2_2">
            <div id="content_2_2_0">
              <hr>
              <div id="content_2_2_1">
                <div id="book1">
                  <img src="" alt="">
                </div>
                <div id="bookcon1">
                  <div class="spare1"></div>
                  <div class="bookinfo">
                    <p style="font-size: 20px;"><b></b></p>
                    <hr style="width: 70px; margin-left: 0%;">
                    지은이 : <p style="font-size: 15px; display: inline;"> </p> &nbsp;|&nbsp; 옮긴이 : <p style="font-size: 15px; display: inline;"></p>
                    <br><br>
                    출판사 : <p style="font-size: 15px; display: inline;"></p>&nbsp;|&nbsp; 출판일 :<p style="font-size: 15px; display: inline;"></p>
                    <br><br><br>

                    <div style="display: flex;">
                      <p><i class="fas fa-star" style="color: #085ae7;"></i></p>
                      <p style="margin-left: 5px; margin-top: 20;">4.84</p>
                      <p style="margin-left: 5px; margin-top: 20;">(350reviews)</p>
                    </div>
                  </div>
                  <div class="heart">
                    <i class="fas fa-heart"></i>
                    <i class="fas fa-heart" style="color: #ec1818;"></i>
                  </div>
                </div>
              </div>
<!-- ================================================================== -->
              <hr>
              
              <div class="pagination">
                <span><</span>
                <span>1</span>
                <span>2</span>
                <span>3</span>
                <span>4</span>
                <span>5</span>
                <span>></span>
            </div>
            </div>
          </div>
        </div>
       </div>
      </div>
      
      
<%@ include file="../common/footerbar.jsp" %>

<script type="text/javascript">
  $(document).ready(function() {
   $('#checkBox').hide();
   $('#genreBtn').click(function() {
      $('#checkBox').slideToggle("fast");
   });
  });
  </script>
  
  <script>
  $(document).ready(function () {
	    const apiURL = "http://data4library.kr/api/loanItemSrch?authKey=a111a214753e25635f54ae9ff411072670e715484fd9ff42afc5c103323cfc67&format=json";

	    $.getJSON(apiURL, function (data) {
	        console.log("📢 API 응답 전체:", data);

	        if (!data.response || !data.response.docs || data.response.docs.length === 0) {
	            console.error("❌ API에서 책 데이터가 없습니다!");
	            return;
	        }

	        const books = data.response.docs;

	        books.forEach((book, index) => {
	            if (index < 98) { // 첫 번째 책만 적용
	                console.log("📖 책 데이터 구조:", book);

	                let doc = Array.isArray(book.doc) ? book.doc[0] : book.doc;

	                if (!doc) {
	                    console.error(`❌ book.doc가 없습니다. book 데이터:`, book);
	                    return;
	                }

	                let imageURL = doc.bookImageURL || "https://via.placeholder.com/150";
	                let title = doc.bookname || "제목 없음";
	                let authorFull = doc.authors || "작가 정보 없음";
	                let publisher = doc.publisher || "출판사 정보 없음";
	                let pubYear = doc.publication_year || "출판일 정보 없음";

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

	                // 이미지 변경
	                let bookImageSelector = `#book${index + 1} img`;
	                if ($(bookImageSelector).length) {
	                    $(bookImageSelector).attr("src", imageURL);
	                } else {
	                    console.error(`❌ 이미지 태그를 찾을 수 없습니다: ${bookImageSelector}`);
	                }

	                // bookinfo 업데이트
	                let bookInfoSelector = `#bookcon${index + 1} .bookinfo`;
	                console.log($(bookImageSelector)); // 이미지 선택자 확인
	                console.log($(bookInfoSelector));  // bookinfo 선택자 확인
	                if ($(bookInfoSelector).length) {
	                    console.log("✅ bookinfo 업데이트 진행!");
	                    console.log("출판년도:", author);
	                    
	                    // bookinfo 업데이트
	                    $(bookInfoSelector).find('p:eq(0)').text(title);
	                    $(bookInfoSelector).find('p:eq(1)').text(author);
	                    $(bookInfoSelector).find('p:eq(2)').text(translator);
	                    $(bookInfoSelector).find('p:eq(3)').text(publisher);
	                    $(bookInfoSelector).find('p:eq(4)').text(pubYear);
	                } else {
	                    console.error(`❌ bookinfo 요소를 찾을 수 없습니다: ${bookInfoSelector}`);
	                }
	            }
	        });
	    }).fail(function (jqXHR, textStatus, errorThrown) {
	        console.error(`❌ API 요청 실패: ${textStatus}, 오류: ${errorThrown}`);
	    });

	});
    </script>

	<!-- -------------------------------------------------------------------- -->
</body>
</html>