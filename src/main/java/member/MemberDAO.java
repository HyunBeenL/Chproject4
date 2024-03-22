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
	
	public boolean idcheck(String id){
		boolean check = false;
		StringBuilder sb = new StringBuilder();
		sb.append("SELECT COUNT(*)");
		sb.append(" FROM kmc_member");
		sb.append(" WHERE member_user_id='"+id.trim()+"'");
		int result = 0;
		/* sb.append(" LIMIT "+10*(a-1)+", "+10); */
		try {
			psmt = conn.prepareStatement(sb.toString());
			rs = psmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		if(result >= 1) {
			check = false;
		}
		else {
			check =true;
		}
		
		return check;
	}
	
	public boolean emailcheck(String email){
		boolean check = false;
		StringBuilder sb = new StringBuilder();
		sb.append("SELECT COUNT(*)");
		sb.append(" FROM kmc_member");
		sb.append(" WHERE member_email='"+email.trim()+"'");
		int result = 0;
		/* sb.append(" LIMIT "+10*(a-1)+", "+10); */
		try {
			psmt = conn.prepareStatement(sb.toString());
			rs = psmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		if(result >= 1) {
			check = false;
		}
		else {
			check =true;
		}
		
		return check;
	}
	
	
	public int join(MemberDTO dto){
		String name = dto.getMember_name();
		String id = dto.getMember_user_id();
		String pwd = dto.getMember_pwd();
		String birth = dto.getMember_birth();
		String tel = dto.getMember_phone();
		String email = dto.getMember_email();
		String memtype = dto.getMember_category();
		String compnum = dto.getMember_company_num();
		String compname = dto.getMember_company();
		int result = 0;
		
		StringBuilder sb = new StringBuilder();
		sb.append("INSERT INTO kmc_member(member_name, member_user_id, member_pwd, member_phone,");
		sb.append("member_email, member_category, member_company_num, member_company, member_bitrh, member_info_update)");
		sb.append(" VALUES(?,?,?,?,?,?,?,?,?,NOW())");
		
		try {
			if(id.trim() !="" && name.trim()!= "" && pwd.trim()!=""&&
			birth.trim() !="" && tel.trim()!= "" && email.trim()!=""&&
			memtype.trim() !="") {
			psmt = conn.prepareStatement(sb.toString());
			psmt.setString(1, name);
			psmt.setString(2, id);
			psmt.setString(3, pwd);
			psmt.setString(4, tel);
			psmt.setString(5, email);
			psmt.setString(6, memtype);
			psmt.setString(7, compnum);
			psmt.setString(8, compname);
			psmt.setString(9, birth);
			
			
			result = psmt.executeUpdate();
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
	
	
}
