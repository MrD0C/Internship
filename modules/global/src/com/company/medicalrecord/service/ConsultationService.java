package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.ConsultationRecord;

public interface ConsultationService {
    String NAME = "medicalrecord_ConsultationService";

    ConsultationRecord saveConsultationRecord(ConsultationRecord record);
}