package com.gga.dao;

import com.gga.vo.NoticeVo;

public class NoticeDao extends DBConn{
	/**
	 * insert - 게시글 등록
	 */
	public int insert(NoticeVo noticeVo) {
		int result = 0;
		String sql=" insert into gga_notice(nid, ntitle, ncontent, nhits, id, ndate) values('b_'||ltrim(to_char(sequ_gga_board.nextval,'0000')), ?, ?, 0, ?, sysdate)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, noticeVo.getNtitle());
			pstmt.setString(2, noticeVo.getNcontent());
			pstmt.setString(3, noticeVo.getId());
			
			result = pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
		
		
	}
}