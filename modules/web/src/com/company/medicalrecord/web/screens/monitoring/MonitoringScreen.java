package com.company.medicalrecord.web.screens.monitoring;

import com.company.medicalrecord.entity.monitoring.PulseMonitoring;
import com.company.medicalrecord.entity.monitoring.TemperatureMonitoring;
import com.company.medicalrecord.entity.monitoring.WeightMonitoring;
import com.company.medicalrecord.service.MonitoringService;
import com.company.medicalrecord.web.screens.pulsemonitoring.PulseMonitoringBrowse;
import com.company.medicalrecord.web.screens.temperaturemonitoring.TemperatureMonitoringBrowse;
import com.company.medicalrecord.web.screens.weightmonitoring.WeightMonitoringBrowse;
import com.haulmont.cuba.core.global.Metadata;
import com.haulmont.cuba.gui.Notifications;
import com.haulmont.cuba.gui.ScreenBuilders;
import com.haulmont.cuba.gui.builders.LookupBuilder;
import com.haulmont.cuba.gui.components.*;
import com.haulmont.cuba.gui.model.CollectionContainer;
import com.haulmont.cuba.gui.model.DataComponents;
import com.haulmont.cuba.gui.screen.*;

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
    private CollectionContainer<TemperatureMonitoring> temperatureMonitoringDc;
    @Inject
    private CollectionContainer<PulseMonitoring> pulseMonitoringDc;
    @Inject
    private DateField<Date> weightDateField;
    @Inject
    private DateField<Date> temperatureDateField;
    @Inject
    private DateField<Date> pulseDateField;
    @Inject
    private LookupField<String> weightPeriodLookupField;
    @Inject
    private LookupField<String> temperatureDurationLookupField;
    @Inject
    private LookupField<String> pulseDurationLookupField;
    @Inject
    private Notifications notifications;
    @Inject
    private ScreenBuilders screenBuilders;
    @Inject
    private DataComponents dataComponents;

    @Subscribe
    public void onInit(InitEvent event) {
        initCollectionContainers();
        initLookUpFields();
        initDateFields();
    }

    private void initCollectionContainers() {
        List<WeightMonitoring> weightMonitoringList = monitoringService.getWeightMonitoringListForMonth(LocalDateTime.now());
        List<TemperatureMonitoring> temperatureMonitoringList = monitoringService.getTemperatureMonitoringListForMonth(LocalDateTime.now());
        List<PulseMonitoring> pulseMonitoringList = monitoringService.getPulseMonitoringListForMonth(LocalDateTime.now());
        weightMonitoringDc.setItems(weightMonitoringList);
        temperatureMonitoringDc.setItems(temperatureMonitoringList);
        pulseMonitoringDc.setItems(pulseMonitoringList);
    }

    private void initLookUpFields() {
        setBaseLookupFieldValues(weightPeriodLookupField);
        setBaseLookupFieldValues(temperatureDurationLookupField);
        setBaseLookupFieldValues(pulseDurationLookupField);
    }

    private void setBaseLookupFieldValues(LookupField<String> field) {
        List<String> durationList = List.of("Год", "Месяц");
        field.setOptionsList(durationList);
        field.setValue("Месяц");
    }

    private void initDateFields() {
        weightDateField.setValue(getNowDate());
        temperatureDateField.setValue(getNowDate());
        pulseDateField.setValue(getNowDate());
    }

    private Date getNowDate() {
        return Date.from(LocalDateTime.now().atZone(ZoneId.systemDefault()).toInstant());
    }

    @Subscribe("weightPeriodLookupField")
    public void onWeightPeriodLookupFieldValueChange(HasValue.ValueChangeEvent<String> event) {
        weightDateField.setDateFormat(getDateFormat(Objects.requireNonNull(event.getValue())));
    }

    @Subscribe("temperatureDurationLookupField")
    public void onTemperatureDurationLookupFieldFieldValueChange(HasValue.ValueChangeEvent<String> event) {
        temperatureDateField.setDateFormat(getDateFormat(Objects.requireNonNull(event.getValue())));
    }

    @Subscribe("pulseDurationLookupField")
    public void onPulseDurationLookupFieldValueChange(HasValue.ValueChangeEvent<String> event) {
        pulseDateField.setDateFormat(getDateFormat(Objects.requireNonNull(event.getValue())));
    }

    private String getDateFormat(String value) {
        if (value.equals("Год")) {
            return "yyyy";
        }
        if (value.equals("Месяц")) {
            return "MM/yyyy";
        }
        return "dd.MM.yyyy";
    }

    @Subscribe("showWeightByPeriodButton")
    public void onShowWeightByPeriodButtonClick(Button.ClickEvent event) {
        if (weightDateField.getValue() == null || weightPeriodLookupField.getValue() == null) {
            createTrayNotification("Введите значения в поля!");
            return;
        }
        LocalDateTime date = LocalDateTime.ofInstant(weightDateField.getValue().toInstant(), ZoneId.systemDefault());
        String periodName = weightPeriodLookupField.getValue();
        List<WeightMonitoring> list = getWeightMonitoringListForPeriod(date, periodName);
        if (list.isEmpty()) {
            createTrayNotification("Нет данных в выбранном периоде..");
        } else {
            weightMonitoringDc.setItems(list);
        }
    }

    private List<WeightMonitoring> getWeightMonitoringListForPeriod(LocalDateTime date, String period) {
        List<WeightMonitoring> list = new ArrayList<>();
        if (period.equals("Месяц")) {
            list = monitoringService.getWeightMonitoringListForMonth(date);
        }
        if (period.equals("Год")) {
            list = monitoringService.getWeightMonitoringListForYear(date);
        }
        return list;
    }

    @Subscribe("showTemperatureByPeriodButton")
    public void onShowTemperatureByPeriodButtonClick(Button.ClickEvent event) {
        if (temperatureDateField.getValue() == null || temperatureDurationLookupField.getValue() == null) {
            createTrayNotification("Введите значения в поля!");
            return;
        }
        LocalDateTime date = LocalDateTime.ofInstant(temperatureDateField.getValue().toInstant(), ZoneId.systemDefault());
        String periodName = temperatureDurationLookupField.getValue();
        List<TemperatureMonitoring> list = getTemperatureMonitoringListForPeriod(date, periodName);
        if (list.isEmpty()) {
            createTrayNotification("Нет данных в выбранном периоде..");
        } else {
            temperatureMonitoringDc.setItems(list);
        }
    }

    private List<TemperatureMonitoring> getTemperatureMonitoringListForPeriod(LocalDateTime date, String period) {
        List<TemperatureMonitoring> list = new ArrayList<>();
        if (period.equals("Месяц")) {
            list = monitoringService.getTemperatureMonitoringListForMonth(date);
        }
        if (period.equals("Год")) {
            list = monitoringService.getTemperatureMonitoringListForYear(date);
        }
        return list;
    }

    //Может в отдельный метод проверку??
    @Subscribe("showPulseByPeriodButton")
    public void onShowPulseByPeriodButtonClick(Button.ClickEvent event) {
        if (pulseDateField.getValue() == null || pulseDurationLookupField.getValue() == null) {
            createTrayNotification("Введите значения в поля!");
            return;
        }
        LocalDateTime date = LocalDateTime.ofInstant(pulseDateField.getValue().toInstant(), ZoneId.systemDefault());
        String periodName = pulseDurationLookupField.getValue();
        List<PulseMonitoring> list = getPulseMonitoringListForPeriod(date, periodName);
        if (list.isEmpty()) {
            createTrayNotification("Нет данных в выбранном периоде..");
        } else {
            pulseMonitoringDc.setItems(list);
        }
    }

    private List<PulseMonitoring> getPulseMonitoringListForPeriod(LocalDateTime date, String period) {
        List<PulseMonitoring> list = new ArrayList<>();
        if (period.equals("Месяц")) {
            list = monitoringService.getPulseMonitoringListForMonth(date);
        }
        if (period.equals("Год")) {
            list = monitoringService.getPulseMonitoringListForYear(date);
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

    @Subscribe("addWeight")
    public void onAddWeight(Action.ActionPerformedEvent event) {
        screenBuilders.editor(WeightMonitoring.class, this)
                .withOpenMode(OpenMode.DIALOG)
                .show();
    }

    @Subscribe("addTemperature")
    public void onAddTemperature(Action.ActionPerformedEvent event) {
        screenBuilders.editor(TemperatureMonitoring.class, this)
                .withOpenMode(OpenMode.DIALOG)
                .show();
    }

    @Subscribe("addPulse")
    public void onAddPulse(Action.ActionPerformedEvent event) {
        screenBuilders.editor(PulseMonitoring.class, this)
                .withOpenMode(OpenMode.DIALOG)
                .show();
    }

    @Subscribe("showAllWeight")
    public void onShowAllWeight(Action.ActionPerformedEvent event) {
        WeightMonitoringBrowse screen = (WeightMonitoringBrowse) screenBuilders.lookup(WeightMonitoring.class, this)
                .withOpenMode(OpenMode.DIALOG)
                .show();
        screen.setItems(monitoringService.getAllWeightMonitoringList());
    }

    @Subscribe("showAllTemperature")
    public void onShowAllTemperature(Action.ActionPerformedEvent event) {
        TemperatureMonitoringBrowse screen = (TemperatureMonitoringBrowse) screenBuilders.lookup(TemperatureMonitoring.class, this)
                .withOpenMode(OpenMode.DIALOG)
                .show();
        screen.setItems(monitoringService.getAllTemperatureMonitoringList());
    }

    @Subscribe("showAllPulse")
    public void onShowAllPulse(Action.ActionPerformedEvent event) {
        PulseMonitoringBrowse screen = (PulseMonitoringBrowse) screenBuilders.lookup(PulseMonitoring.class, this)
                .withOpenMode(OpenMode.DIALOG)
                .show();
        screen.setItems(monitoringService.getAllPulseMonitoringList());
    }
}