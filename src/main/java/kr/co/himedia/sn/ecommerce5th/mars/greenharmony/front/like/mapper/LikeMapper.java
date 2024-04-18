package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.like.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.like.dto.LikeDto;

@Mapper
public interface LikeMapper {
	
	int sequence();
	int insert(LikeDto likeDto);
	int delete(LikeDto likeDto);
	
	List<LikeDto> getLikedProducts(int seq_cst);
	List<LikeDto> select(int seq_cst);
	
}
