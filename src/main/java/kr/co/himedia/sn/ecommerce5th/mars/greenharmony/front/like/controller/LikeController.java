package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.like.controller;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.like.dto.LikeDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.like.service.LikeService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.Common;

@Controller
public class LikeController extends Common {
	
 	@Autowired
    private LikeService likeService;

    @PostMapping("/likes/add")
    @ResponseBody
    public ResponseEntity<String> addLike(@RequestBody LikeDto likeDto, HttpServletRequest request) {
        try {
        	likeDto.setSeq_cst(Integer.parseInt(getSession(request, "SEQ_CST")));
        	
            likeService.insert(likeDto);
            return ResponseEntity.ok("좋아요 등록 완료!");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("좋아요 등록 중 오류가 발생했습니다.");
        }
    }
    
    @PostMapping("/likes/delete")
    @ResponseBody
    public ResponseEntity<String> deleteLike(@RequestBody LikeDto likeDto, HttpServletRequest request) {
        try {
        	likeDto.setSeq_cst(Integer.parseInt(getSession(request, "SEQ_CST")));
        	
            likeService.delete(likeDto);
            return ResponseEntity.ok("좋아요가 취소되었습니다.");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("좋아요 취소 중 오류가 발생했습니다.");
        }
    }
    
    
    @GetMapping("/likes/status")
    @ResponseBody
    public ResponseEntity<List<LikeDto>> getLikeStatus(HttpServletRequest request) {
        try {
            int seqCst = Integer.parseInt(getSession(request, "SEQ_CST"));
            List<LikeDto> likedProducts = likeService.getLikedProducts(seqCst);
            return ResponseEntity.ok(likedProducts);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                .body(Collections.emptyList());
        }
    }
    
    @RequestMapping(value = "/front/customer/like")
	public ModelAndView like(@RequestParam Map<String,String> param , HttpServletRequest request, LikeDto likeDto) throws NumberFormatException, Exception {
		
		ModelAndView mav = new ModelAndView();
		int seq_cst = Integer.parseInt(getSession(request, "SEQ_CST"));
	    
	    // 구매 마스터 및 디테일 목록 조회
	    List<LikeDto> list= likeService.select(seq_cst);
	    
	    mav.addObject("list", list);
	    mav.setViewName("/front/customer/like");
	    return mav;
	}

}
