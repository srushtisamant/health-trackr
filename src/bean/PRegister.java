package bean;

import javax.persistence.*;

@Entity
@Table(name="pregister")
public class PRegister
{
	@Column
	private String fname;
	@Column
	private String mobile;
	@Id 
	private String username;
	@Column
	private String password;
	
	public PRegister()
	{
		
	}

	public PRegister(String fname, String mobile, String username,
			String password) {
		super();
		this.fname = fname;
		this.mobile = mobile;
		this.username = username;
		this.password = password;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
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
	
}
