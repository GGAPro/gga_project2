package com.gga.dao;

import com.gga.vo.MovieVo;

public class MovieDao extends DBConn {
/**
 * header.jsp의 검색기능 seaselect()
 */
	public MovieVo seaselect(String mtitle) {
		MovieVo movieVo = new MovieVo();
		
		String sql ="select movieid, mtitle, genre, moviedday, runtime, audience, "
				+ " movieinfo, actor, director, mainposter, stillcut1, stillcut2, stillcut3,"
				+ " stillcut4, youtube from movie where mtitle like ?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, "%" + mtitle + "%");
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				movieVo.setMovieid(rs.getString(1));
				movieVo.setMtitle(rs.getString(2));
				movieVo.setGenre(rs.getString(3));
				movieVo.setMoviedday(rs.getString(4));
				movieVo.setRuntime(rs.getString(5));
				movieVo.setAudience(rs.getString(6));
				movieVo.setMovieinfo(rs.getString(7));
				movieVo.setDirector(rs.getString(8));
				movieVo.setActor(rs.getString(9));
				movieVo.setMainposter(rs.getString(10));
				movieVo.setStillcut1(rs.getString(11));
				movieVo.setStillcut2(rs.getString(12));
				movieVo.setStillcut3(rs.getString(13));
				movieVo.setStillcut4(rs.getString(14));
				movieVo.setYoutube(rs.getString(15));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return movieVo;
	}
	
/**
 * index.jsp에서 영화포스터 클릭시 movieinfo로 넘어가는 mselect()
 */
	public MovieVo mselect(String movieid) {
		MovieVo movieVo = new MovieVo();
		String sql = "select movieid, mtitle, genre, moviedday, runtime, audience, movieinfo, "
				+ " director, actor, mainposter, stillcut1, stillcut2, stillcut3, stillcut4, youtube "
				+ " from movie where movieid=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, movieid);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				movieVo.setMovieid(rs.getString(1));
				movieVo.setMtitle(rs.getString(2));
				movieVo.setGenre(rs.getString(3));
				movieVo.setMoviedday(rs.getString(4));
				movieVo.setRuntime(rs.getString(5));
				movieVo.setAudience(rs.getString(6));
				movieVo.setMovieinfo(rs.getString(7));
				movieVo.setDirector(rs.getString(8));
				movieVo.setActor(rs.getString(9));
				movieVo.setMainposter(rs.getString(10));
				movieVo.setStillcut1(rs.getString(11));
				movieVo.setStillcut2(rs.getString(12));
				movieVo.setStillcut3(rs.getString(13));
				movieVo.setStillcut4(rs.getString(14));
				movieVo.setYoutube(rs.getString(15));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return movieVo;
	}
}
