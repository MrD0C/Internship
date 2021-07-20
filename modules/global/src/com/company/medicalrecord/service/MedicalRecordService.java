package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.record.AnalysisRecord;
import com.company.medicalrecord.entity.record.ConsultationRecord;
import com.company.medicalrecord.entity.record.ExaminationRecord;
import com.company.medicalrecord.entity.record.NoteRecord;

import java.util.List;

public interface MedicalRecordService {
    String NAME = "medicalrecord_MedicalRecordService";

    List<AnalysisRecord> getUserAnalysisRecords();

    List<NoteRecord> getUserNoteRecords();

    List<ConsultationRecord> getUserConsultationRecords();

    List<ExaminationRecord> getUserExaminationRecords();
}