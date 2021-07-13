package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.record.ConsultationRecord;

public interface ConsultationService {
    String NAME = "medicalrecord_ConsultationService";

    ConsultationRecord saveConsultationRecord(ConsultationRecord record);
}