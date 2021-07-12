package com.company.medicalrecord.web.screens.medicalrecord;

import com.company.medicalrecord.entity.record.NoteRecord;
import com.haulmont.cuba.gui.actions.list.ViewAction;
import com.haulmont.cuba.gui.components.DataGrid;
import com.haulmont.cuba.gui.model.CollectionLoader;
import com.haulmont.cuba.gui.screen.Screen;
import com.haulmont.cuba.gui.screen.Subscribe;
import com.haulmont.cuba.gui.screen.UiController;
import com.haulmont.cuba.gui.screen.UiDescriptor;

import javax.inject.Inject;
import javax.inject.Named;

@UiController("medicalrecord_MedicalRecordScreen")
@UiDescriptor("medical-record-screen.xml")
public class MedicalRecordScreen extends Screen {
    @Inject
    private CollectionLoader<NoteRecord> noteRecordsDl;
    @Inject
    private DataGrid<NoteRecord> noteRecordsTable;
    @Named("noteRecordsTable.view")
    private ViewAction<NoteRecord> noteRecordsTableView;

    @Subscribe
    public void onInit(InitEvent event) {
        noteRecordsDl.load();
        noteRecordsTable.setItemClickAction(noteRecordsTableView);
    }


}