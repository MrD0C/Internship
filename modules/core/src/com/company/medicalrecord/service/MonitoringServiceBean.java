package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.monitoring.PulseMonitoring;
import com.company.medicalrecord.entity.monitoring.TemperatureMonitoring;
import com.company.medicalrecord.entity.monitoring.WeightMonitoring;
import com.haulmont.cuba.core.global.DataManager;
import com.haulmont.cuba.core.global.UserSessionSource;
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
    @Inject
    private UserSessionSource userSessionSource;

    @Override
    public List<TemperatureMonitoring> getTemperatureMonitoringListForMonth(LocalDateTime dateTime) {
        LocalDateTime startOfMonth = getStartOfMonth(dateTime);
        LocalDateTime endOfMonth = getEndOfMonth(dateTime);
        return (startOfMonth != null) ? getTemperatureMonitoringListFromDataBase(startOfMonth, endOfMonth) : new ArrayList<>();
    }

    @Override
    public List<TemperatureMonitoring> getTemperatureMonitoringListForYear(LocalDateTime dateTime) {
        LocalDateTime startOfYear = getStartOfYear(dateTime);
        LocalDateTime endOfYear = getEndOfYear(dateTime);
        return (startOfYear != null) ? getTemperatureMonitoringListFromDataBase(startOfYear, endOfYear) : new ArrayList<>();
    }

    @Override
    public List<TemperatureMonitoring> getAllTemperatureMonitoringList() {
        return dataManager.load(TemperatureMonitoring.class)
                .query("select t from medicalrecord_TemperatureMonitoring t where t.userId=:userId order by t.localDateTime")
                .parameter("userId",userSessionSource.getUserSession().getUser().getId())
                .list();
    }

    private List<TemperatureMonitoring> getTemperatureMonitoringListFromDataBase(LocalDateTime start, LocalDateTime end) {
        return dataManager.load(TemperatureMonitoring.class)
                .query("select t from medicalrecord_TemperatureMonitoring t where t.localDateTime between :start AND :end AND t.userId=:userId order by t.localDateTime")
                .parameter("start", start)
                .parameter("end", end)
                .parameter("userId",userSessionSource.getUserSession().getUser().getId())
                .list();
    }

    @Override
    public List<WeightMonitoring> getWeightMonitoringListForMonth(LocalDateTime dateTime) {
        LocalDateTime startOfMonth = getStartOfMonth(dateTime);
        LocalDateTime endOfMonth = getEndOfMonth(dateTime);
        return (startOfMonth != null) ? getWeightMonitoringListFromDataBase(startOfMonth, endOfMonth) : new ArrayList<>();
    }

    @Override
    public List<WeightMonitoring> getWeightMonitoringListForYear(LocalDateTime dateTime) {
        LocalDateTime startOfYear = getStartOfYear(dateTime);
        LocalDateTime endOfYear = getEndOfYear(dateTime);
        return (startOfYear != null) ? getWeightMonitoringListFromDataBase(startOfYear, endOfYear) : new ArrayList<>();
    }

    @Override
    public List<WeightMonitoring> getAllWeightMonitoringList() {
        return dataManager.load(WeightMonitoring.class)
                .query("select w from medicalrecord_WeightMonitoring w where w.userId=:userId order by w.localDateTime")
                .parameter("userId",userSessionSource.getUserSession().getUser().getId())
                .list();
    }

    private List<WeightMonitoring> getWeightMonitoringListFromDataBase(LocalDateTime start, LocalDateTime end) {
        return dataManager.load(WeightMonitoring.class)
                .query("select w from medicalrecord_WeightMonitoring w where w.localDateTime between :start AND :end AND w.userId=:userId order by w.localDateTime")
                .parameter("start", start)
                .parameter("end", end)
                .parameter("userId",userSessionSource.getUserSession().getUser().getId())
                .list();
    }

    @Override
    public List<PulseMonitoring> getPulseMonitoringListForMonth(LocalDateTime dateTime) {
        LocalDateTime startOfMonth = getStartOfMonth(dateTime);
        LocalDateTime endOfMonth = getEndOfMonth(dateTime);
        return (startOfMonth != null) ? getPulseMonitoringListFromDataBase(startOfMonth, endOfMonth) : new ArrayList<>();
    }

    @Override
    public List<PulseMonitoring> getPulseMonitoringListForYear(LocalDateTime dateTime) {
        LocalDateTime startOfYear = getStartOfYear(dateTime);
        LocalDateTime endOfYear = getEndOfYear(dateTime);
        return (startOfYear != null) ? getPulseMonitoringListFromDataBase(startOfYear, endOfYear) : new ArrayList<>();
    }

    @Override
    public List<PulseMonitoring> getAllPulseMonitoringList() {
        return dataManager.load(PulseMonitoring.class)
                .query("select p from medicalrecord_PulseMonitoring p where p.userId=:userId order by p.localDateTime")
                .parameter("userId",userSessionSource.getUserSession().getUser().getId())
                .list();
    }

    private List<PulseMonitoring> getPulseMonitoringListFromDataBase(LocalDateTime start, LocalDateTime end) {
        return dataManager.load(PulseMonitoring.class)
                .query("select p from medicalrecord_PulseMonitoring p where p.localDateTime between :start AND :end and p.userId=:userId order by p.localDateTime")
                .parameter("start", start)
                .parameter("end", end)
                .parameter("userId",userSessionSource.getUserSession().getUser().getId())
                .list();
    }

    private LocalDateTime getStartOfYear(LocalDateTime date) {
        return date != null ? LocalDate.of(date.getYear(), Month.JANUARY, 1).atStartOfDay() : null;
    }

    private LocalDateTime getEndOfYear(LocalDateTime date) {
        return date != null ? getStartOfYear(date.plusYears(1)).minusNanos(1) : null;
    }

    private LocalDateTime getStartOfMonth(LocalDateTime date) {
        return date != null ? date.withDayOfMonth(1).toLocalDate().atStartOfDay() : null;
    }

    private LocalDateTime getEndOfMonth(LocalDateTime date) {
        return date != null ? getStartOfMonth(date.plusMonths(1)).minusNanos(1) : null;
    }
}