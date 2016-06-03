package demo.service.impl;

import demo.dao.GenericDao;
import demo.model.InsuranceMoney;
import demo.service.InsuranceMoneyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;



/**
 * Created by Administrator on 2016/6/3.
 */

@Service
public class InsuranceMoneyServiceImpl extends GenericServiceImpl<InsuranceMoney, Integer> implements InsuranceMoneyService {
        @Override
        @Autowired
        @Qualifier("insuranceMoneyDaoImpl")
        void setGenericDao(GenericDao<InsuranceMoney, Integer> genericDao) {
            super.genericDao = genericDao;
        }
    }


