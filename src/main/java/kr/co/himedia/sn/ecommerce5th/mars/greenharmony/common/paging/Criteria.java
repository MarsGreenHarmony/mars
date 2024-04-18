package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging;

public class Criteria {
	private int rowsPerPage; // 1Page에 출력할 Row 갯수
	private int currPage; // 현재 출력 Page
	private int sno; // start RowNo
	private int eno; // end RowNo (MySql 은 없어도 됨)
	
	// 1) 필요한 초기값은 생성자로 초기화
	public Criteria() {
		this.rowsPerPage=12; // 한페이지당 5개씩 출력
		this.currPage=1; // 첫페이지는 1
	}
	
	// 2) setCurrPage : 요청받은(출력할) PageNo set
	public void setCurrPage(int currPage) {
		if(currPage>1) this.currPage=currPage;
		else this.currPage=1;
	}
	
	// 3) setRowsPerPage
	// => 1페이지당 보여줄 Row(Record,튜플) 갯수 확인
	// => 제한조건 점검 ( 50개 까지만 허용)
	// => 당장은 사용하지 않지만 사용가능하도록 작성
	public void setRowsPerPage(int rowsPerPage) {
		if(rowsPerPage > 5 && rowsPerPage <=50)
			this.rowsPerPage=rowsPerPage;
		else  this.rowsPerPage=5;
	}
	
	// 4) setSnoEno : sno, eno 계산
	// => currPage, rowsPerPage 를 이용해 계산
	// => Oracle 검색조건 :  between(sno, eno ) -> sno 부터 eno 까지
	// => MySql 검색조건 : limit sno, n -> sno 다음 부터 n개
	public void setSnoEno() {
		if ( this.sno<1 ) this.sno=1;
		this.sno=(this.currPage-1)*this.rowsPerPage + 1 ;// -> Oracle
		// this.sno=(this.currPage-1)*this.rowsPerPage; // MySql
		this.eno=this.sno + this.rowsPerPage - 1 ;   // MySql 에서는 필요없음
	}

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public int getEno() {
		return eno;
	}

	public void setEno(int eno) {
		this.eno = eno;
	}

	public int getRowsPerPage() {
		return rowsPerPage;
	}

	public int getCurrPage() {
		return currPage;
	}

	@Override
	public String toString() {
		return "Criteria [getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	
	
} //Class
