package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.board.dto.BoardDto;


@Mapper
public interface BoardMapper {	
	
	int sequence();
	
	int insert(BoardDto boardDto);
	
	BoardDto select(BoardDto boardDto);
	
	List<BoardDto> list(BoardDto boardDto);
	
	List<BoardDto> faqlist(BoardDto boardDto);
	
	int update(BoardDto boardDto);
	
	int flg_delete(BoardDto boardDto);
	
	List<BoardDto> cstlist(BoardDto boardDto);
	
	List<BoardDto> inquiryList(BoardDto boardDto);
	
	BoardDto myinquiryList(BoardDto boardDto);
	
}
