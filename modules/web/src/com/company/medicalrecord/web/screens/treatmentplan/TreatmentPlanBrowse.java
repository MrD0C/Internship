package com.company.medicalrecord.web.screens.treatmentplan;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.TreatmentPlan;

@UiController("medicalrecord_TreatmentPlan.browse")
@UiDescriptor("treatment-plan-browse.xml")
@LookupComponent("treatmentPlansTable")
@LoadDataBeforeShow
public class TreatmentPlanBrowse extends StandardLookup<TreatmentPlan> {
}