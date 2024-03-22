<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
    <style>
    	main{
    		margin-top: 100px;
    	}
        .container {
            width: 1100px;
            margin: auto;
        }
        #id0 {
            height: 76px;
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
        a {
        	text-decoration: none;
        	color: black;
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
	
	<jsp:include page="/header/header.jsp" />

<main>
<div class="container">
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
        <table id="id2_1">
            <tr>
                <th>사용자 아이디</th>
                <td>${params.id}</td>
            </tr>
            <tr>
                <th>비밀번호 변경</th>
                <td><a id="change_pwd" href="mypage_change_password.jsp">비밀번호 변경</a></td>
            </tr>
            <tr>
                <th>이름</th>
                <td>${params.name}</td>
            </tr>
            <tr>
                <th>이메일</th>
                <td>${params.email}</td>
            </tr>
            <tr>
                <th>전화번호</th>
                <td>${params.tel}</td>
            </tr>
            <tr>
                <th>회원등급</th>
                <td>${params.category}</td>
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

<script>
    let info_save = document.querySelector("#info_save");

    info_save.addEventListener("click", function(e) {
        let chk_save = confirm("저장하시겠습니까?");
    })
</script>

</body>
</html>