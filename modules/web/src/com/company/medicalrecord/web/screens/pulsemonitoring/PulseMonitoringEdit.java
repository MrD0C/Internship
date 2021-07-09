package com.company.medicalrecord.web.screens.pulsemonitoring;

import com.company.medicalrecord.entity.unit.UnitPulse;
import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.monitoring.PulseMonitoring;

import java.time.LocalDateTime;

@UiController("medicalrecord_PulseMonitoring.edit")
@UiDescriptor("pulse-monitoring-edit.xml")
@EditedEntityContainer("pulseMonitoringDc")
@LoadDataBeforeShow
public class PulseMonitoringEdit extends StandardEditor<PulseMonitoring> {
    @Subscribe
    public void onInitEntity(InitEntityEvent<PulseMonitoring> event) {
        event.getEntity().setUnit(UnitPulse.BUMPSPERMINUTE);
        event.getEntity().setLocalDateTime(LocalDateTime.now());
    }
}