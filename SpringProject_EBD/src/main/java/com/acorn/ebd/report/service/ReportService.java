package com.acorn.ebd.report.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.ebd.report.dto.ReportDto;

public interface ReportService {
	//새글을 저장하는 메소드(리턴타입, 메소드명, 인자 순서) image save+db insert
	public void saveContent(ReportDto dto, HttpServletRequest request);
	
	//마이 독후감 목록을 불러오는 메소드
	public void getList(ModelAndView mView, HttpServletRequest request);
	
	//마이 독후감 하나의 정보를 불러오는 메소드
	public void getDetail(int num, ModelAndView mView);
}
