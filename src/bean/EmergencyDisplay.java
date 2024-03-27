package bean;

import javax.persistence.*;

@Entity
@Table(name="emergencydisplay")
public class EmergencyDisplay
{
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY,generator="")
	private int emerid;
	@Column
	private String hospName;
	@Column
	private String patientName;
	@Column
	private String contact;
	@Column
	private String address;
	
	public EmergencyDisplay()
	{
		
	}

	public EmergencyDisplay(String hospName, String patientName,
			String contact, String address) {
		super();
		this.hospName = hospName;
		this.patientName = patientName;
		this.contact = contact;
		this.address = address;
	}

	
	
	public int getEmerid() {
		return emerid;
	}

	public void setEmerid(int emerid) {
		this.emerid = emerid;
	}

	public String getHospName() {
		return hospName;
	}

	public void setHospName(String hospName) {
		this.hospName = hospName;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
