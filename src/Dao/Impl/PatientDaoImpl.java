package Dao.Impl;

import Dao.PatientDao;
import Entity.Doctor;
import Entity.Patient;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public class PatientDaoImpl extends HibernateDaoSupport implements PatientDao {
    @Override
    public void add(Patient patient) {
        this.getHibernateTemplate().save(patient);
    }

    @Override
    public List<Patient> list() {
        String hql="from Patient";

        List<Patient> patientList =(List<Patient>) getHibernateTemplate().find(hql);

        return patientList;
    }

    @Override
    public void delete(Patient patient) {

        this.getHibernateTemplate().delete(patient);

    }

    @Override
    public void update(Patient patient) {
        this.getHibernateTemplate().update(patient);

    }

    @Override
    public List<Patient> findUserByDoc(Doctor doctor) {

//        String hql="from Patient p,Doctor d where p.=s.classes.cid";
//        Session session = getSession();
//        String hql="FROM Testcasebpel t LEFT OUTER JOIN fetch t.testpathbpel where t.testpathbpel.id = ?";
//        List<Testcasebpel> list = session.createQuery(hql).setInteger(0, testpathbpel.getId()).list();
//        session.close();
        return null;

    }
}
