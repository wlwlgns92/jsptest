package dao;

import dto.WorkDto;

public class WorkDao extends DB{

	public static WorkDao workDao = new WorkDao();
	public static WorkDao getWorkDao() { return workDao; }
	
	public boolean worksignup(WorkDto workDto) {
		String sql = "insert into work(material, printing, coating, stick, bond, packing, fdate, ftime) values(?,?,?,?,?,?,?,?)";
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, workDto.getMaterial());
			ps.setString(2, workDto.getPrinting());
			ps.setString(3, workDto.getCoating());
			ps.setString(4, workDto.getStick());
			ps.setString(5, workDto.getBond());
			ps.setString(6, workDto.getPacking());
			ps.setString(7, workDto.getFdate());
			ps.setString(8, workDto.getFtime());
			ps.executeUpdate();
			return true;
		} catch (Exception e) {} return false;
	}
}
