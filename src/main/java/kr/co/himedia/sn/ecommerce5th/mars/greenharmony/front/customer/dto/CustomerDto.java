package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.dto;

public class CustomerDto {
	
	private int seq_cst;
	private String id;
	private String passwd;
	private String cst_nm;
	private String seq_state;
	private String phone;
	private String cst_email;
	private String dt_reg;
	private String dt_upt;
	private String flg_email;
	private String dt_email;
	private int updater;
	
	private String before_flg_email;

	
	public String getBefore_flg_email() {
		return before_flg_email;
	}
	public void setBefore_flg_email(String before_flg_email) {
		this.before_flg_email = before_flg_email;
	}
	public String getCst_email() {
		return cst_email;
	}
	public void setCst_email(String cst_email) {
		this.cst_email = cst_email;
	}
	public int getUpdater() {
		return updater;
	}
	public void setUpdater(int updater) {
		this.updater = updater;
	}
	public String getDt_upt() {
		return dt_upt;
	}
	public void setDt_upt(String dt_upt) {
		this.dt_upt = dt_upt;
	}
	

	public String getFlg_email() {
		return flg_email;
	}
	public void setFlg_email(String flg_email) {
		this.flg_email = flg_email;
	}
	public String getDt_email() {
		return dt_email;
	}
	public void setDt_email(String dt_email) {
		this.dt_email = dt_email;
	}
	public int getSeq_cst() {
		return seq_cst;
	}
	public void setSeq_cst(int seq_cst) {
		this.seq_cst = seq_cst;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getCst_nm() {
		return cst_nm;
	}
	public void setCst_nm(String cst_nm) {
		this.cst_nm = cst_nm;
	}

	public String getSeq_state() {
		return seq_state;
	}
	public void setSeq_state(String seq_state) {
		this.seq_state = seq_state;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDt_reg() {
		return dt_reg;
	}
	public void setDt_reg(String dt_reg) {
		this.dt_reg = dt_reg;
	}
		
	}
	
	
	
