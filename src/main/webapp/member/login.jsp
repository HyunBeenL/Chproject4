<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
            margin:0px;
            padding:0px;
            box-sizing: border-box;
        }
        main{
            width: 1100px;
            height: auto;
            margin:200px auto;
            text-align: center;
        }
        #id, #pwd{
            width:460px;
            height:60px;
            margin: 3px;
            border:1px solid white;
        }
        .viewimport{
            text-align: right;
            width:460px;
            margin-bottom: 20px;
        }
        .viewimport > a{
            font-size: 12px;
            text-decoration: none;
            color:gray;

        }
        
        form{
            width:600px;
            height: auto;
            margin:20px auto;
            background-color: #e3f0fc;
            padding:50px 80px;
        }

        input[type="submit"],#joinbtn{
            width:460px;
            height: 60px;
            margin:3px;
            border-radius: 1px;
            font-weight: bold;
            color:white;
            border: 1px solid blue;
            font-weight:bold;
            font-size:20px;
        }
        input[type="submit"]{
            background-color: blue;
        }
        #joinbtn>a{
            text-decoration: none;
            color:blue;
            font-weight:bold;
            font-size:20px;
        }
</style>
</head>
<body>
	<header>
		<jsp:include page="/header/header.jsp" />
	</header>
	<main>
		<h1>로그인</h1>
		<form action="">
	        <div class="loginarea">
	            <div>
	                <input type="text" name="id" id="id" placeholder="아이디를 입력하세요.">
	            </div>
	            <div>
	                <input type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요.">
	            </div>
	        <div class="viewimport">
	            <a href="find.jsp">아이디 찾기  |</a>
	            <a href="find.jsp">비밀번호 찾기  </a>
	        </div>
	            <input type="submit" id="loginbtn" name="loginbtn" value="로그인">
	            <button id="joinbtn"><a href="/Project4/member/joinchoice.jsp">회원가입</a></button>
	        </div>
    	</form>
	</main>
	<footer>
		
	</footer>
</body>
</html>