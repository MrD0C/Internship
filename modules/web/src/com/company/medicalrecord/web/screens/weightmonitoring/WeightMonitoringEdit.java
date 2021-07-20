package com.company.medicalrecord.web.screens.weightmonitoring;

import com.company.medicalrecord.entity.unit.UnitMass;
import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.monitoring.WeightMonitoring;
import com.haulmont.cuba.security.global.UserSession;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.time.LocalDateTime;

@UiController("medicalrecord_WeightMonitoring.edit")
@UiDescriptor("weight-monitoring-edit.xml")
@EditedEntityContainer("weightMonitoringDc")
@LoadDataBeforeShow
public class WeightMonitoringEdit extends StandardEditor<WeightMonitoring> {

    @Inject
    private UserSession userSession;

    @Subscribe
    public void onInitEntity(InitEntityEvent<WeightMonitoring> event) {
        event.getEntity().setLocalDateTime(LocalDateTime.now());
        event.getEntity().setUnit(UnitMass.KILOGRAMS);
        event.getEntity().setUserId(userSession.getUser().getId());
    }


}