package com.user.controller.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StudentRegRequest {

	private String email;
	private String password;
	private String qualification;
	private String name;
	private long aadharCardNo;
	private long contactNo;

}
