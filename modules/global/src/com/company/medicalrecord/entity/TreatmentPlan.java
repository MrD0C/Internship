package com.company.medicalrecord.entity;

import com.company.medicalrecord.entity.record.ExaminationRecord;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Table(name = "MEDICALRECORD_TREATMENT_PLAN")
@Entity(name = "medicalrecord_TreatmentPlan")
@NamePattern("%s|title")
public class TreatmentPlan extends StandardEntity {
    private static final long serialVersionUID = 4134760512660096552L;

    @NotNull
    @Column(name = "TREATMENT_TYPE", nullable = false)
    private String treatmentType;

    @Lob
    @Column(name = "TITLE", nullable = false)
    @NotNull
    private String title;

    @Lob
    @Column(name = "NAME")
    private String name;

    @NotNull
    @Column(name = "DATE_", nullable = false)
    private LocalDateTime date;
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "EXAMINATION_RECORD_ID")
    private ExaminationRecord examinationRecord;

    public ExaminationRecord getExaminationRecord() {
        return examinationRecord;
    }

    public void setExaminationRecord(ExaminationRecord examinationRecord) {
        this.examinationRecord = examinationRecord;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public TreatmentType getTreatmentType() {
        return treatmentType == null ? null : TreatmentType.fromId(treatmentType);
    }

    public void setTreatmentType(TreatmentType treatmentType) {
        this.treatmentType = treatmentType == null ? null : treatmentType.getId();
    }
}