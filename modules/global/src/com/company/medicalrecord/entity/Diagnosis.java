package com.company.medicalrecord.entity;

import com.haulmont.chile.core.annotations.MetaClass;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.EmbeddableEntity;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@MetaClass(name = "medicalrecord_Diagnosis")
@Embeddable
@NamePattern("%s|icd10Name")
public class Diagnosis extends EmbeddableEntity {
    private static final long serialVersionUID = 1523421526646234626L;

    @Column(name = "ICD10_NAME")
    private String icd10Name;

    @Column(name = "NAME")
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIcd10Name() {
        return icd10Name;
    }

    public void setIcd10Name(String icd10Name) {
        this.icd10Name = icd10Name;
    }
}