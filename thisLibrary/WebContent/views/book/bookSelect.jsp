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
   height: auto;
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




#content_2 {
  height: 100%;
  width: 75%;
  flex-grow: 1; /* 남는 공간 채우기 */
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

.pagination {
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
   <%@ include file="../common/menubar.jsp"%>

   <script src="https://kit.fontawesome.com/53a8c415f1.js"
      crossorigin="anonymous"></script>

   <!-- -------------------------------------------------------------------- -->


   <div id="wrapContent">
      <div id="content">
         
         <div id="content_2">
            <div id="content_2_2" class="content_2_2">
    <!-- 책 정보가 여기에 추가될 것입니다. -->
</div>
         </div>
      </div>
   </div>

   <hr>
   </div>
   </div>
   </div>
   </div>
   </div>

   <br>
   <br>
   <br>
   <br>

   <%@ include file="../common/footerbar.jsp"%>


   <script type="text/javascript">
      $(document).ready(function () {
         let urlParams = new URLSearchParams(window.location.search);
         let keyword = urlParams.get("keyword"); // URL에서 keyword 값 가져오기

         if (!keyword || keyword.trim() === "") {
            alert("검색어가 없습니다!");
            return;
         }


      let apiURL = "https://data4library.kr/api/srchBooks?authKey=a111a214753e25635f54ae9ff411072670e715484fd9ff42afc5c103323cfc67" 
                  + "&keyword=" + encodeURIComponent(keyword) 
                   + "&format=json";

        $.getJSON(apiURL, function (data) {
          console.log("API 응답 데이터:", data);

          if (!data || !data.response || !data.response.docs || data.response.docs.length === 0) {
            console.error("❌ API에서 책 데이터가 없습니다!");
            return;
          }

          const books = data.response.docs;

          // 한 페이지에 4개의 책 정보만 표시
          for (let i = 0; i < 100; i++) {
            let doc = books[i].doc;

            if (!doc) {
              console.error(`❌ books[${i}].doc가 없습니다. book 데이터:`, books[i]);
              continue;
            }

            let imageURL = doc.bookImageURL || "https://via.placeholder.com/150"; // 기본 이미지 사용
            let title = doc.bookname || "제목 없음";
            let authorFull = doc.authors || "작가 정보 없음";
            let publisher = doc.publisher || "출판사 정보 없음";
            let pubYear = doc.publication_year || "출판일 정보 없음";

            // 작가와 번역가 정보 추출
            let author = "작가 정보 없음";
            let translator = "번역가 정보 없음";

            if (authorFull.includes("지은이:")) {
              author = authorFull.split("지은이:")[1].split(";")[0].trim();
            }
            if (authorFull.includes("옮긴이:")) {
              translator = authorFull.split("옮긴이:")[1].split(";")[0].trim();
            }

            // 책 정보 HTML 생성
            console.log("변수 값:", {i, imageURL, title, author, translator, publisher, pubYear});

            let bookHTML = 
              '<hr>'+
              '<div id="content_2_2_'+(i + 1)+'" class="content_2_2_book">'+
                '<div id="book'+(i + 1)+'" class="book" onclick="window.location.href=\'bookDetail.jsp\';" style="cursor: pointer;">'+
                  '<img src="'+imageURL+'" alt="'+title+'">'+
                '</div>'+
                '<div id="bookcon'+(i + 1)+'" class="bookcon">'+
                  '<div class="spare1"></div>'+
                  '<div class="bookinfo">'+
                    '<p style="font-size: 20px; cursor: "pointer;" onclick="window.location.href=\'bookDetail.jsp\';"><b>'+title+'</b></p>'+
                    '<hr style="width: 70px; margin-left: 0%;">'+
                    '지은이 : <span style="font-size: 15px;">'+author+'</span> &nbsp;|&nbsp; 옮긴이 : <span style="font-size: 15px;">'+translator+'</span>'+
                    '<br><br>'+
                    '출판사 : <span style="font-size: 15px;">'+publisher+'</span>&nbsp;|&nbsp; 출판일 :<span style="font-size: 15px;">'+pubYear+'</span>'+
                    '<br><br><br>'+
                    '<div style="display: flex;">'+
                      '<p><i class="fas fa-star" style="color: #085ae7;"></i></p>'+
                      '<p style="margin-left: 5px; margin-top: 20;">4.84</p>'+
                      '<p style="margin-left: 5px; margin-top: 20;">(350reviews)</p>'+
                    '</div>'+
                  '</div>'+
                  '<div class="heart">'+
                    '<i class="fas fa-heart"></i>'+
                    '<i class="fas fa-heart" style="color: #ec1818;"></i>'+
                  '</div>'+
                '</div>'+
              '</div>';

            console.log("생성된 HTML:", bookHTML);

            // 책 정보 HTML 추가
            $("#content_2_2").append(bookHTML);

          }
        }).fail(function (jqXHR, textStatus, errorThrown) {
          console.error(`❌ API 요청 실패: ${textStatus}, 오류: ${errorThrown}`);
          console.log(jqXHR); // 실패한 응답을 추가로 확인
        });
      });
</script>


</body>
</html>