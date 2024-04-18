package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.dto.CartDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.mapper.CartMapper;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	CartMapper mapper;
	
	
	@Override
	public boolean insertCartPrd(CartDto cartDto) {
		cartDto.setSeq_crt_dtl(mapper.sequenceCartPrd());
		
		int result = mapper.insertCartPrd(cartDto);
		
		if(result == 1) {
			return true;     
		}
		
		return false;
	}
	
	@Override
	public boolean insertCart(CartDto cartDto) {
		cartDto.setSeq_crt(mapper.sequenceCart());
		
		int result = mapper.insertCart(cartDto);
		
		if(result == 1) {
			return true;     
		}
		
		return false;
	}
	
	@Override
	public List<CartDto> select(CartDto cartDto) {
		return mapper.select(cartDto);
	}
	
	@Override
	public boolean update(CartDto cartDto) {
		int result = mapper.update(cartDto);
		
		if(result == 1) {
			return true;
		}
		else {
		return false;
		}
	}
	
	@Override
	public boolean delete(CartDto cartDto) {
		int result = mapper.delete(cartDto);
		
		if(result == 1) {
			return true;
		}
		else {
		return false;
		}
	}
	
	@Override
	public CartDto newSelect(int cartDto) {
		return mapper.newSelect(cartDto);
	}
	
	@Override
	public int cartSelect(int cartDto) {
		return mapper.cartSelect(cartDto);
	}
	
	@Override
	public CartDto findCartItem(int seq_sel, int seq_crt) {
		return mapper.findCartItem(seq_sel, seq_crt);
	}
	
	@Override
	public boolean updateCartPrd(CartDto cartDto) {
		int result = mapper.updateCartPrd(cartDto);
		
		if(result == 1) {
			return true;
		}
		else {
		return false;
		}
	}
	
	@Override
	public boolean deletePay(int seq_sel, int seq_crt) {
		int result = mapper.deletePay(seq_sel, seq_crt);
		
		if(result == 1) {
			return true;
		}
		else {
		return false;
		}
	}
	
	
	
}
