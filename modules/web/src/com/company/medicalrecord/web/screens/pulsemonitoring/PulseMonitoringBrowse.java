package com.company.medicalrecord.web.screens.pulsemonitoring;

import com.company.medicalrecord.entity.monitoring.TemperatureMonitoring;
import com.haulmont.cuba.gui.model.CollectionContainer;
import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.monitoring.PulseMonitoring;

import javax.inject.Inject;
import java.util.List;

@UiController("medicalrecord_PulseMonitoring.browse")
@UiDescriptor("pulse-monitoring-browse.xml")
@LookupComponent("pulseMonitoringsTable")
@LoadDataBeforeShow
public class PulseMonitoringBrowse extends StandardLookup<PulseMonitoring> {

    @Inject
    private CollectionContainer<PulseMonitoring> pulseMonitoringsDc;

    public void setItems(List<PulseMonitoring> list){
        pulseMonitoringsDc.setItems(list);
    }
}