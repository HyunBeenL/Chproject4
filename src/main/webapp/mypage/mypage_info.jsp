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

        #frm1 input[type=button]{
            border: 1px solid transparent;
            background-color: transparent;
        }
        #frm1 input[type=button]:hover{
            border-bottom: 1px solid black;
            background-color: transparent;
        }
        table, tr, th, td{
            border: 1px solid transparent;
            border-collapse: collapse;
            font-size: 14px;
        }
        th {
            height: 40px;
            width: 250px;
            font-size: 16px;
        }
        #change_pwd {
            border: 1px solid grey;
            border-radius: 4px;
            background-color: white;
            text-decoration: none;
            color: black;
            padding: 5px 15px;
        }
        #change_pwd:hover {
            border: 1px solid grey;
            border-radius: 4px;
            background-color: rgb(200, 200, 200);
        }
        #change_pwd:active {
            border: 1px solid grey;
            border-radius: 4px;
            background-color: rgb(200, 200, 200);
            box-shadow: 1px 1px 1px 1px rgb(180, 180, 180);
        }
        #id2_2 {
            display: flex;
        }
        #frm2 {
            margin: auto;
        }
        #info_save {
            color: white;
            border: 4px solid rgb(0, 123, 255);
            background-color: rgb(0, 123, 255);
            padding: 5px 40px;
        }
        #info_save:hover {
            color: white;
            border: 4px solid rgb(0, 105, 217);
            background-color: rgb(0, 105, 217);
            padding: 5px 40px;
        }
        #info_save:active {
            color: white;
            border: 4px solid rgb(0, 123, 255);
            background-color: rgb(0, 123, 255);
            padding: 5px 40px;
        }
        #leave {
            margin-left: 120px;
            color: rgba(0, 0, 0, 0.5);
            border: 0px;
            background-color: transparent;
            text-decoration: underline;
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
                <img src="img/my_menu_01.png"/><input type="button" value="내 강의실">
                <br>
                <img src="img/my_menu_02.png"/><input type="button" value="개인정보관리">
            </form>
        </div>
    </div>

    <div id="id2">
        <table id="id2_1">
            <tr>
                <th>사용자 아이디</th>
                <td>{user_id}</td>
            </tr>
            <tr>
                <th>비밀번호 변경</th>
                <td><a id="change_pwd" href="mypage_change_password.jsp">비밀번호 변경</a></td>
            </tr>
            <tr>
                <th>이름</th>
                <td>{user_name}</td>
            </tr>
            <tr>
                <th>이메일</th>
                <td>{user_email}</td>
            </tr>
            <tr>
                <th>전화번호</th>
                <td>{user_tel}</td>
            </tr>
            <tr>
                <th>회원등급</th>
                <td>{강사/학생}</td>
            </tr>
        </table>
        <br>
        <div id="id2_2">
            <form id="frm2">
                <input id="info_save" type="button" value="저장"/>
                <input id="leave" type="button" value="회원탈퇴"/>
            </form>
        </div>
    
    </div>
</div>
</main>

</body>
</html>