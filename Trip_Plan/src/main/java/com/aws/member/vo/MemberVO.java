package com.aws.member.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

//-----------------------------------------------------------------------------------------------------------
// public class MemberVO
// @Component 어노테이션을 이용하면 Bean Configuration 파일에 Bean으로 따로 등록하지 않아도 사용할 수 있다.
// @Component 어노테이션은 기본적으로 타입기반의 자동주입 어노테이션이다.
//-----------------------------------------------------------------------------------------------------------
@Component("memberVO")
public class MemberVO {

	private	String	id, pwd, name, nname, tel, email, address, address2;
	
	public MemberVO() {}	// 기본 생성자
	
	public MemberVO(String id, String pwd, String name, String nname, String tel ,String email, String address, String address2) {
		this.id		= id;
		this.pwd	= pwd;
		this.name	= name;
		this.nname	= nname;
		this.email	= email;
		this.tel = tel;
		this.address = address;
		this.address2 = address2;
	}

	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNname() {
		return nname;
	}

	public void setNname(String nname) {
		this.nname = nname;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}


	
	
} // End - public class MemberVO










