package com.company.medicalrecord.web.screens.noterecord;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.record.NoteRecord;

@UiController("medicalrecord_NoteRecord.browse")
@UiDescriptor("note-record-browse.xml")
@LookupComponent("noteRecordsTable")
@LoadDataBeforeShow
public class NoteRecordBrowse extends StandardLookup<NoteRecord> {
}