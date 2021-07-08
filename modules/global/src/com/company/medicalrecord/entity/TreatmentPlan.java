package com.company.medicalrecord.entity;

import com.haulmont.chile.core.annotations.MetaClass;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.EmbeddableEntity;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Lob;
import java.time.LocalDateTime;

@MetaClass(name = "medicalrecord_TreatmentPlan")
@Embeddable
@NamePattern("%s|title")
public class TreatmentPlan extends EmbeddableEntity {
    private static final long serialVersionUID = 4134760512660096552L;

    @Column(name = "TREATMENT_TYPE")
    private String treatmentType;

    @Column(name = "TITLE")
    private String title;

    @Lob
    @Column(name = "NAME")
    private String name;

    @Column(name = "DATE_")
    private LocalDateTime date;

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