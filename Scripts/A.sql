/*Table structure for table `problem_a_input_service_expense` */

DROP TABLE IF EXISTS `problem_a_input_service_expense`;

CREATE TABLE `problem_a_input_service_expense` (
  `expense_id` bigint(30) NOT NULL AUTO_INCREMENT,
  `expense_amount` decimal(12,2) DEFAULT NULL,
  `sale_id` bigint(30) DEFAULT NULL,
  PRIMARY KEY (`expense_id`),
  KEY `fk_problem_a_input_expense_1_idx` (`sale_id`),
  CONSTRAINT `fk_problem_a_input_service_expense_1` FOREIGN KEY (`sale_id`) REFERENCES `problem_a_input_service_sale` (`sale_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `problem_a_input_service_expense` */

insert  into `problem_a_input_service_expense`(`expense_id`,`expense_amount`,`sale_id`) values (1,'500.00',1),(2,'200.00',1),(3,'300.00',2),(4,'445.50',2);

/*Table structure for table `problem_a_input_service_sale` */

DROP TABLE IF EXISTS `problem_a_input_service_sale`;

CREATE TABLE `problem_a_input_service_sale` (
  `sale_id` bigint(30) NOT NULL AUTO_INCREMENT,
  `sale_amount` decimal(12,2) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `problem_a_input_service_sale` */

insert  into `problem_a_input_service_sale`(`sale_id`,`sale_amount`,`sale_date`) values (1,'3000.00','2014-10-10'),(2,'4000.00','2014-07-13'),(3,'5000.00','2014-07-13');

/*Table structure for table `problem_a_output` */

DROP TABLE IF EXISTS `problem_a_output`;

CREATE TABLE `problem_a_output` (
  `sale_id` bigint(30) DEFAULT NULL,
  `sale_amount` decimal(12,2) DEFAULT NULL,
  `total_expense` decimal(12,2) DEFAULT NULL,
  `net_income` decimal(12,2) DEFAULT NULL,
  KEY `fk_problem_a_output_1_idx` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `problem_a_output` */

insert  into `problem_a_output`(`sale_id`,`sale_amount`,`total_expense`,`net_income`) values (1,'3000.00','700.00','2300.00'),(2,'4000.00','745.50','3254.50'),(3,'5000.00','0.00','5000.00');

/*Table structure for table `problem_a_sample_input_service_expense` */

DROP TABLE IF EXISTS `problem_a_sample_input_service_expense`;

CREATE TABLE `problem_a_sample_input_service_expense` (
  `expense_id` bigint(30) NOT NULL AUTO_INCREMENT,
  `expense_amount` decimal(12,2) DEFAULT NULL,
  `sale_id` bigint(30) DEFAULT NULL,
  PRIMARY KEY (`expense_id`),
  KEY `fk_problem_a_input_expense_1_idx` (`sale_id`),
  CONSTRAINT `fk_problem_a_sample_input_service_expense_1` FOREIGN KEY (`sale_id`) REFERENCES `problem_a_sample_input_service_sale` (`sale_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `problem_a_sample_input_service_expense` */

insert  into `problem_a_sample_input_service_expense`(`expense_id`,`expense_amount`,`sale_id`) values (1,'500.00',1),(2,'100.00',1),(3,'300.00',2),(4,'450.00',2);

/*Table structure for table `problem_a_sample_input_service_sale` */

DROP TABLE IF EXISTS `problem_a_sample_input_service_sale`;

CREATE TABLE `problem_a_sample_input_service_sale` (
  `sale_id` bigint(30) NOT NULL AUTO_INCREMENT,
  `sale_amount` decimal(12,2) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `problem_a_sample_input_service_sale` */

insert  into `problem_a_sample_input_service_sale`(`sale_id`,`sale_amount`,`sale_date`) values (1,'3000.00','2014-10-10'),(2,'4000.00','2014-07-13'),(3,'5000.00','2014-07-13');

/*Table structure for table `problem_a_sample_output` */

DROP TABLE IF EXISTS `problem_a_sample_output`;

CREATE TABLE `problem_a_sample_output` (
  `sale_id` bigint(30) DEFAULT NULL,
  `sale_amount` decimal(12,2) DEFAULT NULL,
  `total_expense` decimal(12,2) DEFAULT NULL,
  `net_income` decimal(12,2) DEFAULT NULL,
  KEY `fk_problem_a_output_1_idx` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `problem_a_sample_output` */

insert  into `problem_a_sample_output`(`sale_id`,`sale_amount`,`total_expense`,`net_income`) values (1,'3000.00','600.00','2400.00'),(2,'4000.00','750.00','3250.00'),(3,'5000.00','0.00','5000.00');

