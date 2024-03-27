package bean;

import java.sql.Blob;

import javax.persistence.*;

@Entity
public class DProfile 
{
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int did;
	@Column
	private String duser;
	@Column
	private String dname;
	@Column
	private int dreg;
	@Column
	private String hospname;
	@Column
	private String adhar;
	@Column
	private String docgraduation;
	@Column
	private String docpostgrad;
	@Column
	private String specialisation;
	@Column
	private String bgroup;
	@Column
	private String contact;
	@Column
	private String email;
	@Column
	private String gender;
	@Column
	private Blob photo;
	
	public DProfile()
	{
		
	}

	public DProfile(String duser,String dname, int dreg, String hospname, String adhar,
			String docgraduation, String docpostgrad, String specialisation,
			String bgroup, String contact, String email, String gender,
			Blob photo) {
		super();
		this.duser = duser;
		this.dname = dname;
		this.dreg = dreg;
		this.hospname = hospname;
		this.adhar = adhar;
		this.docgraduation = docgraduation;
		this.docpostgrad = docpostgrad;
		this.specialisation = specialisation;
		this.bgroup = bgroup;
		this.contact = contact;
		this.email = email;
		this.gender = gender;
		this.photo = photo;
	}

	public int getDid() {
		return did;
	}

	public String getDuser() {
		return duser;
	}

	public void setDuser(String duser) {
		this.duser = duser;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public int getDreg() {
		return dreg;
	}

	public void setDreg(int dreg) {
		this.dreg = dreg;
	}

	public String getHospname() {
		return hospname;
	}

	public void setHospname(String hospname) {
		this.hospname = hospname;
	}

	public String getAdhar() {
		return adhar;
	}

	public void setAdhar(String adhar) {
		this.adhar = adhar;
	}

	public String getDocgraduation() {
		return docgraduation;
	}

	public void setDocgraduation(String docgraduation) {
		this.docgraduation = docgraduation;
	}

	public String getDocpostgrad() {
		return docpostgrad;
	}

	public void setDocpostgrad(String docpostgrad) {
		this.docpostgrad = docpostgrad;
	}

	public String getSpecialisation() {
		return specialisation;
	}

	public void setSpecialisation(String specialisation) {
		this.specialisation = specialisation;
	}

	public String getBgroup() {
		return bgroup;
	}

	public void setBgroup(String bgroup) {
		this.bgroup = bgroup;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Blob getPhoto() {
		return photo;
	}

	public void setPhoto(Blob photo) {
		this.photo = photo;
	}
	
	
}
