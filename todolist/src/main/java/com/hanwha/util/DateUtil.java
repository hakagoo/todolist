package com.hanwha.util;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class DateUtil {
	public static Date transDate(String sDate) {
		Date sql_date = null;
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY/MM/DD HH:mm:ss");
		try {
			java.util.Date d = sdf.parse(sDate);
			sql_date = new Date(d.getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		
		return sql_date;
	}
}
