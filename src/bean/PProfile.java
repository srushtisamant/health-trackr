package bean;

import java.sql.Blob;

import javax.persistence.*;

@Entity
public class PProfile
{	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int pid;
	@Column(name="pname")
	private String pname;
	@Column(name="aaadharno")
	private String aaadharno;
	@Column
	private String height;
	@Column
	private String weight;
	@Column
	private String bgroup;
	@Column
	private String age;
	@Column
	private String gender;
	@Column
	private String mstatus;
	@Column
	private String dob;
	@Column
	private String occupation;
	@Column
	private String address;
	@Column
	private String mobile;
	@Column
	private String email;
	@Column
	private String emgname;
	@Column
	private String relation;
	@Column
	private String emgnumber;
	@Column
	private Blob photo;
	@Column
	private String user;
	
	
	public PProfile()
	{
		
	}


	public PProfile(String pname, String aaadharno, String height,
			String weight, String bgroup, String age, String gender,
			String mstatus, String dob, String occupation, String address,
			String mobile, String email, String emgname, String relation,
			String emgnumber, Blob photo, String user) {
		super();
		this.pname = pname;
		this.aaadharno = aaadharno;
		this.height = height;
		this.weight = weight;
		this.bgroup = bgroup;
		this.age = age;
		this.gender = gender;
		this.mstatus = mstatus;
		this.dob = dob;
		this.occupation = occupation;
		this.address = address;
		this.mobile = mobile;
		this.email = email;
		this.emgname = emgname;
		this.relation = relation;
		this.emgnumber = emgnumber;
		this.photo = photo;
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


	public String getAaadharno() {
		return aaadharno;
	}


	public void setAaadharno(String aaadharno) {
		this.aaadharno = aaadharno;
	}


	public String getHeight() {
		return height;
	}


	public void setHeight(String height) {
		this.height = height;
	}


	public String getWeight() {
		return weight;
	}


	public void setWeight(String weight) {
		this.weight = weight;
	}


	public String getBgroup() {
		return bgroup;
	}


	public void setBgroup(String bgroup) {
		this.bgroup = bgroup;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getMstatus() {
		return mstatus;
	}


	public void setMstatus(String mstatus) {
		this.mstatus = mstatus;
	}


	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public String getOccupation() {
		return occupation;
	}


	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getEmgname() {
		return emgname;
	}


	public void setEmgname(String emgname) {
		this.emgname = emgname;
	}


	public String getRelation() {
		return relation;
	}


	public void setRelation(String relation) {
		this.relation = relation;
	}


	public String getEmgnumber() {
		return emgnumber;
	}


	public void setEmgnumber(String emgnumber) {
		this.emgnumber = emgnumber;
	}


	public Blob getPhoto() {
		return photo;
	}


	public void setPhoto(Blob photo) {
		this.photo = photo;
	}


	public String getUser() {
		return user;
	}


	public void setUser(String user) {
		this.user = user;
	}


	
}
