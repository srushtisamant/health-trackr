package bean;

import javax.persistence.*;

@Entity
public class Speciality 
{
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY,generator="")
	private int spid;
	@Column
	private String hname;
	@Column
	private String sp1;
	@Column
	private String sp2;
	@Column
	private String sp3;
	@Column
	private String sp4;
	@Column
	private String sp5;
	
	public Speciality()
	{
		
	}

	public Speciality(String hname, String sp1, String sp2, String sp3,
			String sp4, String sp5) {
		super();
		this.hname = hname;
		this.sp1 = sp1;
		this.sp2 = sp2;
		this.sp3 = sp3;
		this.sp4 = sp4;
		this.sp5 = sp5;
	}

	public int getSpid() {
		return spid;
	}

	public void setSpid(int spid) {
		this.spid = spid;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getSp1() {
		return sp1;
	}

	public void setSp1(String sp1) {
		this.sp1 = sp1;
	}

	public String getSp2() {
		return sp2;
	}

	public void setSp2(String sp2) {
		this.sp2 = sp2;
	}

	public String getSp3() {
		return sp3;
	}

	public void setSp3(String sp3) {
		this.sp3 = sp3;
	}

	public String getSp4() {
		return sp4;
	}

	public void setSp4(String sp4) {
		this.sp4 = sp4;
	}

	public String getSp5() {
		return sp5;
	}

	public void setSp5(String sp5) {
		this.sp5 = sp5;
	}
	
}
