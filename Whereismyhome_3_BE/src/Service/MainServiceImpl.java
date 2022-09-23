package Service;

import java.util.List;

import Dao.MainDao;
import Dao.MainDaoImpl;
import Dto.DongCodeDto;
import Dto.GugunCodeDto;
import Dto.MainDto;
import Dto.SidoCodeDto;

public class MainServiceImpl implements MainService{

	private MainServiceImpl instance=new MainServiceImpl();
	private MainServiceImpl() {
	}
	public MainServiceImpl getInstance() {
		return instance;
	}
	
	MainDao mainDao=MainDaoImpl.getInstance();
	
	@Override
	public void getSido(SidoCodeDto sidoCodeDto) {
		
		
	}

	@Override
	public void getGugun(GugunCodeDto gugunoCodeDto) {
		
	}

	@Override
	public void getDong(DongCodeDto dongCodeDto) {

	}

	@Override
	public List<MainDto> mainList() {
		// TODO Auto-generated method stub
		return null;
	}

}
