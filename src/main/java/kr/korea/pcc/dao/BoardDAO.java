package kr.korea.pcc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public BoardVO selectByIdx(SqlSession sqlSession, int board_idx, int board_idx_incre) {
		Map<String, Integer> map = new HashMap<String,Integer>();
		map.put("board_idx", board_idx);
		map.put("board_idx_incre", board_idx_incre);
		return sqlSession.selectOne("Board.selectByIdx", map);
	}
	
	// 3. 1페이지 얻기
	public List<BoardVO> selectList(SqlSession sqlSession, int startNo,int endNo, int board_idx) {
		HashMap<String, Integer> map = new HashMap<>();
		map.put("startNo", startNo);
		map.put("endNo", endNo);
		map.put("board_idx", board_idx);
		return sqlSession.selectList("Board.selectList", map);
	}
	
	// 4. 저장하기
	public void insert(SqlSession sqlSession, BoardVO vo) {
		sqlSession.insert("Board.insert", vo);
	}
	
	// 5. 이전 데이터 얻기
	public int PreBoardIdx(SqlSession sqlSession, String board_idx) {
		return sqlSession.selectOne("Board.PreBoardIdx", board_idx);
	}
	
	// 6. 수정하기
	public void update(SqlSession sqlSession, BoardVO vo) {
		sqlSession.update("Board.update", vo);
	}
	
	// 7. 삭제하기
	public void delete(SqlSession sqlSession, BoardVO vo) {
		sqlSession.update("Board.delete", vo);
	}
	
	// 8. 삭제 후 인덱싱 처리
	public void deleteIndex(SqlSession sqlSession, String board_idx, String board_idx_incre) {
		HashMap<String, String> map = new HashMap<>();
		map.put("board_idx", board_idx);
		map.put("board_idx_incre", board_idx_incre);
		sqlSession.update("Board.deleteIndex", map);
	}
	
	
	
}
