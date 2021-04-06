package com.dreamup.upload.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dreamup.member.domain.MemberDTO;
import com.dreamup.upload.util.UploadFileUtils;

@Controller
public class UploadController {

	
	//ajax로 파일 업로드(동영상,사진)하는 모든 요청을 수행
	//{requestName}부분은 경로를 파라미터로 받아서 requestPath 변수에 저장  @PathVariable 어노테이션 사용
	//requestPath 에 따라 다른 기능을 수행 (동영상 업로드, 프로필사진 수정, 프로젝트썸네일 저장 등)
	@ResponseBody
	@RequestMapping(value="/uploadAjax/{requestName}.do",method= RequestMethod.POST, produces ="text/plain;charset=UTF-8")
	public String uploadAjax(MultipartFile file, HttpServletRequest request,
			@PathVariable("requestName") String requestPath) throws Exception{
		//업로드를 할 멤버의 정보를 session에서 불러온다
		MemberDTO uploadMemberDTO = (MemberDTO)(request.getSession().getAttribute("session"));
		//로그인 되어있는 멤버의 메일(primary key)을 가져온다. 프로필사진 수정할때 사용
		String uploadMember = uploadMemberDTO.getMember_Mail();
		
		//System.out.println("sessionMember:"+uploadMember);
		
		//파일 경로를 만들때 필요한 정보를 String 배열에 저장
		String makeDirPaths[]= {"uploadFile",uploadMember,requestPath};
		
		//서버의 실제 저장되는 루트 경로중 resource 폴더의 경로를 불러서 upload할 경로 지정	
		String uploadPath = request.getSession().getServletContext().getRealPath("resources");
		
		System.out.println("저장경로: "+uploadPath);
		
		return UploadFileUtils.uploadFile(uploadPath, makeDirPaths, file.getOriginalFilename(), file.getBytes());
	}
	
	@ResponseBody
	@RequestMapping(value="/displayFile.do")
	public byte[] displayFile(String fileName, HttpServletRequest request) throws Exception {
		
		
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value="/deleteFile.do")
	public String delete (){
		
		
		
		return "deleted";
	}
	
	
	
}
