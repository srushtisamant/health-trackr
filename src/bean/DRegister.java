package bean;

import javax.persistence.*;

@Entity
@Table(name="doctorreg")
public class DRegister 
{
	@Column
	private String dname;
	@Column
	private String docreg;
	@Id
	private String username;
	@Column
	private String password;
	@Column
	private String mobile;
	@Column
	private String hospname;
	
	public DRegister()
	{
		
	}
	public DRegister(String dname, String docreg, String username,
			String password, String mobile, String hospname) {
		super();
		this.dname = dname;
		this.docreg = docreg;
		this.username = username;
		this.password = password;
		this.mobile = mobile;
		this.hospname = hospname;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getDocreg() {
		return docreg;
	}
	public void setDocreg(String docreg) {
		this.docreg = docreg;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getHospname() {
		return hospname;
	}
	public void setHospname(String hospname) {
		this.hospname = hospname;
	}
	
	
}
