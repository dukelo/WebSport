package tw.sport.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity @Table(name = "HMEMBERMISSION")
@Component
public class HMemberMission {
	
	@Id @Column(name = "HMID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int hMid;
	
	@Column(name = "NAME")
	private String name;
	
	@Column(name = "HID")
	private int hid;
	
	@Column(name = "HNAME")
	private String hName;
	
	@Column(name = "HTYPE")
	private String hType;
	
	@Column(name = "HMSTATUS")
	private String hMstatus;
	
	@Column(name = "HMPHOTO")
	private String hMphoto;
	
	@Column(name = "HMTHOUGHTS")
	private String hNthoughts;

	public int gethMid() {
		return hMid;
	}

	public void sethMid(int hMid) {
		this.hMid = hMid;
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

	public String gethMstatus() {
		return hMstatus;
	}

	public void sethMstatus(String hMstatus) {
		this.hMstatus = hMstatus;
	}

	public String gethMphoto() {
		return hMphoto;
	}

	public void sethMphoto(String hMphoto) {
		this.hMphoto = hMphoto;
	}

	public String gethNthoughts() {
		return hNthoughts;
	}

	public void sethNthoughts(String hNthoughts) {
		this.hNthoughts = hNthoughts;
	}
	
	

}
