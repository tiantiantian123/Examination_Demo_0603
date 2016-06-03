package demo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode

/**
 * Created by Administrator on 2016/6/3.
 */
public class Staff extends BaseModel {
    private Integer id;
    private String username;
    private String password;
}
