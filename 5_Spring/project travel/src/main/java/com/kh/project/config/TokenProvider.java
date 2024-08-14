package com.kh.project.config;

import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.Map;

import javax.crypto.SecretKey;

import org.springframework.stereotype.Service;

import com.kh.project.model.vo.MemInfo;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;

@Service
public class TokenProvider {
	
	private SecretKey secretKey = Keys.secretKeyFor(SignatureAlgorithm.HS512);
	
	public String create(MemInfo memInfo) {
		return Jwts.builder()
				.signWith(secretKey)
				.setClaims(Map.of(
						         "id",memInfo.getId(),
						         "password",memInfo.getPassword(),
						         "name", memInfo.getName(),
						         "phone", memInfo.getPhone(),
						         "role", memInfo.getRole()
						))
				                .setIssuedAt(new Date())
				                .setExpiration(Date.from(Instant.now().plus(1, ChronoUnit.DAYS)))
				                .compact();
				                
	}

	public MemInfo validate(String token) {
		Claims claims = Jwts
				        .parser()
				        .setSigningKey(secretKey)
				        .parseClaimsJws(token)
				        .getBody();
		
		return MemInfo.builder()
				       
				      .id((String) claims.get("id"))
				      .password((String) claims.get("password"))
				      .name((String) claims.get("name"))
				      .phone((String) claims.get("phone"))
				      .role((String) claims.get("role"))
				      .build();
				      
	}
}
