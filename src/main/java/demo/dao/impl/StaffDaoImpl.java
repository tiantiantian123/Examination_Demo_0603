
package demo.dao.impl;

import demo.dao.StaffDao;
import demo.model.Staff;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/6/3.
 */
    @Repository
    public class StaffDaoImpl extends GenericDaoImpl<Staff, Integer> implements StaffDao {
    }

