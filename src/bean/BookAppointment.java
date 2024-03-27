package bean;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="bookappointment")
public class BookAppointment
{
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int bid;
	@Column
	private String hospitalname;
	@Column
	private String doctorname;
	@Column
	private String diesease;
	@Column
	private Date appdate;
	@Column
	private String timeslot;
	@Column
	private String otherdetails;
	@Column
	private String username;
	@Column
	private String status;
	
	public BookAppointment()
	{
		
	}

	public BookAppointment(String hospitalname, String doctorname,
			String diesease, Date appdate, String timeslot,
			String otherdetails, String username,String status) {
		super();
		this.hospitalname = hospitalname;
		this.doctorname = doctorname;
		this.diesease = diesease;
		this.appdate = appdate;
		this.timeslot = timeslot;
		this.otherdetails = otherdetails;
		this.username = username;
		this.status = status;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getHospitalname() {
		return hospitalname;
	}

	public void setHospitalname(String hospitalname) {
		this.hospitalname = hospitalname;
	}

	public String getDoctorname() {
		return doctorname;
	}

	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}

	public String getDiesease() {
		return diesease;
	}

	public void setDiesease(String diesease) {
		this.diesease = diesease;
	}

	public Date getAppdate() {
		return appdate;
	}

	public void setAppdate(Date appdate) {
		this.appdate = appdate;
	}

	public String getTimeslot() {
		return timeslot;
	}

	public void setTimeslot(String timeslot) {
		this.timeslot = timeslot;
	}

	public String getOtherdetails() {
		return otherdetails;
	}

	public void setOtherdetails(String otherdetails) {
		this.otherdetails = otherdetails;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
