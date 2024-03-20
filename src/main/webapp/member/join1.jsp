<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
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
            width:1100px;
            margin: 100px auto;
            background-color: skyblue;
            padding: 80px 30px;
        }
        
        .contact{
        	width:1000px;
            margin:0px auto;
            background-color: white;
            border-top:3px solid black;
        }
        .contact input:not([type=submit],[type=radio]){
            width: 700px;
            height:50px;
            border:1px solid white;
        }
        .contact label{
            width: 170px;
            height: 72px;
            float: left;
            background-color: gray;
        }
        .contents{
            margin:10px;
        }
        .contact li{
            list-style-type: none;
        }
        .submitbtn input,.submitbtn button{
            width: 100px;
            height: 50px;
            margin :-30px 10px;
        }
        
        .submitbtn input:hover,.submitbtn button:hover{
            background-color: black;
            color:white;
            border:1px solid gray;
        }
        
        .submitbtn{
            text-align: center;
        }
        
    </style>
</head>
<body>
    <header id="header">
        <jsp:include page="/header/header.jsp" />
    </header>
    <main>
        <div class="main">
            <h1 style="text-align: center; margin-bottom:50px;"> 회원가입</h1>
            <h2 style="text-align: center; margin:50px 0px;"> K-MOOC에 오신것을 환영합니다.</h2>
                <form action="">
                    <div class="border">
                        <p style="width:1000px; display:block; margin:0px auto;">기본 정보</p>
                        <fieldset class="contact">
                            <ul>
                                <li>
                                    <label for="name">아이디</label>
                                    <input type="text" id ="name" name="name" maxlength="20" class="contents"  placeholder="아이디 입력" autofocus required/>
                                    <button id="idconfirm">중복 확인</button>
                                    <p id ="iderr"></p>
                                </li>
                                <hr>
                                <li>
                                    <label for="password" >비밀번호</label>
                                    <input type="password" id ="password" name="password" maxlength="30" class="contents"  placeholder="비밀번호 입력" required>
                                </li>
                                <li>
                                    <label for="password" >비밀번호 확인</label>
                                    <input type="password" id ="password" name="password" maxlength="30" class="contents"  placeholder="비밀번호 다시 입력" required>
                                    <p id ="pwderr"></p>
                                </li>
                                <hr>
                                <li>
                                    <label for="tel" >전화번호</label>
                                    <input type="tel" id ="phone" name="phone" maxlength="11" class="contents"  placeholder="전화번호 입력" required>
                                    <p id ="phoneerr"></p>
                                </li>
                                <hr>
                                <li>
                                    <label for="email" >이메일</label>
                                    <input type="email" id ="email" name="email" maxlength="30" class="contents" placeholder="Email Address" required>
                                    <button id="emailconfirm">중복 확인</button>
                                    <p id ="emailerr"></p>
                                </li>
                                <hr>
                                <li>
                                    <label for="">회원 구분</label>
                                    
                                    <div>
                                        <table style="width:400px; height: 72px; text-align: center;">
                                            <tr>
                                                <td><input type="radio" name="memtype" id="memtype" value="강사" style="margin:10px;" >강사</td>
                                                <td><input type="radio" name="memtype" id="memtype" value="학생" style="margin:10px;">학생</td>
                                            </tr>
                                        </table>
                                    </div>
                                </li>
                                <li>
                                    <label for="compnum" >사업자등록번호</label>
                                    <input type="text" id ="compnum" name="compnum" maxlength="20" class="contents" placeholder="사업자 등록번호" autofocus required/>
                                    <button id="idconfirm">중복 확인</button>
                                    <p id ="iderr"></p>
                                </li>
                                <li>
                                    <label for="compname" >기관명</label>
                                    <input type="text" id ="compname" name="compname" maxlength="20" class="contents"  placeholder="기관명 이름" autofocus required/>
                                    <p id ="iderr"></p>
                                </li>
                                <hr>
                            </ul>
                        </fieldset>
                    </div>
                    <div class="submitbtn">
                        <button onclick="window.location.href='practice.html'">취소</button>
                        <input type="submit" value="다음">
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