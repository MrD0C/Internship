package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.monitoring.PulseMonitoring;
import com.company.medicalrecord.entity.monitoring.TemperatureMonitoring;
import com.company.medicalrecord.entity.monitoring.WeightMonitoring;

import java.time.LocalDateTime;
import java.util.List;

//TODO переименовать методы
public interface MonitoringService {
    String NAME = "medicalrecord_MonitoringService";

    List<TemperatureMonitoring> getTemperatureValuesForMonth(LocalDateTime dateTime);

    List<TemperatureMonitoring> getTemperatureValuesForYear(LocalDateTime dateTime);

    List<WeightMonitoring> getWeightValuesForMonth(LocalDateTime dateTime);

    List<WeightMonitoring> getWeightValuesForYear(LocalDateTime dateTime);

    List<PulseMonitoring> getPulseValuesForMonth(LocalDateTime dateTime);

    List<PulseMonitoring> getPulseValuesForYear(LocalDateTime dateTime);
}