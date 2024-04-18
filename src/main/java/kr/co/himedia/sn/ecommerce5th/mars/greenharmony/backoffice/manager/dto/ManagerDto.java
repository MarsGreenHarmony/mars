package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.manager.dto;

public class ManagerDto {
	
	private int seq_mng;
	private String id;
	private String passwd;
	private String mng_nm;
	private int tc_state;
	
	public int getSeq_mng() {
		return seq_mng;
	}
	public void setSeq_mng(int seq_mng) {
		this.seq_mng = seq_mng;
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
	public String getMng_nm() {
		return mng_nm;
	}
	public void setMng_nm(String mng_nm) {
		this.mng_nm = mng_nm;
	}
	public int getTc_state() {
		return tc_state;
	}
	public void setTc_state(int tc_state) {
		this.tc_state = tc_state;
	}
	

}
