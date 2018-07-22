package kr.korea.pcc.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.korea.pcc.vo.BoardVO;
import kr.korea.pcc.vo.JoinVO;

public class JoinDAO {
	private static JoinDAO instance = new JoinDAO();
	
	public JoinDAO() {
		
	}
	public static JoinDAO getInstance() {
		return instance;
	}
	// 싱글톤으로 만들기
	
	//============================================================
	// 1. 회원가입 insert
	public void insert(SqlSession sqlSession, JoinVO vo) {
		sqlSession.insert("join.insert", vo);
	}

}
