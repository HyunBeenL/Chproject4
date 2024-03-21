package action;

import java.io.IOException;
import java.util.ArrayList;

import dao.LectureDAO;
import dto.LectureDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mainController.Action;

public class LectureDetail implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int lecture_idx =  Integer.parseInt(request.getParameter("lecture_idx"));  
		String url = "/lecture/lecture_detail.jsp";
		
		LectureDAO dao = new LectureDAO();
		ArrayList<LectureDTO> lecture_detail = dao.lectureDetail(lecture_idx);
		System.out.println(lecture_detail);
		request.setAttribute("lectureDetail", lecture_detail);		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	

}
