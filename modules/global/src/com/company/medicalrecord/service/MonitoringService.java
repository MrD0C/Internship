package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.monitoring.PulseMonitoring;
import com.company.medicalrecord.entity.monitoring.TemperatureMonitoring;
import com.company.medicalrecord.entity.monitoring.WeightMonitoring;

import java.time.LocalDateTime;
import java.util.List;

public interface MonitoringService {
    String NAME = "medicalrecord_MonitoringService";

    List<TemperatureMonitoring> getTemperatureMonitoringListForMonth(LocalDateTime dateTime);

    List<TemperatureMonitoring> getTemperatureMonitoringListForYear(LocalDateTime dateTime);

    List<TemperatureMonitoring> getAllTemperatureMonitoringList();

    List<WeightMonitoring> getWeightMonitoringListForMonth(LocalDateTime dateTime);

    List<WeightMonitoring> getWeightMonitoringListForYear(LocalDateTime dateTime);

    List<WeightMonitoring> getAllWeightMonitoringList();

    List<PulseMonitoring> getPulseMonitoringListForMonth(LocalDateTime dateTime);

    List<PulseMonitoring> getPulseMonitoringListForYear(LocalDateTime dateTime);

    List<PulseMonitoring> getAllPulseMonitoringList();
}