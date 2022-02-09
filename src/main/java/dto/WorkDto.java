package dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class WorkDto {

	private int no;
	private String material;
	private String printing;
	private String coating;
	private String stick;
	private String bond;
	private String packing;
	private String fdate;
	private String ftime;

	public WorkDto() {
	
	}

	public WorkDto(int no, String material, String printing, String coating, String stick, String bond, String packing,
			String fdate, String ftime) {
		this.no = no;
		this.material = material;
		this.printing = printing;
		this.coating = coating;
		this.stick = stick;
		this.bond = bond;
		this.packing = packing;
		Date today = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
		try {
			Date date = dateFormat.parse(fdate);
			this.fdate = dateFormat.format(date);
		} catch (Exception e) {}
		this.ftime = ftime;
	}

	
	public WorkDto(String material, String printing, String coating, String stick, String bond, String packing,
			String fdate, String ftime) {
		this.material = material;
		this.printing = printing;
		this.coating = coating;
		this.stick = stick;
		this.bond = bond;
		this.packing = packing;
		Date today = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
		try {
			Date date = dateFormat.parse(fdate);
			this.fdate = dateFormat.format(date);
		} catch (Exception e) {}
		this.ftime = ftime;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public String getPrinting() {
		return printing;
	}

	public void setPrinting(String printing) {
		this.printing = printing;
	}

	public String getCoating() {
		return coating;
	}

	public void setCoating(String coating) {
		this.coating = coating;
	}

	public String getStick() {
		return stick;
	}

	public void setStick(String stick) {
		this.stick = stick;
	}

	public String getBond() {
		return bond;
	}

	public void setBond(String bond) {
		this.bond = bond;
	}

	public String getPacking() {
		return packing;
	}

	public void setPacking(String packing) {
		this.packing = packing;
	}

	public String getFdate() {
		return fdate;
	}

	public void setFdate(String fdate) {
		this.fdate = fdate;
	}

	public String getFtime() {
		return ftime;
	}

	public void setFtime(String ftime) {
		this.ftime = ftime;
	}

	
	
}
