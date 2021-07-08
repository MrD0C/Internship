package com.company.medicalrecord.web.screens;

import com.company.medicalrecord.entity.ConsultationRecord;
import com.company.medicalrecord.entity.Medication;
import com.company.medicalrecord.service.ConsultationService;
import com.company.medicalrecord.service.MedicationService;
import com.haulmont.cuba.core.global.Metadata;
import com.haulmont.cuba.gui.UiComponents;
import com.haulmont.cuba.gui.components.*;
import com.haulmont.cuba.gui.components.data.value.ContainerValueSource;
import com.haulmont.cuba.gui.model.InstanceContainer;
import com.haulmont.cuba.gui.model.impl.InstanceContainerImpl;
import com.haulmont.cuba.gui.screen.Screen;
import com.haulmont.cuba.gui.screen.Subscribe;
import com.haulmont.cuba.gui.screen.UiController;
import com.haulmont.cuba.gui.screen.UiDescriptor;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@UiController("medicalrecord_ConsultionRecordEditScreen")
@UiDescriptor("consultion-record-edit-screen.xml")
public class ConsultionRecordEditScreen extends Screen {

    @Inject
    private InstanceContainer<ConsultationRecord> consultationRecordDc;
    @Inject
    private Metadata metadata;
    @Inject
    private ConsultationService consultationService;
    @Inject
    private VBoxLayout vBoxMedicine;
    @Inject
    private UiComponents uiComponents;
    @Inject
    private InstanceContainer<Medication> medicationDc;
    @Inject
    private MedicationService medicationService;

    private List<InstanceContainer<Medication>> medicationContainerList = new ArrayList<>();


    @Subscribe
    public void onInit(InitEvent event) {
        ConsultationRecord record = metadata.create(ConsultationRecord.class);
        consultationRecordDc.setItem(record);
    }

    
    @Subscribe("buttonCreate")
    public void onButtonCreateClick(Button.ClickEvent event) {
        ConsultationRecord record = this.consultationService.saveConsultationRecord(consultationRecordDc.getItem());
        medicationContainerList.forEach(container ->  {
                    Medication entity = container.getItem();
                    entity.setConsultationRecord(record);
                    medicationService.saveMedication(entity);
                });
    }

    @Subscribe("buttonAddMedicine")
    public void onButtonAddMedicineClick(Button.ClickEvent event) {
        InstanceContainer<Medication> instanceContainer = new InstanceContainerImpl<>(medicationDc.getEntityMetaClass());
        instanceContainer.setView(Objects.requireNonNull(medicationDc.getView()));
        instanceContainer.setItem(metadata.create(Medication.class));
        Form form = createMedicineForm(instanceContainer);
        vBoxMedicine.add(form);
        medicationContainerList.add(instanceContainer);
    }

    private Form createMedicineForm(InstanceContainer<Medication> instanceContainer) {
        Form form = uiComponents.create(Form.class);
        form.add(getMedicineNameField(instanceContainer));
        form.add(getIntakeRecommendationField(instanceContainer));
        form.setVisible(true);
        return form;
    }

    private TextField<String> getMedicineNameField(InstanceContainer<Medication> container) {
        TextField<String> field = uiComponents.create(TextField.TYPE_STRING);
        field.setValueSource(new ContainerValueSource<>(container,"medicineName"));
        field.setInputPrompt("Medicine name");
        return field;
    }

    private TextArea<String> getIntakeRecommendationField(InstanceContainer<Medication> container) {
        TextArea<String> field = uiComponents.create(TextArea.TYPE_STRING);
        field.setValueSource(new ContainerValueSource<>(container,"intakeRecommendation"));
        field.setInputPrompt("Intake Recommendations");
        return field;
    }

}