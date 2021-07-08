package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.ConsultationRecord;
import com.haulmont.cuba.core.global.DataManager;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service(ConsultionRecordService.NAME)
public class ConsultionRecordServiceBean implements ConsultionRecordService {

    @Inject
    private DataManager dataManager;

    @Override
    public ConsultationRecord saveConsultationRecord(ConsultationRecord record) {
       return dataManager.commit(record);
    }
}