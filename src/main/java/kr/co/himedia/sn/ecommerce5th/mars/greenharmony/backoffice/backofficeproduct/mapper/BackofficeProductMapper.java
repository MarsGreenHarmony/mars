package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.backofficeproduct.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.SaleDto;

@Mapper
public interface BackofficeProductMapper {
    
	List<SaleDto> list();
	
	SaleDto listing(SaleDto saleDto);
	
	int update(SaleDto saleDto);
	
}
