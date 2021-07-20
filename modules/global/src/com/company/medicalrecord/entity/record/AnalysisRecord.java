package com.company.medicalrecord.entity.record;

import com.company.medicalrecord.entity.AnalysisIndicator;
import com.company.medicalrecord.entity.CreationInfo;
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.EmbeddedParameters;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.*;
import java.util.List;
import java.util.UUID;

@Table(name = "MEDICALRECORD_ANALYSIS_RECORD")
@Entity(name = "medicalrecord_AnalysisRecord")
@NamePattern("%s|name")
public class AnalysisRecord extends StandardEntity {
    private static final long serialVersionUID = -2457811442348076190L;

    @Column(name = "NAME")
    private String name;

    @Column(name = "CONCLUSION")
    private String conclusion;

    @Embedded
    @EmbeddedParameters(nullAllowed = false)
    @AttributeOverrides({
            @AttributeOverride(name = "clinicName", column = @Column(name = "CREATION_INFO_CLINIC_NAME")),
            @AttributeOverride(name = "doctorSurname", column = @Column(name = "CREATION_INFO_DOCTOR_SURNAME")),
            @AttributeOverride(name = "date", column = @Column(name = "CREATION_INFO_DATE_"))
    })
    private CreationInfo creationInfo;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "analysisRecord")
    private List<AnalysisIndicator> indicators;

    @Column(name = "USER_ID")
    private UUID userId;

    public UUID getUserId() {
        return userId;
    }

    public void setUserId(UUID userId) {
        this.userId = userId;
    }

    public CreationInfo getCreationInfo() {
        return creationInfo;
    }

    public void setCreationInfo(CreationInfo creationInfo) {
        this.creationInfo = creationInfo;
    }

    public List<AnalysisIndicator> getIndicators() {
        return indicators;
    }

    public void setIndicators(List<AnalysisIndicator> indicators) {
        this.indicators = indicators;
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