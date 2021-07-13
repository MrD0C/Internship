package com.company.medicalrecord.web.screens.consultationrecord;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.record.ConsultationRecord;

import java.time.LocalDateTime;

@UiController("medicalrecord_ConsultationRecord.edit")
@UiDescriptor("consultation-record-edit.xml")
@EditedEntityContainer("consultationRecordDc")
@LoadDataBeforeShow
public class ConsultationRecordEdit extends StandardEditor<ConsultationRecord> {

    @Subscribe
    public void onInitEntity(InitEntityEvent<ConsultationRecord> event) {
        event.getEntity().getCreationInfo().setDate(LocalDateTime.now());
    }


}