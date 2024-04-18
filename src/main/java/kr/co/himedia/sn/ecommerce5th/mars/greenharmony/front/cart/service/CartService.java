package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.service;

import java.util.List;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.dto.CartDto;

public interface CartService {
	
	CartDto findCartItem(int seq_sel, int seq_crt);
	boolean updateCartPrd(CartDto cartDto);
	boolean deletePay(int seq_sel, int seq_crt);
	
	boolean insertCartPrd(CartDto cartDto);
	boolean insertCart(CartDto cartDto);
	
	List<CartDto> select(CartDto cartDto);
	
	boolean update(CartDto cartDto);
	boolean delete(CartDto cartDto);
	
	CartDto newSelect(int cartDto);
	
	int cartSelect(int cartDto);

}
