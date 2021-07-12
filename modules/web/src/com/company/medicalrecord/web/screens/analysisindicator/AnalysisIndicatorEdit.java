package com.company.medicalrecord.web.screens.analysisindicator;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.AnalysisIndicator;

@UiController("medicalrecord_AnalysisIndicator.edit")
@UiDescriptor("analysis-indicator-edit.xml")
@EditedEntityContainer("analysisIndicatorDc")
@LoadDataBeforeShow
public class AnalysisIndicatorEdit extends StandardEditor<AnalysisIndicator> {
}