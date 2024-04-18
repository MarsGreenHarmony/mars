package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.service;

import java.util.List;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.DescDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.SaleDto;

public interface SaleService {

	List<SaleDto> searchList(SearchCriteria cri);

	int searchCount(SearchCriteria cri);

	
	boolean insertSale(SaleDto saleDto);

	boolean insertImg(SaleDto saleDto);
	
	boolean insertDesc(DescDto descDto);
	
	SaleDto select(SaleDto saleDto);
	
	boolean update(SaleDto saleDto);
	boolean updateDesc(DescDto descDto);
	
	boolean delete(SaleDto saleDto);
}
