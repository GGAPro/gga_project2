package com.gga.dao;

import java.util.ArrayList;

import com.gga.vo.NoticeVo;

public class NoticeDao extends DBConn{
	/**
	 * update
	 */
	public int update(NoticeVo noticeVo) {
		int result = 0;
		String sql = "update ggadmin_notice set ntitle=?, ncontent=?, where nid=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, noticeVo.getNtitle());
			pstmt.setString(2, noticeVo.getNcontent());
			pstmt.setString(3, noticeVo.getNid());
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * select- 
	 */
	public NoticeVo select(String nid) {
		NoticeVo noticeVo = new NoticeVo();
		String sql = "";
		getPreparedStatement(sql);
		
		try {
			pstmt.executeQuery();
			while(rs.next()) {
				noticeVo.setNtitle(rs.getString(1));
				noticeVo.setNhits(rs.getInt(1));
				noticeVo.setNdate(rs.getString(1));
			}
			
			} catch(Exception e) {
				e.printStackTrace();
			}
		return noticeVo;
		}
	
	
	
	
	/**
	 * select - 관리자 공지사항 게시글 전체 리스트
	 */
	public ArrayList<NoticeVo> select(){
		ArrayList<NoticeVo> list = new ArrayList<NoticeVo>();
		String sql = "select rownum rno, ntitle, nhits, to_char(ndate, 'yyyy-mm-dd') ndate "
				+ " from (select ntitle, nhits, ndate from ggadmin_notice order by bdate desc)'";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			while(rs.next()) {
				NoticeVo noticeVo = new NoticeVo();
				noticeVo.setRno(rs.getInt(1));
				noticeVo.setNtitle(rs.getString(2));
				noticeVo.setNhits(rs.getInt(3));
				noticeVo.setNdate(rs.getString(4));
				list.add(noticeVo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
	
	
	
	/**
	 * insert - 게시글 등록
	 */
	public int insert(NoticeVo noticeVo) {
		int result = 0;
		String sql=" insert into ggadmin_notice(nid, ntitle, ncontent, nhits, id, ndate) values('b_'||ltrim(to_char(sequ_gga_board.nextval,'0000')), ?, ?, 0, ?, sysdate)";
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