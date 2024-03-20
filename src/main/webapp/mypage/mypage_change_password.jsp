<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyPage</title>
    <style>
        .container {
            width: 1100px;
            margin: auto;
        }
        #id0 {
            height: 76px;
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
            margin: 0 auto;
            left: 200px;
            position: relative;
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
        #info_cancel {
            border: 4px solid rgb(0, 123, 255);
            background-color: white;
            padding: 5px 40px;
        }
        #info_cancel:hover {
            border: 4px solid rgb(0, 105, 217);
            background-color: rgb(0, 105, 217);
            padding: 5px 40px;
        }
        #info_cancel:active {
            border: 4px solid rgb(0, 123, 255);
            background-color: rgb(0, 123, 255);
            padding: 5px 40px;
        }
    </style>
</head>
<body>
	<jsp:include page="/header/header.jsp" />
<main>
	<div id="id0"></div>
<div class="container">
        <table id="id2_1">
        <form id="frm2">
            <tr>
                <th>사용자 아이디</th>
                <td><input type="text" value="{user_id}" readonly></td>
            </tr>
            <tr>
                <th><label for="pwd_now">현재 비밀번호</label></th>
                <td><input type="password" name="pwd_now" id="pwd_now"></td>
            </tr>
            <tr>
                <th><label for="pwd_new">새 비밀번호</label></th>
                <td><input type="password" name="pwd_new" id="pwd_new"></td>
            </tr>
            <tr>
                <th><label for="pwd_chk">비밀번호 확인</label></th>
                <td><input type="password" name="pwd_chk" id="pwd_chk"></td>
            </tr>
            
        </table>
        <br>
        <div id="id2_2">
            <input id="info_save" type="button" value="저장"/>
            <input id="info_cancel" type="button" value="취소"/>
        </div>
    </form>
</div>
</main>

<script>
let info_save = document.querySelector("#info_save");
let info_cancel = document.querySelector("#info_cancel");

info_save.addEventListener("click", function(e) {
    let chk_save = confirm("저장하시겠습니까?");
})

info_cancel.addEventListener("click", function(e) {
    let chk_cancel = confirm("취소하시겠습니까?");
    if (chk_cancel) {
        location.href = "/Project4/mypage/mypage_info.jsp";
    }
})
</script>

</body>
</html>