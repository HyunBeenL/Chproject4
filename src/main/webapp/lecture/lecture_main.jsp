<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lecture_main</title>
    <style>
        .container {
            width: 1100px;
            margin: auto;
        }
        #id0 {
            height: 100px;
        }
        #id1 a{
            text-decoration: none;
            color: black;
        }
        #id2 {
            background-color: navy;
            width: 100%;
            height: 200px;
        }
        #id3 {
            display: flex;
        }
        #id4 {
            display: block;
        }
        #id4_1 {
            display: block;
        }
        #id4_1 span {
            float: left;
        }
        #id4_2 {
            display: grid;
            width: 100%;
            grid-template-columns: repeat(4, minmax(150px,1fr));
            grid-template-rows: repeat(5, 300px);
            grid-gap: 20px;
        }
        #id4_2 div {
            background-color: grey;
            border: 1px solid red;
        }
        #id5 {
            text-align: center;
        }
        #frm1 {
            width: 100%;
            height: 30px;
        }
        #frm1 input[type=search]{
            width: 70%;
            height: 40px;
        }
        #frm3 {
            display: flex;
            float: right;
        }
    </style>
</head>


<body>
	<header>
	<jsp:include page="/header/header.jsp" />
	</header>
	<main>
	<div id="id0"></div>
    <div id="id1" class="container">
        <a href="main.html">Home</a>
        >
        <a href="lecture_main.html">강좌</a>
        >
        <a href="">카테고리</a>
        >
        <a href="">카테고리_detail</a>
    </div>
    
    <div id="id2">
    <div class="container">
        <h1 style="color: white; padding: 60px 0px 20px; ">강좌 검색</h1>

        <form name="frm1" id="frm1">
            <select name="search" id="search">
                <option value="title" selected>강좌제목</option>
                <option value="teacher">강사명</option>
            </select>
            <input type="search">
            <input type="submit" value="검색">
        </form>
    </div>
    </div>
    
    <div id="id3" class="container">
        <form name="frm2" id="frm2">
            <select name="state" id="state">
                <option value="title" selected>개강상태</option>
                <option value="" >전체</option>
                <option value="" >진행중</option>
                <option value="" >개강예정</option>
                <option value="" >종료</option>
            </select>
            <select name="category" id="category">
                <option value="title" selected>주제</option>
                <option value="" >전체</option>
                <option value="" >인문</option>
                <option value="" >사회</option>
                <option value="" >교육</option>
                <option value="" >공학</option>
                <option value="" >자연</option>
                <option value="" >의약</option>
                <option value="" >예체능</option>
                <option value="" >융·복합</option>
                <option value="" >기타</option>
            </select>
            <select name="category_detail" id="category_detail">
                <option value="title" selected>중분류</option>
                <option value="" >전체</option>
                <option value="" >인문과학</option>
                <option value="" >경영·경제</option>
                <option value="" >사회과학</option>
                <option value="" >교육일반</option>
                <option value="" >기계·금속</option>
                <option value="" >전기·전자</option>
                <option value="" >생활과학</option>
                <option value="" >의료</option>
                <option value="" >디자인</option>
                <option value="" >융·복합</option>
                <option value="" >기타</option>
            </select>
            <select name="period" id="period">
                <option value="title" selected>학습기간</option>
                <option value="" >전체</option>
                <option value="" >단기(1~2주)</option>
                <option value="" >중기(3~4주)</option>
                <option value="" >장기(5주~)</option>
            </select>
            <input type="button" value="새로고침" />
        </form>
    </div>
    
    <div id="id4" class="container">
        <div id="id4_1" >
            <span>총 ${lecture} 강좌수</span>
            <form name="frm3" id="frm3">
                <input type="button" value="최신등록순">
                <input type="button" value="가나다순">
            </form>
        </div>
    
        <div id="id4_2" class="container">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
    
    <div id="id5" class="container">
        << <  12345678910 > >>
    </div>
    </main>
</body>
</html>