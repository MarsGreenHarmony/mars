package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.product.service;

import java.util.List;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.product.dto.ProductDto;

public interface ProductService {
	List<ProductDto> listing(ProductDto productDto);
	
	boolean insertProduct(ProductDto productDto);
	
	boolean insertImg(ProductDto productDto);
	
	
	List<ProductDto> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	
	ProductDto select(ProductDto productDto);
	
	boolean update(ProductDto productDto);
	
	boolean delete(ProductDto productDto);
	
	List<ProductDto> selectImg(ProductDto productDto);
}
