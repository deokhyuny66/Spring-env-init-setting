package com.freeze.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.freeze.model.BoardModel;
import com.freeze.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	
	@RequestMapping("list")
	public String boardList(Model model) throws Exception {
		List<BoardModel> boardList = service.boardList(); 
		model.addAttribute("boardList", boardList);
		System.out.println(boardList);
		return "list";
	}
}