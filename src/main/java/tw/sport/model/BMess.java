package tw.sport.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity @Table(name = "BMESS")

public class BMess {

	@Id @Column(name = "BSID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bSid;
	
	@Column(name = "NAME")
	private String name;
	
	@Column(name = "BID")
	private int bid;
	
	@Column(name = "BNAME")
	private String bName;
	
	@Column(name = "BTYPE")
	private String bType;
	
	@Column(name = "BCONTENT")
	private String bContent;

	public int getbSid() {
		return bSid;
	}

	public void setbSid(int bSid) {
		this.bSid = bSid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getbName() {
		return bName;
	}

	public void setbName(String bName) {
		this.bName = bName;
	}

	public String getbType() {
		return bType;
	}

	public void setbType(String bType) {
		this.bType = bType;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	
}
