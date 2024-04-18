package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.board.dto.BoardDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.board.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {
    
    @Autowired
    BoardMapper Mapper; 
    
    @Override
    public boolean insert(BoardDto boardDto) {
        
    	
        // 신규 글 번호 설정
        boardDto.setSeq_bbs(Mapper.sequence()); 
        
        int result = Mapper.insert(boardDto); 
        
        if (result == 1) {
        	return true;
        }
        else {
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return false;
        }
        
    }
    
    @Override
    public List<BoardDto> cstlist(BoardDto boardDto) {
        return Mapper.cstlist(boardDto);
    }
    
    @Override
    public BoardDto select(BoardDto boardDto) {
        return Mapper.select(boardDto); 
    }
    
    @Override
    public BoardDto myinquiryList(BoardDto boardDto) {
        return Mapper.myinquiryList(boardDto); 
    }
    
    @Override
    public List<BoardDto> list(BoardDto boardDto) {
        return Mapper.list(boardDto); 
    }
    @Override
    public List<BoardDto> inquiryList(BoardDto boardDto) {
        return Mapper.inquiryList(boardDto); 
    }
    @Override
    public List<BoardDto> faqlist(BoardDto boardDto) {
        return Mapper.faqlist(boardDto); 
    }
     @Override
    public boolean update(BoardDto boardDto) {
        int result = Mapper.update(boardDto); 
        if (result == 1) return true;
        else {
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return false;
        }
    }
    
    @Override/*("txCommon")*/
    public boolean flg_delete(BoardDto boardDto) {
        
        int result = Mapper.flg_delete(boardDto); 
        
        if (result == 1) return true;
        else {
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return false;
        }
        
    }
    
    }
    
