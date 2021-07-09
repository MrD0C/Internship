package com.company.medicalrecord.web.screens.weightmonitoring;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.monitoring.WeightMonitoring;

@UiController("medicalrecord_WeightMonitoring.browse")
@UiDescriptor("weight-monitoring-browse.xml")
@LookupComponent("weightMonitoringsTable")
@LoadDataBeforeShow
public class WeightMonitoringBrowse extends StandardLookup<WeightMonitoring> {
}