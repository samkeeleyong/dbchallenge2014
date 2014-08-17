
/*Table structure for table `problem_b_input_friendship` */

DROP TABLE IF EXISTS `problem_b_input_friendship`;

CREATE TABLE `problem_b_input_friendship` (
  `friendship_id` bigint(30) NOT NULL AUTO_INCREMENT,
  `person_id` bigint(30) DEFAULT NULL,
  `friend_id` bigint(30) DEFAULT NULL,
  PRIMARY KEY (`friendship_id`),
  KEY `fk_problem_b_input_frienship_1_idx` (`person_id`),
  KEY `fk_problem_b_input_frienship_2_idx` (`friend_id`),
  CONSTRAINT `fk_problem_b_input_frienship_1` FOREIGN KEY (`person_id`) REFERENCES `problem_b_sample_input_person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_problem_b_input_frienship_2` FOREIGN KEY (`friend_id`) REFERENCES `problem_b_sample_input_person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `problem_b_input_friendship` */

insert  into `problem_b_input_friendship`(`friendship_id`,`person_id`,`friend_id`) values (1,1,2),(2,3,2),(3,1,4),(6,1,5),(7,5,3),(8,3,1),(9,3,4);

/*Table structure for table `problem_b_input_person` */

DROP TABLE IF EXISTS `problem_b_input_person`;

CREATE TABLE `problem_b_input_person` (
  `person_id` bigint(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `problem_b_input_person` */

insert  into `problem_b_input_person`(`person_id`,`name`) values (1,'Lebron James'),(2,'Kuvin Durant'),(3,'Tim Duncan'),(4,'Tony Parker'),(5,'Kobe Bryant');

/*Table structure for table `problem_b_output` */

DROP TABLE IF EXISTS `problem_b_output`;

CREATE TABLE `problem_b_output` (
  `friend_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `problem_b_output` */

insert  into `problem_b_output`(`friend_name`) values ('Kobe Bryant'),('Kuvin Durant'),('Tony Parker');

/*Table structure for table `problem_b_sample_input_friendship` */

DROP TABLE IF EXISTS `problem_b_sample_input_friendship`;

CREATE TABLE `problem_b_sample_input_friendship` (
  `friendship_id` bigint(30) NOT NULL AUTO_INCREMENT,
  `person_id` bigint(30) DEFAULT NULL,
  `friend_id` bigint(30) DEFAULT NULL,
  PRIMARY KEY (`friendship_id`),
  KEY `fk_problem_b_input_frienship_1_idx` (`person_id`),
  KEY `fk_problem_b_input_frienship_2_idx` (`friend_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `problem_b_sample_input_friendship` */

insert  into `problem_b_sample_input_friendship`(`friendship_id`,`person_id`,`friend_id`) values (1,1,2),(2,3,2),(3,1,4),(6,1,5),(7,5,3),(8,3,1),(9,3,4);

/*Table structure for table `problem_b_sample_input_person` */

DROP TABLE IF EXISTS `problem_b_sample_input_person`;

CREATE TABLE `problem_b_sample_input_person` (
  `person_id` bigint(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `problem_b_sample_input_person` */

insert  into `problem_b_sample_input_person`(`person_id`,`name`) values (1,'Lebron James'),(2,'Kuvin Durant'),(3,'Tim Duncan'),(4,'Tony Parker'),(5,'Kobe Bryant');

/*Table structure for table `problem_b_sample_output` */

DROP TABLE IF EXISTS `problem_b_sample_output`;

CREATE TABLE `problem_b_sample_output` (
  `friend_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `problem_b_sample_output` */

insert  into `problem_b_sample_output`(`friend_name`) values ('Lebron James'),('Tim Duncan');

