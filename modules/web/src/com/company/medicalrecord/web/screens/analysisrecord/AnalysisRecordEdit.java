package com.company.medicalrecord.web.screens.analysisrecord;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.record.AnalysisRecord;

import java.time.LocalDateTime;

@UiController("medicalrecord_AnalysisRecord.edit")
@UiDescriptor("analysis-record-edit.xml")
@EditedEntityContainer("analysisRecordDc")
@LoadDataBeforeShow
public class AnalysisRecordEdit extends StandardEditor<AnalysisRecord> {

    @Subscribe
    public void onInitEntity(InitEntityEvent<AnalysisRecord> event) {
        event.getEntity().getCreationInfo().setDate(LocalDateTime.now());
    }


}