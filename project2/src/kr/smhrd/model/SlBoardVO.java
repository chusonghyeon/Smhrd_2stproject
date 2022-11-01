package kr.smhrd.model;

public class SlBoardVO {
	private int slboard_n; 
	private String sllamp_name;
	private String sllamp_location;
	private String slboard_status;
	private String slboard_decibel;
	private String slboard_rec;
	private String slboard_date; 
	
	public SlBoardVO() {
	}

	public SlBoardVO(String sllamp_name, String sllamp_location, String slboard_status, String slboard_decibel) {
	      super();
	      this.sllamp_name = sllamp_name;
	      this.sllamp_location = sllamp_location;
	      this.slboard_status = slboard_status;
	      this.slboard_decibel = slboard_decibel;
	   }
	
	
	public SlBoardVO(int slboard_n, String sllamp_name, String sllamp_location, String slboard_status,
			String slboard_decibel, String slboard_rec, String slboard_date) {
		super();
		this.slboard_n = slboard_n;
		this.sllamp_name = sllamp_name;
		this.sllamp_location = sllamp_location;
		this.slboard_status = slboard_status;
		this.slboard_decibel = slboard_decibel;
		this.slboard_rec = slboard_rec;
		this.slboard_date = slboard_date;
	}

	public SlBoardVO(String sllamp_name, String sllamp_location, String slboard_status, String slboard_decibel,
			String slboard_rec, String slboard_date) {
		super();
		this.sllamp_name = sllamp_name;
		this.sllamp_location = sllamp_location;
		this.slboard_status = slboard_status;
		this.slboard_decibel = slboard_decibel;
		this.slboard_rec = slboard_rec;
		this.slboard_date = slboard_date;
	}

	@Override
	public String toString() {
		return "SlBoardVO [slboard_n=" + slboard_n + ", sllamp_name=" + sllamp_name + ", sllamp_location="
				+ sllamp_location + ", slboard_status=" + slboard_status + ", slboard_decibel=" + slboard_decibel
				+ ", slboard_rec=" + slboard_rec + ", slboard_date=" + slboard_date + "]";
	}

	public int getSlboard_n() {
		return slboard_n;
	}

	public void setSlboard_n(int slboard_n) {
		this.slboard_n = slboard_n;
	}

	public String getSllamp_name() {
		return sllamp_name;
	}

	public void setSllamp_name(String sllamp_name) {
		this.sllamp_name = sllamp_name;
	}

	public String getSllamp_location() {
		return sllamp_location;
	}

	public void setSllamp_location(String sllamp_location) {
		this.sllamp_location = sllamp_location;
	}

	public String getSlboard_status() {
		return slboard_status;
	}

	public void setSlboard_status(String slboard_status) {
		this.slboard_status = slboard_status;
	}

	public String getSlboard_decibel() {
		return slboard_decibel;
	}

	public void setSlboard_decibel(String slboard_decibel) {
		this.slboard_decibel = slboard_decibel;
	}

	public String getSlboard_rec() {
		return slboard_rec;
	}

	public void setSlboard_rec(String slboard_rec) {
		this.slboard_rec = slboard_rec;
	}

	public String getSlboard_date() {
		return slboard_date;
	}

	public void setSlboard_date(String slboard_date) {
		this.slboard_date = slboard_date;
	}
	
	
	
	
	
}