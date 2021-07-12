package com.company.medicalrecord.web.screens.analysisindicator;

import com.haulmont.cuba.gui.screen.*;
import com.company.medicalrecord.entity.AnalysisIndicator;

@UiController("medicalrecord_AnalysisIndicator.browse")
@UiDescriptor("analysis-indicator-browse.xml")
@LookupComponent("analysisIndicatorsTable")
@LoadDataBeforeShow
public class AnalysisIndicatorBrowse extends StandardLookup<AnalysisIndicator> {
}