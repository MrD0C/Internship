package com.company.medicalrecord.web.screens.weightmonitoring;

import com.haulmont.cuba.gui.model.CollectionContainer;
import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.monitoring.WeightMonitoring;

import javax.inject.Inject;
import java.util.List;

@UiController("medicalrecord_WeightMonitoring.browse")
@UiDescriptor("weight-monitoring-browse.xml")
@LookupComponent("weightMonitoringsTable")
@LoadDataBeforeShow
public class WeightMonitoringBrowse extends StandardLookup<WeightMonitoring> {

    @Inject
    private CollectionContainer<WeightMonitoring> weightMonitoringsDc;

    public void setItems(List<WeightMonitoring> list){
        weightMonitoringsDc.setItems(list);
    }
}