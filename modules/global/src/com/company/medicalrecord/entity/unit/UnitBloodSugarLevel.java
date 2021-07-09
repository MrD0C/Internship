package com.company.medicalrecord.entity.unit;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum UnitBloodSugarLevel implements EnumClass<String> {

    MILLIMOLEPERLITER("mmol/L"),
    MILLIGRAMPERDECILITER("mg/dL");

    private String id;

    UnitBloodSugarLevel(String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    @Nullable
    public static UnitBloodSugarLevel fromId(String id) {
        for (UnitBloodSugarLevel at : UnitBloodSugarLevel.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}