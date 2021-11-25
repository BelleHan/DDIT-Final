package kr.or.fms.command;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class SearchCriteria extends Criteria {

	private String searchType=""; // 검색구분
	private String keyword = ""; //검색어
	private Map<String, String> keywordMap = new HashMap<String, String>();

	private Date startDate = new Date();
	private Date endDate = new Date();
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public Map<String, String> getKeywordMap() {
		return keywordMap;
	}
	public void setKeywordMap(Map<String, String> keywordMap) {
		this.keywordMap = keywordMap;
	}
	
}
