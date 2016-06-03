DROP DATABASE db_insurance;
CREATE DATABASE db_insurance;

DROP TABLE IF EXISTS db_insurance.admin;
CREATE TABLE db_insurance.admin (
  id       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  username VARCHAR(255) NOT NULL
  COMMENT '姓名',
  password VARCHAR(255) NOT NULL
  COMMENT '密码'
)
  COMMENT '管理员表';

DROP TABLE IF EXISTS db_insurance.staff;
CREATE TABLE db_insurance.staff(
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  username VARCHAR(255) NOT NULL
  COMMENT '姓名',
  password VARCHAR(255) NOT NULL
  COMMENT '密码'
)
COMMENT '员工表';

DROP TABLE IF EXISTS db_insurance.insurance_money;
CREATE TABLE db_insurance.insurance_money(
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  month DATE NOT NULL
  COMMENT  '交保险金的月份',
  yangl_insurance DECIMAL(7,2) NOT NULL
  COMMENT '养老保险金',
  yil_insurance DECIMAL(7,2) NOT NULL
  COMMENT '医疗保险金',
  gongs_insurance DECIMAL(7,2) NOT NULL
  COMMENT '工伤保险金',
  shiy_insurance DECIMAL(7,2) NOT NULL
  COMMENT '失业保险金',
  housing_fund DECIMAL(7,2) NOT NULL
  COMMENT '住房公积金',
  staff_id INT UNSIGNED
  COMMENT 'FK'
)
COMMENT '保险和公积金信息表';

ALTER TABLE db_insurance.insurance_money
ADD CONSTRAINT
  fk_staff_id
FOREIGN KEY (staff_id)
REFERENCES db_insurance.staff (id);

INSERT INTO db_insurance.admin VALUES (NULL ,'admin' , '123');

INSERT INTO db_insurance.staff VALUES (NULL ,'staff1' , '123');
INSERT INTO db_insurance.staff VALUES (NULL ,'staff2' , '123');


INSERT INTO db_insurance.insurance_money VALUES (NULL ,'2012-10-01' ,256.50 , 105.66 , 12.36 , 15.00 , 1159.00 , 1);
INSERT INTO db_insurance.insurance_money VALUES (NULL ,'2012-10-01' ,259.04 , 108.96 , 12.36 , 15.00 , 1154.00 , 2);
