package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.review.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.review.dto.ReviewDto;

@Mapper
public interface ReviewMapper {
	
	List<ReviewDto> findReview(int seq_sel, int seq_dtl);
	
	List<ReviewDto> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	
	int insertReview(ReviewDto reviewDto);
	
	int sequenceRev();
	
	List<ReviewDto> list(SearchCriteria cri);
	int count(SearchCriteria cri);
	
}
