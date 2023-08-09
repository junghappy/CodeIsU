package team.tttt.webapp.vo;

import java.util.Date;

import lombok.Data;

@Data
public class StorageVO {

	private String strNo;
	private String strTitle;
	private String strCn;
	private String strRgtr;
	private Date   strBengDt;
	private int    atchFileNo;
	private String projNo;
}
