package com.model.service;

import com.model.common.MFile;
import lombok.Data;

@Data
public class Supplier {
    private int no;
    private int user_no;
    private MFile business_file;
}
