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
	
	@Override
	public List<BoardModel> listOfIndex(String clickItem) throws Exception {
		return dao.listOfIndex(clickItem);
	}
	
	@Override
	public int boardRegister(BoardModel model) throws Exception {
		/*
		 * model.setMaker(model.getMaker()); model.setModel(model.getModel());
		 * model.setVolumn(model.getMaker()); model.setEa(model.getMaker());
		 * model.setUse_date(model.getMaker());
		 * model.setDetail_contents(model.getMaker()); model.setImage(model.getMaker());
		 * model.setPrice(model.getMaker());
		 */
		return dao.boardRegister(model);
	}
}