package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.dto.CartDto;

@Mapper
public interface CartMapper {
	
	CartDto findCartItem(int seq_sel, int seq_crt);
	int updateCartPrd(CartDto cartDto);
	int deletePay(int seq_sel, int seq_crt);
	
	
	int insertCart(CartDto cartDto);
	int insertCartPrd(CartDto cartDto);
	
	
	int sequenceCartPrd();
	int sequenceCart();
	
	List<CartDto> select(CartDto cartDto);
	
	int update(CartDto cartDto);
	int delete(CartDto cartDto);
	
	CartDto newSelect(int cartDto);
	
	int cartSelect(int cartDto);

}
