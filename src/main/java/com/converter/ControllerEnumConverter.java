package com.converter;

import com.model.ControllerEnum;
import org.springframework.core.convert.converter.Converter;

public class ControllerEnumConverter implements Converter<String, ControllerEnum> {
    @Override
    public ControllerEnum convert(String s) {
        return ControllerEnum.valueOf(s.toUpperCase());
    }
}
