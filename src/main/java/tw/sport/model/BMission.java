package tw.sport.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity @Table(name = "BMISSION")
@Component
public class BMission {
	
	@Id @Column(name = "BID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bid;
	
	@Column(name = "BNAME")
	private String bName;
	
	@Column(name = "BLEVEL")
	private String bLevel;
	
	@Column(name = "BDIS")
	private String bDis;
	
	@Column(name = "BTIME")
	private String bTime;
	
	@Column(name = "BDOC")
	private String bDoc;
	
	@Column(name = "BIMAGE")
	private String bImage;
	
	@Column(name = "BTYPE")
	private String bType;
	
	@Column(name = "BCLASS")
	private String bClass;
	
	@Column(name = "BSPONSOR")
	private String bSponsor;

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getbName() {
		return bName;
	}

	public void setbName(String hName) {
		this.bName = hName;
	}

	public String getbLevel() {
		return bLevel;
	}

	public void setbLevel(String bLevel) {
		this.bLevel = bLevel;
	}

	public String getbDis() {
		return bDis;
	}

	public void setbDis(String bDis) {
		this.bDis = bDis;
	}

	public String getbTime() {
		return bTime;
	}

	public void setbTime(String bTime) {
		this.bTime = bTime;
	}

	public String getbDoc() {
		return bDoc;
	}

	public void setbDoc(String bDoc) {
		this.bDoc = bDoc;
	}

	public String getbImage() {
		return bImage;
	}

	public void setbImage(String bImage) {
		this.bImage = bImage;
	}

	public String getbType() {
		return bType;
	}

	public void setbType(String bType) {
		this.bType = bType;
	}

	public String getbClass() {
		return bClass;
	}

	public void setbClass(String bClass) {
		this.bClass = bClass;
	}

	public String getbSponsor() {
		return bSponsor;
	}

	public void setbSponsor(String bSponsor) {
		this.bSponsor = bSponsor;
	}
	
}
