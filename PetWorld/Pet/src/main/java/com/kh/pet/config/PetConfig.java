package com.kh.pet.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.firewall.StrictHttpFirewall;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.boot.web.servlet.FilterRegistrationBean;

@Configuration
@EnableWebSecurity
@ComponentScan
public class PetConfig {

    // SecurityFilterChain 설정
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        return http
                .csrf(csrf -> csrf.disable()) // CSRF 비활성화 (필요에 따라)
                .formLogin(login ->
                    login
                        .loginPage("/login") //  로그인 페이지
                        .defaultSuccessUrl("/loginSuccess", true) // 로그인 성공 시 홈 페이지로 리디렉션
                        .failureHandler(new DomainFailureHandler()) // 로그인 실패했을때 에러 처리
                        .permitAll() // 로그인 페이지 접근 허용
                )
                .logout(logout ->
                    logout
                        .logoutUrl("/logout") // 로그아웃 URL
                        .logoutSuccessUrl("/") // 로그아웃 성공 후 홈 페이지로 리디렉션
                        .permitAll() // 로그아웃 접근 허용
                )
                .sessionManagement(session ->
                    session.sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED) // 세션 정책
                )
                .authorizeHttpRequests(authorize ->
                    authorize
                        .requestMatchers("/login", "/signup").permitAll() // 로그인 및 회원가입 페이지 접근 허용
                        .anyRequest().permitAll() // 나머지 요청은 인증 필요
                )
                .exceptionHandling(handling ->
                    handling
                        .accessDeniedPage("/access-denied") // 접근 거부 시 페이지
                )
                .build();
    }

    // 패스워드 인코더 설정 (BCrypt)
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    // CharacterEncodingFilter 설정 추가
    @Bean(name = "customCharacterEncodingFilter")
    public FilterRegistrationBean<CharacterEncodingFilter> characterEncodingFilter() {
        CharacterEncodingFilter filter = new CharacterEncodingFilter();
        filter.setEncoding("UTF-8");
        filter.setForceEncoding(true);

        FilterRegistrationBean<CharacterEncodingFilter> filterBean = new FilterRegistrationBean<>(filter);
        filterBean.setOrder(Integer.MIN_VALUE); // 필터의 우선순위 설정
        return filterBean;
    }
    
    // 더블슬래시 허용
    @Bean
    public HttpFirewall httpFirewall() {
        StrictHttpFirewall strictHttpFirewall = new StrictHttpFirewall();
        strictHttpFirewall.setAllowUrlEncodedDoubleSlash(true);
        return strictHttpFirewall;
    }
    
    
}
