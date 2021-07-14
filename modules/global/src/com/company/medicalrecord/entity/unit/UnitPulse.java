package com.company.medicalrecord.entity.unit;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;

//Нужно ли?
public enum UnitPulse implements EnumClass<String> {

    BUMPSPERMINUTE("bpm");

    private String id;

    UnitPulse(String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    @Nullable
    public static UnitPulse fromId(String id) {
        for (UnitPulse at : UnitPulse.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}