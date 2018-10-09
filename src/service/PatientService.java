package service;

import Entity.Patient;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface PatientService {
    public void PatientIn(Patient patient);
    public void PatientOut(Patient patient);
}
