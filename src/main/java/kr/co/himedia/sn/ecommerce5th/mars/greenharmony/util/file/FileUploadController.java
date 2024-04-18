package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.file;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
public class FileUploadController {
	
	@GetMapping("/success")
	public String success() {
		return "success";
	}


	@PostMapping("/upload")
	public String handleFileUpload(@RequestParam("file") MultipartFile file, Model model) {
	    if (!file.isEmpty()) {
	        try {
	            // 이미지를 저장할 절대 경로
	            String absoluteUploadDir = "D:\\Business\\sts\\kr.co.himedia.sn.ecommerce5th.mars\\src\\main\\resources\\static\\seller\\product\\image";
	            String absoluteFilePath = absoluteUploadDir + File.separator + file.getOriginalFilename();
	            file.transferTo(new File(absoluteFilePath));

	            // 모델에 추가할 상대 경로
				/*
				 * String relativeFilePath = "/product/image/" + file.getOriginalFilename();
				 * model.addAttribute("imagePath", relativeFilePath);
				 */
	            System.out.println("파일저장성공");
	            System.out.println(file.getOriginalFilename());
	            // 파일 저장 성공 처리
	            return "redirect:/success";
	        } catch (IOException e) {
	            // 파일 저장 실패 처리
	            return "redirect:/error";
	        }
	    } else {
	        // 업로드된 파일이 없을 때 처리
	        return "redirect:/error";
	    }
	}
	
	@PostMapping("/uploadSel")
	public String handleFileUploadSel(@RequestParam("file") MultipartFile file, Model model) {
	    if (!file.isEmpty()) {
	        try {
	            // 이미지를 저장할 절대 경로
	            String absoluteUploadDir = "D:\\Business\\sts\\kr.co.himedia.sn.ecommerce5th.mars\\src\\main\\resources\\static\\seller\\sale\\image";
	            String absoluteFilePath = absoluteUploadDir + File.separator + file.getOriginalFilename();
	            file.transferTo(new File(absoluteFilePath));

	            // 모델에 추가할 상대 경로
				/*
				 * String relativeFilePath = "/product/image/" + file.getOriginalFilename();
				 * model.addAttribute("imagePath", relativeFilePath);
				 */
	            System.out.println("파일저장성공");
	            // 파일 저장 성공 처리
	            return "redirect:/success";
	        } catch (IOException e) {
	            // 파일 저장 실패 처리
	            return "redirect:/error";
	        }
	    } else {
	        // 업로드된 파일이 없을 때 처리
	        return "redirect:/error";
	    }
	}
	
	@PostMapping("/uploadRev")
	public String handleFileUploadRev(@RequestParam("file") MultipartFile file, Model model) {
	    if (!file.isEmpty()) {
	        try {
	            // 이미지를 저장할 절대 경로
	            String absoluteUploadDir = "D:\\Business\\sts\\kr.co.himedia.sn.ecommerce5th.mars\\src\\main\\resources\\static\\front\\review\\image";
	            String absoluteFilePath = absoluteUploadDir + File.separator + file.getOriginalFilename();
	            file.transferTo(new File(absoluteFilePath));

	            // 모델에 추가할 상대 경로
				/*
				 * String relativeFilePath = "/product/image/" + file.getOriginalFilename();
				 * model.addAttribute("imagePath", relativeFilePath);
				 */
	            System.out.println("파일저장성공");
	            // 파일 저장 성공 처리
	            return "redirect:/success";
	        } catch (IOException e) {
	            // 파일 저장 실패 처리
	            return "redirect:/error";
	        }
	    } else {
	        // 업로드된 파일이 없을 때 처리
	        return "redirect:/error";
	    }
	}

}
