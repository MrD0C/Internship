package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.Medication;
import com.haulmont.cuba.core.global.DataManager;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service(MedicationService.NAME)
public class MedicationServiceBean implements MedicationService {

    @Inject
    private DataManager dataManager;

    @Override
    public Medication saveMedication(Medication medication){
        return dataManager.commit(medication);
    }
}