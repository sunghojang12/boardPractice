package com.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.domain.BoardVO;
import com.board.domain.Page;
import com.board.service.BoardService;

@Controller
@RequestMapping("/board/")
public class BoardController {

	@Inject
	BoardService service;
//	// 게시물 목록
//	@GetMapping("/list")
//	public String getList(Model model) throws Exception {
//		
//		List<BoardVO> list = service.list();
//		model.addAttribute("list", list);
//		return "board/list";
//	}
	// 게시물 작성화면
	@GetMapping("/write")
	public String getWrite() throws Exception {
		return "board/write";
	}
	// 게시물 작성
	@PostMapping("/write")
	public String postWrite(BoardVO vo) throws Exception {
		
		service.write(vo);
		
		return "redirect:/board/listPage?num=1";
	}
	// 게시물 상세화면
	@GetMapping("/view")
	public String getView(int bno, Model model) throws Exception {
		
		BoardVO vo = service.view(bno);
		model.addAttribute("view",vo);
		return "board/view";
	}
	// 게시물 수정화면
	@GetMapping("/getModify")
	public String getModify(int bno, Model model) throws Exception{
		
		BoardVO vo = service.getModify(bno);
		model.addAttribute("vo", vo);
		return "board/modify";
	}
	// 게시물 수정
	@PostMapping("/modify")
	public String modify(BoardVO vo) throws Exception{
		
		service.modify(vo);
		return "redirect:/board/view?bno="+vo.getBno();
	}
	// 게시물 삭제
	@GetMapping("/delete")
	public String delete(int bno) throws Exception{
		
		service.delete(bno);
		return "redirect:/board/listPage?num=1";
	}
	// 게시물 목록 + 페이징 추가
	@GetMapping("/listPage")
	public String getListPage(Model model, int num) throws Exception{
		
		Page page = new Page();
		
		page.setNum(num);
		page.setCount(service.count());
		
		
		
		List<BoardVO> list = service.listPage(page.getDisplayPost(), page.getPostNum());
		model.addAttribute("list",list);
		
		model.addAttribute("page", page);
		
		// 현재 페이지
		model.addAttribute("select", num);
		
		return "board/listPage";
	}
}
