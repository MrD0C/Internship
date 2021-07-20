package com.company.medicalrecord.entity.monitoring;

import com.company.medicalrecord.entity.unit.UnitMass;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;
import java.util.UUID;

@Table(name = "MEDICALRECORD_WEIGHT_MONITORING")
@Entity(name = "medicalrecord_WeightMonitoring")
@NamePattern("%s %s|value,unit")
public class WeightMonitoring extends StandardEntity {
    private static final long serialVersionUID = 2144253680316515486L;

    @NotNull
    @Column(name = "MASS_VALUE", nullable = false)
    private Double value;

    @NotNull
    @Column(name = "UNIT", nullable = false)
    private String unit;

    @Column(name = "LOCAL_DATE_TIME", nullable = false)
    @NotNull
    private LocalDateTime localDateTime;

    @Column(name = "USER_ID")
    private UUID userId;

    public UUID getUserId() {
        return userId;
    }

    public void setUserId(UUID userId) {
        this.userId = userId;
    }

    public void setLocalDateTime(LocalDateTime localDateTime) {
        this.localDateTime = localDateTime;
    }

    public LocalDateTime getLocalDateTime() {
        return localDateTime;
    }

    public void setUnit(UnitMass unit) {
        this.unit = unit == null ? null : unit.getId();
    }

    public UnitMass getUnit() {
        return unit == null ? null : UnitMass.fromId(unit);
    }

    public Double getValue() {
        return value;
    }

    public void setValue(Double value) {
        this.value = value;
    }
}