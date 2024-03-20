<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            margin:0px;
            padding:0px;
        }
        .main{
            margin: 0px auto;
            margin-top:200px;
            width: 1100px;
        }
        .border{
            width: 1100px;
            margin:0px auto;
        }
        .choice{
            border:1px solid white;
            padding:60px 100px;
            background-color: #e3f0fc;
            margin:0px auto;
            border-spacing: 20px;
        }
        .choice td{
            border:1px solid black;
            width:300px;
            height:300px;
            background-color: white;
        }
        
        td a{
        	
        }
    </style>
</head>
<body>
    <jsp:include page="/header/header.jsp" />
    <main>
    	<div class="main">
	        <h1 style="text-align: center; margin-bottom:50px;"> 회원가입</h1>
            <h2 style="text-align: center; margin:50px 0px;"> K-MOOC에 오신것을 환영합니다.</h2>
        </div>
        <div class="border" style="text-align: center;">
            <table class ="choice">
                <tr>
                    <td>
                    <div style="background-image: url('/Project4/img/adult.png');background-size:100% 100%; height:50%"></div>
                    <a href="join1.jsp">일반 회원 이미지</a>
                    </td>
                    <td>
                    <div style="background-image: url('/Project4/img/child.png');background-size:100% 100%; height:50%"></div>
                    <a href="agreement.jsp">어린이 회원 이미지</a>
                    </td>
                </tr>
            </table>
		</div>
    </main>
    <footer>
        
    </footer>
    <script>
    </script>
</body>
</html>