package controller.lecture;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lecture.LectureDAO;
import lecture.LectureDTO;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import common.BbsPage;

@WebServlet("/lecture/lecture_main.do")
public class LectureMainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int total_count = 0;	//전체 게시글 수
		int total_page = 1;	//전체 페이지 개수 = ceil(total_count/page_size)
		int page_no = 1;	//현재 페이지 = total_page/page_size
		int page_size = 20;	//db limit에 들어갈 값들
		int page_skip_cnt = 10;	//db limit에 들어갈 값들 size*skip?
		int page_block_size = 10;
		int page_block_start = 1;	//page_no
		int page_block_end = 1;
		
		//JSP 페이지에 전달할 앱 객체 설정
		Map<String, Object> params = new HashMap<String, Object>();
		//검색 옵션
		String search_option = req.getParameter("search_option");
		String search_word = req.getParameter("search_word");
		//선택 옵션
		String search_state = req.getParameter("search_state");
		String search_category = req.getParameter("search_category");
		String search_category_detail = req.getParameter("search_category_detail");
		String search_period = req.getParameter("search_period");
		//페이징 옵션
		page_no = (req.getParameter("page_no")!=null ? Integer.parseInt(req.getParameter("page_no")) : 1);
		page_skip_cnt = (page_no-1)*page_size;
		
		
		//검색 파라미터 설정(검색)
		if ( search_word != null ) {
			params.put("search_option", search_option);
			params.put("search_word", search_word);
		}
		
		
		//검색 파라미터 설정(카테고리)
		if (true) {
			params.put("search_state", search_state);
			params.put("search_category", search_category);
			params.put("search_category_detail", search_category_detail);
			params.put("search_period", search_period);
		}
		
		//페이징 파라미터 설정
		params.put("page_no", page_no);
		params.put("page_size", page_size);
		params.put("page_skip_cnt", page_skip_cnt);
				
		//게시판 테이블 조회
		LectureDAO lec_dao = new LectureDAO();
		total_count = lec_dao.lectureTotalCount(params);
		List<LectureDTO> lectureList = lec_dao.lectureList(params);
		
		//페이징 파라미터 설정
		total_page = (int)Math.ceil(total_count/(double)page_size);
		page_block_size = 10;
		page_block_start = (int)Math.floor((page_no-1)/(double)page_size)*page_size +1;
		page_block_end = (int)Math.ceil(page_no/(double)page_size)*page_size;
		page_block_end = (page_block_end>total_page?total_page:page_block_end);
				
		params.put("total_count", total_count);
		params.put("total_page", total_page);
		params.put("page_block_size", page_block_size);
		params.put("page_block_start", page_block_start);
		params.put("page_block_end", page_block_end);

		
		String pagingArea = BbsPage.pagingArea(total_page, page_no, page_block_start, page_block_end, "lecture_main.do","");
				
		params.put("paging", pagingArea);
				
		req.setAttribute("lectureList", lectureList);
		req.setAttribute("params", params);
		
		
		req.getRequestDispatcher("/lecture/lecture_main.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
