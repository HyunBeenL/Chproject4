<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>title</title>

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
            padding-top:20px;
            width: 900px;
        }
        .search{
            padding-left: 50px;
            display:flex;
            flex-wrap:wrap;
        }
        #select{
            width: 160px;
            height: 55px;
            font-size: 16px;
            line-height: 48px;
            position: relative;
            padding: 0 68px 0 20px;
            box-sizing: border-box;
        }
        #searchText{
            font-size: 16px;
            line-height: 48px;
            margin-left:10px;
            width: 500px;
        }
        #btnSearch{
            width: 50px;
            height: 55px;
            background-color: #00A85D;
        }
        .btnImg{
            width: 10px;
            height: 10px;
        }
        .listHead{
            width: 1100px;
            font-size: 18px;
            border-bottom: 1px solid black;
            display:grid;
            grid-template-columns: 1fr 6fr 1fr;
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
            width: 33%;
            text-align: center;
            text-decoration: none;
            color: black;
        }
        .categoryDiv a:hover{
            background-color:#002475;
            color: white;
        }
        
        ul{padding: 0px;}
        li{
            list-style-type: none;
            display: table;
            width: 100%;
            border-top-color: 1px solid black;
        }
        .num, .type, .user, .title, .date{
            text-align:center;
            padding: 10px 0px;
            height: 60px;
            box-sizing:border-box;
            display: table-cell;
        }
        .num{
            width: 100px;
        }
        .type{
            width: 80px;
        }
        .user{
            width: 130px;
        }
        .title{
            width: 800px;
        }
        .date{
            width: 170px;
        }
        .mainfoot{
            width: 1100px;
            text-align: center;
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
        <form>
        <div class="search">
        <select name="category" id="select">
            <option value="">전체</option>
            <option value="title">제목만</option>
            <option value="content">내용만</option>
            <option value="titleContent">제목+내용</option>
            <option value="userID">작성자</option>
        </select>
        <input id="searchText" type="text" placeholder="검색어를 입력하세요." maxlength="100">
        <button type="button" id="btnSearch"><img class="btnImg" src="" alt="img"></img></button>
        </form>
        </div>
    </div>
    </div>
    <div class="mainhead2">
        <div class ="listHead"> 
            <div class="countDiv"><span class="count">총{?}건</span></div>
            <div class="categoryDiv">
                <a href="">자유게시판</a>
                <a href="">공지사항</a>
                <a href="">자주묻는질문</a>
            </div>
            <div class="registDiv"><img src="" alt="img"></img></div>
        </div>
    <ul>
        <li class="thead">
            <span class="num">번호</span>
            <span class="type">구분</span>
            <span class="user">작성자</span>
            <span class="title">제목</span>
            <span class="date">등록일</span>
        </li>
        <li class="tbody">
            <span class="num">{번호}</span>
            <span class="type">{구분}</span>
            <span class="user">{작성자}</span>
            <span class="title">{제목}</span>
            <span class="date">{등록일}</span>
        </li>
    </ul>
    <div class="mainfoot">
        <p>{"paging"}</p>
    </div>
    </div>
</div>

<div class=footer>

</div>

</div>
</body>
</html>