package com.restful.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@Controller
public class BoardViewController {
	@RequestMapping("/")
	public String index(){
		return "index";
	}
}
