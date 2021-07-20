package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.record.AnalysisRecord;
import com.company.medicalrecord.entity.record.ConsultationRecord;
import com.company.medicalrecord.entity.record.ExaminationRecord;
import com.company.medicalrecord.entity.record.NoteRecord;
import com.haulmont.cuba.core.global.DataManager;
import com.haulmont.cuba.core.global.UserSessionSource;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service(MedicalRecordService.NAME)
public class MedicalRecordServiceBean implements MedicalRecordService {

    @Inject
    private DataManager dataManager;
    @Inject
    private UserSessionSource userSessionSource;

    @Override
    public List<AnalysisRecord> getUserAnalysisRecords() {
        return dataManager.load(AnalysisRecord.class)
                .query("select a from medicalrecord_AnalysisRecord a where a.userId=:userId")
                .parameter("userId", userSessionSource.getUserSession().getUser().getId())
                .view("analysisRecord-full-private-view")
                .list();
    }

    @Override
    public List<NoteRecord> getUserNoteRecords() {
        return dataManager.load(NoteRecord.class)
                .query("select n from medicalrecord_NoteRecord n where n.userId=:userId")
                .parameter("userId", userSessionSource.getUserSession().getUser().getId())
                .view("noteRecord-full-private-view")
                .list();
    }

    @Override
    public List<ConsultationRecord> getUserConsultationRecords() {
        return dataManager.load(ConsultationRecord.class)
                .query("select c from medicalrecord_ConsultationRecord c where c.userId=:userId")
                .parameter("userId", userSessionSource.getUserSession().getUser().getId())
                .view("consultationRecord-full-private-view")
                .list();
    }

    @Override
    public List<ExaminationRecord> getUserExaminationRecords() {
        return dataManager.load(ExaminationRecord.class)
                .query("select e from medicalrecord_ExaminationRecord e where e.userId=:userId")
                .parameter("userId", userSessionSource.getUserSession().getUser().getId())
                .view("examinationRecord-full-private-view")
                .list();
    }
}