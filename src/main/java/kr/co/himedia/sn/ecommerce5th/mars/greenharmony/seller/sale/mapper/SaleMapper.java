package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.DescDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.SaleDto;

@Mapper
public interface SaleMapper {

	List<SaleDto> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	
	int insertSale(SaleDto saleDto);
	int insertImg(SaleDto saleDto);
	int insertDesc(DescDto descDto);
	
	int sequenceSale();
	int sequenceImg();

	SaleDto select(SaleDto saleDto);
	
	
	
	int update(SaleDto saleDto);
	int updateDesc(DescDto descDto);
	
	int delete(SaleDto saleDto);
	
	
}
