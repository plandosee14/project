package com.dreamup.upload.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;


import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {
	
	//static 으로 하는 이유
	//유틸리티성 기능을 하는 클래스(편리를 위해 자주,공통으로 쓰는 기능)는 정적영역에 올려놓고 언제든지 접근가능하게 함
	//인스턴스 생성과 삭제를 통해 쓰이는 속도 저하를 막기 위해
	public static String uploadFile(String uploadPath,String[] makeDirPaths,String originalName,
			byte[] fileData ) throws IOException {
		
		// UUID 클래스 랜덤으로 문자열을 만들어주는 기능으로 파일 이름을 중복되지 않게 저장할 떄 쓰임 
		UUID uid = UUID.randomUUID();
		
		//실제 파일이 저장될 이름, DB에 들어갈 이름
		String saveName  = uid.toString().replace("-", "")+ "_"+ originalName; 
		
		//파일이 저장될 경로를 만들고 리턴
		String savedPath = makePath(uploadPath, makeDirPaths);
		
		//타겟이 되는 빈파일 <-- 여기에 등록한 사진,동영상을 복사해줄 예정
		File target = new File(uploadPath+savedPath,saveName);
		//타겟에 원래 파일을 복사하여 저장
		FileCopyUtils.copy(fileData, target);
		
		//file type을 가져오는 부분
		String formatName =  originalName.substring(originalName.lastIndexOf(".")+1);
		
		String uploadedFileName = null;
		
		//미디어타입이 이미지일경우 썸네일을 만들고 아닐경우 아이콘을 만듦
		if(MediaUtils.getMediaType(formatName)!= null) {
			//크기가 다른 사진을 썸네일크기로 만드는 부분  저장된 파일 이름을 리턴
			uploadedFileName = makeThumbnail(uploadPath, savedPath, saveName);
			//System.out.println("thumbailName: "+ uploadedFileName);
		}else {
					
			uploadedFileName = (savedPath + File.separator + saveName).replace(File.separatorChar, '/');
		}
		return uploadedFileName;
	}
	
	
	
	//파일관리를 쉽게하기 위해 resource 아래에 저장될 경로를 string으로 만드는 메소드
	//resource/upload폴더명/사용자아이디/저장종류(요청경로)/연도/월/날짜
	
	//resource/uploadFile/aaa1@gmail.com/member_profile//2020/01/02
	private static String makePath(String uploadPath,String[] makeDirPaths) {
	
		Calendar cal = Calendar.getInstance();
		//오늘날짜
		
	
		String dirs[] = {makeDirPaths[0], makeDirPaths[1], makeDirPaths[2], 
				""+cal.get(Calendar.YEAR) ,new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1), new DecimalFormat("00").format(cal.get(Calendar.DATE))};
		
		String savedPath="";
		for(String path: dirs) {
			savedPath += File.separator + path;
		}
		
			
		// ex)savedPath = uploadFile/test@naver.com/member_profile//2017/06/02
		makeDir(uploadPath,savedPath);
		
		return savedPath;
	}
	
	//실제 경로 폴더를 만드는 메소드
	private static void makeDir(String uploadPath,String savedPath) {
		
		File dirPath = new File(uploadPath + savedPath);
		
		if(dirPath.exists()) {
			//System.out.println("존재합니다.");
			return;
		}else {
			
			dirPath.mkdirs();
			//System.out.println("성공여부: "+dirPath.mkdirs());
		}
		
		
	}
	
	private static String makeThumbnail(String uploadPath,String path,String fileName) throws IOException {
		//저장된 원본 이미지를 가져와서 가공하기 위해 넣어주는 부분 
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath + path, fileName));
		
		//이미지를 작게 가공
		BufferedImage resizeImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT,300);
		
		//썸네일 이미지 경로 + 이름
		String thumbnailName = uploadPath + path + File.separator+"s_"+fileName;
		System.out.println("thumbnailName :"+ thumbnailName);
		
		//새로운 경로의 이름으로 이미지를 서버에 저장(실제 이미지는 없고 껍데기만 있음)
		File newFile = new File(thumbnailName);
		
		//이미지의 확장자를 불러옴
		String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);
		
		//실제 이미지를 읽어서 파일에 넣어주는 부분
		ImageIO.write(resizeImg, formatName.toUpperCase(), newFile);
		
		//실제경로를 뺀 나머지 경로를 리턴
		return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar, '/');
	}
	
	
	
	//테스트
/*	public static void main(String[] args) {
		//makePath("C:\\Users\\pland", new String[]{"uploadFile","aaa21@naver.com","project_thumnail"});
		String originalName ="sdafasdf.txt";
		String formatName =  originalName.substring(originalName.lastIndexOf(".")+1);
		System.out.println(formatName);
	}*/
}
