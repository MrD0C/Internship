package com.company.medicalrecord.web.screens.monitoring;

import com.company.medicalrecord.entity.monitoring.TemperatureMonitoring;
import com.company.medicalrecord.entity.monitoring.WeightMonitoring;
import com.company.medicalrecord.service.MonitoringService;
import com.haulmont.cuba.gui.Notifications;
import com.haulmont.cuba.gui.components.Button;
import com.haulmont.cuba.gui.components.DateField;
import com.haulmont.cuba.gui.components.HasValue;
import com.haulmont.cuba.gui.components.LookupField;
import com.haulmont.cuba.gui.model.CollectionContainer;
import com.haulmont.cuba.gui.screen.Screen;
import com.haulmont.cuba.gui.screen.Subscribe;
import com.haulmont.cuba.gui.screen.UiController;
import com.haulmont.cuba.gui.screen.UiDescriptor;

import javax.inject.Inject;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

@UiController("medicalrecord_MonitoringScreen")
@UiDescriptor("monitoring-screen.xml")
public class MonitoringScreen extends Screen {

    @Inject
    private MonitoringService monitoringService;
    @Inject
    private CollectionContainer<WeightMonitoring> weightMonitoringDc;
    @Inject
    private CollectionContainer<TemperatureMonitoring> temperatureMonitoringsDc;
    @Inject
    private DateField<Date> weightDateField;
    @Inject
    private DateField<Date> temperatureDateField;
    @Inject
    private LookupField<String> weightPeriodLookupField;
    @Inject
    private LookupField<String> temperatureDurationLookupField;
    @Inject
    private Notifications notifications;

    @Subscribe
    public void onInit(InitEvent event) {
        initCollectionContainers();
        initLookUpField();
        initDateField();
    }

    private void initCollectionContainers(){
        List<WeightMonitoring> weightMonitoringList = monitoringService.getWeightValuesForMonth(LocalDateTime.now());
        List<TemperatureMonitoring> temperatureMonitoringList = monitoringService.getTemperatureValuesForMonth(LocalDateTime.now());
        weightMonitoringDc.setItems(weightMonitoringList);
        temperatureMonitoringsDc.setItems(temperatureMonitoringList);
    }

    private void initLookUpField() {
        List<String> durationList = List.of("Year", "Month");
        weightPeriodLookupField.setOptionsList(durationList);
        weightPeriodLookupField.setValue("Month");
        temperatureDurationLookupField.setOptionsList(durationList);
        temperatureDurationLookupField.setValue("Month");
    }

    private void initDateField() {
        weightDateField.setValue(Date.from(LocalDateTime.now().atZone(ZoneId.systemDefault()).toInstant()));
        temperatureDateField.setValue(Date.from(LocalDateTime.now().atZone(ZoneId.systemDefault()).toInstant()));
    }

    @Subscribe("weightPeriodLookupField")
    public void onWeightPeriodLookupFieldValueChange(HasValue.ValueChangeEvent<String> event) {
        weightDateField.setDateFormat(getDateFormat(Objects.requireNonNull(event.getValue())));
    }

    @Subscribe("temperatureDurationLookupField")
    public void onTemperatureDurationLookupFieldFieldValueChange(HasValue.ValueChangeEvent<String> event) {
        temperatureDateField.setDateFormat(getDateFormat(Objects.requireNonNull(event.getValue())));
    }

    private String getDateFormat(String value){
        if (value.equals("Year")){
            return "yyyy";
        }
        if (value.equals("Month")){
            return "MM/yyyy";
        }
        return "dd.MM.yyyy";
    }

    @Subscribe("showWeightButton")
    public void onShowWeightButtonClick(Button.ClickEvent event) {
        if (weightDateField.getValue() == null || weightPeriodLookupField.getValue() == null) {
            createTrayNotification("Enter values to field(s)!");
            return;
        }
        LocalDateTime date = LocalDateTime.ofInstant(weightDateField.getValue().toInstant(), ZoneId.systemDefault());
        String periodName = weightPeriodLookupField.getValue();
        List<WeightMonitoring> list = getWeightMonitoringListForPeriod(date, periodName);
        if (list.isEmpty()) {
            createTrayNotification("There is no info during this period..");
        } else {
            weightMonitoringDc.setItems(list);
        }
    }

    private List<WeightMonitoring> getWeightMonitoringListForPeriod(LocalDateTime date, String period) {
        List<WeightMonitoring> list = new ArrayList<>();
        if (period.equals("Month")) {
            list = monitoringService.getWeightValuesForMonth(date);
        }
        if (period.equals("Year")) {
            list = monitoringService.getWeightValuesForYear(date);
        }
        return list;
    }

    @Subscribe("showTemperature")
    public void onShowTemperatureClick(Button.ClickEvent event) {
        if (temperatureDateField.getValue() == null || temperatureDurationLookupField.getValue() == null) {
            createTrayNotification("Enter values to field(s)!");
            return;
        }
        LocalDateTime date = LocalDateTime.ofInstant(temperatureDateField.getValue().toInstant(), ZoneId.systemDefault());
        String periodName = temperatureDurationLookupField.getValue();
        List<TemperatureMonitoring> list = getTemperatureMonitoringListForPeriod(date, periodName);
        if (list.isEmpty()) {
            createTrayNotification("There is no info during this period..");
        } else {
            temperatureMonitoringsDc.setItems(list);
        }
    }

    private List<TemperatureMonitoring> getTemperatureMonitoringListForPeriod(LocalDateTime date,String period) {
        List<TemperatureMonitoring> list = new ArrayList<>();
        if (period.equals("Month")) {
            list = monitoringService.getTemperatureValuesForMonth(date);
        }
        if (period.equals("Year")) {
            list = monitoringService.getTemperatureValuesForYear(date);
        }
        return list;
    }

    private void createTrayNotification(String caption) {
        notifications.create()
                .withCaption(caption)
                .withType(Notifications.NotificationType.TRAY)
                .withPosition(Notifications.Position.TOP_CENTER)
                .show();
    }
}