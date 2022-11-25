package com.converter;

import com.model.service.alarm.AlarmType;
import com.model.service.work.APPLY_STATUS;
import org.springframework.core.convert.converter.Converter;

public class ApplyStatusConverter implements Converter<String, APPLY_STATUS> {
    @Override
    public APPLY_STATUS convert(String s) {
        return APPLY_STATUS.valueOf(s.toUpperCase());
    }
}