package com.converter;

import com.model.service.alarm.AlarmType;
import org.springframework.core.convert.converter.Converter;

public class AlarmTypeConverter implements Converter<String, AlarmType> {
    @Override
    public AlarmType convert(String s) {
        return AlarmType.valueOf(s.toUpperCase());
    }
}