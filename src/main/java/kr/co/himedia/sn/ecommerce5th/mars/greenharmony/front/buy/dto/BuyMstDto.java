package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto;

import java.util.List;

public class BuyMstDto extends BuyDtlDto {
	
	private List<BuyDtlDto> dtlList;

	private String rnum;
	
	private int seq_mst;
	private int seq_cst;
	private String buy_info;
	private int buy_t_count;
	private int buy_t_price;
	private String cd_state_del;
	private String cd_state_pay;
	private String cd_state_delivery;
	private String address;
	private int postcode;
	private String dt_reg;
	private String dt_upt;
	private int register;
	private int updater;
	
	
	
	
	
	
	
	public List<BuyDtlDto> getDtlList() {
		return dtlList;
	}
	public void setDtlList(List<BuyDtlDto> dtlList) {
		this.dtlList = dtlList;
	}
	public int getUpdater() {
		return updater;
	}
	public void setUpdater(int updater) {
		this.updater = updater;
	}
	public int getRegister() {
		return register;
	}
	public void setRegister(int register) {
		this.register = register;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPostcode() {
		return postcode;
	}
	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}
	public int getSeq_mst() {
		return seq_mst;
	}
	public void setSeq_mst(int seq_mst) {
		this.seq_mst = seq_mst;
	}
	public int getSeq_cst() {
		return seq_cst;
	}
	public void setSeq_cst(int seq_cst) {
		this.seq_cst = seq_cst;
	}
	public String getBuy_info() {
		return buy_info;
	}
	public void setBuy_info(String buy_info) {
		this.buy_info = buy_info;
	}
	public int getBuy_t_count() {
		return buy_t_count;
	}
	public void setBuy_t_count(int buy_t_count) {
		this.buy_t_count = buy_t_count;
	}
	public int getBuy_t_price() {
		return buy_t_price;
	}
	public void setBuy_t_price(int buy_t_price) {
		this.buy_t_price = buy_t_price;
	}
	public String getCd_state_del() {
		return cd_state_del;
	}
	public void setCd_state_del(String cd_state_del) {
		this.cd_state_del = cd_state_del;
	}
	public String getCd_state_pay() {
		return cd_state_pay;
	}
	public void setCd_state_pay(String cd_state_pay) {
		this.cd_state_pay = cd_state_pay;
	}
	public String getCd_state_delivery() {
		return cd_state_delivery;
	}
	public void setCd_state_delivery(String cd_state_delivery) {
		this.cd_state_delivery = cd_state_delivery;
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
	public String getRnum() {
		return rnum;
	}
	public void setRnum(String rnum) {
		this.rnum = rnum;
	}
}
