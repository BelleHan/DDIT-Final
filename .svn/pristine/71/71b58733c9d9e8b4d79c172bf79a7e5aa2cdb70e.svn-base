package kr.or.fms.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.dao.MenuDAO;
import kr.or.fms.dto.MenuVO;

public class MenuServiceImpl implements MenuService {

	private MenuDAO menuDAO;

	public void setMenuDAO(MenuDAO menuDAO) {
		this.menuDAO = menuDAO;
	}

	@Override
	public List<MenuVO> getMainMenuList() throws SQLException {

		List<MenuVO> menuList = null;

		menuList = menuDAO.selectMainMenu();

		return menuList;
	}

	@Override
	public List<MenuVO> getSubMenuList(String mCode) throws SQLException {
		List<MenuVO> menuList = null;

		menuList = menuDAO.selectSubMenu(mCode);

		return menuList;
	}

	@Override
	public MenuVO getMenuByMcode(String mCode) throws SQLException {
		MenuVO menu = null;

		menu = menuDAO.selectMenuByMcode(mCode);

		return menu;
	}

	@Override
	public MenuVO getMenuByMname(String mName) throws SQLException {
		MenuVO menu = null;

		menu = menuDAO.selectMenuByMname(mName);

		return menu;
	}

	@Override
	public List<MenuVO> getFranMenuList() throws SQLException{
		List<MenuVO> menuList = null;

		menuList = menuDAO.selectFranMenu();

		return menuList;
	}


	@Override
	public List<MenuVO> getSupMenuList() throws SQLException {
		List<MenuVO> menuList = null;
		
		menuList = menuDAO.selectSupMenu();
		return menuList;
	}

	@Override
	public List<MenuVO> getLogisMenuList() throws SQLException {
		List<MenuVO> menuList = null;
		
		menuList = menuDAO.selectLogisMenu();
		return menuList;
	}

	@Override
	public List<MenuVO> getLogisSubMenuList(String mCode) throws SQLException {
		List<MenuVO> menuList = null;
		
		menuList = menuDAO.selectSupMenu();
		return menuList;
		
	}

}
