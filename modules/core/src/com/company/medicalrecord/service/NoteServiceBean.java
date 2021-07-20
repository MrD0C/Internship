package com.company.medicalrecord.service;

import com.company.medicalrecord.entity.record.NoteRecord;
import com.haulmont.cuba.core.global.DataManager;
import com.haulmont.cuba.core.global.UserSessionSource;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;
import java.util.UUID;

@Service(NoteService.NAME)
public class NoteServiceBean implements NoteService {

    @Inject
    private DataManager dataManager;
    @Inject
    private UserSessionSource userSessionSource;

    @Override
    public List<NoteRecord> getAllUserNoteRecords() {
        return dataManager.load(NoteRecord.class)
                .query("select n from medicalrecord_NoteRecord n where n.userId=:userId")
                .parameter("userId",userSessionSource.getUserSession().getUser().getId())
                .list();
    }
}