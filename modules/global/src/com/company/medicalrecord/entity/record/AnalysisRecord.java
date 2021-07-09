package com.company.medicalrecord.entity.record;

import com.company.medicalrecord.entity.AnalysisIndicator;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

@Table(name = "MEDICALRECORD_ANALYSIS_RECORD")
@Entity(name = "medicalrecord_AnalysisRecord")
@NamePattern("%s|name")
public class AnalysisRecord extends StandardEntity {
    private static final long serialVersionUID = -2457811442348076190L;

    @Column(name = "NAME")
    private String name;

    @Column(name = "CONCLUSION")
    private String conclusion;

    @Column(name = "CREATION_INFO")
    private String creationInfo;

    @OneToMany(mappedBy = "analysisRecord")
    private List<AnalysisIndicator> analysisIndicators;

    public List<AnalysisIndicator> getAnalysisIndicators() {
        return analysisIndicators;
    }

    public void setAnalysisIndicators(List<AnalysisIndicator> analysisIndicators) {
        this.analysisIndicators = analysisIndicators;
    }

    public String getCreationInfo() {
        return creationInfo;
    }

    public void setCreationInfo(String creationInfo) {
        this.creationInfo = creationInfo;
    }

    public String getConclusion() {
        return conclusion;
    }

    public void setConclusion(String conclusion) {
        this.conclusion = conclusion;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}