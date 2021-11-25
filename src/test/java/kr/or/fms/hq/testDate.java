package kr.or.fms.hq;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class testDate {
	public static void main(String[] args) throws ParseException {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String format = simpleDateFormat.format(date);
		System.out.println(format);
		Date parse = simpleDateFormat.parse(format);
		System.out.println(parse);
	}
}
