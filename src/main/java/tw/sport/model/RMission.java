package tw.sport.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity @Table(name = "RMISSION")
@Component
public class RMission {

	@Id @Column(name = "RID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int rid;
	
	@Column(name = "RNAME")
	private String rName;
	
	@Column(name = "RLEVEL")
	private String rLevel;
	
	@Column(name = "RDIS")
	private String rDis;
	
	@Column(name = "RTIME")
	private String rTime;
	
	@Column(name = "RDOC")
	private String rDoc;
	
	@Column(name = "RIMAGE")
	private String rImage;
	
	@Column(name = "RTYPE")
	private String rType;
	
	@Column(name = "RCLASS")
	private String rClass;
	
	@Column(name = "RSPONSOR")
	private String rSponsor;

	public int getRid() {
		return rid;
	}

	public void setRid(int rid) {
		this.rid = rid;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public String getrLevel() {
		return rLevel;
	}

	public void setrLevel(String rLevel) {
		this.rLevel = rLevel;
	}

	public String getrDis() {
		return rDis;
	}

	public void setrDis(String rDis) {
		this.rDis = rDis;
	}

	public String getrTime() {
		return rTime;
	}

	public void setrTime(String rTime) {
		this.rTime = rTime;
	}

	public String getrDoc() {
		return rDoc;
	}

	public void setrDoc(String rDoc) {
		this.rDoc = rDoc;
	}

	public String getrImage() {
		return rImage;
	}

	public void setrImage(String rImage) {
		this.rImage = rImage;
	}

	public String getrType() {
		return rType;
	}

	public void setrType(String rType) {
		this.rType = rType;
	}

	public String getrClass() {
		return rClass;
	}

	public void setrClass(String rClass) {
		this.rClass = rClass;
	}

	public String getrSponsor() {
		return rSponsor;
	}

	public void setrSponsor(String rSponsor) {
		this.rSponsor = rSponsor;
	}
	
	
}
