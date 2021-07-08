package com.company.medicalrecord.entity;

import com.haulmont.chile.core.annotations.MetaClass;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.EmbeddableEntity;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Lob;

@MetaClass(name = "medicalrecord_Medication")
@Embeddable
@NamePattern("%s|medicineName")
public class Medication extends EmbeddableEntity {
    private static final long serialVersionUID = -4727025595642704352L;

    @Column(name = "MEDICINE_NAME")
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