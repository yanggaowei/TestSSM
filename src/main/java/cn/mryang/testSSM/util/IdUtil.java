package cn.mryang.testSSM.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class IdUtil {
	public static String getId() {
		        String id=""; 
		        SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddHHmmss");  
		        String temp = sf.format(new Date());  
			       //获取6位随机数
		        int random=(int) ((Math.random()+1)*100000);  
		        id=temp+random;  
		        return id;  
	}
}
