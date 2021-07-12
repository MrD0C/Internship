package com.company.medicalrecord.web.screens.medicalrecord.record.examinationrecord;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.record.ExaminationRecord;

import java.time.LocalDateTime;

@UiController("medicalrecord_ExaminationRecord.edit")
@UiDescriptor("examination-record-edit.xml")
@EditedEntityContainer("examinationRecordDc")
@LoadDataBeforeShow
public class ExaminationRecordEdit extends StandardEditor<ExaminationRecord> {

    @Subscribe
    public void onInitEntity(InitEntityEvent<ExaminationRecord> event) {
        event.getEntity().getCreationInfo().setDate(LocalDateTime.now());
    }


}