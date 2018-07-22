package kr.korea.pcc.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import kr.korea.pcc.MybatisUtil;
import kr.korea.pcc.dao.BoardDAO;
import kr.korea.pcc.dao.JoinDAO;
import kr.korea.pcc.vo.BoardVO;
import kr.korea.pcc.vo.JoinVO;
import kr.korea.pcc.vo.pagingVo;

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
	
}
