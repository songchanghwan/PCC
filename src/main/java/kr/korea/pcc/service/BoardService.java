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
	public pagingVo<BoardVO> selectList(int currentPage,int pageSize,int blockSize, int board_idx){
		logger.debug("BoardService selectList 호출됨");
		pagingVo<BoardVO> paging = null;
		BoardDAO boardDAO = BoardDAO.getInstance();
		SqlSession sqlSession = null;
		try {
			sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
			logger.debug("BoardService selectList 세션 : " + sqlSession.toString());
			//===========================================================
			
			int totalCount = boardDAO.getCount(sqlSession, board_idx); // 전체 개수
			paging = new pagingVo<>(totalCount, currentPage, pageSize, blockSize); // 페이지 계산
			List<BoardVO> list = boardDAO.selectList(sqlSession, paging.getStartNo(), paging.getPageSize(), board_idx);
			logger.debug("List<BoardVO> list: " + paging.getList() );
			paging.setList(list);
			logger.debug("paging.setList(list): " + paging.getList() );
			//===========================================================
			sqlSession.commit();
		}catch(Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
		}finally {
			if(sqlSession!=null) sqlSession.close();
		}
		logger.debug("BoardService selectList 호출종료 : " + paging );
		return paging;
	}
	
	// 2. 저장 하기 - insert
	public void insert(BoardVO vo, int PreBoard_idx){
		logger.debug("BoardService insert 호출됨");
		SqlSession sqlSession = null;
		try {
			sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
			logger.debug("BoardService insert 세션 : " + sqlSession.toString());
			//===========================================================
			vo.setBoard_idx_incre(PreBoard_idx+1);
			BoardDAO.getInstance().insert(sqlSession, vo);
			//===========================================================
			sqlSession.commit();
		}catch(Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
		}finally {
			if(sqlSession!=null) sqlSession.close();
		}
		logger.debug("BoardService insert 호출종료 : ");
	}
	
	// 3. 이전 데이터 - insert
		public int PreBoardIdx(String board_idx){
			SqlSession sqlSession = null;
			int Pre_board_idx =0;
			try {
				sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
				//===========================================================
				Pre_board_idx = BoardDAO.getInstance().PreBoardIdx(sqlSession, board_idx);
				//===========================================================
				sqlSession.commit();
			}catch(Exception e) {
				sqlSession.rollback();
				e.printStackTrace();
			}finally {
				if(sqlSession!=null) sqlSession.close();
			}
			logger.debug("BoardService insert 호출종료 : ");
			
			return Pre_board_idx;
		}
		
		// 4. 한개 데이터 얻기
		public BoardVO selectByIdx(String board_idx, String board_idx_incre){
			logger.debug("BoardService selectByIdx 호출됨");
			BoardVO boardVO = null;
			SqlSession sqlSession = null;
			try {
				sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
				//===========================================================
				boardVO = BoardDAO.getInstance().selectByIdx(sqlSession, board_idx, board_idx_incre);
				//===========================================================
				sqlSession.commit();
			}catch(Exception e) {
				sqlSession.rollback();
				e.printStackTrace();
			}finally {
				if(sqlSession!=null) sqlSession.close();
			}
			return boardVO;
		}
		
		// 5. 수정 하기 - update
		public void update(BoardVO vo){
			logger.debug("BoardService update 호출됨");
			SqlSession sqlSession = null;
			try {
				sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
				logger.debug("BoardService update 세션 : " + sqlSession.toString());
				//===========================================================
				BoardDAO.getInstance().update(sqlSession, vo);
				//===========================================================
				sqlSession.commit();
			}catch(Exception e) {
				sqlSession.rollback();
				e.printStackTrace();
			}finally {
				if(sqlSession!=null) sqlSession.close();
			}
			logger.debug("BoardService update 호출종료 : ");
		}
		
		// 6. 삭제 하기 - delete
		public void delete(BoardVO vo){
			logger.debug("BoardService delete 호출됨");
			SqlSession sqlSession = null;
			try {
				sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
				logger.debug("BoardService delete 세션 : " + sqlSession.toString());
				//===========================================================
				BoardDAO.getInstance().delete(sqlSession, vo);
				//===========================================================
				sqlSession.commit();
			}catch(Exception e) {
				sqlSession.rollback();
				e.printStackTrace();
			}finally {
				if(sqlSession!=null) sqlSession.close();
			}
			logger.debug("BoardService delete 호출종료 : ");
		}
		
		// 7. 삭제 후 인덱싱 처리deleteIndex
		public void deleteIndex(String board_idx, String board_idx_incre){
			logger.debug("BoardService deleteIndex 호출됨");
			SqlSession sqlSession = null;
			try {
				sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
				logger.debug("BoardService deleteIndex 세션 : " + sqlSession.toString());
				//===========================================================
				BoardDAO.getInstance().deleteIndex(sqlSession, board_idx, board_idx_incre);
				//===========================================================
				sqlSession.commit();
			}catch(Exception e) {
				sqlSession.rollback();
				e.printStackTrace();
			}finally {
				if(sqlSession!=null) sqlSession.close();
			}
			logger.debug("BoardService deleteIndex 호출종료 : ");
		}
		
		// 8. 아이디 값 가져오기
		public String selectByUser(String board_idx, String board_idx_incre){
			logger.debug("BoardService selectByUser 호출됨");
			SqlSession sqlSession = null;
			String DBUser = "";
			try {
				sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
				logger.debug("BoardService selectByUser 세션 : " + sqlSession.toString());
				//===========================================================
				DBUser = BoardDAO.getInstance().selectByUser(sqlSession, board_idx, board_idx_incre);
				//===========================================================
				sqlSession.commit();
			}catch(Exception e) {
				sqlSession.rollback();
				e.printStackTrace();
			}finally {
				if(sqlSession!=null) sqlSession.close();
			}
			logger.debug("BoardService selectByUser 호출종료 : ");
			return DBUser;
		}
	
}
