package com.company.medicalrecord.web.screens.treatmentplan;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.TreatmentPlan;

import java.time.LocalDateTime;

@UiController("medicalrecord_TreatmentPlan.edit")
@UiDescriptor("treatment-plan-edit.xml")
@EditedEntityContainer("treatmentPlanDc")
@LoadDataBeforeShow
public class TreatmentPlanEdit extends StandardEditor<TreatmentPlan> {
    @Subscribe
    public void onInitEntity(InitEntityEvent<TreatmentPlan> event) {
        event.getEntity().setDate(LocalDateTime.now());
    }


}