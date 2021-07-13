package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.record.ConsultationRecord;
import com.haulmont.cuba.core.global.DataManager;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service(ConsultationService.NAME)
public class ConsultationServiceBean implements ConsultationService {

    @Inject
    private DataManager dataManager;

    @Override
    public ConsultationRecord saveConsultationRecord(ConsultationRecord record) {
        return dataManager.commit(record);
    }

}