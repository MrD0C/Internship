package com.company.medicalrecord.web.screens.treatmentplan;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.TreatmentPlan;

@UiController("medicalrecord_TreatmentPlan.edit")
@UiDescriptor("treatment-plan-edit.xml")
@EditedEntityContainer("treatmentPlanDc")
@LoadDataBeforeShow
public class TreatmentPlanEdit extends StandardEditor<TreatmentPlan> {
}