package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.service;

import java.util.List;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyDtlDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyMstDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.DescDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.SaleDto;


public interface BuyService {
	
	List<BuyMstDto> selectMstWithDetails(BuyMstDto buyMstDto);
	
	
	
	List<BuyMstDto> selectMst(BuyMstDto buyMstDto);
	List<BuyDtlDto> selectDtl(BuyDtlDto buyDtlDto);
	
	List<SaleDto> productList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	
	SaleDto productSelect(SaleDto saleDto);
	DescDto descSelect(int seq_sel);
	List<SaleDto> prdImgSelect(SaleDto saleDto);
	List<SaleDto> selImgSelect(SaleDto saleDto);
	
	
	boolean insert(BuyMstDto buyMstDto, List<BuyDtlDto> buyDtlDtoList, String deal_num);
	
	boolean update(String deal_num, int updater, String flg_success);
	boolean updateCnt(int seq_sel);
	
	int count(BuyMstDto buyMstDto);
	
	List<SaleDto> mainList(SaleDto saleDto);
}
