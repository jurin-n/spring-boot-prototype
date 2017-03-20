package com.jurin_n.model.error;

import org.springframework.http.HttpStatus;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Message {
	@JsonProperty(value = "error_type")
	private HttpStatus httpStatus;
	@JsonProperty(value = "error_messages")
	private String[] messages;

	public Message() {
		super();
	}

	public Message(HttpStatus httpStatus, String... messages) {
		super();
		this.httpStatus = httpStatus;
		this.messages = messages;
	}

	public HttpStatus getHttpStatus() {
		return httpStatus;
	}

	public String[] getMessages() {
		return messages;
	}

	public void setHttpStatus(HttpStatus httpStatus) {
		this.httpStatus = httpStatus;
	}

	public void setMessages(String[] messages) {
		this.messages = messages;
	}

}
