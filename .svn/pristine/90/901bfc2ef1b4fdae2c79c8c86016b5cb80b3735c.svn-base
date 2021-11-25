package kr.or.fms.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.dto.MenuVO;

public interface MenuService {
	
	List<MenuVO> getMainMenuList()throws SQLException;
	
	List<MenuVO> getSubMenuList(String mCode)throws SQLException;
	
	MenuVO getMenuByMcode(String mCode)throws SQLException;
	
	MenuVO getMenuByMname(String mName)throws SQLException;

	List<MenuVO> getFranMenuList() throws SQLException;

	List<MenuVO> getSupMenuList() throws SQLException;

	List<MenuVO> getLogisMenuList() throws SQLException;
	
	List<MenuVO> getLogisSubMenuList(String mCode)throws SQLException;
	

}
