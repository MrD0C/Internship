package com.company.medicalrecord.entity;

import com.haulmont.chile.core.annotations.MetaClass;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.EmbeddableEntity;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Lob;
import javax.validation.constraints.NotNull;

@MetaClass(name = "medicalrecord_AnalysisIndicator")
@Embeddable
@NamePattern("%s|name")
public class AnalysisIndicator extends EmbeddableEntity {
    private static final long serialVersionUID = 3262290100569293550L;

    @Column(name = "NAME", nullable = false)
    @NotNull
    private String name;

    @Column(name = "RESULT_", nullable = false)
    @NotNull
    private String result;

    @Column(name = "NORM")
    private String norm;

    @Column(name = "UNIT")
    private String unit;

    @Lob
    @Column(name = "COMMENT_")
    private String comment;

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getNorm() {
        return norm;
    }

    public void setNorm(String norm) {
        this.norm = norm;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}