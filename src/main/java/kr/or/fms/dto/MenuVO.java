package kr.or.fms.dto;
									/* 공통메뉴 */
public class MenuVO {
	
	private String menu_code;	//메뉴코드
	private String menu_name;	//메뉴이름
	private String menu_url;	//메뉴URL
	private String menu_upcode;	//상위메뉴
	
	public String getMenu_upcode() {
		return menu_upcode;
	}
	public void setMenu_upcode(String menu_upcode) {
		this.menu_upcode = menu_upcode;
	}
	public String getMenu_code() {
		return menu_code;
	}
	public void setMenu_code(String menu_code) {
		this.menu_code = menu_code;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getMenu_url() {
		return menu_url;
	}
	public void setMenu_url(String menu_url) {
		this.menu_url = menu_url;
	}

	
}
