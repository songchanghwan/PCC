package kr.korea.pcc.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import kr.korea.pcc.MybatisUtil;
import kr.korea.pcc.dao.BoardDAO;
import kr.korea.pcc.vo.BoardVO;
import kr.korea.pcc.vo.pagingVo;

public class BoardService {
	
	private static final Logger logger = LogManager.getLogger(BoardService.class.getName());
	
	private static BoardService instance = new BoardService();
	
	public BoardService() {
		
	}
	public static BoardService getInstance() {
		return instance;
	}
	// 싱글톤으로 만들기
	
	// 1. 목록 보기 - list
	public pagingVo<BoardVO> selectList(int currentPage,int pageSize,int blockSize){
//		Logger.debug("FreeBoardService selectList 호출됨");
		pagingVo<BoardVO> paging = null;
		BoardDAO freeBoardDAO = BoardDAO.getInstance();
		SqlSession sqlSession = null;
		try {
			sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
			logger.debug("FreeBoardService selectList 세션 : " + sqlSession.toString());
			//===========================================================
			int totalCount = freeBoardDAO.getCount(sqlSession); // 전체 개수
			paging = new pagingVo<>(totalCount, currentPage, pageSize, blockSize); // 페이지 계산
			// 글목록
			List<BoardVO> list = BoardDAO.selectList(sqlSession, paging.getStartNo(), paging.getEndNo());
			//===========================================================
			sqlSession.commit();
		}catch(Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
		}finally {
			if(sqlSession!=null) sqlSession.close();
		}
		logger.debug("FreeBoardService selectList 호출종료 : " + paging );
		return paging;
	}
	
}