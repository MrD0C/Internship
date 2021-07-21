package com.company.medicalrecord.web.screens.treatmentplan;

import com.haulmont.cuba.gui.model.CollectionContainer;
import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.TreatmentPlan;

import javax.inject.Inject;

@UiController("medicalrecord_TreatmentPlan.browse")
@UiDescriptor("treatment-plan-browse.xml")
@LookupComponent("treatmentPlansTable")
@LoadDataBeforeShow
public class TreatmentPlanBrowse extends StandardLookup<TreatmentPlan> {
}