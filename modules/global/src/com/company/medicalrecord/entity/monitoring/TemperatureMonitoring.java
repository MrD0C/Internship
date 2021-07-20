package com.company.medicalrecord.entity.monitoring;

import com.company.medicalrecord.entity.unit.UnitTemperature;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;
import java.util.UUID;

@Table(name = "MEDICALRECORD_TEMPERATURE_MONITORING")
@Entity(name = "medicalrecord_TemperatureMonitoring")
@NamePattern("%s %s|value,unit")
public class TemperatureMonitoring extends StandardEntity {
    private static final long serialVersionUID = 9219023455829967616L;

    @NotNull
    @Column(name = "VALUE_", nullable = false)
    private Double value;

    @NotNull
    @Column(name = "UNIT", nullable = false)
    private String unit;

    @NotNull
    @Column(name = "LOCAL_DATE_TIME", nullable = false)
    private LocalDateTime localDateTime;

    @Column(name = "USER_ID")
    private UUID userId;

    public UUID getUserId() {
        return userId;
    }

    public void setUserId(UUID userId) {
        this.userId = userId;
    }

    public LocalDateTime getLocalDateTime() {
        return localDateTime;
    }

    public void setLocalDateTime(LocalDateTime localDateTime) {
        this.localDateTime = localDateTime;
    }

    public UnitTemperature getUnit() {
        return unit == null ? null : UnitTemperature.fromId(unit);
    }

    public void setUnit(UnitTemperature unit) {
        this.unit = unit == null ? null : unit.getId();
    }

    public Double getValue() {
        return value;
    }

    public void setValue(Double value) {
        this.value = value;
    }
}