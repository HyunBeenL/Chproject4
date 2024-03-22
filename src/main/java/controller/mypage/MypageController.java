package controller.mypage;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import dto.CartDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lecture.LectureDTO;
import member.MemberDAO;
import member.MemberDTO;

@WebServlet("/mypage/mypage.do")
public class MypageController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession(true);
		String id = (String)session.getAttribute("userId");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO memdto = (MemberDTO)dao.getCartInfo(id).get("memdto");
		LectureDTO lecdto = (LectureDTO)dao.getCartInfo(id).get("lecdto");
		CartDTO cartdto = (CartDTO)dao.getCartInfo(id).get("cartdto");
		
		Map<String, Object> params = new HashMap<String,Object>();
		
		String email = memdto.getMember_email();
		String name = memdto.getMember_name();
		String title = cartdto.getLecture_title();
		String teacher =cartdto.getLecture_teacher();
		Date strdate =lecdto.getLecture_start_date();;
		Date enddate =lecdto.getLecture_end_date();
		
		params.put("title", title);
		params.put("name", name);
		params.put("id", id);
		params.put("email", email);
		params.put("teacher", teacher);
		params.put("strdate", strdate);
		params.put("enddate", enddate);
		
		req.setAttribute("params", params);
		
		req.getRequestDispatcher("/mypage/mypage.jsp").forward(req, resp);
	}
	
}
