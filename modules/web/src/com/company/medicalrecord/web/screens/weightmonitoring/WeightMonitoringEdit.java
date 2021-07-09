package com.company.medicalrecord.web.screens.weightmonitoring;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.WeightMonitoring;

@UiController("medicalrecord_WeightMonitoring.edit")
@UiDescriptor("weight-monitoring-edit.xml")
@EditedEntityContainer("weightMonitoringDc")
@LoadDataBeforeShow
public class WeightMonitoringEdit extends StandardEditor<WeightMonitoring> {
}