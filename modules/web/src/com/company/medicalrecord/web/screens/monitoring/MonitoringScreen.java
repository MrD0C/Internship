package com.company.medicalrecord.web.screens.monitoring;

import com.company.medicalrecord.entity.monitoring.WeightMonitoring;
import com.company.medicalrecord.service.WeightMonitoringService;
import com.haulmont.charts.gui.components.charts.SerialChart;
import com.haulmont.cuba.gui.model.CollectionContainer;
import com.haulmont.cuba.gui.model.CollectionLoader;
import com.haulmont.cuba.gui.screen.Screen;
import com.haulmont.cuba.gui.screen.Subscribe;
import com.haulmont.cuba.gui.screen.UiController;
import com.haulmont.cuba.gui.screen.UiDescriptor;

import javax.inject.Inject;
import java.time.LocalDateTime;
import java.util.List;

@UiController("medicalrecord_MonitoringScreen")
@UiDescriptor("monitoring-screen.xml")
public class MonitoringScreen extends Screen {

    @Inject
    private SerialChart serialChartWeight;
    @Inject
    private WeightMonitoringService weightMonitoringService;
    @Inject
    private CollectionContainer<WeightMonitoring> weightMonitoringsDc;
    @Inject
    private CollectionLoader<WeightMonitoring> weightMonitoringsDl;

    @Subscribe
    public void onInit(InitEvent event) {
        List<WeightMonitoring> list = weightMonitoringService.getValuesForMonth(LocalDateTime.now());
        weightMonitoringsDc.setItems(list);
    }
}