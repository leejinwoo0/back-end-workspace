package com.kh.project.config;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AbstractAuthenticationToken;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import com.kh.project.model.vo.MemInfo;
import org.springframework.util.StringUtils;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Component
public class JwtFilter extends OncePerRequestFilter{
	
	@Autowired
	private TokenProvider tokenProvider;

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
		
		String token = parseBearerToken(request);
		
		if(token!=null && !token.equalsIgnoreCase("null")){
			MemInfo memInfo = tokenProvider.validate(token);
			
		
		   AbstractAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(memInfo, memInfo.getPassword());
		   authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
		   
		   SecurityContext securityContext = SecurityContextHolder.createEmptyContext();
		   securityContext.setAuthentication(authentication);
		   
		   SecurityContextHolder.setContext(securityContext);
		}
		
		filterChain.doFilter(request, response);
		
	}
	
	private String parseBearerToken(HttpServletRequest request) {
		String bearerToken = request.getHeader("Authorization");
		
		if(StringUtils.hasText(bearerToken) && bearerToken.startsWith("Bearer")) {
			return bearerToken.substring(7);
		}
		
		return null;
	}

}
