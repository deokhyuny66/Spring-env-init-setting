package com.freeze.dao;

import java.util.List;
import com.freeze.model.BoardModel;

public interface BoardDao {
	public List<BoardModel> boardList() throws Exception;
	public List<BoardModel> listOfIndex(String clickItem) throws Exception;
	public int boardRegister(BoardModel model) throws Exception;
}