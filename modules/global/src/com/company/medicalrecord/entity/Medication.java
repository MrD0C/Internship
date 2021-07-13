package com.company.medicalrecord.entity;

import com.company.medicalrecord.entity.record.ConsultationRecord;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
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
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "CONSULTATION_RECORD_ID")
    private ConsultationRecord consultationRecord;

    public ConsultationRecord getConsultationRecord() {
        return consultationRecord;
    }

    public void setConsultationRecord(ConsultationRecord consultationRecord) {
        this.consultationRecord = consultationRecord;
    }

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