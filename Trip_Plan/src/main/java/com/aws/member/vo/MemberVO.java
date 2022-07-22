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
	


	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_nickname() {
		return m_nickname;
	}

	public void setM_nickname(String m_nickname) {
		this.m_nickname = m_nickname;
	}

	public String getM_address() {
		return m_address;
	}

	public void setM_address(String m_address) {
		this.m_address = m_address;
	}

	public String getM_tel() {
		return m_tel;
	}

	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}


	private	String	m_id;
	private	String	m_pw;
	private	String	m_name;
	private	String	m_email;
	private	String	m_nickname;
	private	String	m_address;
	private String m_tel;
	
	
	public MemberVO() {}	// 기본 생성자
	
	public MemberVO(String m_id, String m_pw, String m_name, String m_email, String m_nickname, String m_tel, String m_address) {
		this.m_id		= m_id;
		this.m_pw	= m_pw;
		this.m_name	= m_name;
		this.m_email	= m_email;
		this.m_nickname = m_nickname;
		this.m_address =m_address;
		this.m_tel = m_tel;
	}
	

	@Override
	public String toString() {
		return "MemberVO [m_id=" + m_id + ", m_pw=" + m_pw + ", m_name=" + m_name + ", m_email=" + m_email + ", m_nickname="+ m_nickname+", m_address="+m_address+
				", m_tel="+m_tel+ "]";
	}
	
} // End - public class MemberVO










