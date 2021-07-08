package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.Medication;

public interface MedicationService {
    String NAME = "medicalrecord_MedicationService";

    Medication saveMedication(Medication medication);
}