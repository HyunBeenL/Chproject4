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

		.header{
			height:100px;
		}
		#header {
		    background-color: white;
		    width: 100%;
		    height: 100px;
		    box-sizing: border-box;
		    text-align: center;
		    position: fixed;
		    top: 0;
		    z-index: 1;
		    border-bottom: 1px solid black;
		}
		#headcontainer {
		    width:1100px;
		    margin:0px auto;
		    position: relative;
		}
		#logo {
		    display: inline-block;
		    position: absolute;
		    left: 0;
		    height: 100%;
		}
		
		#header #top_menu {
		    position: absolute;
		    left: 100px;
		    display: inline-block;
		    height: 100%;
		}
		#top_menu li {
		    display: inline-block;
		    height: 100%;
		}
		#top_menu a {
		    display: inline-block;
		    padding: 12px 20px;
		    font-weight: 900;
		    color: black;
		    font-size: 18px;
		    text-decoration: none;
		}
		
		#top_menu_1 {
		    position: absolute;
		    right: 0;
		    display: inline-block;
		    height: 100%;
		}
		#top_menu_1 li {
		    display: inline-block;
		    height: 100%;
		}
		#top_menu_1 a {
		    display: inline-block;
		    padding: 12px 20px;
		    font-weight: 900;
		    color: black;
		    font-size: 18px;
		    text-decoration: none;
		}
		
		#header #top_menu li a:hover,
		#header #top_menu li a:active,
		#header #top_menu li a:focus {
		    color: #2BA7F0;
		}
    </style>
    
</head>
<body>
    <header id="header">
        <div id="headcontainer">
            <div id="logo">
                <a href="/home.html"><h1>로고</h1></a>
            </div>
            <nav id="top_menu">
                <ul>
                    <li><button>강좌</button></li>
                    <li><a href="#">커뮤니티</a></li>
                </ul>
            </nav>
            <nav id="top_menu_1">
                <ul>
                    <li><a href="/Project4/member/login.jsp">로그인</a></li>
                    <li><a href="/member/join.jsp">회원가입</a></li>
                </ul>
            </nav>
        </div>
    </header>
</body>
</html>