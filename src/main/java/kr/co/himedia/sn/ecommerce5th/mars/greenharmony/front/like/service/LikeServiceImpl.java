package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.like.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.like.dto.LikeDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.like.mapper.LikeMapper;

@Service
public class LikeServiceImpl implements LikeService{
	
	@Autowired
	LikeMapper mapper;
	
	@Override
	public boolean insert(LikeDto likeDto) {
		likeDto.setSeq_lky(mapper.sequence());
		int result = mapper.insert(likeDto);
		
		if(result == 1) {
			return true;
		}
		else {
		return false;
		}
	}
	
	@Override
	public boolean delete(LikeDto likeDto) {
		int result = mapper.delete(likeDto);
		
		if(result == 1) {
			return true;
		}
		else {
		return false;
		}
	}
	
	@Override
	public List<LikeDto> getLikedProducts(int seq_cst) {
		return mapper.getLikedProducts(seq_cst);
	}
	
	@Override
	public List<LikeDto> select(int seq_cst) {
		return mapper.select(seq_cst);
	}

}
