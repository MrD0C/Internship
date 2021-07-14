package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.monitoring.TemperatureMonitoring;
import com.company.medicalrecord.entity.monitoring.WeightMonitoring;

import java.time.LocalDateTime;
import java.util.List;

public interface TemperatureMonitoringService {
    String NAME = "medicalrecord_TemperatureMonitoringService";

    List<TemperatureMonitoring> getValuesForYear(LocalDateTime date);

    List<TemperatureMonitoring> getValuesForMonth(LocalDateTime date);
}