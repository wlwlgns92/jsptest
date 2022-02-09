package dao;

import java.util.ArrayList;

import dto.WorkDto;

public class WorkDao extends DB {

	public static WorkDao workDao = new WorkDao();

	public static WorkDao getWorkDao() {
		return workDao;
	}

	// 등록
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
		} catch (Exception e) {
		}
		return false;
	}

	// 리스트
	public ArrayList<WorkDto> worklist() {
		ArrayList<WorkDto> workDtos = new ArrayList<WorkDto>();
		String sql = "select * from work";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				WorkDto workDto = new WorkDto(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
				workDtos.add(workDto);
			}
			System.out.println(workDtos.toString());
			return workDtos;
		} catch (Exception e) {
			System.out.println("조회오류 " + e);
		}
		return null;
	}
}
