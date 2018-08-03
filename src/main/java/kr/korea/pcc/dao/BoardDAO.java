package kr.korea.pcc.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.korea.pcc.vo.BoardVO;

public class BoardDAO {
	private static BoardDAO instance = new BoardDAO();
	
	public BoardDAO() {
		
	}
	public static BoardDAO getInstance() {
		return instance;
	}
	// 싱글톤으로 만들기
	
	//============================================================
	// 1. 전체 개수 얻기
	public int getCount(SqlSession sqlSession, int board_idx) {
		return sqlSession.selectOne("Board.getCount", board_idx);
	}
	
	// 2. 1개 얻기
	public BoardVO selectByIdx(SqlSession sqlSession, int idx) {
		return sqlSession.selectOne("Board.selectByIdx", idx);
	}
	
	// 3. 1페이지 얻기
	public List<BoardVO> selectList(SqlSession sqlSession, int startNo,int endNo, int board_idx) {
		HashMap<String, Integer> map = new HashMap<>();
		map.put("startNo", startNo);
		map.put("endNo", endNo);
		map.put("board_idx", board_idx);
		return sqlSession.selectList("Board.selectList", map);
	}
}
