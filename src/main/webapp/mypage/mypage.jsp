<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>MyPage</title>
    <style>
        .container {
            width: 1100px;
            margin: auto;
        }
        #id0 {
            height: 76px;
        }
        .content {
            display: flex;
            justify-content: space-between;
            margin: 30px 20px;
            height: 150px;
        }
        .content_img {
            margin: 15px 20px;
            width: 150px;
            height: 120px;
            box-sizing: border-box;
            background-color: grey;
        }
        .content_card {
            width: 350px;
            font-size: 12px;
        }
        .lecture_title {
            margin: 20px 0px 30px 0px;
            font-size: 34px;
            font-weight: 800;
        }
        .lecture_date {
            color: grey;
        }
        .content_state {
            align-self: center;
        }
        .content_cancel {
            align-self: center;
            padding: 20px;
        }
        .content_cancel input[type=button]{
            border: 0;
            border-radius: 5px;
            padding: 10px 20px;
            background-color: rgba(190, 190, 190, 0.5);
        }
        .content_cancel input[type=button]:hover{
            border: 0;
            border-radius: 5px;
            padding: 10px 20px;
            background-color: rgba(190, 190, 190, 0.7);
        }
        .content_cancel input[type=button]:active{
            border: 0;
            border-radius: 5px;
            padding: 10px 20px;
            background-color: rgba(190, 190, 190, 0.3);
        }
        #id1 {
            float: left;
            box-sizing: border-box;
            width: 200px;
            padding: 20px;
        }
        #id2 {
            float: left;
            box-sizing: border-box;
            height: 800px;
            width: 800px;
        }
        #id2_1 {
            height: 100px;
            margin: 20px 30px;
        }
        #id2_2 {
            margin: 20px 30px;
        }
        #id2_2_1 {
            padding: 0px 30px;
        }
        #id2_2_1 a{
            text-decoration: none;
            color: black;
        }
        #img1 {
            float: left;
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background-color: grey;
            margin: 0 20px 0 0;
        }
        a {
            text-decoration: none;
            color: black;
        }
        #id2_2_1 a{
            padding: 0px 20px ;
            color: grey;
        }
        #id2_2_1 a:active, #id2_2_1 a:target, #id2_2_1 a:hover{
            padding: 0px 20px ;
            color: black;
            font-weight: 700;
        }
        #sp_user_name {
            font-weight: 700;
            color: blue;
            font-size: 34px;
        }
        #sp_user_email {
            font-weight: 600;
        }
    </style>
</head>
<body>
	<jsp:include page="/header/header.jsp" />
<main>
	<div id="id0"></div>
	
<div class="container">
	<fmt:formatDate value="${params.strdate}" pattern="yyyy-MM-dd" var="formattedStartDate" />
	<fmt:formatDate value="${params.enddate}" pattern="yyyy-MM-dd" var="formattedEndDate" />
	<fmt:formatDate value="<%= new Date() %>" pattern="yyyy-MM-dd" var="formatNowDate" />
    <div id="id1">
        <div>
            <h2>마이페이지</h2>
        </div>
        <div>
            <img src="/Project4/img/my_menu_01.png"/><a href="mypage.do">내 강의실</a>
            <br>
            <img src="/Project4/img/my_menu_02.png"/><a href="mypage_info.do">개인정보관리</a>
        </div>
    </div>

    <div id="id2">
        <div id="id2_1">
                <img id="img1" src="/Project4/img/user_image.png">
                <span id="sp_user_name">${params.name}</span>님 안녕하세요. <br>
                <p><span id="sp_user_email">이메일 주소</span>&nbsp;${params.email}</p>
        </div>
        <div id="id2_2">
            <hr>
            <div id="id2_2_1">
                <a href="">수강중인 강좌</a>
                <a href="">관심 강좌</a>
            </div>
            <a href="../lecture/lecture_detail.jsp"><div class="content">
                <div class="content_img">
                    <img src="" style="background-color: grey;"/>
                </div>
                <div class="content_card">
                    <p class="lecture_title">${params.title }</p>
                    <span class="lecture_teacher">${params.teacher}</span>
                    <span class="lecture_date">${params.strdate}~${params.enddate}</span>
                </div>
                <p class="content_state">
					<c:choose>
						<c:when test="${formattedStartDate le formatNowDate && formatNowDate ge formattedEndDate}">
							<small class="end">종료</small> 
						</c:when>
							<c:otherwise>
								<small class="ing">진행중</small> 
						</c:otherwise>
					</c:choose>
				</p>
                <div class="content_cancel">
                    <form id="frm3">
                        <input type="button" id="cancel_lecture" value="수강취소"/>
                    </form>
                </div>
            </div></a>
        </div>
    </div>
</div>
</main>
<script>
    let cnl_lecture = document.querySelector("#cancel_lecture");
    cnl_lecture.addEventListener("click", function(e) {
    	event.preventDefault();	//강의 상세페이지 이동 해제
        let chk_cnl = confirm("취소하시겠습니까?");
        if (chk_cnl) {
        	location.href="/Project4/mypage/mypage.jsp";
        }
    });
    
</script>
</body>
</html>