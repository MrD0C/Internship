package com.company.medicalrecord.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Table(name = "MEDICALRECORD_MEDICATION")
@Entity(name = "medicalrecord_Medication")
@NamePattern("%s|medicineName")
public class Medication extends StandardEntity {
    private static final long serialVersionUID = -4727025595642704352L;

    @NotNull
    @Column(name = "MEDICINE_NAME", nullable = false)
    private String medicineName;

    @Lob
    @Column(name = "INTAKE_RECOMMENDATION")
    private String intakeRecommendation;

    public String getIntakeRecommendation() {
        return intakeRecommendation;
    }

    public void setIntakeRecommendation(String intakeRecommendation) {
        this.intakeRecommendation = intakeRecommendation;
    }

    public String getMedicineName() {
        return medicineName;
    }

    public void setMedicineName(String medicineName) {
        this.medicineName = medicineName;
    }
}