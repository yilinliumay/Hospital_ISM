package action;

import Entity.Doctor;
import Entity.Users;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import service.DoctorService;

import java.util.Map;

public class ListDocAction extends ActionSupport implements ModelDriven<Users> {

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public void setDoctorService(DoctorService doctorService) {
        this.doctorService = doctorService;
    }

    Doctor doctor;
    DoctorService doctorService;


    @Override
    public String execute() throws Exception {
//        Map request = (Map) ActionContext.getContext().get("request");
//        request.put("list", this.doctorService.findAllDoctors());
        return SUCCESS;
    }


    @Override
    public Users getModel() {
        return null;
    }
}
