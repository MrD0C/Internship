package com.company.medicalrecord.entity;

import com.haulmont.chile.core.annotations.MetaClass;
import com.haulmont.cuba.core.entity.EmbeddableEntity;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Lob;

@MetaClass(name = "medicalrecord_Description")
@Embeddable
public class Description extends EmbeddableEntity {
    private static final long serialVersionUID = 3834252840481568674L;

    @Lob
    @Column(name = "COMPLAINTS")
    private String complaints;

    @Lob
    @Column(name = "ANAMNESIS")
    private String anamnesis;

    @Lob
    @Column(name = "OBJECTIVELY")
    private String objectively;

    @Lob
    @Column(name = "CONCLUSION")
    private String conclusion;

    public String getConclusion() {
        return conclusion;
    }

    public void setConclusion(String conclusion) {
        this.conclusion = conclusion;
    }

    public String getObjectively() {
        return objectively;
    }

    public void setObjectively(String objectively) {
        this.objectively = objectively;
    }

    public String getAnamnesis() {
        return anamnesis;
    }

    public void setAnamnesis(String anamnesis) {
        this.anamnesis = anamnesis;
    }

    public String getComplaints() {
        return complaints;
    }

    public void setComplaints(String complaints) {
        this.complaints = complaints;
    }
}