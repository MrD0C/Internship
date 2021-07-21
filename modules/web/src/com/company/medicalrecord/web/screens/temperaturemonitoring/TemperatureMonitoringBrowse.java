package com.company.medicalrecord.web.screens.temperaturemonitoring;

import com.company.medicalrecord.entity.monitoring.WeightMonitoring;
import com.haulmont.cuba.gui.model.CollectionContainer;
import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.monitoring.TemperatureMonitoring;

import javax.inject.Inject;
import java.util.List;

@UiController("medicalrecord_TemperatureMonitoring.browse")
@UiDescriptor("temperature-monitoring-browse.xml")
@LookupComponent("temperatureMonitoringsTable")
@LoadDataBeforeShow
public class TemperatureMonitoringBrowse extends StandardLookup<TemperatureMonitoring> {

    @Inject
    private CollectionContainer<TemperatureMonitoring> temperatureMonitoringsDc;

    public void setItems(List<TemperatureMonitoring> list){
        temperatureMonitoringsDc.setItems(list);
    }
}