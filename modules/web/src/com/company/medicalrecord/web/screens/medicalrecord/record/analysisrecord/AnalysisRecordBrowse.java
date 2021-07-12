package com.company.medicalrecord.web.screens.medicalrecord.record.analysisrecord;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.record.AnalysisRecord;

@UiController("medicalrecord_AnalysisRecord.browse")
@UiDescriptor("analysis-record-browse.xml")
@LookupComponent("analysisRecordsTable")
@LoadDataBeforeShow
public class AnalysisRecordBrowse extends StandardLookup<AnalysisRecord> {
}