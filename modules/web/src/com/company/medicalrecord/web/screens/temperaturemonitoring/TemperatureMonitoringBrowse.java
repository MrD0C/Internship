package com.company.medicalrecord.web.screens.temperaturemonitoring;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.monitoring.TemperatureMonitoring;

@UiController("medicalrecord_TemperatureMonitoring.browse")
@UiDescriptor("temperature-monitoring-browse.xml")
@LookupComponent("temperatureMonitoringsTable")
@LoadDataBeforeShow
public class TemperatureMonitoringBrowse extends StandardLookup<TemperatureMonitoring> {
}