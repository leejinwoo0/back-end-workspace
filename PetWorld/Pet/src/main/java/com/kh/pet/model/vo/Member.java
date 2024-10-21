
package com.kh.pet.model.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Member {
    private String id;         // 아이디
    private String password;   // 비밀번호
    private String name;       // 이름
    private String phone;      // 전화번호
    private String address;    // 주소
    private String email;      // 이메일
    private String role;       // 역할 (예: ROLE_MEMBER, ROLE_ADMIN 등)
}