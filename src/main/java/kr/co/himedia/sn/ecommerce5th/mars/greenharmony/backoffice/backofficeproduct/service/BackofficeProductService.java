package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.backofficeproduct.service;


import java.util.List;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.SaleDto;

public interface BackofficeProductService {
    
	List<SaleDto> list();
	
	SaleDto listing(SaleDto saleDto);
	
	boolean update(SaleDto saleDto);
}

