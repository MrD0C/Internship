package com.company.medicalrecord.entity;

import com.company.medicalrecord.entity.record.AnalysisRecord;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "MEDICALRECORD_ANALYSIS_INDICATOR")
@Entity(name = "medicalrecord_AnalysisIndicator")
@NamePattern("%s|name")
public class AnalysisIndicator extends StandardEntity {
    private static final long serialVersionUID = 3262290100569293550L;

    @NotNull
    @Column(name = "NAME", nullable = false)
    private String name;

    @NotNull
    @Column(name = "RESULT_", nullable = false)
    private String result;

    @Column(name = "NORM")
    private String norm;

    @Column(name = "UNIT")
    private String unit;

    @Column(name = "COMMENT_")
    private String comment;
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "ANALYSIS_RECORD_ID")
    private AnalysisRecord analysisRecord;

    public AnalysisRecord getAnalysisRecord() {
        return analysisRecord;
    }

    public void setAnalysisRecord(AnalysisRecord analysisRecord) {
        this.analysisRecord = analysisRecord;
    }

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