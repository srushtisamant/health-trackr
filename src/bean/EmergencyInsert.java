package bean;

import javax.persistence.*;

@Entity
@Table(name="emergency")
public class EmergencyInsert
{
 @Id @GeneratedValue(strategy=GenerationType.IDENTITY,generator="")
 private int emgid;
 @Column 
 private String cases;
 @Column
 private String area;
 @Column
 private String subarea;
 @Column
 private String hospital;

 
 public EmergencyInsert() 
 {
	
}

public EmergencyInsert(String cases, String area, String subarea,
		String hospital) {
	super();
	this.cases = cases;
	this.area = area;
	this.subarea = subarea;
	this.hospital = hospital;
}

public String getCases() {
	return cases;
}

public void setCases(String cases) {
	this.cases = cases;
}

public String getArea() {
	return area;
}

public void setArea(String area) {
	this.area = area;
}

public String getSubarea() {
	return subarea;
}

public void setSubarea(String subarea) {
	this.subarea = subarea;
}

public String getHospital() {
	return hospital;
}

public void setHospital(String hospital) {
	this.hospital = hospital;
}
 
 
}
