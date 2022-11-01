package kr.smhrd.model;

public class SlManagerVO {
	private int slmanager_n; 
	private String slmanager_id;
	private String slmanager_pw;
	private String slmanager_position;
	private String slmanager_name;
	private String slmanager_tel; 
	private String slmanager_mail;
	
	
	public SlManagerVO() {
	}
	
		
	public SlManagerVO(String slmanager_id, String slmanager_pw) {
		super();
		this.slmanager_id = slmanager_id;
		this.slmanager_pw = slmanager_pw;
	}
	
	public SlManagerVO(String slmanager_id) {
		super();
		this.slmanager_id = slmanager_id;
		
	}
	

	public SlManagerVO(String slmanager_id, String slmanager_pw, String slmanager_position, String slmanager_name,
			String slmanager_tel, String slmanager_mail) {
		super();
		this.slmanager_id = slmanager_id;
		this.slmanager_pw = slmanager_pw;
		this.slmanager_position = slmanager_position;
		this.slmanager_name = slmanager_name;
		this.slmanager_tel = slmanager_tel;
		this.slmanager_mail = slmanager_mail;
	}


	public SlManagerVO(int slmanager_n, String slmanager_id, String slmanager_pw, String slmanager_position,
			String slmanager_name, String slmanager_tel, String slmanager_mail) {
		super();
		this.slmanager_n = slmanager_n;
		this.slmanager_id = slmanager_id;
		this.slmanager_pw = slmanager_pw;
		this.slmanager_position = slmanager_position;
		this.slmanager_name = slmanager_name;
		this.slmanager_tel = slmanager_tel;
		this.slmanager_mail = slmanager_mail;
	}


	public int getSlmanager_n() {
		return slmanager_n;
	}


	public void setSlmanager_n(int slmanager_n) {
		this.slmanager_n = slmanager_n;
	}


	public String getSlmanager_id() {
		return slmanager_id;
	}


	public void setSlmanager_id(String slmanager_id) {
		this.slmanager_id = slmanager_id;
	}


	public String getSlmanager_pw() {
		return slmanager_pw;
	}


	public void setSlmanager_pw(String slmanager_pw) {
		this.slmanager_pw = slmanager_pw;
	}


	public String getSlmanager_position() {
		return slmanager_position;
	}


	public void setSlmanager_position(String slmanager_position) {
		this.slmanager_position = slmanager_position;
	}


	public String getSlmanager_name() {
		return slmanager_name;
	}


	public void setSlmanager_name(String slmanager_name) {
		this.slmanager_name = slmanager_name;
	}


	public String getSlmanager_tel() {
		return slmanager_tel;
	}


	public void setSlmanager_tel(String slmanager_tel) {
		this.slmanager_tel = slmanager_tel;
	}


	public String getSlmanager_mail() {
		return slmanager_mail;
	}


	public void setSlmanager_mail(String slmanager_mail) {
		this.slmanager_mail = slmanager_mail;
	}

	
	
	
}