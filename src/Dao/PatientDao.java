package Dao;

import Entity.Doctor;
import Entity.Patient;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
public interface PatientDao {
    void add(Patient patient);
    List<Patient> list();
    void delete(Patient patient);
    void update(Patient patient);
    List<Patient> findUserByDoc(Doctor doctor);
}
