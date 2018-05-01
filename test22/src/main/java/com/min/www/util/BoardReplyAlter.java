package com.min.www.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;

import com.min.www.Service.BoardService;
import com.min.www.dao.BoardDao;
import com.min.www.dto.BoardReplyDto;

public class BoardReplyAlter {
	
	@Autowired
	BoardService boardService;
	
	
	Map<String, Object> paramMap = new HashMap<>();
	
	List<BoardReplyDto> boardReplyCount = boardService.getReplyList(paramMap);
	
	
	
	public static void boardReplyAlert() {
		
		
	}

}
