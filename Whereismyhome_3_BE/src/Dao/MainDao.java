package Dao;

import java.util.List;

import Dto.DongCodeDto;
import Dto.GugunCodeDto;
import Dto.MainDto;
import Dto.SidoCodeDto;

public interface MainDao {
	//검색 조건 맞춰서 검색
	void getSido(SidoCodeDto sidoCodeDto);
	void getGugun(GugunCodeDto gugunCodeDto);
	void getDong(DongCodeDto dongCodeDto);
	//리스트 띄움
	List<MainDto>mainList();
	
	//map
	
	//게시판 추가
	
}
