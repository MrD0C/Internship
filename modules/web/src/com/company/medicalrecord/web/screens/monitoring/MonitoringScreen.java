package com.company.medicalrecord.web.screens.monitoring;

import com.company.medicalrecord.entity.WeightMonitoring;
import com.haulmont.charts.gui.components.charts.XYChart;
import com.haulmont.charts.gui.data.ContainerDataProvider;
import com.haulmont.cuba.gui.model.CollectionContainer;
import com.haulmont.cuba.gui.model.CollectionLoader;
import com.haulmont.cuba.gui.screen.Screen;
import com.haulmont.cuba.gui.screen.Subscribe;
import com.haulmont.cuba.gui.screen.UiController;
import com.haulmont.cuba.gui.screen.UiDescriptor;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;

@UiController("medicalrecord_MonitoringScreen")
@UiDescriptor("monitoring-screen.xml")
public class MonitoringScreen extends Screen {

    @Inject
    private CollectionLoader<WeightMonitoring> weightMonitoringsDl;
    @Inject
    private CollectionContainer<WeightMonitoring> weightMonitoringsDc;

    @Subscribe
    public void onInit(InitEvent event) {
        weightMonitoringsDl.load();
    }
}