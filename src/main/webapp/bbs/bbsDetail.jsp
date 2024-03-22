<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세</title>
<style>
    .main{
        width: 1100px;
        margin: 0 auto;
    }
    span{
        width: 100px;
        font-size: 18px;
        margin-right: 10px;
        line-height: 50px;
    }
    #btn_submit, #btn_cancel, #btn_delete{
        margin-top: 10px;
        padding: 5px 10px;
        margin-top: 10px;
        margin-right: 15px;

    }
    .title{
        font-size: 28px;
        text-align: center;
        width: 1100px;
    }
    .date{
        margin: 20px 0;
        font-size: 18px;
    }
    .content{
        margin: 20px 0;
        font-size: 18px;
    }
    ul{
        padding: 0px;
        height: 80px;
        border-top: 1px silver solid;
        border-bottom: 1px silver solid;
        margin: 0px;
    }
    .moveArticle{
        width: 1100px;
        height: 50px;
    }
    span{
        width: 100px;
        font-size: 18px;
        margin-right: 10px;
        line-height: 50px;
        text-align:center;
        padding: 10px 0px;
        height: 60px;
        display: table-cell;
    }
    .flag{
        width: 100px;
    }
    .title{
        width: 800px;
    }
    .regdate{
        width: 200px;
        text-align: center;
    }
    a{  
        height: 80px;
        text-decoration: none;
        color: black;
    }
    .comment{
        margin: 10px 0;
    }
    #frm_comment{
        border: 1px solid black;
        padding: 10px;
    }
    textarea{
        width: 1060px;
        height: 100px;
        font-size: 18px;
        resize: none;
    }
    #cmt_btn_submit{
        padding: 5px 10px;
    }
    .btn{
        display: flex;
        flex-direction: row-reverse;
        margin-top: 10px;
        margin-right: 15px;
    }
    #cmtUserId{
        display: inline;
    }
    img{
        vertical-align: middle
    }
    .commentView{
        border-top: 1px silver solid;
        border-bottom: 1px silver solid;
    }
    .btn{
    	margin-bottom: 10px;
    }
    .commentView{
    	display:none;
    	border: 1px solid black;
    	margin-bottom: 10px;
    }
</style>
</head>
<body>
<div class="wrap">
<div class=header>
<%@ include file="../header/header.jsp" %>
</div>
<div class="main">
    <div class="article">
        <div class="title"><p>${title}</p></div>
        <div class="date">작성일 ${reg_date} 최종 수정일 ${modify_date}</div>
        <div class="content" id="content">${content}</div>
        <ul>
            <a href="bbsdetail.do?idx=${idx-1}" class= "moveArticle" id="preArticle" >
            <span class="flag">↑</span>
            <span class="flag">이전글</span>
            <span class="title">${title}</span>
            <span class="regdate">${reg_date}</span>
            </a>
        </ul>
        <ul>
            <a href="bbsdetail.do?idx=${idx+1}" class= "moveArticle" id="nextArticle" >
            <span class="flag">↓</span>
            <span class="flag">다음글</span>
            <span class="title">${title}</span>
            <span class="regdate">${reg_date}</span>
            </a>
        </ul>

    </div>
    <div class="comment" id="commentbtn"><button>댓글{숫자}<b> ↓</b></button></div>
    <div class="commentView">
        <div>
            <img src="/Project4/img/cmtperson.png">
            <span id="cmtUserId">${user_id}</span>
        </div>
        <p>${comment}</p>
        <p>${reg_date}</p>
    </div>
    <form name="frm_comment" id="frm_comment" action=""method="post">
            <div class="f1">
            <div>
            <img src="/Project4/img/cmtperson.png">
            <span id="cmtUserId">${userId}</span>
            </div>
            <input type="hidden" name="user_id" id="user_id" value="{UserId}" readonly>
            </div>
            <textarea name="cmtContent" id="cmtContent"></textarea>
            <div class="btn">
            <input type="submit" name="cmt_btn_submit" id="cmt_btn_submit" value="글등록">
            </div>  
    </form>

        <div class="btn">
        <input type="button" name="btn_cancel" id="btn_cancel" value="목록">
        <c:if test="${ user_id eq userId}">
        <input type="button" name="btn_delete" id="btn_delete" value="삭제">
        <input type="submit" name="btn_submit" id="btn_submit" value="수정">
        </c:if>
        </div>
</div>


<div class=footer>
<%@ include file="../footer/footer.jsp" %>
</div>

</div>

<script>
	if(document.querySelector("#btn_submit")!=null){
    document.querySelector("#btn_submit").addEventListener("click",()=>{
        
        let c = document.getElementById("content");
        if(c.value == ""){
            alert("내용이 비어있습니다.");
            event.preventDefault();
        }
        window.location.href="./modifyConn.do?idx=${idx}";
    })
	}
	if(document.querySelector("#btn_submit")!=null){
    document.querySelector("#btn_delete").addEventListener("click",()=>{
        if(confirm("삭제하시겠습니까?")){
            window.location.href="./delete.do?idx=${idx}";
        }
    })
	}
    document.querySelector("#btn_cancel").addEventListener("click",()=>{
        if(confirm("이전페이지로 돌아가시겠습니까?")){
            window.location.href="./comu.do";
        }
    })
    
    let a = document.querySelector(".commentView");
	document.querySelector("#commentbtn").addEventListener("click",()=>{
	a.style.display=='block'? a.style.display='none': a.style.display='block';
	})
    </script>
</body>
</html>
