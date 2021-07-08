package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.ConsultationRecord;

public interface ConsultionRecordService {
    String NAME = "medicalrecord_ConsultionRecordService";

    ConsultationRecord saveConsultationRecord(ConsultationRecord record);
}