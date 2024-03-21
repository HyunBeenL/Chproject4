<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pwd = request.getParameter("password");
	String birth = request.getParameter("birth");
	String tel = request.getParameter("phone");
	String email = request.getParameter("email");
	String memtype = request.getParameter("memtype");
	String compnum = request.getParameter("compnum");
	String compname = request.getParameter("compname");
	
	
	
	MemberDAO dao = new MemberDAO();
	MemberDTO dto = new MemberDTO();
	dto.setMember_name(name);
	dto.setMember_user_id(id);
	dto.setMember_pwd(pwd);
	dto.setMember_phone(tel);
	dto.setMember_email(email);
	dto.setMember_category(memtype);
	dto.setMember_company_num(compnum);
	dto.setMember_company(compname);
	dto.setMember_birth(birth);
	
	int result = dao.join(dto);
	dao.close();
	if(result >0){
		response.sendRedirect("login.do");
	}
	else{
		out.println("<script>");
		out.println("alert('오류 발생!')");
		out.println("window.location.replace('join.do')");
		out.println("</script>");
	}
%>
</body>
</html>