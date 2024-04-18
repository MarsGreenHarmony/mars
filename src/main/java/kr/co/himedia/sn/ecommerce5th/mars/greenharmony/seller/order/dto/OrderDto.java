package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.order.dto;

public class OrderDto  {
	
	private int seq_dtl;
	private int seq_mst;
	private int seq_prd;
	private int seq_sle;
	private int price;
	private Integer count;
	private String dt_reg;
	private String buy_prd_nm;
	private String detail_img;
	private int register;
	private String cst_nm;
	private int seq_sll;
	private String cd_state_pay;
	private String cd_state_delivery;

	
	
	public String getCd_state_delivery() {
		return cd_state_delivery;
	}
	public void setCd_state_delivery(String cd_state_delivery) {
		this.cd_state_delivery = cd_state_delivery;
	}
	public String getCd_state_pay() {
		return cd_state_pay;
	}
	public void setCd_state_pay(String cd_state_pay) {
		this.cd_state_pay = cd_state_pay;
	}
	public int getSeq_sll() {
		return seq_sll;
	}
	public void setSeq_sll(int seq_sll) {
		this.seq_sll = seq_sll;
	}
	public String getCst_nm() {
		return cst_nm;
	}
	public void setCst_nm(String cst_nm) {
		this.cst_nm = cst_nm;
	}
	public int getRegister() {
		return register;
	}
	public void setRegister(int register) {
		this.register = register;
	}
	
	
	public int getSeq_dtl() {
		return seq_dtl;
	}
	public void setSeq_dtl(int seq_dtl) {
		this.seq_dtl = seq_dtl;
	}
	public int getSeq_mst() {
		return seq_mst;
	}
	public void setSeq_mst(int seq_mst) {
		this.seq_mst = seq_mst;
	}
	public int getSeq_prd() {
		return seq_prd;
	}
	public void setSeq_prd(int seq_prd) {
		this.seq_prd = seq_prd;
	}
	public int getSeq_sle() {
		return seq_sle;
	}
	public void setSeq_sle(int seq_sle) {
		this.seq_sle = seq_sle;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public String getDt_reg() {
		return dt_reg;
	}
	public void setDt_reg(String dt_reg) {
		this.dt_reg = dt_reg;
	}
	public String getBuy_prd_nm() {
		return buy_prd_nm;
	}
	public void setBuy_prd_nm(String buy_prd_nm) {
		this.buy_prd_nm = buy_prd_nm;
	}
	public String getDetail_img() {
		return detail_img;
	}
	public void setDetail_img(String detail_img) {
		this.detail_img = detail_img;
	}
}
	
	
	