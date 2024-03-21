package bbs;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BbsDetailConn
 */
@WebServlet("/bbsdetail.do")
public class BbsDetailConn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BbsComuDAO dao = new BbsComuDAO(); 
		int idx = 0;
		idx = Integer.parseInt(request.getParameter("idx"));
		//idx = (bbs_idx !=null && !bbs_idx.isEmpty() ? Integer.parseInt("bbs_idx") :0);
		BbsComuDTO bbsView = dao.bbsView(idx);
		dao.close();
		
		String user_id="";
		String reg_date="";
		String title="";
		String content="";
		String modify_date="";
		if(bbsView!=null){
			user_id=bbsView.getMember_user_id();
			if(reg_date!=null && reg_date!=""){
				reg_date=bbsView.getComu_reg_date().toString();
			}
			title=bbsView.getComu_title();
			content=bbsView.getComu_content();
			reg_date=bbsView.getComu_reg_date();
			modify_date=bbsView.getComu_modify_date();
			content = (content!=null ? content.replace("\n\r","<br>"):"");
			content = (content!=null ? content.replace(" ","&nbsp"):"");
			
			request.setAttribute("idx", idx);
			request.setAttribute("user_id", user_id);
			request.setAttribute("title", title);
			request.setAttribute("content", content);
			request.setAttribute("reg_date", reg_date);
			request.setAttribute("modify_date", modify_date);
		}
		
		request.getRequestDispatcher("/bbs/bbsDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
