package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging;

public class SearchCriteria extends Criteria {
	
	private String searchType;
	private String searchRnum;
	private String keyword;
	private String keyword2;
	private String[] check;
	
	
	private int register;
	private int seq_sel;
	private int seq_prd;
	private int seq_cst;
	private int seq_sll;
	
	private int category1;
	private int category2;
	
	
	
	
	
	
	
	
	
	public String getSearchRnum() {
		return searchRnum;
	}

	public void setSearchRnum(String searchRnum) {
		this.searchRnum = searchRnum;
	}

	public int getCategory1() {
		return category1;
	}

	public void setCategory1(int category1) {
		this.category1 = category1;
	}

	public int getCategory2() {
		return category2;
	}

	public void setCategory2(int category2) {
		this.category2 = category2;
	}

	private String id;
	
	

	public int getSeq_sel() {
		return seq_sel;
	}

	public void setSeq_sel(int seq_sel) {
		this.seq_sel = seq_sel;
	}

	public int getSeq_prd() {
		return seq_prd;
	}

	public void setSeq_prd(int seq_prd) {
		this.seq_prd = seq_prd;
	}

	public int getSeq_cst() {
		return seq_cst;
	}

	public void setSeq_cst(int seq_cst) {
		this.seq_cst = seq_cst;
	}

	public int getSeq_sll() {
		return seq_sll;
	}

	public void setSeq_sll(int seq_sll) {
		this.seq_sll = seq_sll;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getKeyword2() {
		return keyword2;
	}

	public void setKeyword2(String keyword2) {
		this.keyword2 = keyword2;
	}

	public String[] getCheck() {
		return check;
	}

	public void setCheck(String[] check) {
		this.check = check;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getRegister() {
		return register;
	}

	public void setRegister(int register) {
		this.register = register;
	}


	
	

	
	
} //class