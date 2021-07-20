package com.company.medicalrecord.entity.monitoring;

import com.company.medicalrecord.entity.unit.UnitPulse;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;
import java.util.UUID;

@Table(name = "MEDICALRECORD_PULSE_MONITORING")
@Entity(name = "medicalrecord_PulseMonitoring")
@NamePattern("%s %s|value,unit")
public class PulseMonitoring extends StandardEntity {
    private static final long serialVersionUID = -6215823293068335134L;

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

    public UnitPulse getUnit() {
        return unit == null ? null : UnitPulse.fromId(unit);
    }

    public void setUnit(UnitPulse unit) {
        this.unit = unit == null ? null : unit.getId();
    }

    public Double getValue() {
        return value;
    }

    public void setValue(Double value) {
        this.value = value;
    }
}