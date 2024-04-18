package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.review.service;

import java.util.List;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.review.dto.ReviewDto;


public interface ReviewService {
	List<ReviewDto> findReview(int seq_sel, int seq_dtl);
	
	List<ReviewDto> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	
	boolean insertReview(ReviewDto reviewDto);
	
	List<ReviewDto> list(SearchCriteria cri);
	int count(SearchCriteria cri);

}
