package com.kalyon.mis.entity;

public class ResponseMessage {

	private String message;
	
	public ResponseMessage(String message) {
		
		this.message = message;
	}
	
	public String getMessage() {
		return this.message;
	}
	
	public void setMessage(String message) {
		this.message = message;
	}
}
