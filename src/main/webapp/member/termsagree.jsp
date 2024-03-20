<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/header.css">
    <style>
        *{
            margin:0px;
            padding:0px;
        }
        .main{
            margin:200px auto;
            width: 1100px;
        }
        .border{
            width:800px;
            margin: 100px auto;
            background-color: skyblue;
            padding: 60px 30px;
        }
        .contact{
            width:600px;
            margin:0px auto;
            background-color: white;
            padding: 20px 40px;
        }
        
        .contact label{
            width: 120px;
            height: 72px;
            float: left;
            text-align: center;
            line-height: 75px;
        }
        .contents{
            margin:10px;
        }
        .contact li{
            list-style-type: none;
        }
        .btn{
            width: 100px;
            height: 50px;
            margin :10px;
        }
        
        .submitbtn input:hover,.submitbtn button:hover{
            background-color: black;
            color:white;
            border:1px solid gray;
        }
        
        .submitbtn{
            text-align: center;
        }
        li button{
            float:right;
            width: 90px;
            height: 30px;
            margin :10px;
            background-color:#ebebeb;
        	font-size:16px;
        	border:1px solid white;
        	border-radius:3px;
        }
        input[type=checkbox]{
            width:20px;
            margin:10px;
        }
    </style>
</head>
<body>
    <main>
        <div class="main">
            <h1 style="text-align: center; margin-bottom:50px;"> 약관동의</h1>
            <h2 style="text-align: center; margin:50px 0px;"> </h2>
            <form action="join1.jsp">
                <div class="border">
                    <div style="width:680px; display:block; margin:0px auto; font-size:20px; height:30px;">
                        <input type="checkbox">전체 약관에 동의합니다.
                    </div>
                    <fieldset class="contact">
                        <ul>
                            <li>
                                <input type="checkbox">이용약관 동의<button>자세히 보기</button>
                            </li>
                            <li>
                                <input type="checkbox">개인정보 필수항목 수집 이용 및 동의<button>자세히 보기</button>
                            </li>
                            <li>
                                <input type="checkbox">개인정보 선택항목 수집 및 이용 동의<button>자세히 보기</button>
                            </li>
                            <li>
                                <input type="checkbox">홍보 설문 관련 정보 수신 동의<button>자세히 보기</button>
                            </li>
                        </ul>
                        
                    </fieldset>
                </div>
                <div class="submitbtn">
                    <button class="btn" onclick="window.location.href='login.jsp'">취소</button>
                    <input class="btn" type="submit" value="다음">
                </div>
            </form>
        </div>
    </main>
    <footer>
    </footer>
    <script>
    </script>
</body>
</html>