package com.company.medicalrecord.web.screens.medicalrecord;

import com.company.medicalrecord.entity.record.NoteRecord;
import com.haulmont.cuba.gui.Notifications;
import com.haulmont.cuba.gui.RemoveOperation;
import com.haulmont.cuba.gui.actions.list.ViewAction;
import com.haulmont.cuba.gui.components.DataGrid;
import com.haulmont.cuba.gui.model.CollectionLoader;
import com.haulmont.cuba.gui.screen.*;

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
    @Inject
    private Notifications notifications;

    @Subscribe
    public void onInit(InitEvent event) {
        noteRecordsDl.load();
        noteRecordsTable.setItemClickAction(noteRecordsTableView);
    }

    @Install(to = "noteRecordsTable.create", subject = "afterCommitHandler")
    private void noteRecordsTableCreateAfterCommitHandler(NoteRecord noteRecord) {
        createTraySuccessNotification("Note saved");
    }

    @Install(to = "noteRecordsTable.edit", subject = "afterCommitHandler")
    private void noteRecordsTableEditAfterCommitHandler(NoteRecord noteRecord) {
        createTraySuccessNotification("Note changes saved");
    }

    @Install(to = "noteRecordsTable.remove", subject = "afterActionPerformedHandler")
    private void noteRecordsTableRemoveAfterActionPerformedHandler(RemoveOperation.AfterActionPerformedEvent<NoteRecord> afterActionPerformedEvent) {
        createTraySuccessNotification("Note deleted");
    }

    private void createTraySuccessNotification(String description){
        notifications.create()
                .withCaption("Success")
                .withDescription(description)
                .withType(Notifications.NotificationType.TRAY)
                .withPosition(Notifications.Position.BOTTOM_RIGHT)
                .show();
    }

}