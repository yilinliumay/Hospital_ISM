package action;

import Entity.Patient;
import Entity.Users;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.springframework.transaction.annotation.Transactional;
import service.PatientService;

public class PatientInAction extends ActionSupport implements ModelDriven<Users> {

    private Patient patient;
    private PatientService patientService;


    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public void setPatientService(PatientService patientService) {
        this.patientService = patientService;
    }


    @Override

    public String execute() throws Exception {


        this.patientService.PatientIn(patient);


        return SUCCESS ;
    }

    @Override
    public Users getModel() {
        return null;
    }
}
