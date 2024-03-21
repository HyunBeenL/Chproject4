package dao;

import java.util.ArrayList;

import common.JDBConnect;
import dto.LectureDTO;
import jakarta.servlet.ServletContext;

public class LectureDAO extends JDBConnect {
	public LectureDAO() {
	}

	public LectureDAO(ServletContext application) {
		super(application);

	}

	public ArrayList<LectureDTO> listBestLecture() {

		ArrayList<LectureDTO> lectureList = new ArrayList<LectureDTO>();
		String sql = "select * from best_view";

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				LectureDTO lecture = new LectureDTO();
				lecture.setLecture_idx(rs.getInt("lecture_idx"));
				lecture.setLecture_title(rs.getString("lecture_title"));
				lecture.setLecture_start_date(rs.getDate("lecture_start_date"));
				lecture.setLecture_end_date(rs.getDate("lecture_end_date"));
				lecture.setLecture_img(rs.getString("lecture_img"));
				lectureList.add(lecture);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("베스트 상품 가져오기 오류");
		}

		return lectureList;
	}

	public ArrayList<LectureDTO> listRecommendLecture() {
		ArrayList<LectureDTO> lectureList = new ArrayList<LectureDTO>();
		String sql = "select * from recommend_view";

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				LectureDTO lecture = new LectureDTO();
				lecture.setLecture_idx(rs.getInt("lecture_idx"));
				lecture.setLecture_title(rs.getString("lecture_title"));
				lecture.setMember_name(rs.getString("member_name"));
				lecture.setMember_company(rs.getString("member_company"));
				lecture.setLecture_start_date(rs.getDate("lecture_start_date"));
				lecture.setLecture_end_date(rs.getDate("lecture_end_date"));
				lecture.setLecture_img(rs.getString("lecture_img"));
				lectureList.add(lecture);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("추천 상품 가져오기 오류");
		}

		return lectureList;
	}

	public ArrayList<LectureDTO> lectureDetail(int lecture_idx) {
		ArrayList<LectureDTO> lectureList = new ArrayList<LectureDTO>();
		String sql = "select * from kmc_lecture where lecture_idx = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, lecture_idx);
			rs = psmt.executeQuery();
			while (rs.next()) {
				LectureDTO lecture = new LectureDTO();
				lecture.setLecture_idx(rs.getInt("lecture_idx"));
				lecture.setLecture_title(rs.getString("lecture_title"));
				lecture.setMember_name(rs.getString("member_name"));
				lecture.setMember_company(rs.getString("member_company"));
				lecture.setLecture_start_date(rs.getDate("lecture_start_date"));
				lecture.setLecture_end_date(rs.getDate("lecture_end_date"));
				lecture.setLecture_img(rs.getString("lecture_img"));
				lecture.setLecture_endPrize(rs.getString("lecture_endPrize"));
				lecture.setLecture_star(rs.getInt("lecture_star"));
				lecture.setLecture_content(rs.getString("lecture_content"));
				lecture.setLecture_plan(rs.getString("lecture_plan"));
				lecture.setLecture_content_detail(rs.getString("lecture_content_detail"));
				lecture.setLecture_question(rs.getString("lecture_question"));
				lecture.setLecture_youtube_url(rs.getString("lecture_youtube_url"));
				lecture.setLecture_category(rs.getString("lecture_category"));
				lecture.setLecture_category_detail(rs.getString("lecture_category_detail"));
				lecture.setMember_idx(rs.getInt("member_idx"));
				lecture.setHeart_count(rs.getInt("heart_count"));
				lecture.setLecture_reg_date(rs.getDate("lecture_reg_date"));

				lectureList.add(lecture);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("강좌 상세정보 가져오기 오류");
		}

		return lectureList;
	}



}
