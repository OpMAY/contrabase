package com.model;

import com.model.common.Time;
import lombok.Data;

@Data
public class UnRegister extends Time {
    private int no;
    private int user_no;
    private String user_id;
    private String reason;
}
