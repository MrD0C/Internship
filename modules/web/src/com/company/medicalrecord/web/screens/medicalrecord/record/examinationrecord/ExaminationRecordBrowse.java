package com.company.medicalrecord.web.screens.medicalrecord.record.examinationrecord;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.record.ExaminationRecord;

@UiController("medicalrecord_ExaminationRecord.browse")
@UiDescriptor("examination-record-browse.xml")
@LookupComponent("examinationRecordsTable")
@LoadDataBeforeShow
public class ExaminationRecordBrowse extends StandardLookup<ExaminationRecord> {
}