package bean;

import javax.persistence.*;

@Entity
@Table(name="hospreg")
public class HRegister 
{
	/*@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int hid;*/
	@Id
	private String username;
	@Column
	private String hname;
	@Column
	private String regno;
	@Column
	private String hadd;
	@Column
	private String city;
	@Column
	private String mobile;
	
	@Column
	private String password;
	
 public HRegister() 
 {
	
}

public HRegister(String hname, String regno, String hadd, String city,
		String mobile, String username, String password) {
	super();
	this.hname = hname;
	this.regno = regno;
	this.hadd = hadd;
	this.city = city;
	this.mobile = mobile;
	this.username = username;
	this.password = password;
}



/*public int getHid() {
	return hid;
}

public void setHid(int hid) {
	this.hid = hid;
}
*/
public String getHname() {
	return hname;
}

public void setHname(String hname) {
	this.hname = hname;
}

public String getRegno() {
	return regno;
}

public void setRegno(String regno) {
	this.regno = regno;
}

public String getHadd() {
	return hadd;
}

public void setHadd(String hadd) {
	this.hadd = hadd;
}

public String getCity() {
	return city;
}

public void setCity(String city) {
	this.city = city;
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
