package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyDtlDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyMstDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.DescDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.SaleDto;


@Mapper
public interface BuyMapper {
	
	List<BuyMstDto> selectMstWithDetails(BuyMstDto buyMstDto);
	
	List<BuyMstDto> selectMst(BuyMstDto buyMstDto);
	List<BuyDtlDto> selectDtl(BuyDtlDto buyDtlDto);
	
	List<SaleDto> productList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	
	SaleDto productSelect(SaleDto saleDto);
	DescDto descSelect(int seq_sel);
	List<SaleDto> prdImgSelect(SaleDto saleDto);
	List<SaleDto> selImgSelect(SaleDto saleDto);
	
	int update(BuyMstDto buyMstDto);
	int updateCnt(int seq_sel);
	
	int insertMst(BuyMstDto buyMstDto);
	int insertDtl(BuyDtlDto buyDtlDto);
	
	int sequenceMst();
	int sequenceDtl();
	
	int count(BuyMstDto buyMstDto);
	
	List<SaleDto> mainList(SaleDto saleDto);
	
	
}
