package com.shop.utility;

import java.security.MessageDigest;

public class SecuriyPassword {

	//패스워드 문자열을 전달받아 암호화 하여 반환하는 메서드
	//단방향 암호 알고리즘(MD5, SHA-1, SHA-256, SHA-512)
	public static String encoding(String pwd) {
		String newPassword="";
		try {
			//암호화 알고리즘을 선택하여 객체 생성
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			//암호화 하고자 하는 패스워드을 update()메서들을 이용하여 전달
			// String 객체가 아닌 byte배열 형태로 전달
			md.update(pwd.getBytes());
			//패스워드 문자열을 digest() 메소드를 이용하여 암호화 하여 byte 배열로 반환받아 저장
			byte[] encodeData = md.digest();
			//암호화된 byte배열을 String 객체로 반환하여 저장
			for(int i=0; i<encodeData.length;i++) {
				//byte 데이터를 16진수 문자열로 변환하여 반환 문자열에 추가(한번 더 암호화)
				newPassword += Integer.toHexString(encodeData[i]&0xFF);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return newPassword;
	}
}
