CREATE DATABASE IF NOT EXISTS hackathon_marsrovers;
USE hackathon_marsrovers;

CREATE TABLE IF NOT EXISTS lastSol (
	meraSol int not null,
	merbSol int not null,
	mslSol int not null
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS images (
	id int not null auto_increment,
	URL varchar(150), 
	metadata longtext,
	submissionCount int,
	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS userSubmissions (
	id int not null auto_increment,
	imageId int not null,
	FOREIGN KEY (imageId) 
        REFERENCES images(id)
        ON DELETE CASCADE,
	categorization varchar(150),
	comment varchar(250),
	plotpoints longtext,
	userId varchar(150),
	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS interesting_images (
  id int(11) NOT NULL AUTO_INCREMENT,
  url varchar(255) DEFAULT NULL,
  timestamp varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


GRANT select,insert,update,delete on hackathon_marsrovers.* to roveruser@'%' identified by 'wqeindsa235';
