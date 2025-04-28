package com.jspstudy.ch03.vo;

// 로또 당첨 번호 1등과 2등의 번호를 저장하는 VO(Value Object) 클래스
public class LottoNum {
	
	// 회차 정보, 로또 당첨 번호 1등 6개 번호, 2등 보너스 번호
	private String times;
	private int num1;
	private int num2;
	private int num3;
	private int num4;
	private int num5;
	private int num6;
	private int bonusNum;
	
	public LottoNum(String times, int num1, int num2, int num3, 
			int num4, int num5, int num6, int bonusNum) {
		this.times = times;		
		this.num1 = num1;
		this.num2 = num2;
		this.num3 = num3;
		this.num4 = num4;
		this.num5 = num5;
		this.num6 = num6;
		this.bonusNum = bonusNum;
	}

	public String getTimes() {
		return times;
	}
	public void setTimes(String times) {
		this.times = times;
	}
	public int getNum1() {
		return num1;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public int getNum2() {
		return num2;
	}
	public void setNum2(int num2) {
		this.num2 = num2;
	}
	public int getNum3() {
		return num3;
	}
	public void setNum3(int num3) {
		this.num3 = num3;
	}
	public int getNum4() {
		return num4;
	}
	public void setNum4(int num4) {
		this.num4 = num4;
	}
	public int getNum5() {
		return num5;
	}
	public void setNum5(int num5) {
		this.num5 = num5;
	}
	public int getNum6() {
		return num6;
	}
	public void setNum6(int num6) {
		this.num6 = num6;
	}
	public int getBonusNum() {
		return bonusNum;
	}
	public void setBonusNum(int bonusNum) {
		this.bonusNum = bonusNum;
	}	
}
