package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.backofficeproduct.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.backofficeproduct.mapper.BackofficeProductMapper;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.SaleDto;

@Service
public class BackofficeProductServiceImpl implements BackofficeProductService {
    
    @Autowired
    BackofficeProductMapper mapper;
    
    @Override
    public List<SaleDto> list() {
        return mapper.list();
    }
    
    @Override
    public SaleDto listing(SaleDto saleDto) {
        return mapper.listing(saleDto);
    }
    
	@Override
	public boolean update(SaleDto saleDto) {
		int result = mapper.update(saleDto);
		if (result == 1) {
			return true;}
		else {
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}
    
}
