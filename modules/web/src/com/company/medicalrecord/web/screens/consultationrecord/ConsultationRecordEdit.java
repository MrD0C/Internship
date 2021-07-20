package com.company.medicalrecord.web.screens.consultationrecord;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.record.ConsultationRecord;
import com.haulmont.cuba.security.global.UserSession;

import javax.inject.Inject;
import java.time.LocalDateTime;

@UiController("medicalrecord_ConsultationRecord.edit")
@UiDescriptor("consultation-record-edit.xml")
@EditedEntityContainer("consultationRecordDc")
@LoadDataBeforeShow
public class ConsultationRecordEdit extends StandardEditor<ConsultationRecord> {

    @Inject
    private UserSession userSession;

    @Subscribe
    public void onInitEntity(InitEntityEvent<ConsultationRecord> event) {
        event.getEntity().getCreationInfo().setDate(LocalDateTime.now());
        event.getEntity().setUserId(userSession.getUser().getId());
    }


}