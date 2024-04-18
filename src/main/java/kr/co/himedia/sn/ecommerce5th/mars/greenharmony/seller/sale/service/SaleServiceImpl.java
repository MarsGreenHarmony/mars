package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.DescDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.SaleDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.mapper.SaleMapper;

@Service
public class SaleServiceImpl implements SaleService {
	
	@Autowired
	SaleMapper mapper;
	
	
	@Override
	public int searchCount(SearchCriteria cri) {
		return	mapper.searchCount(cri);
	}
	
	@Override
	public List<SaleDto> searchList(SearchCriteria cri) {
		return mapper.searchList(cri);
	}
	
	
	
	@Override
	public boolean insertSale(SaleDto saleDto) {
		saleDto.setSeq_sel(mapper.sequenceSale());
		
		
		int result = mapper.insertSale(saleDto);
		if (result == 1)
			return true;
		else {
			return false;
		}
	}
	
	
	@Override
	public boolean insertImg(SaleDto saleDto) {
		saleDto.setSeq_sel_img(mapper.sequenceImg());
		
		int result = mapper.insertImg(saleDto);
		if (result == 1)
			return true;
		else {
			return false;
		}
	}
	
	@Override
	public boolean insertDesc(DescDto descDto) {
		
		int result = mapper.insertDesc(descDto);
		if (result == 1)
			return true;
		else {
			return false;
		}
	}
	
	@Override
	public boolean update(SaleDto saleDto) {

		int result = mapper.update(saleDto);
		System.out.println("1111111111111111111111");
		
		if (result == 1)
			return true;
		else {
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}
	
	@Override
	public boolean updateDesc(DescDto descDto) {
		int result = mapper.updateDesc(descDto);
		System.out.println("2222222222222222222222");
		
		if (result == 1)
			return true;
		else {
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}
	

	@Override
	public SaleDto select(SaleDto saleDto) {
		return mapper.select(saleDto);
	}

	@Override
	public boolean delete(SaleDto saleDto) {
		int result = mapper.delete(saleDto);

		if (result == 1)
			return true;
		else {
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}	
}
