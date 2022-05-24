package com.freeze.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.freeze.dao.BoardDao;
import com.freeze.model.BoardModel;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDao dao;

	@Override
	public List<BoardModel> boardList() throws Exception {
		return dao.boardList();
	}
}