package com.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.domain.BoardVO;
import com.board.service.BoardService;

@Controller
@RequestMapping("/board/")
public class BoardController {

	@Inject
	BoardService service;
	
	@GetMapping("/list")
	public String getList(Model model) throws Exception {
		
		List<BoardVO> list = service.list();
		
		
		model.addAttribute("list", list);
		return "board/list";
	}
}
