//package com.user.config;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//
//import org.springframework.security.core.AuthenticationException;
//import org.springframework.security.web.AuthenticationEntryPoint;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//public class JwtAuthConfig implements AuthenticationEntryPoint {
//
//	public void commence(HttpServletRequest request, HttpServletResponse response,
//			AuthenticationException authException) throws IOException, ServletException {
//		// TODO Auto-generated method stub
//		response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
//		PrintWriter writer = response.getWriter();
//		writer.println("Access Denied !! " + authException.getMessage());
//	}
//
//}