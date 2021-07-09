package com.company.medicalrecord.web.screens.monitoring;

import com.company.medicalrecord.entity.monitoring.PulseMonitoring;
import com.company.medicalrecord.entity.monitoring.TemperatureMonitoring;
import com.company.medicalrecord.entity.monitoring.WeightMonitoring;
import com.haulmont.cuba.gui.model.CollectionContainer;
import com.haulmont.cuba.gui.model.CollectionLoader;
import com.haulmont.cuba.gui.screen.Screen;
import com.haulmont.cuba.gui.screen.Subscribe;
import com.haulmont.cuba.gui.screen.UiController;
import com.haulmont.cuba.gui.screen.UiDescriptor;

import javax.inject.Inject;

@UiController("medicalrecord_MonitoringScreen")
@UiDescriptor("monitoring-screen.xml")
public class MonitoringScreen extends Screen {
    @Inject
    private CollectionLoader<WeightMonitoring> weightMonitoringsDl;
    @Inject
    private CollectionLoader<TemperatureMonitoring> temperatureMonitoringsDl;
    @Inject
    private CollectionLoader<PulseMonitoring> pulseMonitoringsDl;

    @Subscribe
    public void onInit(InitEvent event) {
        weightMonitoringsDl.load();
        temperatureMonitoringsDl.load();
        pulseMonitoringsDl.load();
    }
}