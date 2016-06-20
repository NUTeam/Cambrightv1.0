package model.dto;

public class ListStudInfoDTO extends StudentDTO {
	private String reg_by;
	private String level;
	private String cla_num;
	private String teach_by;
	private String branch_name;
	public String getReg_by() {
		return reg_by;
	}
	public void setReg_by(String reg_by) {
		this.reg_by = reg_by;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getCla_num() {
		return cla_num;
	}
	public void setCla_num(String cla_num) {
		this.cla_num = cla_num;
	}
	public String getTeach_by() {
		return teach_by;
	}
	public void setTeach_by(String teach_by) {
		this.teach_by = teach_by;
	}
	public String getBranch_name() {
		return branch_name;
	}
	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}
	
	@Override
	public String toString() {
		return "ListStudInfoDTO [reg_by=" + reg_by + ", level=" + level
				+ ", cla_num=" + cla_num + ", teach_by=" + teach_by
				+ ", branch_name=" + branch_name + "]";
	}
}
