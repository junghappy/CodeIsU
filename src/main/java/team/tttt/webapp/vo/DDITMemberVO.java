package team.tttt.webapp.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class DDITMemberVO {
	private int memNo;				//번호
	private String memId;			//아이디
	private String memPw;			// 비밀번호
	private String memName;			// 이름
	private String memGender;		// 성별
	private String memEmail;		// 이메일
	private String memPhone;		// 핸드폰
	private String memPostCode;		// 우편번호
	private String memAddress1;		// 주소1
	private String memAddress2;		// 주소2
	private String memAgree;		// 개인정보동의
	private String memRegDate;		// 가입일
	private MultipartFile imgFile;	// 프로필 이미지 파일 공간
	private String memProfileImg;	// 프로필 이미지 파일명(경로+파일명)
	// memProfileImg 디비 역순으로 돌아올때 _ 처리가 어떻게되는지?

	private List<DDITMemberAuthVO> authList;
	private String enabled;
}
