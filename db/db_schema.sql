---------------------
-- Comments
-- dr in front means that table is static and will be filled with data only once. So no need to store timestamps here
-- dd in front means that data will be added, changed or removed, so timestamp is required
---------------------

use polmedal;

-- Defines different time period like PRL, time between the years
CREATE TABLE dr_epoch
(
	id INT(6) UNSIGNED NOT NULL PRIMARY KEY,
	epoch_pl VARCHAR(30) NOT NULL COLLATE 'utf8_unicode_ci',
	epoch_deu VARCHAR(30) NOT NULL,
	epoch_eng VARCHAR(30) NOT NULL,
	CONSTRAINT dr_epoch_id UNIQUE (id)
) ENGINE = InnoDB;

-- Medails related to Poland do not need to result from Poland only
CREATE TABLE dr_country
(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	country_pl VARCHAR(30) NOT NULL COLLATE 'utf8_unicode_ci',
	country_deu VARCHAR(30) NOT NULL,
	country_eng VARCHAR(30) NOT NULL
) ENGINE = InnoDB;

-- Materials used for 
CREATE TABLE dr_material
(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	material_pl VARCHAR(30) NOT NULL COLLATE 'utf8_unicode_ci',
	material_deu VARCHAR(30) NOT NULL,
	material_eng VARCHAR(30) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE dr_condition
(
	id INT(6) UNSIGNED NOT NULL PRIMARY KEY,
	grade_cond_pl VARCHAR(25) NOT NULL COLLATE 'utf8_unicode_ci' ,
	grade_cond_deu VARCHAR(25) NOT NULL,
	grade_cond_eng VARCHAR(25) NOT NULL,
	CONSTRAINT dr_condition_id UNIQUE (id)
) ENGINE = InnoDB;

INSERT INTO dr_condition (id, grade_cond_pl, grade_cond_deu, grade_cond_eng) VALUES('1', 'Stan menniczy', 'UNZ=unzirkuliert','UNC=uncirculated');
INSERT INTO dr_condition (id, grade_cond_pl, grade_cond_deu, grade_cond_eng) VALUES('2', 'Stan znakomity', 'VZ=vorzüglich','EF/XF=extremely fine');
INSERT INTO dr_condition (id, grade_cond_pl, grade_cond_deu, grade_cond_eng) VALUES('3', 'Stan bardzo piękny', 'SS=sehr schön','VF=very fine');
INSERT INTO dr_condition (id, grade_cond_pl, grade_cond_deu, grade_cond_eng) VALUES('4', 'Stan piękny', 'S=schön','F=fine');
INSERT INTO dr_condition (id, grade_cond_pl, grade_cond_deu, grade_cond_eng) VALUES('5', 'Stan bardzo dobry', 'SG=sehr gut','VF=very good');
INSERT INTO dr_condition (id, grade_cond_pl, grade_cond_deu, grade_cond_eng) VALUES('6', 'Stan dobry', 'G=gut','G=good');
INSERT INTO dr_condition (id, grade_cond_pl, grade_cond_deu, grade_cond_eng) VALUES('7', 'Stan zły', 'schlecht','PR=poor');

CREATE TABLE dr_currency
(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	currencycode VARCHAR(5) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE dr_persontype
(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	persontype INT(1) NOT NULL,
	persontypedesc_pl VARCHAR(20) COLLATE 'utf8_unicode_ci',
	persontypedesc_deu VARCHAR(20),
	persontypedesc_eng VARCHAR(20)
) ENGINE = InnoDB;

-- Changeable tables


-- Persons related. This can be people available on the medal, artists who created it etc.
CREATE TABLE dd_person
(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	firstname VARCHAR(30),
	surname VARCHAR(30) NOT NULL,
	born_date DATE,
	death_date DATE,
	persontypeid INT(6) UNSIGNED,
	countryid INT(6) UNSIGNED,
	creation TIMESTAMP,
	last_modification TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `fk_person_country`
		FOREIGN KEY (countryid) REFERENCES dr_country (id),
	CONSTRAINT `fk_person_persontype`
		FOREIGN KEY (persontypeid) REFERENCES dr_persontype (id)
) ENGINE = InnoDB;

CREATE TABLE dd_medal
(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	catalogID INT UNSIGNED,						
	catalogSubID INT UNSIGNED,					
	creation_year INT,
	materialid INT(6) UNSIGNED,
	authorid INT(6) UNSIGNED,
	awers_insc VARCHAR(150),
	awers_icon_pl VARCHAR(255) COLLATE 'utf8_unicode_ci',
	awers_icon_deu VARCHAR(255),
	awers_icon_eng VARCHAR(255),
	rewers_insc VARCHAR(150),
	rewers_icon_pl VARCHAR(255) COLLATE 'utf8_unicode_ci',
	rewers_icon_deu VARCHAR(255),
	rewers_icon_eng VARCHAR(255),
	rand_insc_pl VARCHAR(150) COLLATE 'utf8_unicode_ci',
	rand_insc_deu VARCHAR(150),
	rand_insc_eng VARCHAR(150),
	size_min INT,
	size_max INT,
	weight INT,
	creation TIMESTAMP,
	last_modification TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `fk_medal_author`
		FOREIGN KEY (authorid) REFERENCES dr_country (id),
	CONSTRAINT `fk_medal_materialid`
		FOREIGN KEY (materialid) REFERENCES dr_material (id),
	
) ENGINE = InnoDB;

CREATE TABLE dd_referencelink 
(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	medalid INT(6) UNSIGNED,
	link_url VARCHAR (100),
	selling_price INT,
	sellingcurrencyid INT,
	creation TIMESTAMP,
	last_modification TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT `fk_referencelink_medal`
		FOREIGN KEY (medalid) REFERENCES dd_medal (id)
) ENGINE = InnoDB;

CREATE TABLE dd_catalog
(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	authorid INT (6) UNSIGNED,
	title VARCHAR (100),
	creation TIMESTAMP,
	last_modification TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT `fk_author_catalog`
		FOREIGN KEY (authorid) REFERENCES dd_person(id)
) ENGINE = InnoDB;

CREATE TABLE dd_referencecatalog
(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	catalogid INT(6) UNSIGNED,
	medalid INT(6) UNSIGNED,
	catalognumber VARCHAR (25),
	creation TIMESTAMP,
	last_modification TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT `fk_referencecatalog_catalog`
		FOREIGN KEY (catalogid) REFERENCES dd_catalog(id),
	CONSTRAINT `fk_referencecatalog_medal`
		FOREIGN KEY (medalid) REFERENCES dd_medal(id)
) ENGINE = InnoDB;

CREATE TABLE dd_book 
(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	bookname VARCHAR(100),
	booknumber VARCHAR(10),
	creation TIMESTAMP,
	last_modification TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

CREATE TABLE dd_referencemedalbook
(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	bookid INT(6) UNSIGNED,
	medalid INT(6) UNSIGNED,
	page INT,
	creation TIMESTAMP,
	last_modification TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT `fk_referencemedalbook_book`
		FOREIGN KEY (bookid) REFERENCES dd_book(id),
	CONSTRAINT `fk_referencemedalbook_medal`
		FOREIGN KEY (medalid) REFERENCES dd_medal(id)
) ENGINE = InnoDB;

CREATE TABLE dd_referencepersonbook
(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	bookid INT(6) UNSIGNED,
	personid INT(6) UNSIGNED,
	page INT,
	creation TIMESTAMP,
	last_modification TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT `fk_referencepersonbook_book`
		FOREIGN KEY (bookid) REFERENCES dd_book(id),
	CONSTRAINT `fk_referencepersonbook_person`
		FOREIGN KEY (personid) REFERENCES dd_person(id)
) ENGINE = InnoDB;

CREATE TABLE dd_sellingauction
(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	medalid INT(6) UNSIGNED,
	link_url VARCHAR(200),
	selling_date DATE,
	selling_price FLOAT UNSIGNED,
	creation TIMESTAMP,
	last_modification TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT `fk_sellingauction_medal`
		FOREIGN KEY (medalid) REFERENCES dd_medal(id)
) ENGINE = InnoDB;
