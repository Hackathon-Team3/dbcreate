USE hackathon-marsrovers;

CREATE TABLE lastSol (
	meraSol int not null,
	merbSol int not null,
	mslSol int not null
);

CREATE TABLE images (
	id int not null auto_increment,
	URL varchar(150), 
	metadata longtext,
	submissionCount int,
	PRIMARY KEY (id)
);

CREATE TABLE userSubmissions (
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
);

