package team.tttt.webapp.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class QstnVO {
	private String sbjctCode;
    private int qstnNo;
    private String qstnCn;
    private String qstnDt;
    private String qstnAns;
    private Date qstnAnsDt;
    private String empNo;
    private String stuNo;
}
