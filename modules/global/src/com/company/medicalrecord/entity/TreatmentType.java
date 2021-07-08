package com.company.medicalrecord.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum TreatmentType implements EnumClass<String> {

    CONSULTATION("consultation"),
    DIAGNOSTICS("diagnostics"),
    REHABILITATION("rehabilitation"),
    HOSPITALIZATION("hospitalization"),
    ANALYSES("analyses");

    private String id;

    TreatmentType(String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    @Nullable
    public static TreatmentType fromId(String id) {
        for (TreatmentType at : TreatmentType.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}