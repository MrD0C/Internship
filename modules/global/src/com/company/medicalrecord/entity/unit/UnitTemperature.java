package com.company.medicalrecord.entity.unit;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum UnitTemperature implements EnumClass<String> {

    DEGREECELSIUS("°C");

    private String id;

    UnitTemperature(String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    @Nullable
    public static UnitTemperature fromId(String id) {
        for (UnitTemperature at : UnitTemperature.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}