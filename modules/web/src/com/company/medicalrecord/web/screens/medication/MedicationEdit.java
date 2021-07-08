package com.company.medicalrecord.web.screens.medication;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.Medication;

@UiController("medicalrecord_Medication.edit")
@UiDescriptor("medication-edit.xml")
@EditedEntityContainer("medicationDc")
@LoadDataBeforeShow
public class MedicationEdit extends StandardEditor<Medication> {
}