package service.impl;

import Dao.PatientDao;
import Entity.Patient;
import org.springframework.transaction.annotation.Transactional;
import service.PatientService;
@Transactional
public class PatientServiceImpl implements PatientService {

    private PatientDao patientDao;


    public void setPatientDao(PatientDao patientDao) {
        this.patientDao = patientDao;
    }



    @Override
    public void PatientIn(Patient patient) {

        this.patientDao.add(patient);

    }

    @Override
    public void PatientOut(Patient patient) {

    }
}
