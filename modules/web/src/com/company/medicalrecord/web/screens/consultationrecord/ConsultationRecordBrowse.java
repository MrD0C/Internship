package com.company.medicalrecord.web.screens.consultationrecord;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.ConsultationRecord;

@UiController("medicalrecord_ConsultationRecord.browse")
@UiDescriptor("consultation-record-browse.xml")
@LookupComponent("consultationRecordsTable")
@LoadDataBeforeShow
public class ConsultationRecordBrowse extends StandardLookup<ConsultationRecord> {
}