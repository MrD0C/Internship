package com.company.medicalrecord.web.screens.pulsemonitoring;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.monitoring.PulseMonitoring;

@UiController("medicalrecord_PulseMonitoring.browse")
@UiDescriptor("pulse-monitoring-browse.xml")
@LookupComponent("pulseMonitoringsTable")
@LoadDataBeforeShow
public class PulseMonitoringBrowse extends StandardLookup<PulseMonitoring> {
}