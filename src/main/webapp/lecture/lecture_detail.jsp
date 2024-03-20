<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lecture_detail</title>
    <style>
        .container {
            width: 1100px;
            margin: 0 auto;
        }
        #back1 {
            background-color: navy;
            color: white;
        }
        #id1 {
            
        }
        #id1 a{
            text-decoration: none;
            color: white;
            height: 30px;
            line-height: 30px;
        }
        #id2 {
            display: flex;
        }
        #id2_1 {
            float: left;
            width: 550px;
            padding: 30px;
        }
        #id2_2 {
            float:right;
            width: 550px;
            padding: 30px;
        }
        #id2_2 li{
            list-style:symbols(·);
        }
        #frm1 {
            
        }

    </style>

</head>
<body>
	<header>
	<jsp:include page="/header/header.jsp" />
	</header>
	<main>
    <div id="back1">
    <div id="id1" class="container">
        <a href="main.html">Home</a>
        >
        <a href="lecture_main.jsp">강좌</a>
        >
        <a href="">카테고리</a>
        >
        <a href="">카테고리_detail</a>
    </div>
    <div id="id2" class="container">
        <div id="id2_1">
            <img src="" style="background-color: grey; height: 300px; width: 500px;">
        </div>
        <div id="id2_2">
        <h3>강좌 제목 lecture_title</h3>
        <ul>
            <li><span>분야</span>category(category_detail)</li>
            <li><span>주관기관</span>lecture_company</li>
            <li><span>학습기간</span>lecture_start_date ~ lecture_end_date</li>
            <li><span>전화번호</span>lecture_tel</li>
            <li><span>강좌 언어</span>language</li>
            <li><span>별점</span>star</li>
        </ul>
        <form id="frm1">
            <input type="button" value="♡">
            <input type="button" value="수강신청">
        </form>
        </div>
    </div>

    </div>

    <div id="id3" class="container">
    <h3>강좌소개</h3>
        <h4>수업내용/목표</h4>
        <p>lecture_content</p>
    
        <h4>홍보/예시 영상</h4>
        <p>lecture_youtube_url</p>

        <h4>강좌 운영 계획</h4>
        <p>~계획~</p>

        <h4>강좌 수강 정보</h4>
        <p>lecture_detail</p>

        <h4>자주 묻는 질문</h4>
        <p>lecture_question</p>
    </div>
    
    </main>
    <footer>
    
    </footer>
</body>
</html>