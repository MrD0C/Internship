package com.company.medicalrecord.entity.monitoring;

import com.company.medicalrecord.entity.unit.UnitMass;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Table(name = "MEDICALRECORD_WEIGHT_MONITORING")
@Entity(name = "medicalrecord_WeightMonitoring")
@NamePattern("%s %s|massValue,unit")
public class WeightMonitoring extends StandardEntity {
    private static final long serialVersionUID = 2144253680316515486L;

    @NotNull
    @Column(name = "MASS_VALUE", nullable = false)
    private Double massValue;

    @NotNull
    @Column(name = "UNIT", nullable = false)
    private String unit;

    @NotNull
    @Column(name = "LOCAL_DATE_TIME", nullable = false)
    private LocalDateTime localDateTime;

    public void setUnit(UnitMass unit) {
        this.unit = unit == null ? null : unit.getId();
    }

    public UnitMass getUnit() {
        return unit == null ? null : UnitMass.fromId(unit);
    }

    public LocalDateTime getLocalDateTime() {
        return localDateTime;
    }

    public void setLocalDateTime(LocalDateTime localDateTime) {
        this.localDateTime = localDateTime;
    }

    public Double getMassValue() {
        return massValue;
    }

    public void setMassValue(Double massValue) {
        this.massValue = massValue;
    }
}