package kr.korea.pcc.service;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import kr.korea.pcc.MybatisUtil;
import kr.korea.pcc.dao.JoinDAO;
import kr.korea.pcc.vo.JoinVO;

public class JoinService {
	
	private static final Logger logger = LogManager.getLogger(JoinService.class.getName());
	
	private static JoinService instance = new JoinService();
	
	public JoinService() {
		
	}
	public static JoinService getInstance() {
		return instance;
	}
	// 싱글톤으로 만들기
	
	// 1. 목록 보기 - list
	public void insert(JoinVO vo){
		logger.debug("JoinService insert 호출" );
		SqlSession sqlSession = null;
		try {
			sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
			logger.debug("JoinService insert 세션 : " + sqlSession.toString());
			//===========================================================
			JoinDAO.getInstance().insert(sqlSession, vo);
			logger.debug("JoinDAO.getInstance().insert(sqlSession, vo);");
			
			//===========================================================
			sqlSession.commit();
		}catch(Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
		}finally {
			if(sqlSession!=null) sqlSession.close();
		}
		logger.debug("JoinService insert 호출종료" );
	}
	
	
	// 2. 로그인 확인 
	public JoinVO login(String id){
		logger.debug("JoinService login 호출" );
		SqlSession sqlSession = null;
		JoinVO loginvo = null;
		try {
			sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
			logger.debug("JoinService login 세션 : " + sqlSession.toString());
			//===========================================================
			loginvo = JoinDAO.getInstance().login(sqlSession, id);
			logger.debug("JoinDAO.getInstance().login(sqlSession, id);");
			
			//===========================================================
			sqlSession.commit();
		}catch(Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
		}finally {
			if(sqlSession!=null) sqlSession.close();
		}
		logger.debug("JoinService login 호출종료" );
		
		return loginvo;
	}
	
	// 3. 아이디 중복 체크
	public int idChecked(String id){
		logger.debug("JoinService idChecked 호출" );
		SqlSession sqlSession = null;
		int id_result = 0;
		try {
			sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
			logger.debug("JoinService idChecked 세션 : " + sqlSession.toString());
			//===========================================================
			id_result = JoinDAO.getInstance().idChecked(sqlSession, id);
			logger.debug("JoinDAO.getInstance().idChecked(sqlSession, id);");
			
			//===========================================================
			sqlSession.commit();
		}catch(Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
		}finally {
			if(sqlSession!=null) sqlSession.close();
		}
		logger.debug("JoinService idChecked 호출종료" );
		
		return id_result;
	}
	
}
