DROP TABLE IF EXISTS `usermodel`;
CREATE TABLE `usermodel` (
  `FirstName` varchar(64) DEFAULT NULL,
  `LastName` varchar(64) DEFAULT NULL,
  `Sex` varchar(10) DEFAULT NULL,
  `EMail` varchar(34) DEFAULT NULL,
  `Address` varchar(64) DEFAULT NULL,
  `Password` varchar(34) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;  
  
 INSERT INTO usermodel
  (FirstName, LastName, Sex, EMail, Address, Password, UserName)
VALUES 
  ('John', 'Smith', 'Male', 'jsmith@gmail.com', '1234 Oneway Street', 'Password', 'JohnSmith'),
  ('Andrea', 'Steelman', 'Female', 'andi@murach.com', '5432 Uptown Blvd', 'Password', 'AndreaSteelman'),
  ('Joel', 'Murach', 'Male', 'joelmurach@yahoo.com', '9137 Anywhere Road', 'Password', 'JoelMurach'); 

SELECT * FROM UserModel;

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `cID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(34) DEFAULT NULL,
  `message` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`cID`)
  ) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;  

INSERT INTO contact
  (name, email, message)
VALUES 
  ('John Smith', 'jsmith@gmail.com', 'Hello, I like your website.'),
  ('Andrea Steelman', 'andi@murach.com', 'Do you have any bacon?'),
  ('Joel Murach', 'joelmurach@yahoo.com', 'I would like to order some onions.');
  
  SELECT * FROM contact;