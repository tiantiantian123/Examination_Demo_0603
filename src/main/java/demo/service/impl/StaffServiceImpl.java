package demo.service.impl;

import demo.dao.GenericDao;
import demo.dao.StaffDao;
import demo.model.Staff;
import demo.service.StaffService;
import demo.util.Encryptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * Created by Administrator on 2016/6/3.
 */

@Service
public class StaffServiceImpl extends GenericServiceImpl<Staff, Integer> implements StaffService {


    @Override
    @Autowired
    @Qualifier("staffDaoImpl")
    void setGenericDao(GenericDao<Staff, Integer> genericDao) {
        super.genericDao = genericDao;
    }

    @Override
    public Staff login(Staff staff) {
        String plainPassword = staff.getPassword();
        StaffDao staffDao = (StaffDao) super.genericDao;
        List<Staff> staffs = staffDao.list("staff.login", staff.getUsername());
        if (staffs.size() == 1) {
            staff = staffs.get(0);
            String encryptedPassword = staff.getPassword();
            if (Encryptor.getEncryptor().checkPassword(plainPassword, encryptedPassword)) {
                staff.setPassword(null);
                return staff;
            }
        }
        return null;
    }
}

