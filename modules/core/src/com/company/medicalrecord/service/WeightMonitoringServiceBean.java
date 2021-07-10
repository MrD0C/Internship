package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.monitoring.WeightMonitoring;
import com.haulmont.cuba.core.global.DataManager;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.time.LocalDateTime;
import java.time.Month;
import java.util.List;

@Service(WeightMonitoringService.NAME)
public class WeightMonitoringServiceBean implements WeightMonitoringService {

    @Inject
    private DataManager dataManager;


    @Override
    public List<WeightMonitoring> getValuesForYear(LocalDateTime date) {
        LocalDateTime startOfYear = LocalDateTime.of(date.getYear()-1, Month.DECEMBER,31,23,59);
        LocalDateTime endOfYear = LocalDateTime.of(date.getYear()+1,Month.JANUARY,1,0,0);
        return dataManager.load(WeightMonitoring.class)
                .query("select w from medicalrecord_WeightMonitoring w where w.localDateTime between :startOfYear AND :endOfYear order by w.localDateTime")
                .parameter("startOfYear", startOfYear)
                .parameter("endOfYear",endOfYear)
                .list();
    }

    @Override
    public List<WeightMonitoring> getValuesForMonth(LocalDateTime date) {
        LocalDateTime startOfMonth = date.withDayOfMonth(1).minusDays(1);
        LocalDateTime endOfMonth = date.plusMonths(1).withDayOfMonth(1).toLocalDate().atStartOfDay();
        return dataManager.load(WeightMonitoring.class)
                .query("select w from medicalrecord_WeightMonitoring w where w.localDateTime between :startOfMonth AND :endOfMonth order by w.localDateTime")
                .parameter("startOfMonth", startOfMonth)
                .parameter("endOfMonth",endOfMonth)
                .list();
    }

}