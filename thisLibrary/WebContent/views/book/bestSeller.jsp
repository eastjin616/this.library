<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
   
   <%
    List<String> jjimList = (List<String>) session.getAttribute("jjimList");
    if (jjimList == null) jjimList = new ArrayList<>();
    String jjimJson = new com.google.gson.Gson().toJson(jjimList);
%>
<script>
    const jjimList = <%= jjimJson %>;
</script>

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

.heart i {
    color: gray; /* 기본 회색 */
    cursor: pointer;
    transition: color 0.3s;
}

.heart.active i {
    color: red; /* 클릭 시 빨간색 */
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
#heartIcon {
  color: gray;
  cursor: pointer;
  transition: color 0.2s;
}

#heartIcon.active {
  color: red;
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
         <div id="content_1">
            <div id="content_1_1">
               <div id="genreTitle">
                  종류
                  <button id="genreBtn" type="to">▼</button>
               </div>
               <div id="spare"></div>
               <div id="genreFilter">
                <br><input type="checkbox" value="0">&nbsp;총류<br>
                  <br><input type="checkbox" value="1">&nbsp;철학<br>
                  <br> <input type="checkbox" value="2">&nbsp;종교<br>
                  <br> <input type="checkbox" value="4">&nbsp;자연과학<br>
                  <br> <input type="checkbox" value="6">&nbsp;예술<br>
                  <br> <input type="checkbox" value="7">&nbsp;언어<br>
                  <br> <input type="checkbox" value="8">&nbsp;문학<br>
                  <br> <input type="checkbox" value="9">&nbsp;역사<br>
               </div>
            </div>
         </div>
         <div id="content_2">
            <div id="content_2_2" class="content_2_2">
   				 <!-- 책 정보 추가 -->
         </div>
         </div>
      </div>
   </div>

   <hr>

<div class="pagination"></div>

   <br>
   <br>
   <br>
   <br>

   <%@ include file="../common/footerbar.jsp"%>


   <script type="text/javascript">
   
   
   
   $(document).on('click', "input[type='checkbox']", function(){
	    if(this.checked) {
	        const checkboxes = $("input[type='checkbox']");
	        for(let ind = 0; ind < checkboxes.length; ind++){
	            checkboxes[ind].checked = false;
	        }
	        this.checked = true;
	    } else {
	        this.checked = false;
	    }
	});
   
//=================================================================================== 
   $(document).ready(function () {
	   const timestamp = new Date().getTime();
       const baseURL = "http://data4library.kr/api/loanItemSrch?authKey=a111a214753e25635f54ae9ff411072670e715484fd9ff42afc5c103323cfc67&pageNo=1&pageSize=10&format=json";
       let currentPage = 1;
       let totalPages = 1;
       let currentBooks = [];
       
       function fetchBooks(kdcValue = "") {
           let apiURL = baseURL;

           if (kdcValue) {
               apiURL = baseURL.replace("&pageNo=1&pageSize=10&format=json", `&kdc=\${kdcValue}&pageNo=1&pageSize=10&format=json&format=json`);
           }

           $.getJSON(apiURL, function (data) {

               if (!data || !data.response || !data.response.docs || data.response.docs.length === 0) {
                   console.error("❌ 책 데이터가 없습니다.");
                   $("#content_2_2").html("<p>책 데이터가 없습니다.</p>");
                   $(".pagination").empty(); // 페이지네이션도 초기화
                   return;
               }

               currentBooks = data.response.docs.slice(0, 20);
               totalPages = Math.ceil(currentBooks.length / 4);
               currentPage = 1;

               loadBooks(currentPage);
               updatePagination();
           }).fail(function (jqXHR, textStatus, errorThrown) {
               console.error(`❌ API 요청 실패: ${textStatus}, 오류: ${errorThrown}`);
           });
       }
       
       
       
//============= ====== =================
       function loadBooks(page) {
    	   const maxPage = 5
           const booksPerPage = 4;
           let startIndex = (page - 1) * booksPerPage;
           let endIndex = startIndex + booksPerPage;

           $("#content_2_2").empty();

           for (let i = startIndex; i < endIndex && i < currentBooks.length; i++) {
               let doc = currentBooks[i].doc;
               if (!doc) continue;

               let imageURL = doc.bookImageURL || "https://via.placeholder.com/150";
               let title = doc.bookname || "제목 없음";
               let authorFull = doc.authors || "작가 정보 없음";
               let publisher = doc.publisher || "출판사 정보 없음";
               let pubYear = doc.publication_year || "출판일 정보 없음";
               let isbn = doc.isbn13 || "isbn 정보 없음";
               let genre = doc.class_nm || "장르 정보 없음";

               let parts = authorFull.split(";", 2);
               let author = parts[0].trim();
               let translator = parts.length > 1 ? parts[1].trim() : "번역가 정보 없음";

               const isJjim = jjimList.includes(imageURL);

                let heartColor = isJjim ? 'red' : 'gray';
                let heartClass = isJjim ? 'active' : '';


               let bookHTML =
            	   '<br>'+
                   '<hr>' +
                   '<div class="content_2_2_book">' +
                       '<div class="book" onclick="location.href=\'bookDetail.jsp?isbn=' + isbn + '\';" style="cursor: pointer;">' +
                           '<img src="' + imageURL + '" alt="' + title + '" loading="lazy">' +
                       '</div>' +
                       '<div class="bookcon">' +
                           '<div class="bookinfo">' +
                               '<p style="font-size: 20px; cursor: pointer;" onclick="location.href=\'bookDetail.jsp?isbn=' + isbn + '\';"><b>' + title + '</b></p>' +
                               '<hr style="width: 70px; margin-left: 0%;">' +
                               '지은이 : <span style="font-size: 15px;">' + author + '</span> &nbsp;|&nbsp; <span style="font-size: 15px;">' + translator + '</span>' +
                               '<br><br>' +
                               '출판사 : <span style="font-size: 15px;">' + publisher + '</span>&nbsp;|&nbsp; 출판일 :<span style="font-size: 15px;">' + pubYear + '</span>' +
                               '<br><br><br>' +
                               '<div style="display: flex;">' +
                                   '<p style="margin-left: 5px; margin-top: 20px;">' + genre + '</p>' +
                               '</div>' +
                           '</div>' +
                          '<div class="heart">'+
                          '<div class="heart">' +
                          `<% if (loginMember != null) { %>` +
                              '<i class="fas fa-heart heart-icon ' + heartClass + '" style="color:' + heartColor + ';" onclick="toggleHeart(this)"></i>' +
                          `<% } %>` +
                           '</div>'+
                       '</div>' +
                   '</div>';
               $("#content_2_2").append(bookHTML);
           }
       }
       
//=========== ========== ==============     
       
//===============================페이징 바===========================================================================================
       function updatePagination() {
           $(".pagination").empty();

           $(".pagination").append('<span class="prev">＜</span>');
           for (let i = 1; i <= totalPages; i++) {
               $(".pagination").append('<span class="page">' + i + '</span>');
           }
           $(".pagination").append('<span class="next">＞</span>');

           $(".pagination .page").eq(currentPage - 1).css("font-weight", "bold");

           $(".pagination .page").click(function () {
               currentPage = parseInt($(this).text());
               loadBooks(currentPage);
               updatePagination();
           });

           $(".pagination .prev").click(function () {
               if (currentPage > 1) {
                   currentPage--;
                   loadBooks(currentPage);
                   updatePagination();
               }
           });

           $(".pagination .next").click(function () {
               if (currentPage < totalPages) {
                   currentPage++;
                   loadBooks(currentPage);
                   updatePagination();
               }
           });
       }

       // ✅ 초기 데이터 로딩
       fetchBooks();

       // ✅ 체크박스 변경 시 자동 필터
       $("#genreFilter input[type=checkbox]").on("change", function () {
           const checked = $("#genreFilter input[type=checkbox]:checked");

           if (checked.length === 0) {
               fetchBooks(); // 기본 전체
           } else {
               const kdcValue = checked.first().val(); // 첫 번째 체크만 사용
               fetchBooks(kdcValue);
           }
       });
   });

//=====================================================================================


  $(document).ready(function () {
    $('#genreFilter').hide();
    $('#genreBtn').click(function () {
      $('#genreFilter').slideToggle("fast");
    });
  });
//=====================================================================================


	
	
	
	$(document).ready(function () {
    const contextPath = '<%= request.getContextPath() %>';

    function toggleHeart(element) {
        const bookContainer = $(element).closest('.content_2_2_book');
        const imageUrl = bookContainer.find('.book img').attr('src');
        const isActive = element.classList.toggle('active');

        element.style.color = isActive ? 'red' : 'gray';

        $.ajax({
            url: contextPath + '/jjimToggle.my',
            type: 'POST',
            data: {
                imageUrl: imageUrl,
                action: isActive ? 'add' : 'remove'
            },
            success: function () {
                console.log(isActive ? "찜 추가됨" : "찜 제거됨");
                console.log(imageUrl);  // ✅ 변수 오타 수정
            },
            error: function () {
                element.classList.toggle('active');
                element.style.color = isActive ? 'gray' : 'red';
                alert("찜 처리 중 오류 발생");
            }
        });
    }

    // ✅ 하트 요소 클릭 시 함수 연결
    $(document).on('click', '.heart-icon', function () {
        toggleHeart(this);
    });
});
</script>




</body>
</html>