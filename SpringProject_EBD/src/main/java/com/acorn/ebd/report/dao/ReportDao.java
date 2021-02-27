package com.acorn.ebd.report.dao;

import java.util.List;

import com.acorn.ebd.report.dto.ReportDto;

public interface ReportDao {
	
	//독후감 새 글 추가 메소드
	public void insert(ReportDto dto);
	
	//마이 독후감 목록 불러오기
	public List<ReportDto> getList(ReportDto dto);
	
	//마이 독후감 하나의 정보 불러오기
	public ReportDto getData(int num);
}
