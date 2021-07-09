package com.company.medicalrecord.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Table(name = "MEDICALRECORD_WEIGHT_MONITORING")
@Entity(name = "medicalrecord_WeightMonitoring")
@NamePattern("%s kg|value")
public class WeightMonitoring extends StandardEntity {
    private static final long serialVersionUID = -4005193759922961916L;

    @Column(name = "VALUE_", nullable = false)
    @NotNull
    private Double value;

    @NotNull
    @Column(name = "DATE_", nullable = false)
    private LocalDateTime date;

    public void setValue(Double value) {
        this.value = value;
    }

    public Double getValue() {
        return value;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }

}