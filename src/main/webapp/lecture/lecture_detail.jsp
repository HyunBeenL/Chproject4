<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
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
        #id0 {
            height: 76px;
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
	<jsp:include page="/header/header.jsp" />
<main>

	<div id="id0"></div>
    <div id="back1">
    <div id="id1" class="container">
        <a href="/Project4/main.jsp">Home</a>
        >
        <a href="/Project4/lecture/lecture_main.jsp">강좌</a>
        >
        <a href="/Project4/lecture/lecture_main.jsp">카테고리</a>
        >
        <a href="/Project4/lecture/lecture_main.jsp">카테고리_detail</a>
    </div>
    
    <div id="id2" class="container">
        <div id="id2_1">
            <img src=".${lectureDetail[0].lecture_img}"style="background-color: grey; height: 300px; width: 500px;">
        </div>
        <div id="id2_2">
        <h3>${lectureDetail[0].lecture_title}</h3>
        <ul>
            <li><span>분야</span>${lectureDetail[0].lecture_category_detail}</li>
            <li><span>주관기관</span>${lectureDetail[0].member_company}</li>
            <li><span>학습기간</span>${lectureDetail[0].lecture_start_date}  ~ ${lectureDetail[0].lecture_end_date}</li>
            <li><span>전화번호</span>${lectureDetail[0].member_company}</li>
            <!-- <li><span>강좌 언어</span>language</li> -->
            <li><span>별점</span>${lectureDetail[0].lecture_star}</li>
        </ul>
        <form id="frm1">
            <input type="button" value="♡">
            <input type="button" value="수강신청">
        </form>
        </div>
    </div>

    </div>

	<c:set var="lecture" value="}"></c:set>

    <div id="id3" class="container">
    <h3>강좌소개</h3>
        <h4>수업내용/목표</h4>
        <p>${lectureDetail[0].lecture_content}</p>
    
        <h4>홍보/예시 영상</h4>
        <p><iframe width="560" height="315" src="${lectureDetail[0].lecture_youtube_url} frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </p>
        <h4>강좌 운영 계획</h4>
        <p>${lectureDetail[0].lecture_plan}</p>

        <h4>강좌 수강 정보</h4>
        <p>${lectureDetail[0].lecture_content_detail}</p>

        <h4>자주 묻는 질문</h4>
        <p>${lectureDetail[0].lecture_question}</p>
    </div>
    
    </main>
    <footer>
    
    </footer> 
</body>
</html>