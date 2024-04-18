package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.board.service;

import java.util.List;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.board.dto.BoardDto;

public interface BoardService {
	
	boolean insert(BoardDto boardDto);
	
	BoardDto select(BoardDto boardDto);

	List<BoardDto> list(BoardDto boardDto);
	
	List<BoardDto> faqlist(BoardDto boardDto);
	
	boolean update(BoardDto boardDto);
	
	boolean flg_delete(BoardDto boardDto);
	
	List<BoardDto> cstlist(BoardDto boardDto);
	List<BoardDto> inquiryList(BoardDto boardDto);
	
	BoardDto myinquiryList(BoardDto boardDto);
}
