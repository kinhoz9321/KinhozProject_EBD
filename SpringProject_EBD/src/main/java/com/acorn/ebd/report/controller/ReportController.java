package com.acorn.ebd.report.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.ebd.report.dto.ReportDto;
import com.acorn.ebd.report.service.ReportService;

@Controller
public class ReportController {
	//의존객체 DI
	@Autowired
	private ReportService service;
	
	//독후감 새글 저장 요청 처리 
	@RequestMapping(value = "/my_report/private/insert", method=RequestMethod.POST)
	public String insert(ReportDto dto, HttpServletRequest request) {
		
		service.saveContent(dto, request);
		return "my_report/private/insert";
	}
	
	//독후감 새글 작성 폼 요청 처리
	@RequestMapping("/my_report/private/insertform")
	public String insertform(@ModelAttribute("dto") ReportDto dto){
		
		return "my_report/private/insertform";
	}
	
	//마이 독후감 글 목록 요청 처리
	@RequestMapping("/my_report/private/list")
	public ModelAndView list(ModelAndView mView, HttpServletRequest request) {
		service.getList(mView, request);
		mView.setViewName("my_report/private/list");
		return mView;
	}
	
	//마이 독후감 글 하나의 정보 보기 요청 처리
	@RequestMapping("/my_report/private/detail")
	public ModelAndView detail(@RequestParam int num, ModelAndView mView) {
		service.getDetail(num, mView);
		mView.setViewName("my_report/private/detail");
		return mView;
	}
}
