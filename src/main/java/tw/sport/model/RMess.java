package tw.sport.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity @Table(name = "RMESS")
@Component
public class RMess {
	
	@Id @Column(name = "RSID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int rSid;
	
	@Column(name = "NAME")
	private String name;
	
	@Column(name = "RID")
	private int rid;
	
	@Column(name = "RNAME")
	private String rName;
	
	@Column(name = "RTYPE")
	private String rType;
	
	@Column(name = "RCONTENT")
	private String rContent;

	public int getrSid() {
		return rSid;
	}

	public void setrSid(int rSid) {
		this.rSid = rSid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

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

	public String getrType() {
		return rType;
	}

	public void setrType(String rType) {
		this.rType = rType;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	
}
