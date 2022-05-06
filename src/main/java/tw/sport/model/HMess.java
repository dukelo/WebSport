package tw.sport.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity @Table(name = "HMESS")
@Component
public class HMess {
	
	@Id @Column(name = "HSID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int hSid;
	
	@Column(name = "NAME")
	private String name;
	
	@Column(name = "HID")
	private int hid;
	
	@Column(name = "HNAME")
	private String hName;
	
	@Column(name = "HTYPE")
	private String hType;
	
	@Column(name = "HCONTENT")
	private String hContent;

	public int gethSid() {
		return hSid;
	}

	public void sethSid(int hSid) {
		this.hSid = hSid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getHid() {
		return hid;
	}

	public void setHid(int hid) {
		this.hid = hid;
	}

	public String gethName() {
		return hName;
	}

	public void sethName(String hName) {
		this.hName = hName;
	}

	public String gethType() {
		return hType;
	}

	public void sethType(String hType) {
		this.hType = hType;
	}

	public String gethContent() {
		return hContent;
	}

	public void sethContent(String hContent) {
		this.hContent = hContent;
	}
	
}
