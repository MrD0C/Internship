package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.monitoring.WeightMonitoring;
import com.haulmont.cuba.core.global.DataManager;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.time.LocalDateTime;
import java.time.Month;
import java.util.ArrayList;
import java.util.List;

@Service(WeightMonitoringService.NAME)
public class WeightMonitoringServiceBean implements WeightMonitoringService {

    @Inject
    private DataManager dataManager;

    @Override
    public List<WeightMonitoring> getValuesForYear(LocalDateTime date) {
        if (date != null){
            LocalDateTime startOfYear = LocalDateTime.of(date.getYear()-1, Month.DECEMBER,31,23,59);
            LocalDateTime endOfYear = LocalDateTime.of(date.getYear()+1,Month.JANUARY,1,0,0);
            return getListForPeriod(startOfYear,endOfYear);
        }
        return new ArrayList<>();
    }
    
    @Override
    public List<WeightMonitoring> getValuesForMonth(LocalDateTime date) {
        if (date != null) {
            LocalDateTime startOfMonth = date.withDayOfMonth(1).toLocalDate().atStartOfDay();
            LocalDateTime endOfMonth = date.plusMonths(1).withDayOfMonth(1).toLocalDate().atStartOfDay();
            return getListForPeriod(startOfMonth,endOfMonth);
        }
        return new ArrayList<>();
    }

    private List<WeightMonitoring> getListForPeriod(LocalDateTime start,LocalDateTime end){
        return dataManager.load(WeightMonitoring.class)
                .query("select w from medicalrecord_WeightMonitoring  w where w.localDateTime between :start AND :end order by w.localDateTime")
                .parameter("start",start)
                .parameter("end",end)
                .list();
    }

}