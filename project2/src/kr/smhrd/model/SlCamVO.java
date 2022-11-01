package kr.smhrd.model;

public class SlCamVO {

	private int slcam_n;
	private String slcam_name;
	private String slcam_location;
	private String slcam_status;
	
	
	public SlCamVO() {
		
	}
	
	public SlCamVO(String slcam_name, String slcam_location, String slcam_status) {
		super();
		this.slcam_name = slcam_name;
		this.slcam_location = slcam_location;
		this.slcam_status = slcam_status;
	}
	public SlCamVO(int slcam_n, String slcam_name, String slcam_location, String slcam_status) {
		super();
		this.slcam_n = slcam_n;
		this.slcam_name = slcam_name;
		this.slcam_location = slcam_location;
		this.slcam_status = slcam_status;
	}
	
	@Override
	public String toString() {
		return "SlCamVO [slcam_n=" + slcam_n + ", slcam_name=" + slcam_name + ", slcam_location=" + slcam_location
				+ ", slcam_status=" + slcam_status + "]";
	}
	
	public int getSlcam_n() {
		return slcam_n;
	}
	public void setSlcam_n(int slcam_n) {
		this.slcam_n = slcam_n;
	}
	public String getSlcam_name() {
		return slcam_name;
	}
	public void setSlcam_name(String slcam_name) {
		this.slcam_name = slcam_name;
	}
	public String getSlcam_location() {
		return slcam_location;
	}
	public void setSlcam_location(String slcam_location) {
		this.slcam_location = slcam_location;
	}
	public String getSlcam_status() {
		return slcam_status;
	}
	public void setSlcam_status(String slcam_status) {
		this.slcam_status = slcam_status;
	}
	
	
	
	
	
	
}