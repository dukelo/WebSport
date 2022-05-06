package tw.sport.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity @Table(name = "HMISSION")
@Component
public class HMission {
	
	@Id @Column(name = "HID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int hid;
	
	@Column(name = "HNAME")
	private String hName;
	
	@Column(name = "HLEVEL")
	private String hLevel;
	
	@Column(name = "HDIS")
	private String hDis;
	
	@Column(name = "HTIME")
	private String hTime;
	
	@Column(name = "HDOC")
	private String hDoc;
	
	@Column(name = "HIMAGE")
	private String hImage;
	
	@Column(name = "HTYPE")
	private String hType;
	
	@Column(name = "HCLASS")
	private String hClass;
	
	@Column(name = "HSPONSOR")
	private String hSponsor;

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

	public String gethLevel() {
		return hLevel;
	}

	public void sethLevel(String hLevel) {
		this.hLevel = hLevel;
	}

	public String gethDis() {
		return hDis;
	}

	public void sethDis(String hDis) {
		this.hDis = hDis;
	}

	public String gethTime() {
		return hTime;
	}

	public void sethTime(String hTime) {
		this.hTime = hTime;
	}

	public String gethDoc() {
		return hDoc;
	}

	public void sethDoc(String hDoc) {
		this.hDoc = hDoc;
	}

	public String gethImage() {
		return hImage;
	}

	public void sethImage(String hImage) {
		this.hImage = hImage;
	}

	public String gethType() {
		return hType;
	}

	public void sethType(String hType) {
		this.hType = hType;
	}

	public String gethClass() {
		return hClass;
	}

	public void sethClass(String hClass) {
		this.hClass = hClass;
	}

	public String gethSponsor() {
		return hSponsor;
	}

	public void sethSponsor(String hSponsor) {
		this.hSponsor = hSponsor;
	}
		
	
}
