package com.company.medicalrecord.entity;

import com.haulmont.chile.core.annotations.MetaClass;
import com.haulmont.cuba.core.entity.EmbeddableEntity;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Lob;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@MetaClass(name = "medicalrecord_CreationInfo")
@Embeddable
public class CreationInfo extends EmbeddableEntity {
    private static final long serialVersionUID = -3356974252480974141L;

    @Lob
    @Column(name = "CLINIC_NAME")
    private String clinicName;

    @Column(name = "DOCTOR_SURNAME")
    private String doctorSurname;

    @Column(name = "DATE_", nullable = false)
    @NotNull
    private LocalDateTime date;

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }

    public String getDoctorSurname() {
        return doctorSurname;
    }

    public void setDoctorSurname(String doctorSurname) {
        this.doctorSurname = doctorSurname;
    }

    public String getClinicName() {
        return clinicName;
    }

    public void setClinicName(String clinicName) {
        this.clinicName = clinicName;
    }
}