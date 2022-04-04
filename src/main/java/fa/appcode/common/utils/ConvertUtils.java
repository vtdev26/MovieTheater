package fa.appcode.common.utils;

import java.time.LocalDate;

public class ConvertUtils {

	public static LocalDate convertStrToDate(String dateOfBirth) {
		try {
			LocalDate date = LocalDate.parse(dateOfBirth);
			return date;
		} catch (Exception e) {
			return null;
		}
	}

	public static Integer convertStrToInt(String number) {
		try {
			Integer numberResult = Integer.parseInt(number);
			return numberResult;
		} catch (Exception e) {
			return null;
		}
	}
}
