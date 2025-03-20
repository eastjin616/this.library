<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
        

        /* ---------------------------------------------- */

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


      </style>
    </head>

    <body>
    <%@ include file="../common/menubar.jsp" %>

        <!-- 자유게시판 -->
        <div class="board-container">
          <h2>1:1 문의글 리스트</h2>
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
            <a href="<%= contextPath %>/views/serviceCenter/persnalInquiry.jsp" class="write-btn" style="margin-left: auto;">글쓰기</a>
          </div>

        </div>
        <!-- 자유게시판 끝 -->

       
      <!-- -------------------------------------------------------------------- -->
      <%@ include file="../common/footerbar.jsp" %>
    </body>

    </html>