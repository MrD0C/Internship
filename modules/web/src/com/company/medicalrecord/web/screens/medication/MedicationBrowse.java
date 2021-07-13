package com.company.medicalrecord.web.screens.medication;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.Medication;

@UiController("medicalrecord_Medication.browse")
@UiDescriptor("medication-browse.xml")
@LookupComponent("medicationsTable")
@LoadDataBeforeShow
public class MedicationBrowse extends StandardLookup<Medication> {
}