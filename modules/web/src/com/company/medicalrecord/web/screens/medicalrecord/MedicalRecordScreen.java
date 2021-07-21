package com.company.medicalrecord.web.screens.medicalrecord;

import com.company.medicalrecord.entity.record.AnalysisRecord;
import com.company.medicalrecord.entity.record.ConsultationRecord;
import com.company.medicalrecord.entity.record.ExaminationRecord;
import com.company.medicalrecord.entity.record.NoteRecord;
import com.company.medicalrecord.service.MedicalRecordService;
import com.haulmont.cuba.gui.Notifications;
import com.haulmont.cuba.gui.RemoveOperation;
import com.haulmont.cuba.gui.actions.list.ViewAction;
import com.haulmont.cuba.gui.components.DataGrid;
import com.haulmont.cuba.gui.model.CollectionContainer;
import com.haulmont.cuba.gui.model.CollectionLoader;
import com.haulmont.cuba.gui.screen.*;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

@UiController("medicalrecord_MedicalRecordScreen")
@UiDescriptor("medical-record-screen.xml")
public class MedicalRecordScreen extends Screen {

    @Inject
    private CollectionContainer<NoteRecord> noteRecordsDc;
    @Inject
    private CollectionContainer<ExaminationRecord> examinationRecordsDc;
    @Inject
    private CollectionContainer<ConsultationRecord> consultationRecordsDc;
    @Inject
    private CollectionContainer<AnalysisRecord> analysisRecordsDc;
    @Inject
    private MedicalRecordService medicalRecordService;
    @Inject
    private DataGrid<NoteRecord> noteRecordsTable;
    @Named("noteRecordsTable.view")
    private ViewAction<NoteRecord> noteRecordsTableView;
    @Inject
    private Notifications notifications;

    @Subscribe
    public void onInit(InitEvent event) {
        initDataCollections();
        noteRecordsTable.setItemClickAction(noteRecordsTableView);
    }

    private void initDataCollections(){
        noteRecordsDc.setItems(medicalRecordService.getUserNoteRecords());
        examinationRecordsDc.setItems(medicalRecordService.getUserExaminationRecords());
        consultationRecordsDc.setItems(medicalRecordService.getUserConsultationRecords());
        analysisRecordsDc.setItems(medicalRecordService.getUserAnalysisRecords());
    }

    @Install(to = "noteRecordsTable.create", subject = "afterCommitHandler")
    private void noteRecordsTableCreateAfterCommitHandler(NoteRecord noteRecord) {
        createTraySuccessNotification("Заметка сохранена");
    }

    @Install(to = "noteRecordsTable.edit", subject = "afterCommitHandler")
    private void noteRecordsTableEditAfterCommitHandler(NoteRecord noteRecord) {
        createTraySuccessNotification("Изменения заметки сохранены");
    }

    @Install(to = "noteRecordsTable.remove", subject = "afterActionPerformedHandler")
    private void noteRecordsTableRemoveAfterActionPerformedHandler(RemoveOperation.AfterActionPerformedEvent<NoteRecord> afterActionPerformedEvent) {
        createTraySuccessNotification("Заметка удалена");
    }

    @Install(to = "examinationRecordsTable.create", subject = "afterCommitHandler")
    private void examinationRecordsTableCreateAfterCommitHandler(ExaminationRecord examinationRecord) {
        createTraySuccessNotification("Обследование сохранено");
    }

    @Install(to = "examinationRecordsTable.edit", subject = "afterCommitHandler")
    private void examinationRecordsTableEditAfterCommitHandler(ExaminationRecord examinationRecord) {
        createTraySuccessNotification("Изменения обследования сохранены");
    }

    @Install(to = "examinationRecordsTable.remove", subject = "afterActionPerformedHandler")
    private void examinationRecordsTableRemoveAfterActionPerformedHandler(RemoveOperation.AfterActionPerformedEvent<ExaminationRecord> afterActionPerformedEvent) {
        createTraySuccessNotification("Обследование удалено");
    }

    @Install(to = "analysisRecordsTable.create", subject = "afterCommitHandler")
    private void analysisRecordsTableCreateAfterCommitHandler(AnalysisRecord analysisRecord) {
        createTraySuccessNotification("Анализ сохранен");
    }

    @Install(to = "analysisRecordsTable.edit", subject = "afterCommitHandler")
    private void analysisRecordsTableEditAfterCommitHandler(AnalysisRecord analysisRecord) {
        createTraySuccessNotification("Изменения анализа сохранены");
    }

    @Install(to = "analysisRecordsTable.remove", subject = "afterActionPerformedHandler")
    private void analysisRecordsTableRemoveAfterActionPerformedHandler(RemoveOperation.AfterActionPerformedEvent<AnalysisRecord> afterActionPerformedEvent) {
        createTraySuccessNotification("Анализ удален");
    }

    private void createTraySuccessNotification(String description){
        notifications.create()
                .withCaption("Успех")
                .withDescription(description)
                .withType(Notifications.NotificationType.TRAY)
                .withPosition(Notifications.Position.BOTTOM_RIGHT)
                .show();
    }

}