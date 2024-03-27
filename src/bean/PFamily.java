package bean;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="fhistory")
public class PFamily
{
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY,generator="")
	private int pid;
	@Column
	private String pname;
	@Column
	private String relation;
	@Column
	private Date dob;
	@Column
	private String medical;
	@Column
	private String user;
	
	public PFamily()
	{
		
	}

	public PFamily(String pname, String relation, Date dob, String medical,
			String user) {
		super();
		this.pname = pname;
		this.relation = relation;
		this.dob = dob;
		this.medical = medical;
		this.user = user;
	}

	
	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getRelation() {
		return relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getMedical() {
		return medical;
	}

	public void setMedical(String medical) {
		this.medical = medical;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}
	
}
