package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyDtlDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyMstDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.mapper.BuyMapper;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.pay.dto.PayDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.pay.mapper.PayMapper;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.DescDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.SaleDto;




@Service
public class BuyServiceImpl implements BuyService {
   
    @Autowired
    BuyMapper mapper;

    @Autowired
    PayMapper payMapper;
    
    @Override
    public List<SaleDto> mainList(SaleDto saleDto) {
    	return mapper.mainList(saleDto);
    }
    
    @Override
    public int searchCount(SearchCriteria cri) {
    	return mapper.searchCount(cri);
    }
    
    @Override
    public List<BuyMstDto> selectMstWithDetails(BuyMstDto buyMstDto) {
        List<BuyMstDto> listMst = mapper.selectMst(buyMstDto); // 구매 마스터 조회
        
        for (BuyMstDto mst : listMst) {
            int seqMst = mst.getSeq_mst();
            int seqCst = mst.getSeq_cst();
            BuyDtlDto buyDtlDto = new BuyDtlDto();
            buyDtlDto.setSeq_mst(seqMst);
            buyDtlDto.setRegister(seqCst);
            List<BuyDtlDto> listDtl = mapper.selectDtl(buyDtlDto); // 해당 구매 마스터의 디테일 목록 조회
            mst.setDtlList(listDtl); // 구매 마스터에 디테일 목록 설정
        }
        
        return listMst;
    }
    
    @Override
    public int count(BuyMstDto buyMstDto) {
    	return mapper.count(buyMstDto);
    }
    
    @Override
    public List<BuyMstDto> selectMst(BuyMstDto buyMstDto) {
    	return mapper.selectMst(buyMstDto);
    }
    
    @Override
    public List<BuyDtlDto> selectDtl(BuyDtlDto buyDtlDto) {
    	return mapper.selectDtl(buyDtlDto);
    }
    
   
    
    @Override
	public List<SaleDto> productList(SearchCriteria cri) {
		return mapper.productList(cri);
	}
    
    @Override
    public DescDto descSelect(int seq_sel) {
    	return mapper.descSelect(seq_sel);
    }
    
    @Override
    public List<SaleDto> prdImgSelect(SaleDto saleDto) {
    	return mapper.prdImgSelect(saleDto);
    }
    
    @Override
    public SaleDto productSelect(SaleDto saleDto) {
    	return mapper.productSelect(saleDto);
    }
    
    @Override
    public List<SaleDto> selImgSelect(SaleDto saleDto) {
    	return mapper.selImgSelect(saleDto);
    }
    
    @Override
    public boolean insert(BuyMstDto buyMstDto, List<BuyDtlDto> buyDtlDtoList, String deal_num) {
        int result = 0;

        buyMstDto.setSeq_mst(mapper.sequenceMst());
        result += mapper.insertMst(buyMstDto);

        for (BuyDtlDto buyDtlDto : buyDtlDtoList) {
            buyDtlDto.setSeq_dtl(mapper.sequenceDtl());
            buyDtlDto.setSeq_mst(buyMstDto.getSeq_mst());
            buyDtlDto.setRegister(buyMstDto.getRegister());
            result += mapper.insertDtl(buyDtlDto);
        }

        PayDto payDto = new PayDto();
        payDto.setSeq_pay(payMapper.sequence());
        payDto.setSeq_mst(buyMstDto.getSeq_mst());
        payDto.setDeal_num(deal_num);
        payDto.setRegister(buyMstDto.getRegister());
        result += payMapper.insert(payDto);

        if (result == (2 + buyDtlDtoList.size())) return true;
        else {
            return false;
        }
    }
    
    @Override
    public boolean update(String deal_num, int updater, String flg_success) {
		
		int result = 0;
		
		PayDto payDto = new PayDto();
		payDto.setDeal_num(deal_num);
		payDto.setFlg_success(flg_success);		// 성공(Y), 실패(N)
		result += payMapper.update(payDto);
		
		payDto = payMapper.select(payDto);
		BuyMstDto buyMstDto = new BuyMstDto();
		buyMstDto.setSeq_mst(payDto.getSeq_mst());
		buyMstDto.setCd_state_pay(flg_success);	// 결제 완료(Y), 결제 전(N), 결제 취소(C)
		buyMstDto.setUpdater(updater);
		result += mapper.update(buyMstDto);
		
		if (result == 2) return true;
		else {
			return false;
		}
	}
    
    @Override
    public boolean updateCnt(int seq_sel) {
    	
    	if(mapper.updateCnt(seq_sel) == 1) {
    		return true;
    	} else {
    	return false;
    	}
    }
    

	
}