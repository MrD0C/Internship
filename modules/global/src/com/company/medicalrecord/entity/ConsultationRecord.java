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
            @AttributeOverride(name = "complaints", column = @Column(name = "DESCRIPTION_COMPLAINTS")),
            @AttributeOverride(name = "anamnesis", column = @Column(name = "DESCRIPTION_ANAMNESIS")),
            @AttributeOverride(name = "objectively", column = @Column(name = "DESCRIPTION_OBJECTIVELY")),
            @AttributeOverride(name = "conclusion", column = @Column(name = "DESCRIPTION_CONCLUSION"))
    })
    private Description description;

    @Embedded
    @EmbeddedParameters(nullAllowed = false)
    @AttributeOverrides({
            @AttributeOverride(name = "medicineName", column = @Column(name = "MEDICATION_MEDICINE_NAME")),
            @AttributeOverride(name = "intakeRecommendation", column = @Column(name = "MEDICATION_INTAKE_RECOMMENDATION"))
    })
    private Medication medication;

    @Embedded
    @EmbeddedParameters(nullAllowed = false)
    @AttributeOverrides({
            @AttributeOverride(name = "treatmentType", column = @Column(name = "TREATMENT_PLAN_TREATMENT_TYPE")),
            @AttributeOverride(name = "title", column = @Column(name = "TREATMENT_PLAN_TITLE")),
            @AttributeOverride(name = "name", column = @Column(name = "TREATMENT_PLAN_NAME")),
            @AttributeOverride(name = "date", column = @Column(name = "TREATMENT_PLAN_DATE_"))
    })
    private TreatmentPlan treatmentPlan;

    public TreatmentPlan getTreatmentPlan() {
        return treatmentPlan;
    }

    public void setTreatmentPlan(TreatmentPlan treatmentPlan) {
        this.treatmentPlan = treatmentPlan;
    }

    public Medication getMedication() {
        return medication;
    }

    public void setMedication(Medication medication) {
        this.medication = medication;
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