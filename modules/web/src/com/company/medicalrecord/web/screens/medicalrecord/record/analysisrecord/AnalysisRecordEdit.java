package com.company.medicalrecord.web.screens.medicalrecord.record.analysisrecord;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.record.AnalysisRecord;
import com.haulmont.cuba.security.global.UserSession;

import javax.inject.Inject;
import java.time.LocalDateTime;

@UiController("medicalrecord_AnalysisRecord.edit")
@UiDescriptor("analysis-record-edit.xml")
@EditedEntityContainer("analysisRecordDc")
@LoadDataBeforeShow
public class AnalysisRecordEdit extends StandardEditor<AnalysisRecord> {

    @Inject
    private UserSession userSession;

    @Subscribe
    public void onInitEntity(InitEntityEvent<AnalysisRecord> event) {
        event.getEntity().getCreationInfo().setDate(LocalDateTime.now());
        event.getEntity().setUserId(userSession.getUser().getId());
    }


}