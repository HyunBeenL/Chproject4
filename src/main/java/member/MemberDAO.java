package member;

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
}
