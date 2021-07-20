package com.company.medicalrecord.web.screens.pulsemonitoring;

import com.company.medicalrecord.entity.unit.UnitPulse;
import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.monitoring.PulseMonitoring;
import com.haulmont.cuba.security.global.UserSession;

import javax.inject.Inject;
import java.time.LocalDateTime;

@UiController("medicalrecord_PulseMonitoring.edit")
@UiDescriptor("pulse-monitoring-edit.xml")
@EditedEntityContainer("pulseMonitoringDc")
@LoadDataBeforeShow
public class PulseMonitoringEdit extends StandardEditor<PulseMonitoring> {
    @Inject
    private UserSession userSession;

    @Subscribe
    public void onInitEntity(InitEntityEvent<PulseMonitoring> event) {
        event.getEntity().setUnit(UnitPulse.BUMPSPERMINUTE);
        event.getEntity().setLocalDateTime(LocalDateTime.now());
        event.getEntity().setUserId(userSession.getUser().getId());
    }
}