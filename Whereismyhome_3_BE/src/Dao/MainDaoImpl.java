package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import DBManager.DBManager;
import Dto.DongCodeDto;
import Dto.GugunCodeDto;
import Dto.MainDto;
import Dto.SidoCodeDto;

public class MainDaoImpl implements MainDao {
	private static MainDaoImpl instance=new MainDaoImpl();
	private MainDaoImpl() {}
	
	public static MainDaoImpl getInstance() {
		return instance;
	}

	@Override
	public void getSido(SidoCodeDto sidoCodeDto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
	
		try {
			conn=DBManager.getConnection();
			conn=DBManager.getConnection();
			StringBuilder sql=new StringBuilder();
			sql.append(" Select code from sido_code\n")
			.append(" where code= ? \n");
			
			pstmt=conn.prepareStatement(sql.toString());
			pstmt.setString(1, sidoCodeDto.getCode());

			rs=pstmt.executeQuery();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.releaseConnection(rs, pstmt, conn);
		}
	}

	@Override
	public void getGugun(GugunCodeDto gugunCodeDto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
	
		try {
			conn=DBManager.getConnection();
			conn=DBManager.getConnection();
			StringBuilder sql=new StringBuilder();
			sql.append(" Select code from gugun_code\n")
			.append(" where code= ? \n");
			
			pstmt=conn.prepareStatement(sql.toString());
			pstmt.setString(1, gugunCodeDto.getCode());

			rs=pstmt.executeQuery();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.releaseConnection(rs, pstmt, conn);
		}
		
	}

	@Override
	public void getDong(DongCodeDto dongCodeDto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
	
		try {
			conn=DBManager.getConnection();
			conn=DBManager.getConnection();
			StringBuilder sql=new StringBuilder();
			sql.append(" Select code from dong_code\n")
			.append(" where code= ? \n");
			
			pstmt=conn.prepareStatement(sql.toString());
			pstmt.setString(1, dongCodeDto.getCode());

			rs=pstmt.executeQuery();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.releaseConnection(rs, pstmt, conn);
		}
	}

	@Override
	public List<MainDto> mainList() {
		// TODO Auto-generated method stub
		return null;
	}

}
