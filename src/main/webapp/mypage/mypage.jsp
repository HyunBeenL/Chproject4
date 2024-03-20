<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        #frm1 input[type=button]{
            border: 1px solid transparent;
            background-color: transparent;
        }
        #frm1 input[type=button]:hover{
            border-bottom: 1px solid black;
            background-color: transparent;
        }
        #frm2 input[type=button]{
            border: 1px solid transparent;
            background-color: transparent;
        }
        #frm2 input[type=button]:hover{
            border-bottom: 1px solid black;
            background-color: transparent;
        }
        #frm2 input[type=button]:active{
            border-bottom: 1px solid black;
            background-color: transparent;
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
	<header>
	<jsp:include page="/header/header.jsp" />
	</header>
<main>
<div class="container">
    <div id="id1">
        <div>
            <h2>마이페이지</h2>
        </div>
        <div>
            <form id="frm1">
                <img src="/Project4/img/my_menu_01.png"/><input type="button" value="내 강의실">
                <br>
                <img src="/Project4/img/my_menu_02.png"/><input type="button" value="개인정보관리">
            </form>
        </div>
    </div>

    <div id="id2">
        <div id="id2_1">
                <img id="img1" src="/Project4/img/user_image.png">
                <span id="sp_user_name">{user_name}</span>님 안녕하세요. <br>
                <p><span id="sp_user_email">이메일 주소</span>&nbsp;{user_email}</p>
        </div>
        <div id="id2_2">
            <hr>
            <div id="id2_2_1">
                <form id="frm2">
                    <input type="button" value="수강중인 강좌"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="button" value="관심 강좌"/>
                </form>
            </div>
            <div class="content">
                <div class="content_img">
                    <img src="" style="background-color: grey;"/>
                </div>
                <div class="content_card">
                    <p class="lecture_title">{lecture_title}</p>
                    <span class="lecture_teacher">{lecture_teacher}</span>
                    <span class="lecture_date">{lecture_start_date}~{lecture_end_date}</span>
                </div>
                <p class="content_state">{state}</p>
                <div class="content_cancel">
                    <form id="frm3">
                        <input type="button" id="cancel_lecture" value="수강취소"/>
                    </form>
                </div>
            </div>
            
            <div class="content"></div>
            <div class="content"></div>
        </div>
    </div>
</div>
</main>
<script>
    let cnl_lecture = document.querySelector("#cancel_lecture");
    cnl_lecture.addEventListener("click", function(e) {
        let chk_cnl = confirm("취소하시겠습니까?");
    });
    
</script>
</body>
</html>