package kr.or.fms.sup.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.sup.dto.SupGoodsVO;

public class SupGoodsDAOImpl implements SupGoodsDAO {

	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}
	//검색결과 반영 list
	@Override
	public List<SupGoodsVO> selectGoodsCriteria(SearchCriteria cri) throws SQLException {
		int offset=cri.getStartRowNum();
		int limit=cri.getPerPageNum();		
		RowBounds rowBounds=new RowBounds(offset,limit);
		
		List<SupGoodsVO> supGoodsList =
				session.selectList("Sup-Mapper.selectSearchSupGoodsList",cri,rowBounds);
		
		return supGoodsList;
	}
	
	//검색결과 list개수
	@Override
	public int selectGoodsCriteriaTotalCount(SearchCriteria cri) throws SQLException {
		int count = session.selectOne("Sup-Mapper.selectSearchSupGoodsListCount", cri);
		return count;
	}

	@Override
	public List<String> selectLaca(String sup_code) throws SQLException {
		List<String> lacaCombo = session.selectList("Sup-Mapper.lacaCombo",sup_code);
		return lacaCombo;
	}
	@Override
	public List<String> selectSmca() throws SQLException {
		List<String> smcaCombo = session.selectList("Sup-Mapper.smcaCombo");
		return smcaCombo;
	}
	@Override
	public List<SupGoodsVO> selectSupGoods(String sup_code) throws SQLException {
		List<SupGoodsVO> supGoodsList = session.selectList("Sup-Mapper.selectSupGoodsBySupCode",sup_code);
		return supGoodsList;
	}
	
	@Override
	public SupGoodsVO selectSupGoodsByCode(String sup_goods_code) throws SQLException {
		SupGoodsVO supGoods = session.selectOne("Sup-Mapper.selectSupGoodsByCode", sup_goods_code);
		return supGoods;
	}
	//개별등록
	@Override
	public void insertSupGoods(SupGoodsVO supGoods) throws SQLException {
		session.update("Sup-Mapper.insertGoods",supGoods);
	}
	//일괄등록
	@Override
	public void insertExcelSupGoods(List<SupGoodsVO> supGoodsList) throws SQLException {
		session.update("Sup-Mapper.insertAllGoods",supGoodsList);
	}
	
	@Override
	public void updateSupGoods(SupGoodsVO supGoods) throws SQLException {
		session.update("Sup-Mapper.updateGoods", supGoods);
	}
	@Override
	public List<String> selectGoodsLaca() throws SQLException {
		List<String>  goodsLaca = session.selectList("Sup-Mapper.selectGoodsLaca");
		return goodsLaca;
	}
	@Override
	public List<String> selectGoodsSmca() throws SQLException {
		List<String>  goodsSmca = session.selectList("Sup-Mapper.selectGoodsSmca");
		return goodsSmca;
	}
	
	//대분류 검색 시 대분류에 맞는 소분류 출력
	@Override
	public List<String> searchSmca(String sup_goods_laca) throws SQLException {
		List<String> selectSmca = session.selectList("Sup-Mapper.searchSmca", sup_goods_laca);
		return selectSmca;
	}




	
	//물품상세조회
/*
	@Override
	public SupGoodsVO selectSupGoodsDetail(String sup_goods_code) throws SQLException {
		SupGoodsVO supGoods = session.selectOne("Sup-Mapper.selectSupGoodsDetail", sup_goods_code);
		return supGoods;
	}
	


	//supCode가 같은 list
	@Override
	public List<SupGoodsVO> selectSupGoodsBySupCode(String sup_code) throws SQLException {
		List<SupGoodsVO> supGoodsList = session.selectList("Sup-Mapper.selectSupGoodsListBySupCode", sup_code);
		return supGoodsList;
	}

	
	@Override
	public List<SupGoodsVO> selectSupGoodsBySupCode(Criteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<SupGoodsVO> supGoodsList = session.selectList("Sup-Mapper.selectSupGoodsListBySupCode", cri, rowBounds);
		return supGoodsList;
	}

	@Override
	public List<SupGoodsVO> selectSupGoodsBySupCode(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<SupGoodsVO> supGoodsList = session.selectList("Sup-Mapper.selectSearchSupGoodsList", cri, rowBounds);
		return supGoodsList;
	}
*/
	

}
	