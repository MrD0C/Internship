package com.company.medicalrecord.entity.unit;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum UnitMass implements EnumClass<String> {

    KILOGRAMS("kg");

    private String id;

    UnitMass(String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    @Nullable
    public static UnitMass fromId(String id) {
        for (UnitMass at : UnitMass.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}