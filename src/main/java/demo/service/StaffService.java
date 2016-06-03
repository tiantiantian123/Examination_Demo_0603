package demo.service;

import demo.model.Staff;

/**
 * Created by Administrator on 2016/6/3.
 */
public interface StaffService extends GenericService<Staff,Integer> {
    Staff login(Staff staff);
}
