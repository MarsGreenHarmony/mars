package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.board.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.board.dto.BoardDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.board.service.BoardService;

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardService service;
	
	@RequestMapping(value = "/common/board/list")
	public ModelAndView list(HttpServletRequest request, HttpServletResponse response) {

	    ModelAndView mav = new ModelAndView("redirect:/error");

	    try {
	        BoardDto boardDto = new BoardDto();

			//if (/* boardDto.getCd_bbs_type() == null || */boardDto.getCd_bbs_type() == 0) {
	       //     boardDto.setCd_bbs_type(1);
	      //  }

	        // 세션에서 CD_USR_TYPE 속성 값을 가져옴
	        String cdUsrType = (String) request.getSession().getAttribute("CD_USR_TYPE");
	       // Logger.debug("CD_USR_TYPE=" + cdUsrType);

	        // CD_BBS_TYPE가 3이고 CD_USR_TYPE이 3일 때
	        if (boardDto.getCd_bbs_type() == 3 && "3".equals(cdUsrType)) {
	            // 세션에서 id 속성 값을 가져와서 boardDto에 설정
	         //   boardDto.setId(Integer.parseInt((String) request.getSession().getAttribute("id")));
	        }

	        // BoardService의 select 메서드를 호출하여 게시글 목록을 가져옴
	        
	        boardDto.setCd_bbs_type(1);
	        
	       List<BoardDto> list = service.list(boardDto);

	       mav.addObject("list", list);
	        
	        
	        // 관리자(1), 판매자(2), 구매자(3) 
	        if (cdUsrType.equals("1")) {
	        	mav.setViewName("/backoffice/common/board/list");
	        }
	        else if (cdUsrType.equals("2")) {
	        	mav.setViewName("/seller/common/board/list");
	        }
	        else {
	        	mav.setViewName("/front/common/board/list");
	        }

	    } catch (Exception e) {
	    	logger.error("[" + this.getClass().getName() + ".list()] " + e.getMessage(), e);
	    }

	    return mav;
	}
	
	@RequestMapping(value = "/common/board/writeForm")
	public ModelAndView writeForm(HttpServletRequest request, HttpServletResponse response, String cd_bbs_type) {

	    ModelAndView mav = new ModelAndView("redirect:/error");

	    try {
	        BoardDto boardDto = new BoardDto();
	        
	        // 세션에서 cd_bbs_type 속성 값을 가져와서 boardDto에 설정
	        Integer cdbbsType = (Integer) request.getSession().getAttribute("cd_bbs_type");
	        if (cdbbsType != null) {
	            boardDto.setCd_bbs_type(cdbbsType);
	        } else {
	            // 세션에 cd_bbs_type 속성이 없는 경우 기본값으로 설정
	            boardDto.setCd_bbs_type(1); // 혹은 다른 기본값으로 설정하세요
	        }

	        mav.addObject("cd_bbs_type", boardDto.getCd_bbs_type());

	        String cdUsrType = (String) request.getSession().getAttribute("CD_USR_TYPE");

	        // cdUsrType에 따라서 뷰를 설정합니다.
	        if (cdUsrType != null) {
	            if (cdUsrType.equals("1")) {
	                mav.setViewName("/backoffice/common/board/writeForm");
	            } else if (cdUsrType.equals("2")) {
	                mav.setViewName("/seller/common/board/writeForm");
	            } else {
	                mav.setViewName("/front/common/board/writeForm");
	            }
	        } else {
	            // CD_USR_TYPE 세션 속성이 없는 경우에 대한 처리
	            mav.setViewName("/front/common/board/writeForm");
	        }

	    } catch (Exception e) {
	        // 예외 처리
	        //logger.error("[" + this.getClass().getName() + ".writeForm()] " + e.getMessage(), e);
	    }

	    return mav;
	}
	
	@RequestMapping(value = "/common/board/faqwriteForm")
	public ModelAndView faqwriteForm(HttpServletRequest request, HttpServletResponse response, String cd_bbs_type) {

	    ModelAndView mav = new ModelAndView("redirect:/error");

	    try {
	        BoardDto boardDto = new BoardDto();
	        
	        // 세션에서 cd_bbs_type 속성 값을 가져와서 boardDto에 설정
	        Integer cdbbsType = (Integer) request.getSession().getAttribute("cd_bbs_type");
	        if (cdbbsType != null) {
	            boardDto.setCd_bbs_type(cdbbsType);
	        } else {
	            // 세션에 cd_bbs_type 속성이 없는 경우 기본값으로 설정
	            boardDto.setCd_bbs_type(1); // 혹은 다른 기본값으로 설정하세요
	        }

	        mav.addObject("cd_bbs_type", boardDto.getCd_bbs_type());

	        String cdUsrType = (String) request.getSession().getAttribute("CD_USR_TYPE");

	        // cdUsrType에 따라서 뷰를 설정합니다.
	        if (cdUsrType != null) {
	            if (cdUsrType.equals("1")) {
	                mav.setViewName("/backoffice/common/board/faqwriteForm");
	            } else if (cdUsrType.equals("2")) {
	                mav.setViewName("/seller/common/board/faqwriteForm");
	            } else {
	                mav.setViewName("/front/common/board/faqwriteForm");
	            }
	        } else {
	            // CD_USR_TYPE 세션 속성이 없는 경우에 대한 처리
	            mav.setViewName("/front/common/board/faqwriteForm");
	        }

	    } catch (Exception e) {
	        // 예외 처리
	        //logger.error("[" + this.getClass().getName() + ".writeForm()] " + e.getMessage(), e);
	    }

	    return mav;
	}


	
	@RequestMapping(value = "/common/board/writeProc", method = RequestMethod.POST)
	public ModelAndView writeProc(HttpServletRequest request, HttpServletResponse response, BoardDto boardDto) {
		
		ModelAndView mav = new ModelAndView();
		
		try {
			
			//boardDto.sleep(3100); // 3.1초
			
			// [2023-12-18][pluto@himedia.co.kr][TODO: 부모글 일련번호, 게시판 일련번호, 탭 코드, 등록자/수정자 등 현행화]
			boardDto.setSeq_bbs_parent(0);
			boardDto.setCd_bbs_type(1);
		
			
			if (service.insert(boardDto)) {
				request.setAttribute("script"	, "alert('등록 완료');");
				request.setAttribute("redirect"	, "/common/board/list");
			}
			else {
				request.setAttribute("script"	, "alert('등록 실패');");
			}
			
			mav.setViewName("forward:/servlet/result");
			
			
		}
		catch (Exception e) {
		//	logger.error("[" + this.getClass().getName() + ".writeProc()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	
	@RequestMapping(value = "/common/board/faqwriteProc", method = RequestMethod.POST)
	public ModelAndView faqwriteProc(HttpServletRequest request, HttpServletResponse response, BoardDto boardDto) {
		
		ModelAndView mav = new ModelAndView();
		
		try {
			
			//boardDto.sleep(3100); // 3.1초
			
			// [2023-12-18][pluto@himedia.co.kr][TODO: 부모글 일련번호, 게시판 일련번호, 탭 코드, 등록자/수정자 등 현행화]
			boardDto.setSeq_bbs_parent(0);
			boardDto.setCd_bbs_type(2);
			//boardDto.setRegister(Integer.parseInt(getSession(request, "register")));
			
		
			//System.out.println("aaaaaaaaaaaaaaaaa");
			
			if (service.insert(boardDto)) {
				request.setAttribute("script"	, "alert('등록 완료');");
				request.setAttribute("redirect"	, "/common/board/faqlist");
			}
			else {
				request.setAttribute("script"	, "alert('등록 실패');");
			}
			
			mav.setViewName("forward:/servlet/result");
			
			
		}
		catch (Exception e) {
		logger.error("[" + this.getClass().getName() + ".writeProc()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	

	@RequestMapping(value = "/common/board/modifyForm")
	public ModelAndView modifyForm(HttpServletRequest request, HttpServletResponse response, BoardDto boardDto) {
	    ModelAndView mav = new ModelAndView("redirect:/error");

	    try {
	        // BoardService의 select 메서드를 호출하여 게시글 정보를 가져옴
	        BoardDto listboardDto = service.select(boardDto);

	        // 가져온 게시글 정보를 view에 전달
	        mav.addObject("boardDto", listboardDto);

	        mav.setViewName("/backoffice/common/board/modifyForm");
	    } catch (Exception e) {
	        // 예외 처리
	        //logger.error("[" + this.getClass().getName() + ".modifyForm()] " + e.getMessage(), e);
	    }

	    return mav;
	}
	
	@RequestMapping(value = "/common/board/faqmodifyForm")
	public ModelAndView faqmodifyForm(HttpServletRequest request, HttpServletResponse response, BoardDto boardDto) {
	    ModelAndView mav = new ModelAndView("redirect:/error");

	    try {
	        // BoardService의 select 메서드를 호출하여 게시글 정보를 가져옴
	        BoardDto listboardDto = service.select(boardDto);

	        // 가져온 게시글 정보를 view에 전달
	        mav.addObject("boardDto", listboardDto);

	        mav.setViewName("/backoffice/common/board/faqmodifyForm");
	    } catch (Exception e) {
	        logger.error("[" + this.getClass().getName() + ".modifyForm()] " + e.getMessage(), e);
	    }

	    return mav;
	}

	
	@RequestMapping(value = "/common/board/modifyProc")
	public ModelAndView modifyProc(HttpServletRequest request, HttpServletResponse response	, BoardDto boardDto) {
		
		ModelAndView mav = new ModelAndView("redirect:/error");
		
		try {
			
		//	request.setAttribute("scriptSRC", "<script type=\"text/javascript\" src=\"/js/common.js\"></script>");
			if (service.update(boardDto))  {
				request.setAttribute("script"	, "alert('수정 완료');");
			}
			else {
				request.setAttribute("script"	, "alert('수정 실패');");
			}
			
			request.setAttribute("redirect"	, "/common/board/list");
			
			mav.setViewName("forward:/servlet/result");
		}
		catch (Exception e) {
		//	logger.error("[" + this.getClass().getName() + ".modifyProc()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	
	@RequestMapping(value = "/common/board/faqmodifyProc")
	public ModelAndView faqmodifyProc(HttpServletRequest request, HttpServletResponse response	, BoardDto boardDto) {
		
		ModelAndView mav = new ModelAndView("redirect:/error");
		
		try {
			
		//	request.setAttribute("scriptSRC", "<script type=\"text/javascript\" src=\"/js/common.js\"></script>");
			if (service.update(boardDto))  {
				request.setAttribute("script"	, "alert('수정 완료');");
			}
			else {
				request.setAttribute("script"	, "alert('수정 실패');");
			}
			
			request.setAttribute("redirect"	, "/common/board/faqlist");
			
			mav.setViewName("forward:/servlet/result");
		}
		catch (Exception e) {
		//	logger.error("[" + this.getClass().getName() + ".modifyProc()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	
	@RequestMapping(value = "/common/board/view")
	public ModelAndView view(HttpServletRequest request, HttpServletResponse response, BoardDto boardDto) {
		
		 ModelAndView mav = new ModelAndView("redirect:/error");

		    try {
		        BoardDto listboardDto = service.select(boardDto);

		        mav.addObject("boardDto", listboardDto);

		        // 세션에서 CD_USR_TYPE 속성 값을 가져옴
		        String cdUsrType = (String) request.getSession().getAttribute("CD_USR_TYPE");

		        // 구매자, 판매자, 관리자에 따라 다른 페이지를 반환
		        if (cdUsrType != null) {
		            if (cdUsrType.equals("1")) {
		                mav.setViewName("/backoffice/common/board/view");
		            } else if (cdUsrType.equals("2")) {
		                mav.setViewName("/seller/common/board/view");
		            } else {
		                mav.setViewName("/front/common/board/view");
		            }
		        } else {
		            // CD_USR_TYPE 세션 속성이 없는 경우에 대한 처리
		            mav.setViewName("/front/common/board/faqwriteForm");
		        }

		    } catch (Exception e) {
		        // 예외 처리
		        logger.error("[" + this.getClass().getName() + ".view()] " + e.getMessage(), e);
		    }

		    return mav;
		}
	
	@RequestMapping(value = "/common/board/faqview")
	public ModelAndView faqview(HttpServletRequest request, HttpServletResponse response, BoardDto boardDto) {
	    ModelAndView mav = new ModelAndView("redirect:/error");

	    try {
	        BoardDto listboardDto = service.select(boardDto);

	        mav.addObject("boardDto", listboardDto);

	        // 세션에서 CD_USR_TYPE 속성 값을 가져옴
	        String cdUsrType = (String) request.getSession().getAttribute("CD_USR_TYPE");

	        // 구매자, 판매자, 관리자에 따라 다른 페이지를 반환
	        if (cdUsrType != null) {
	            if (cdUsrType.equals("1")) { // 관리자
	                mav.setViewName("/backoffice/common/board/faqview");
	            } else if (cdUsrType.equals("2")) { // 판매자
	                mav.setViewName("/seller/common/board/faqview");
	            } else  { // 구매자
	                mav.setViewName("/front/common/board/faqview");
	            }
	        } else {
	            // CD_USR_TYPE이 null인 경우에 대한 처리, 예를 들어 세션이 만료된 경우 등
	            mav.setViewName("/common/board/faqview");
	        }
	    } catch (Exception e) {
	        // 예외 처리
	        logger.error("[" + this.getClass().getName() + ".faqview()] " + e.getMessage(), e);
	    }

	    return mav;
	}
	
	@RequestMapping(value = "/common/board/remove")
	public ModelAndView remove(HttpServletRequest request, HttpServletResponse response	, BoardDto boardDto) {
		
		ModelAndView mav = new ModelAndView("redirect:/error");
		
		try {
			
		//	File file = new File(staticProperties.getProperty("common.dirUpload", "[UNDEFINED]") + boardDto.getFile_save());
			
		//	if (file.exists()) {
		//		logger.debug("delete=" + staticProperties.getProperty("common.dirUpload", "[UNDEFINED]") + boardDto.getFile_save());
		//		file.delete();
		//	}
			
			// boardDto.setUpdater(Integer.parseInt(getSession(request, "updater")));
			
			if (service.flg_delete(boardDto)) {
				request.setAttribute("script"	, "alert('삭제 완료');");
			}
			else {
				request.setAttribute("script"	, "alert('삭제 실패');");
			}
			
			request.setAttribute("redirect"	, "/common/board/list");
			
			mav.setViewName("forward:/servlet/result");
		}
		catch (Exception e) {
		//	logger.error("[" + this.getClass().getName() + ".remove()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	
	@RequestMapping(value = "/common/board/faqremove")
	public ModelAndView faqremove(HttpServletRequest request, HttpServletResponse response	, BoardDto boardDto) {
		
		ModelAndView mav = new ModelAndView("redirect:/error");
		
		try {
			
		//	File file = new File(staticProperties.getProperty("common.dirUpload", "[UNDEFINED]") + boardDto.getFile_save());
			
		//	if (file.exists()) {
		//		logger.debug("delete=" + staticProperties.getProperty("common.dirUpload", "[UNDEFINED]") + boardDto.getFile_save());
		//		file.delete();
		//	}
			
			// boardDto.setUpdater(Integer.parseInt(getSession(request, "updater")));
			
			if (service.flg_delete(boardDto)) {
				request.setAttribute("script"	, "alert('삭제 완료');");
			}
			else {
				request.setAttribute("script"	, "alert('삭제 실패');");
			}
			
			request.setAttribute("redirect"	, "/common/board/faqlist");
			
			mav.setViewName("forward:/servlet/result");
		}
		catch (Exception e) {
		//	logger.error("[" + this.getClass().getName() + ".remove()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	
	// 자주찾는 질문(faqlist)
	@RequestMapping(value = "/common/board/faqlist")
	public ModelAndView faqlist(HttpServletRequest request, HttpServletResponse response) {

	    ModelAndView mav = new ModelAndView("redirect:/error");

	    try {
	        BoardDto boardDto = new BoardDto();

	        // 세션에서 CD_USR_TYPE 속성 값을 가져옴
	        String cdUsrType = (String) request.getSession().getAttribute("CD_USR_TYPE");
	       // Logger.debug("CD_USR_TYPE=" + cdUsrType);

	        // CD_BBS_TYPE가 3이고 CD_USR_TYPE이 3일 때
	        if (boardDto.getCd_bbs_type() == 3 && "3".equals(cdUsrType)) {
	            // 세션에서 id 속성 값을 가져와서 boardDto에 설정
	         //   boardDto.setId(Integer.parseInt((String) request.getSession().getAttribute("id")));
	        }

	        
	        boardDto.setCd_bbs_type(2);
	        
	       List<BoardDto> faqlist = service.faqlist(boardDto);

	       mav.addObject("faqlist", faqlist);
	        
	        
	        // 관리자(1), 판매자(2), 구매자(3) 
	        if (cdUsrType.equals("1")) {
	        	mav.setViewName("/backoffice/common/board/faqlist");
	        }
	        else if (cdUsrType.equals("2")) {
	        	mav.setViewName("/seller/common/board/faqlist");
	        }
	        else {
	        	mav.setViewName("/front/common/board/faqlist");
	        }

	    } catch (Exception e) {
	    	logger.error("[" + this.getClass().getName() + ".list()] " + e.getMessage(), e);
	    }

	    return mav;
	}
	@RequestMapping(value = "/common/board/inquiryList")
	public ModelAndView inquiryList (HttpServletRequest request, HttpServletResponse response) {
		  ModelAndView mav = new ModelAndView("redirect:/error");

		    try {
		        BoardDto boardDto = new BoardDto();

		        // 모든 구매자의 문의내역을 가져오기 위해 boardDto에 필요한 정보 설정
		        boardDto.setCd_bbs_type(3);

		        List<BoardDto> inquiryList = service.inquiryList(boardDto);

		        mav.addObject("inquiryList", inquiryList);
		        mav.setViewName("/backoffice/common/board/inquirylist"); // 관리자용 문의내역 페이지로 이동

		    } catch (Exception e) {
		        logger.error("[" + this.getClass().getName() + ".adminInquiryList()] " + e.getMessage(), e);
		    }

		    return mav;
		}
	
	@RequestMapping(value = "/common/board/myinquiryView")
	public ModelAndView myInquiryView(HttpServletRequest request, HttpServletResponse response, BoardDto boardDto) {
		
		ModelAndView mav = new ModelAndView("redirect:/error");
		
		try {
			
		BoardDto listboardDto =service.myinquiryList(boardDto);
			
			mav.addObject("boardDto", listboardDto);
			mav.setViewName("/backoffice/common/board/myinquiryView");
		}
		
		
		catch (Exception e) {
		//	logger.error("[" + this.getClass().getName() + ".view()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	
	@RequestMapping(value = "/common/board/replyProc", method = RequestMethod.POST)
	public ModelAndView replyProc(HttpServletRequest request, HttpServletResponse response, BoardDto boardDto) {
		
			ModelAndView mav = new ModelAndView();
		
		try {
			
			boardDto.setCd_bbs_type(3);
			
			
			if (service.insert(boardDto)) {
				request.setAttribute("script"	, "alert('등록 완료');");
				request.setAttribute("redirect"	, "/common/board/inquiryList");
			}
			else {
				request.setAttribute("script"	, "alert('등록 실패');");
			}
			
			mav.setViewName("forward:/servlet/result");
			
		}
		catch (Exception e) {
		//	logger.error("[" + this.getClass().getName() + ".writeProc()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	
	@RequestMapping(value = "/common/board/replyForm")
	public ModelAndView replyForm(HttpServletRequest request, HttpServletResponse response, BoardDto boardDto) {
		
		ModelAndView mav = new ModelAndView("redirect:/error");
		
		try {
			// 현재 글번호가 새로운 글의 부모 글번호로 설정
			boardDto.setSeq_bbs_parent(boardDto.getSeq_bbs());
			
			mav.setViewName("/backoffice/common/board/replyForm");
		}
		catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".replyForm()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
}