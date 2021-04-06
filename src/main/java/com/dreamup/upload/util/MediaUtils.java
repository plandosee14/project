package com.dreamup.upload.util;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.MediaType;

public class MediaUtils {
	private static Map<String, MediaType> mediaMap;
	
	//hashMap에 모든 이미지타입을 넣어줌
	static {
		mediaMap = new HashMap<String, MediaType>();
		
		mediaMap.put("JPG", MediaType.IMAGE_JPEG);
		mediaMap.put("GIF", MediaType.IMAGE_GIF);
		mediaMap.put("PNG", MediaType.IMAGE_PNG);
		
	}
	
	//타입에 해당다는 미디어타입을 리턴
	public static MediaType getMediaType(String type) {
		return mediaMap.get(type.toUpperCase());
	}
	
}
