package kr.smhrd.model;

public class SlLampVO {

	private int sllamp_n;
	private String sllamp_name;
	private String sllamp_location;
	private String sllamp_status;
	private String sllamp_battery;
	private String sllamp_broken;
	
	
	public SlLampVO() { }

	public SlLampVO(String sllamp_name, String sllamp_status) {
		super();
		this.sllamp_name = sllamp_name;
		this.sllamp_status = sllamp_status;
	}

	public SlLampVO(int sllamp_n, String sllamp_name, String sllamp_location, String sllamp_status,
			String sllamp_battery, String sllamp_broken) {
		super();
		this.sllamp_n = sllamp_n;
		this.sllamp_name = sllamp_name;
		this.sllamp_location = sllamp_location;
		this.sllamp_status = sllamp_status;
		this.sllamp_battery = sllamp_battery;
		this.sllamp_broken = sllamp_broken;
	}


	public SlLampVO(String sllamp_name, String sllamp_location, String sllamp_status, String sllamp_battery,
			String sllamp_broken) {
		super();
		this.sllamp_name = sllamp_name;
		this.sllamp_location = sllamp_location;
		this.sllamp_status = sllamp_status;
		this.sllamp_battery = sllamp_battery;
		this.sllamp_broken = sllamp_broken;
	}


	@Override
	public String toString() {
		return "SlLampVO [sllamp_n=" + sllamp_n + ", sllamp_name=" + sllamp_name + ", sllamp_location="
				+ sllamp_location + ", sllamp_status=" + sllamp_status + ", sllamp_battery=" + sllamp_battery
				+ ", sllamp_broken=" + sllamp_broken + "]";
	}


	public int getSllamp_n() {
		return sllamp_n;
	}


	public void setSllamp_n(int sllamp_n) {
		this.sllamp_n = sllamp_n;
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


	public String getSllamp_status() {
		return sllamp_status;
	}


	public void setSllamp_status(String sllamp_status) {
		this.sllamp_status = sllamp_status;
	}


	public String getSllamp_battery() {
		return sllamp_battery;
	}


	public void setSllamp_battery(String sllamp_battery) {
		this.sllamp_battery = sllamp_battery;
	}


	public String getSllamp_broken() {
		return sllamp_broken;
	}


	public void setSllamp_broken(String sllamp_broken) {
		this.sllamp_broken = sllamp_broken;
	}
	
	
	
}
