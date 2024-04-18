package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

//import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.dto.PagingDto;
//import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.dto.PagingListDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.product.dto.ProductDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.product.mapper.ProductMapper;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductMapper mapper;
	
	@Override
	public List<ProductDto> searchList(SearchCriteria cri) {
		return mapper.searchList(cri);
	}
	
	@Override
	public int searchCount(SearchCriteria cri) {
		return mapper.searchCount(cri);
	}
	
	

	@Override
	public List<ProductDto> listing(ProductDto productDto) {
		return mapper.listing(productDto);
	}

	@Override
	public boolean insertProduct(ProductDto productDto) {
		productDto.setSeq_prd(mapper.sequencePrd());

		int result = mapper.insertProduct(productDto);
		if (result == 1)
			return true;
		else {
			return false;
		}
	}

	@Override
	public boolean insertImg(ProductDto productDto) {
		productDto.setSeq_prd_img(mapper.sequenceImg());

		int result = mapper.insertImg(productDto);
		if (result == 1)
			return true;
		else {
			return false;
		}
	}

	@Override
	public boolean update(ProductDto productDto) {

		int result = mapper.update(productDto);

		if (result == 1)
			return true;
		else {
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}

	@Override
	public ProductDto select(ProductDto productDto) {
		return mapper.select(productDto);
	}
	
	@Override
	public boolean delete(ProductDto productDto) {
		int result = mapper.delete(productDto);

		if (result == 1)
			return true;
		else {
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}	
	
	@Override
	public List<ProductDto> selectImg(ProductDto productDto) {
		return mapper.selectImg(productDto);
	}
	

}
