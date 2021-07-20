package com.company.medicalrecord.web.screens.medicalrecord.record.examinationrecord;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.record.ExaminationRecord;
import com.haulmont.cuba.security.global.UserSession;

import javax.inject.Inject;
import java.time.LocalDateTime;

@UiController("medicalrecord_ExaminationRecord.edit")
@UiDescriptor("examination-record-edit.xml")
@EditedEntityContainer("examinationRecordDc")
@LoadDataBeforeShow
public class ExaminationRecordEdit extends StandardEditor<ExaminationRecord> {

    @Inject
    private UserSession userSession;

    @Subscribe
    public void onInitEntity(InitEntityEvent<ExaminationRecord> event) {
        event.getEntity().getCreationInfo().setDate(LocalDateTime.now());
        event.getEntity().setUserId(userSession.getUser().getId());
    }


}