package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.board.dto;

public class BoardDto {
	
	private int seq_cst;
	private int seq_bbs;
	private int seq_bbs_parent;
	private int cd_bbs_type;
	private int cd_bbs_tap;
	private String title;
	private String contents;
	private String flg_top;
	private String flg_delete;
	private String img;
	private String dt_reg;
	private int register;
	private String dt_upt;
	private int updater;
	private int rnum;
	private int cd_usr_type;
	
	private int seq_reply;
	private String contents_reply	= "";
	
	
	

	public int getSeq_reply() {
		return seq_reply;
	}
	public void setSeq_reply(int seq_reply) {
		this.seq_reply = seq_reply;
	}
	public String getContents_reply() {
		return contents_reply;
	}
	public void setContents_reply(String contents_reply) {
		this.contents_reply = contents_reply;
	}
	public int getCd_usr_type() {
		return cd_usr_type;
	}
	public void setCd_usr_type(int cd_usr_type) {
		this.cd_usr_type = cd_usr_type;
	}
	public int getSeq_cst() {
		return seq_cst;
	}
	public void setSeq_cst(int seq_cst) {
		this.seq_cst = seq_cst;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public int getSeq_bbs() {
		return seq_bbs;
	}
	public void setSeq_bbs(int seq_bbs) {
		this.seq_bbs = seq_bbs;
	}
	public int getSeq_bbs_parent() {
		return seq_bbs_parent;
	}
	public void setSeq_bbs_parent(int seq_bbs_parent) {
		this.seq_bbs_parent = seq_bbs_parent;
	}
	public int getCd_bbs_type() {
		return cd_bbs_type;
	}
	public void setCd_bbs_type(int cd_bbs_type) {
		this.cd_bbs_type = cd_bbs_type;
	}
	public int getCd_bbs_tap() {
		return cd_bbs_tap;
	}
	public void setCd_bbs_tap(int cd_bbs_tap) {
		this.cd_bbs_tap = cd_bbs_tap;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getFlg_top() {
		return flg_top;
	}
	public void setFlg_top(String flg_top) {
		this.flg_top = flg_top;
	}
	public String getFlg_delete() {
		return flg_delete;
	}
	public void setFlg_delete(String flg_delete) {
		this.flg_delete = flg_delete;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
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
	public String getDt_upt() {
		return dt_upt;
	}
	public void setDt_upt(String dt_upt) {
		this.dt_upt = dt_upt;
	}
	public int getUpdater() {
		return updater;
	}
	public void setUpdater(int updater) {
		this.updater = updater;
	}
	
}
