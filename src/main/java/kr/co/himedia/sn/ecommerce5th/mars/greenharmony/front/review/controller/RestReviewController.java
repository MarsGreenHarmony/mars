package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.review.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.review.dto.ReviewDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.review.service.ReviewService;

@RestController
public class RestReviewController {
	
	@Autowired
	ReviewService service;

	@PostMapping("/front/review/getReviewData")
    public List<ReviewDto> getReviewData(@RequestBody List<Map<String, Integer>> buttonsData) {
        List<ReviewDto> resultList = new ArrayList<>();
        for (Map<String, Integer> buttonData : buttonsData) {
            int seq_sel = buttonData.get("seq_sel");
            int seq_dtl = buttonData.get("seq_dtl");
            List<ReviewDto> reviewList = service.findReview(seq_sel, seq_dtl);
            resultList.addAll(reviewList);
        }
        return resultList;
    }
}