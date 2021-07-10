package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.monitoring.WeightMonitoring;

import java.time.LocalDateTime;
import java.util.List;

public interface WeightMonitoringService {
    String NAME = "medicalrecord_WeightMonitoringService";

    List<WeightMonitoring> getValuesForYear(LocalDateTime date);

    List<WeightMonitoring> getValuesForMonth(LocalDateTime date);

}