package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.review.dto.ReviewDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.review.mapper.ReviewMapper;
//import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.SaleDto;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	ReviewMapper mapper;
	
	@Override
	public List<ReviewDto> findReview(int seq_sel, int seq_dtl) {
		return mapper.findReview(seq_sel, seq_dtl);
	}
	
	
	@Override
	public int searchCount(SearchCriteria cri) {
		return	mapper.searchCount(cri);
	}
	
	@Override
	public List<ReviewDto> searchList(SearchCriteria cri) {
		return mapper.searchList(cri);
	}
	
	
	
	@Override
	public boolean insertReview(ReviewDto reviewDto) {
		reviewDto.setSeq_rev(mapper.sequenceRev());

		int result = mapper.insertReview(reviewDto);
		if (result == 1)
			return true;
		else {
			return false;
		}
	}
	
	@Override
	public int count(SearchCriteria cri) {
		return	mapper.count(cri);
	}
	
	@Override
	public List<ReviewDto> list(SearchCriteria cri) {
		return mapper.list(cri);
	}
	
	
	
}
