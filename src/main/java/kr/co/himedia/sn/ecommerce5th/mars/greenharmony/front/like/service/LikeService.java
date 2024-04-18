package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.like.service;


import java.util.List;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.like.dto.LikeDto;

public interface LikeService {
	
	boolean insert(LikeDto likeDto);
	boolean delete(LikeDto likeDto);
	
	List<LikeDto> getLikedProducts(int seq_cst);
	List<LikeDto> select(int seq_cst);
}
