<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QnA게시판</title>
    <style>
        .main{
            width: 1100px;
            margin: 0 auto;
        }
        .mainhead{
            width: 1100px;
            background-color:#002475;
            padding-bottom:40px;

        }
        .searchWrap{
            padding:20px;
            width: 900px;
            color: white;
        }
        .listHead{
            width: 1100px;
            font-size: 18px;
            border-bottom: 1px solid black;
            display:grid;
            grid-template-columns: 1fr;
        }
        .count{
            padding-left: 20px;
        }
        .countDiv{
            padding: 10px 0;
        }
        .registDiv{
            padding: 10px 0;
            padding-right: 20px;
        }
        .categoryDiv{
            display: flex;
            flex-wrap:wrap;          
        }
        .categoryDiv>a{
            padding: 10px 0;
            width: 33.33%;
            text-align: center;
            text-decoration: none;
            color: black;
        }
        .categoryDiv a:hover{
            background-color:#002475;
            color: white;
        }
        #categoryDiv2>a{
            width: 12.5%;
        }
        
        ul{padding: 0px;}
        .thead, .tbody{
            list-style-type: none;
            display: table;
            width: 100%;
            border-top-color: 1px solid black;
        }
        .QNA, .type, .title, .flag, .content{
            text-align:center;
            padding: 10px 0px;
            height: 60px;
            box-sizing:border-box;
            display: table-cell;
            line-height: 50px;
        }
        .QNA{
            width: 100px;
        }
        .type{
            width: 80px;
        }
        .title{
            width: 130px;
        }
        .title{
            width: 800px;
        }
        .flag{
            width: 170px;
        }
        .content{
            width: 1100px;
            text-align: center;
        }
        .mainfoot{
            width: 1100px;
            text-align: center;
        }
        .thead, .tbody{
            border: 1px solid black;
        }
        img{
        	vertical-align: middle;
        }

    </style>
</head>
<body>
<div class="wrap">
<div class=header>
<%@ include file="../header/header.jsp" %>
</div>

<div class=main>
    <div class="mainhead">
    <div class="searchWrap">
       <h2>자주묻는질문</h2>
    </div>
    </div>
    <div class="mainhead2">
        <div class ="listHead"> 
            <div class="categoryDiv">
                <a href="">자유게시판</a>
                <a href="">공지사항</a>
                <a href="">자주묻는질문</a>
            </div>
        </div>
        <div class ="listHead2"> 
            <div class="categoryDiv" id="categoryDiv2">
                <a href="">전체</a>
                <a href="">회원가입</a>
                <a href="">로그인/계정</a>
                <a href="">수강신청/취소</a>
                <a href="">강좌 수강</a>
                <a href="">성적/이수증</a>
                <a href="">기술적문제</a>
                <a href="">기타</a>
            </div>
        </div>
        <div class="countDiv"><span class="count">총{?}건</span></div>
    <ul>
        <li class="thead">
            <span class="QNA"><img src="/Project4/img/Q.png" alt="Q"></span>
            <span class="type">{카테고리}</span>
            <span class="title">제목</span>
            <span class="flag">▼</span>
        </li>
        <li class="tbody">
            <span class="QNA"><img src="/Project4/img/A.png" alt="A"></span>
            <span class="content">{내용}</span>
        </li>
    </ul>
    <div class="mainfoot">
        <p>{"paging"}</p>
    </div>
    </div>
</div>

<div class=footer>
<%@ include file="../footer/footer.jsp" %>
</div>

</div>
</body>
</html>