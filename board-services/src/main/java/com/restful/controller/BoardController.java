package com.restful.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.restful.domain.BoardVO;
import com.restful.mapper.BoardMapper;

@RestController
public class BoardController {

	@Autowired
	private BoardMapper mapper;
	
	@GetMapping("/")
	public ModelAndView index() throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", mapper.boardSelect());
		mav.setViewName("index");
		
		return mav;
	}
	
	@GetMapping("/write")
	public ModelAndView write() throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("write");
		return mav;
	}
	
	@GetMapping("/view/{id}")
	public ModelAndView write(@PathVariable int id) throws Exception {
		System.out.println(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view");
		mav.addObject("board", mapper.boardView(id));
		return mav;
	}
	
	@GetMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable int id) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("edit");
		mav.addObject("board", mapper.boardView(id));
		return mav;
	}
	
	@GetMapping("/delete/{id}")
	public void delete(@PathVariable int id, HttpServletResponse response) throws Exception {
		
		mapper.boardDelete(id);
		
		response.sendRedirect("/");
	}
	
	@PostMapping("/write_ok")
	public void write_ok(@RequestBody BoardVO bvo) throws Exception {
		mapper.boardInsert(bvo);
		System.out.println("Completed");
	}
	
	@PostMapping("/edit_ok")
	public void eidt_ok(@RequestBody BoardVO bvo) throws Exception {
		mapper.boardUpdate(bvo);
	}
}