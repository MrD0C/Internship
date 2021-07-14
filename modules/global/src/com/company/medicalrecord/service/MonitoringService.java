package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.monitoring.TemperatureMonitoring;
import com.company.medicalrecord.entity.monitoring.WeightMonitoring;

import java.time.LocalDateTime;
import java.util.List;

public interface MonitoringService {
    String NAME = "medicalrecord_MonitoringService";

    List<TemperatureMonitoring> getTemperatureValuesForMonth(LocalDateTime dateTime);

    List<TemperatureMonitoring> getTemperatureValuesForYear(LocalDateTime dateTime);

    List<WeightMonitoring> getWeightValuesForMonth(LocalDateTime dateTime);

    List<WeightMonitoring> getWeightValuesForYear(LocalDateTime dateTime);
}