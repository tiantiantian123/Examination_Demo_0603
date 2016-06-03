package demo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

@Data
@EqualsAndHashCode

/**
 * Created by Administrator on 2016/6/3.
 */
public class InsuranceMoney extends BaseModel {
    private Integer id;
    private Date month;
    private Double yanglInsurance;
    private Double yilInsurance;
    private Double gongsInsurance;
    private Double shiyInsurance;
    private Double housingFund;
}
