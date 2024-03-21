package member;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import common.JDBConnect;

public class MemberDAO extends JDBConnect {
	public MemberDAO() {
		
	}
	
	public MemberDAO(String driver, String url, String id, String pwd) {
		super(driver, url, id, pwd);	
	}
	
	public MemberDTO getMemberInfo(String id,String pwd) {
		MemberDTO dto = new MemberDTO();
		String sql = "SELECT * FROM kmc_member WHERE Member_user_id=?";
		try	{
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if(rs.next()) {
				if(rs.getString("Member_pwd").equals(pwd) ) {
					dto.setMember_user_id(rs.getString("Member_user_id"));
					dto.setMember_name(rs.getString("Member_name"));
				}	
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	public List<MemberDTO> MemberList(){
		List<MemberDTO> list = new Vector<MemberDTO>();
		
		
		StringBuilder sb = new StringBuilder();
		sb.append("SELECT member_user_id, member_email, member_company_num");
		sb.append(" FROM kmc_member");
		
		/* sb.append(" LIMIT "+10*(a-1)+", "+10); */
		try {
			psmt = conn.prepareStatement(sb.toString());
			rs = psmt.executeQuery();
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setMember_user_id(rs.getString("member_user_id"));
				dto.setMember_email(rs.getString("member_email"));
				dto.setMember_company_num(rs.getString("member_company_num"));
				list.add(dto);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
}
