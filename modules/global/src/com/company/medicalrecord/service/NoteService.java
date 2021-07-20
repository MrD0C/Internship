package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.record.NoteRecord;

import java.util.List;

public interface NoteService {
    String NAME = "medicalrecord_NoteService";

    List<NoteRecord> getAllUserNoteRecords();
}