package bean;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="dprescription")
public class Prescription
{
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY,generator="")
	private int patid;
	@Column
	private String pname;
	@Column
	private String diease;
	@Column
	private String medtype;
	@Column
	private String medname;
	@Column
	private String dosage;
	@Column
	private String qunatity;
	@Column
	private String remark;
	@Column
	private String docname;
	@Column
	private Date pdate;
	@Column
	private String user;
	
	public Prescription()
	{ 
		
	}

	public Prescription(String pname, String diease, String medtype,
			String medname, String dosage, String qunatity, String remark,
			String docname, Date pdate, String user) {
		super();
		this.pname = pname;
		this.diease = diease;
		this.medtype = medtype;
		this.medname = medname;
		this.dosage = dosage;
		this.qunatity = qunatity;
		this.remark = remark;
		this.docname = docname;
		this.pdate = pdate;
		this.user = user;
	}

	public int getPatid() {
		return patid;
	}

	public void setPatid(int patid) {
		this.patid = patid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getDiease() {
		return diease;
	}

	public void setDiease(String diease) {
		this.diease = diease;
	}

	public String getMedtype() {
		return medtype;
	}

	public void setMedtype(String medtype) {
		this.medtype = medtype;
	}

	public String getMedname() {
		return medname;
	}

	public void setMedname(String medname) {
		this.medname = medname;
	}

	public String getDosage() {
		return dosage;
	}

	public void setDosage(String dosage) {
		this.dosage = dosage;
	}

	public String getQunatity() {
		return qunatity;
	}

	public void setQunatity(String qunatity) {
		this.qunatity = qunatity;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getDocname() {
		return docname;
	}

	public void setDocname(String docname) {
		this.docname = docname;
	}

	public Date getPdate() {
		return pdate;
	}

	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}
	
	
	
}
