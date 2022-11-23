package com.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.model.common.MFile;
import com.model.grant.GRANT_TYPE;
import com.model.jwt.RootUser;
import lombok.*;

import java.time.LocalDateTime;

@RequiredArgsConstructor
@Data
@AllArgsConstructor
@JsonIgnoreProperties
@ToString(callSuper = true)
public class User extends RootUser {
    private int no;
    private String email;
    private String access_token;
    private String name;
    private String phone;
    private UserType userType;
    private MFile profile_img;
    private LocalDateTime last_login_date;
}
