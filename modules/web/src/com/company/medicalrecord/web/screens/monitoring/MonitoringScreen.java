package com.company.medicalrecord.web.screens.monitoring;

import com.company.medicalrecord.entity.monitoring.PulseMonitoring;
import com.company.medicalrecord.entity.monitoring.TemperatureMonitoring;
import com.company.medicalrecord.entity.monitoring.WeightMonitoring;
import com.haulmont.charts.gui.components.charts.SerialChart;
import com.haulmont.cuba.gui.model.CollectionContainer;
import com.haulmont.cuba.gui.model.CollectionLoader;
import com.haulmont.cuba.gui.screen.Screen;
import com.haulmont.cuba.gui.screen.Subscribe;
import com.haulmont.cuba.gui.screen.UiController;
import com.haulmont.cuba.gui.screen.UiDescriptor;

import javax.inject.Inject;
import java.util.List;

@UiController("medicalrecord_MonitoringScreen")
@UiDescriptor("monitoring-screen.xml")
public class MonitoringScreen extends Screen {
    @Inject
    private CollectionLoader<WeightMonitoring> weightMonitoringsDl;
    @Inject
    private CollectionContainer<WeightMonitoring> weightMonitoringsDc;
    @Inject
    private SerialChart serialChartWeight;

    @Subscribe
    public void onInit(InitEvent event) {
        String format = serialChartWeight.getDataDateFormat();
        serialChartWeight.setDataDateFormat("YYYY-MM-DD");
        format = serialChartWeight.getDataDateFormat();
        weightMonitoringsDl.load();
        List<WeightMonitoring> list = weightMonitoringsDc.getItems();
        int i = 0;
    }
}