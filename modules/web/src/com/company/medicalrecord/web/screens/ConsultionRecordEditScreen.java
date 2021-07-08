package com.company.medicalrecord.web.screens;

import com.company.medicalrecord.entity.ConsultationRecord;
import com.company.medicalrecord.service.ConsultionRecordService;
import com.haulmont.cuba.core.global.Metadata;
import com.haulmont.cuba.gui.components.Button;
import com.haulmont.cuba.gui.model.InstanceContainer;
import com.haulmont.cuba.gui.screen.Screen;
import com.haulmont.cuba.gui.screen.Subscribe;
import com.haulmont.cuba.gui.screen.UiController;
import com.haulmont.cuba.gui.screen.UiDescriptor;

import javax.inject.Inject;

@UiController("medicalrecord_ConsultionRecordEditScreen")
@UiDescriptor("consultion-record-edit-screen.xml")
public class ConsultionRecordEditScreen extends Screen {

    @Inject
    private InstanceContainer<ConsultationRecord> consultationRecordDc;
    @Inject
    private Metadata metadata;
    @Inject
    private ConsultionRecordService consultionRecordService;

    @Subscribe
    public void onInit(InitEvent event) {
        ConsultationRecord record = metadata.create(ConsultationRecord.class);
        consultationRecordDc.setItem(record);
    }

    
    @Subscribe("buttonCreate")
    public void onButtonCreateClick(Button.ClickEvent event) {
        consultionRecordService.saveConsultationRecord(consultationRecordDc.getItem());
    }
}