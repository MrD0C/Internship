package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.monitoring.TemperatureMonitoring;
import com.company.medicalrecord.entity.monitoring.WeightMonitoring;
import com.haulmont.cuba.core.global.DataManager;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.time.LocalDateTime;
import java.time.Month;
import java.util.ArrayList;
import java.util.List;

@Service(TemperatureMonitoringService.NAME)
public class TemperatureMonitoringServiceBean implements TemperatureMonitoringService {

    @Inject
    private DataManager dataManager;

    //TODO убрать дублирующий код
    @Override
    public List<TemperatureMonitoring> getValuesForYear(LocalDateTime date) {
        if (date != null){
            LocalDateTime startOfYear = LocalDateTime.of(date.getYear()-1, Month.DECEMBER,31,23,59,59);
            LocalDateTime endOfYear = LocalDateTime.of(date.getYear(),Month.DECEMBER,31,23,59,59);
            return getListForPeriod(startOfYear,endOfYear);
        }
        return new ArrayList<>();
    }

    @Override
    public List<TemperatureMonitoring> getValuesForMonth(LocalDateTime date) {
        if (date != null) {
            LocalDateTime startOfMonth = date.withDayOfMonth(1).toLocalDate().atStartOfDay();
            LocalDateTime endOfMonth = date.plusMonths(1).withDayOfMonth(1).toLocalDate().atStartOfDay();
            return getListForPeriod(startOfMonth,endOfMonth);
        }
        return new ArrayList<>();
    }

    private List<TemperatureMonitoring> getListForPeriod(LocalDateTime start,LocalDateTime end){
        return dataManager.load(TemperatureMonitoring.class)
                .query("select t from medicalrecord_TemperatureMonitoring t where t.localDateTime between :start AND :end order by t.localDateTime")
                .parameter("start",start)
                .parameter("end",end)
                .list();
    }
}