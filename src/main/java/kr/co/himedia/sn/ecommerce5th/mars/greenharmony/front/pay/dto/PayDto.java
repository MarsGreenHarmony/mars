package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.pay.dto;

public class PayDto {
	private int seq_pay				= 0;
	private int seq_mst			= 0;
	private String deal_num			= "";
	private String cd_pay_method	= "";
	private String flg_success		= "";
	private String dt_reg			= "";
	private int register			= 0;
	
	
	public int getSeq_pay() {
		return seq_pay;
	}
	public void setSeq_pay(int seq_pay) {
		this.seq_pay = seq_pay;
	}
	
	
	public int getSeq_mst() {
		return seq_mst;
	}
	public void setSeq_mst(int seq_mst) {
		this.seq_mst = seq_mst;
	}
	public String getDeal_num() {
		return deal_num;
	}
	public void setDeal_num(String deal_num) {
		this.deal_num = deal_num;
	}
	public String getCd_pay_method() {
		return cd_pay_method;
	}
	public void setCd_pay_method(String cd_pay_method) {
		this.cd_pay_method = cd_pay_method;
	}
	public String getFlg_success() {
		return flg_success;
	}
	public void setFlg_success(String flg_success) {
		this.flg_success = flg_success;
	}
	public String getDt_reg() {
		return dt_reg;
	}
	public void setDt_reg(String dt_reg) {
		this.dt_reg = dt_reg;
	}
	public int getRegister() {
		return register;
	}
	public void setRegister(int register) {
		this.register = register;
	}
}

