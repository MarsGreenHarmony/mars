package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.review.dto;

public class ReviewDto {
	private int seq_rev;
	private int seq_sel;
	private int seq_prd;
	private int seq_cst;
	private int seq_dtl;
	private String desces;
	private int rating;
	private String dt_reg;
	private String dt_upt;
	private String name;
	private String sel_nm;
	private String prd_img;
	private String prd_path;
	
	private String rev_img1;
	private String rev_img2;
	private String prd_nm;
	
	
	
	
	public String getPrd_nm() {
		return prd_nm;
	}
	public void setPrd_nm(String prd_nm) {
		this.prd_nm = prd_nm;
	}
	public int getSeq_prd() {
		return seq_prd;
	}
	public void setSeq_prd(int seq_prd) {
		this.seq_prd = seq_prd;
	}
	public String getSel_nm() {
		return sel_nm;
	}
	public void setSel_nm(String sel_nm) {
		this.sel_nm = sel_nm;
	}
	public String getPrd_img() {
		return prd_img;
	}
	public void setPrd_img(String prd_img) {
		this.prd_img = prd_img;
	}
	public String getPrd_path() {
		return prd_path;
	}
	public void setPrd_path(String prd_path) {
		this.prd_path = prd_path;
	}
	public int getSeq_dtl() {
		return seq_dtl;
	}
	public void setSeq_dtl(int seq_dtl) {
		this.seq_dtl = seq_dtl;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSeq_rev() {
		return seq_rev;
	}
	public void setSeq_rev(int seq_rev) {
		this.seq_rev = seq_rev;
	}
	public int getSeq_sel() {
		return seq_sel;
	}
	public void setSeq_sel(int seq_sel) {
		this.seq_sel = seq_sel;
	}
	public int getSeq_cst() {
		return seq_cst;
	}
	public void setSeq_cst(int seq_cst) {
		this.seq_cst = seq_cst;
	}
	public String getDesces() {
		return desces;
	}
	public void setDesces(String desces) {
		this.desces = desces;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getDt_reg() {
		return dt_reg;
	}
	public void setDt_reg(String dt_reg) {
		this.dt_reg = dt_reg;
	}
	public String getDt_upt() {
		return dt_upt;
	}
	public void setDt_upt(String dt_upt) {
		this.dt_upt = dt_upt;
	}
	public String getRev_img1() {
		return rev_img1;
	}
	public void setRev_img1(String rev_img1) {
		this.rev_img1 = rev_img1;
	}
	public String getRev_img2() {
		return rev_img2;
	}
	public void setRev_img2(String rev_img2) {
		this.rev_img2 = rev_img2;
	}
	
	
	
	

}
