package com.board.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.board.domain.BoardVO;
import com.board.service.BoardService;

@Controller
@RequestMapping(value = "/")
public class BoardController {
	
	@Inject
	private BoardService service;
	
	@RequestMapping(value="/listAll", method= RequestMethod.GET )
	public void listAll(Model model) throws Exception {
		
		model.addAttribute("list", service.listAll());
	}
	
	@RequestMapping(value = "/regist", method= RequestMethod.GET)
	public void registerGET(BoardVO board, Model model) throws Exception {
		
	}
	
	@RequestMapping(value = "/regist", method= RequestMethod.POST)
	public String registerPOST(BoardVO board, RedirectAttributes rttr) throws Exception {
		
		service.regist(board);
		
		return "redirect:/listAll";
	}
	
	@RequestMapping(value="/read", method= RequestMethod.GET)
	public void read(@RequestParam("bno")int bno, Model model) throws Exception{
		model.addAttribute(service.read(bno));
	}
	
	

		 

	
}
