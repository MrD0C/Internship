package com.company.medicalrecord.web.screens.weightmonitoring;

import com.company.medicalrecord.entity.unit.UnitMass;
import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.monitoring.WeightMonitoring;

import java.time.LocalDateTime;

@UiController("medicalrecord_WeightMonitoring.edit")
@UiDescriptor("weight-monitoring-edit.xml")
@EditedEntityContainer("weightMonitoringDc")
@LoadDataBeforeShow
public class WeightMonitoringEdit extends StandardEditor<WeightMonitoring> {
    @Subscribe
    public void onInitEntity(InitEntityEvent<WeightMonitoring> event) {
        event.getEntity().setLocalDateTime(LocalDateTime.now());
        event.getEntity().setUnit(UnitMass.KILOGRAMS);
    }


}