package com.company.medicalrecord.web.screens.temperaturemonitoring;

import com.company.medicalrecord.entity.unit.UnitTemperature;
import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.monitoring.TemperatureMonitoring;
import com.haulmont.cuba.security.global.UserSession;

import javax.inject.Inject;
import java.time.LocalDateTime;

@UiController("medicalrecord_TemperatureMonitoring.edit")
@UiDescriptor("temperature-monitoring-edit.xml")
@EditedEntityContainer("temperatureMonitoringDc")
@LoadDataBeforeShow
public class TemperatureMonitoringEdit extends StandardEditor<TemperatureMonitoring> {

    @Inject
    private UserSession userSession;

    @Subscribe
    public void onInitEntity(InitEntityEvent<TemperatureMonitoring> event) {
        event.getEntity().setUnit(UnitTemperature.DEGREECELSIUS);
        event.getEntity().setLocalDateTime(LocalDateTime.now());
        event.getEntity().setUserId(userSession.getUser().getId());
    }
}