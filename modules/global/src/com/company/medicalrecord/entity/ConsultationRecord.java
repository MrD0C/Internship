package com.company.medicalrecord.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.EmbeddedParameters;

import javax.persistence.*;

@Table(name = "MEDICALRECORD_CONSULTATION_RECORD")
@Entity(name = "medicalrecord_ConsultationRecord")
@NamePattern("%s|id")
public class ConsultationRecord extends StandardEntity {
    private static final long serialVersionUID = 372204830898187882L;

    @Embedded
    @EmbeddedParameters(nullAllowed = false)
    @AttributeOverrides({
            @AttributeOverride(name = "icd10Name", column = @Column(name = "DIAGNOSIS_ICD10_NAME")),
            @AttributeOverride(name = "name", column = @Column(name = "DIAGNOSIS_NAME"))
    })
    private Diagnosis diagnosis;

    @Embedded
    @EmbeddedParameters(nullAllowed = false)
    @AttributeOverrides({
            @AttributeOverride(name = "clinicName", column = @Column(name = "CREATION_INFO_CLINIC_NAME")),
            @AttributeOverride(name = "doctorSurname", column = @Column(name = "CREATION_INFO_DOCTOR_SURNAME")),
            @AttributeOverride(name = "date", column = @Column(name = "CREATION_INFO_DATE_"))
    })
    private CreationInfo creationInfo;

    @Embedded
    @EmbeddedParameters(nullAllowed = false)
    @AttributeOverrides({
            @AttributeOverride(name = "complaints", column = @Column(name = "DESCRIPTION_COMPLAINTS")),
            @AttributeOverride(name = "anamnesis", column = @Column(name = "DESCRIPTION_ANAMNESIS")),
            @AttributeOverride(name = "objectively", column = @Column(name = "DESCRIPTION_OBJECTIVELY")),
            @AttributeOverride(name = "conclusion", column = @Column(name = "DESCRIPTION_CONCLUSION"))
    })
    private Description description;

    public CreationInfo getCreationInfo() {
        return creationInfo;
    }

    public void setCreationInfo(CreationInfo creationInfo) {
        this.creationInfo = creationInfo;
    }

    public Description getDescription() {
        return description;
    }

    public void setDescription(Description description) {
        this.description = description;
    }

    public Diagnosis getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(Diagnosis diagnosis) {
        this.diagnosis = diagnosis;
    }
}