package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.monitoring.PulseMonitoring;
import com.company.medicalrecord.entity.monitoring.TemperatureMonitoring;
import com.company.medicalrecord.entity.monitoring.WeightMonitoring;
import com.haulmont.cuba.core.global.DataManager;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Month;
import java.util.ArrayList;
import java.util.List;

@Service(MonitoringService.NAME)
public class MonitoringServiceBean implements MonitoringService {

    @Inject
    private DataManager dataManager;

    @Override
    public List<TemperatureMonitoring> getTemperatureValuesForMonth(LocalDateTime dateTime) {
        LocalDateTime startOfMonth = getStartOfMonth(dateTime);
        LocalDateTime endOfMonth = getEndOfMonth(dateTime);
        return (startOfMonth != null) ? getTemperatureMonitoringValues(startOfMonth,endOfMonth): new ArrayList<>();
    }

    @Override
    public List<TemperatureMonitoring> getTemperatureValuesForYear(LocalDateTime dateTime) {
        LocalDateTime startOfYear = getStartOfYear(dateTime);
        LocalDateTime endOfYear = getEndOfYear(dateTime);
        return (startOfYear != null) ? getTemperatureMonitoringValues(startOfYear,endOfYear): new ArrayList<>();
    }

    private List<TemperatureMonitoring> getTemperatureMonitoringValues(LocalDateTime start,LocalDateTime end){
        return dataManager.load(TemperatureMonitoring.class)
                .query("select t from medicalrecord_TemperatureMonitoring t where t.localDateTime between :start AND :end order by t.localDateTime")
                .parameter("start",start)
                .parameter("end",end)
                .list();
    }

    @Override
    public List<WeightMonitoring> getWeightValuesForMonth(LocalDateTime dateTime) {
        LocalDateTime startOfMonth = getStartOfMonth(dateTime);
        LocalDateTime endOfMonth = getEndOfMonth(dateTime);
        return (startOfMonth != null) ? getWeightMonitoringValues(startOfMonth,endOfMonth): new ArrayList<>();
    }

    @Override
    public List<WeightMonitoring> getWeightValuesForYear(LocalDateTime dateTime) {
        LocalDateTime startOfYear = getStartOfYear(dateTime);
        LocalDateTime endOfYear = getEndOfYear(dateTime);
        return (startOfYear != null) ? getWeightMonitoringValues(startOfYear,endOfYear): new ArrayList<>();
    }

    private List<WeightMonitoring> getWeightMonitoringValues(LocalDateTime start,LocalDateTime end){
        return dataManager.load(WeightMonitoring.class)
                .query("select w from medicalrecord_WeightMonitoring  w where w.localDateTime between :start AND :end order by w.localDateTime")
                .parameter("start",start)
                .parameter("end",end)
                .list();
    }

    @Override
    public List<PulseMonitoring> getPulseValuesForMonth(LocalDateTime dateTime) {
        LocalDateTime startOfMonth = getStartOfMonth(dateTime);
        LocalDateTime endOfMonth = getEndOfMonth(dateTime);
        return (startOfMonth != null) ? getPulseMonitoringValues(startOfMonth,endOfMonth): new ArrayList<>();
    }

    @Override
    public List<PulseMonitoring> getPulseValuesForYear(LocalDateTime dateTime) {
        LocalDateTime startOfYear = getStartOfYear(dateTime);
        LocalDateTime endOfYear = getEndOfYear(dateTime);
        return (startOfYear != null) ? getPulseMonitoringValues(startOfYear,endOfYear): new ArrayList<>();
    }

    private List<PulseMonitoring> getPulseMonitoringValues(LocalDateTime start,LocalDateTime end){
        return dataManager.load(PulseMonitoring.class)
                .query("select p from medicalrecord_PulseMonitoring  p where p.localDateTime between :start AND :end order by p.localDateTime")
                .parameter("start",start)
                .parameter("end",end)
                .list();
    }

    private LocalDateTime getStartOfYear(LocalDateTime date){
        return date != null ? LocalDate.of(date.getYear(), Month.JANUARY,1).atStartOfDay() : null;
    }

    private LocalDateTime getEndOfYear(LocalDateTime date){
       return date != null ? getStartOfYear(date.plusYears(1)).minusNanos(1) : null;
    }

    private LocalDateTime getStartOfMonth(LocalDateTime date){
        return date != null ? date.withDayOfMonth(1).toLocalDate().atStartOfDay() : null;
    }

    private LocalDateTime getEndOfMonth(LocalDateTime date){
        return date != null ? getStartOfMonth(date.plusMonths(1)).minusNanos(1) : null;
    }
}