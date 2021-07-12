package com.company.medicalrecord.web.screens.medicalrecord;

import com.company.medicalrecord.entity.record.AnalysisRecord;
import com.company.medicalrecord.entity.record.ExaminationRecord;
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

    @Install(to = "examinationRecordsTable.create", subject = "afterCommitHandler")
    private void examinationRecordsTableCreateAfterCommitHandler(ExaminationRecord examinationRecord) {
        createTraySuccessNotification("Examination saved");
    }

    @Install(to = "examinationRecordsTable.edit", subject = "afterCommitHandler")
    private void examinationRecordsTableEditAfterCommitHandler(ExaminationRecord examinationRecord) {
        createTraySuccessNotification("Examination changes saved");
    }

    @Install(to = "examinationRecordsTable.remove", subject = "afterActionPerformedHandler")
    private void examinationRecordsTableRemoveAfterActionPerformedHandler(RemoveOperation.AfterActionPerformedEvent<ExaminationRecord> afterActionPerformedEvent) {
        createTraySuccessNotification("Examination deleted");
    }

    @Install(to = "analysisRecordsTable.create", subject = "afterCommitHandler")
    private void analysisRecordsTableCreateAfterCommitHandler(AnalysisRecord analysisRecord) {
        createTraySuccessNotification("Analysis saved");
    }

    @Install(to = "analysisRecordsTable.edit", subject = "afterCommitHandler")
    private void analysisRecordsTableEditAfterCommitHandler(AnalysisRecord analysisRecord) {
        createTraySuccessNotification("Analysis changes saved");
    }

    @Install(to = "analysisRecordsTable.remove", subject = "afterActionPerformedHandler")
    private void analysisRecordsTableRemoveAfterActionPerformedHandler(RemoveOperation.AfterActionPerformedEvent<AnalysisRecord> afterActionPerformedEvent) {
        createTraySuccessNotification("Analysis deleted");
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