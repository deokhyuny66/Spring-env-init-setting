package com.freeze.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.freeze.model.BoardModel;
import com.freeze.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	
	@RequestMapping("pages-account-settings-notifications")
	public String boardList(Model model) throws Exception {
		List<BoardModel> boardList = service.boardList(); 
		model.addAttribute("boardList", boardList);
		return "pages-account-settings-notifications";
	}
	
	@ResponseBody
	@RequestMapping(value = "itemAjax" , method = RequestMethod.POST)
	public Object test(@RequestParam(value="click_ItemNm") String clickItemNm) throws Exception {
		Map<String,String> data = new HashMap<String, String>();
		
		data.put("clickNm", clickItemNm);
		
		System.out.println(data);
		return data;
	}
}