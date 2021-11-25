package kr.or.fms.hq;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:kr/or/fms/context/root-context.xml")
@Transactional
public class MockNewDate {
	
	@Test
	public void dateTest() throws SQLException, ParseException {
		try { 
			String strDate = "20200806"; 
			SimpleDateFormat dtFormat = new SimpleDateFormat("yyyyMMdd"); 
			SimpleDateFormat newDtFormat = new SimpleDateFormat("yyyy-MM-dd"); 
			// String 타입을 Date 타입으로 변환 
			Date formatDate = dtFormat.parse(strDate); 
			// Date타입의 변수를 새롭게 지정한 포맷으로 변환
			String strNewDtFormat = newDtFormat.format(formatDate); 
			System.out.println("포맷 전 : " + strDate);
			System.out.println("포맷 후 : " + strNewDtFormat); }
		catch (ParseException e) { 
			e.printStackTrace(); 
		}

	}
	
	@Test
	public void dateTest2()  {
		Date today = new Date();
		SimpleDateFormat format1, format2, format3, format4, format5, format6, format7;
		format1 = new SimpleDateFormat("yyyy-MM-dd");
		format3 = new SimpleDateFormat("yy/MM/dd");
		format2 = new SimpleDateFormat("yyyy년 MM월 dd일 E요일");
		format4 = new SimpleDateFormat("HH:mm:ss");
		format5 = new SimpleDateFormat("hh:mm:ss a");
		format6 = new SimpleDateFormat("오늘은 yyyy년의 w주차이며 D번째 날입니다.");
		format7 = new SimpleDateFormat("오늘은 M월의 w번째 주, d번째 날이며, F번째 E요일입니다.");
		if(!format7.equals("")) {
			
		System.out.println(format1.format(today));
		System.out.println(format2.format(today));
		System.out.println(format3.format(today));
		System.out.println(format4.format(today));
		System.out.println(format5.format(today));
		System.out.println(format6.format(today));
		System.out.println(format7.format(today));
		}
	}


}
