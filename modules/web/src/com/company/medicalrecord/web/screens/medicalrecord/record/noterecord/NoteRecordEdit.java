package com.company.medicalrecord.web.screens.medicalrecord.record.noterecord;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.record.NoteRecord;

import java.time.LocalDateTime;

@UiController("medicalrecord_NoteRecord.edit")
@UiDescriptor("note-record-edit.xml")
@EditedEntityContainer("noteRecordDc")
@LoadDataBeforeShow
public class NoteRecordEdit extends StandardEditor<NoteRecord>{

    @Subscribe
    public void onInitEntity(InitEntityEvent<NoteRecord> event) {
        event.getEntity().setDate(LocalDateTime.now());
    }


}