package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

//import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.dto.PagingDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.product.dto.ProductDto;

@Mapper
public interface ProductMapper {
	List<ProductDto> listing(ProductDto productDto);
	

	int insertProduct(ProductDto productDto);
	int insertImg(ProductDto productDto);
	
	int sequencePrd();
	int sequenceImg();
	
	
	
	List<ProductDto> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	
	ProductDto select(ProductDto productDto);
	
	int update(ProductDto productDto);
	int delete(ProductDto productDto);
	
	List<ProductDto> selectImg(ProductDto productDto);
	
	
}
