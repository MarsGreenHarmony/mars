package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.delivery.dto;


public class DeliveryDto  {
	
	private int seq_cst;
	private int seq_dev;
	private String dev_nm;
	private String dev_hm;
	private String postcode;
	private String address;
	private String address_dtl;
	private String phone_nm;
	private String dev_state;
	private String dev_rq;
	
	private String before_dev_state;
	
	
	public String getBefore_dev_state() {
		return before_dev_state;
	}
	public void setBefore_dev_state(String before_dev_state) {
		this.before_dev_state = before_dev_state;
	}
	public int getSeq_cst() {
		return seq_cst;
	}
	public void setSeq_cst(int seq_cst) {
		this.seq_cst = seq_cst;
	}
	public int getSeq_dev() {
		return seq_dev;
	}
	public void setSeq_dev(int seq_dev) {
		this.seq_dev = seq_dev;
	}
	public String getDev_nm() {
		return dev_nm;
	}
	public void setDev_nm(String dev_nm) {
		this.dev_nm = dev_nm;
	}
	public String getDev_hm() {
		return dev_hm;
	}
	public void setDev_hm(String dev_hm) {
		this.dev_hm = dev_hm;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress_dtl() {
		return address_dtl;
	}
	public void setAddress_dtl(String address_dtl) {
		this.address_dtl = address_dtl;
	}
	public String getPhone_nm() {
		return phone_nm;
	}
	public void setPhone_nm(String phone_nm) {
		this.phone_nm = phone_nm;
	}
	public String getDev_state() {
		return dev_state;
	}
	public void setDev_state(String dev_state) {
		this.dev_state = dev_state;
	}
	public String getDev_rq() {
		return dev_rq;
	}
	public void setDev_rq(String dev_rq) {
		this.dev_rq = dev_rq;
	}

}
