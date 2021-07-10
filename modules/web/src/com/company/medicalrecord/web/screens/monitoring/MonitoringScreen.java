package com.company.medicalrecord.web.screens.monitoring;

import com.company.medicalrecord.entity.monitoring.WeightMonitoring;
import com.company.medicalrecord.service.WeightMonitoringService;
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

@UiController("medicalrecord_MonitoringScreen")
@UiDescriptor("monitoring-screen.xml")
public class MonitoringScreen extends Screen {

    @Inject
    private WeightMonitoringService weightMonitoringService;
    @Inject
    private CollectionContainer<WeightMonitoring> weightMonitoringDc;
    @Inject
    private DateField<Date> dateField;
    @Inject
    private LookupField<String> lookupFieldDuration;
    @Inject
    private Notifications notifications;

    @Subscribe
    public void onInit(InitEvent event) {
        List<WeightMonitoring> list = weightMonitoringService.getValuesForMonth(LocalDateTime.now());
        weightMonitoringDc.setItems(list);
        initLookUpField();
        initDateField();
    }

    private void initLookUpField() {
        List<String> durationList = List.of("Year", "Month");
        lookupFieldDuration.setOptionsList(durationList);
        lookupFieldDuration.setValue("Month");
    }

    private void initDateField() {
        dateField.setValue(Date.from(LocalDateTime.now().atZone(ZoneId.systemDefault()).toInstant()));
    }

    @Subscribe("lookupFieldDuration")
    public void onLookupFieldDurationValueChange(HasValue.ValueChangeEvent<String> event) {
        if (event.getValue() == null) {
            createTrayNotification("Select period!");
            lookupFieldDuration.setValue(event.getPrevValue());
            return;
        }
        if (event.getValue().equals("Year")) {
            dateField.setDateFormat("yyyy");
            return;
        }
        if (event.getValue().equals("Month")) {
            dateField.setDateFormat("MM/yyyy");
        }
    }

    @Subscribe("buttonShow")
    public void onButtonShowClick(Button.ClickEvent event) {
        if (dateField.getValue() == null || lookupFieldDuration.getValue() == null) {
            createTrayNotification("Enter values to field(s)!");
            return;
        }
        LocalDateTime date = LocalDateTime.ofInstant(dateField.getValue().toInstant(), ZoneId.systemDefault());
        String periodName = lookupFieldDuration.getValue();
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
            list = weightMonitoringService.getValuesForMonth(date);
        }
        if (period.equals("Year")) {
            list = weightMonitoringService.getValuesForYear(date);
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