CREATE TABLE `genres`(
  id BIGINT(8) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  genre VARCHAR(256) NOT NULL
  
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO genres (genre) VALUES ('MUSIC'),('ART'), ('LITERATURE');

CREATE TABLE `subGenres`(
  id BIGINT(8) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  subGenre VARCHAR(256) NOT NULL 

)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO subGenres (subGenre) VALUES ('CLASSIC'), ('COMIC'), ('DEVOTIONAL'), ('POP'), ('ROCK');
founder
CREATE TABLE `languages`(
  id BIGINT(8) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  language VARCHAR(216) NOT NULL

)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO languages (language) VALUES ('Telugu'), ('Hindi'), ('Tamil'), ('Malayalam');

CREATE TABLE `providers`(
  id BIGINT(8) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  provider VARCHAR(512) NOT NULL,
  founder VARCHAR(216) NOT NULL,
  emailID VARCHAR(512) NOT NULL,
  mobileNumber VARCHAR(256),
  state VARCHAR(256) NOT NULL,
  country VARCHAR(128) NOT NULL,
  status TINYINT(8) NOT NULL
--  status 1- Active 0- In Active
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO providers (provider, founder, emailID, mobileNumber, state, country, status)
     VALUES 
     ('YouTube', 'Dariya', 'dariya.hussain@omniwyse.com','919642096211', 'Andhra Pradesh', 'India', 1),
     ('MetaCafe', 'Thomas', 'thomas123@gmail.com', '15875418960', 'Texas', 'USA', 1),
     ('Vimeo', 'Angelina', 'angelangelina@outlook.com', '498575421582', 'Belgium', 'Germany', 0);

CREATE TABLE `channel_content_providers`(
  id BIGINT(8) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  channel_name VARCHAR(512) NOT NULL,
  providerID BIGINT(8) NOT NULL,
  FOREIGN KEY (providerID) REFERENCES providers (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO channel_content_providers (channel_name, providerID) VALUES 
	('LaughingPipe', 1),
	('In28Minutes',  2);

CREATE TABLE `videoCatalogs`(
  id BIGINT(8) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  providerID BIGINT(8) NOT NULL DEFAULT 1,
  languageID BIGINT(8) NOT NULL,
  genreID BIGINT(8) NOT NULL,
  subGenreID BIGINT(8) NOT NULL,
  contentProviderID BIGINT(8) NOT NULL, 
  videoURL VARCHAR(256) NOT NULL,
  imageURL1 VARCHAR(256),
  imageURL2 VARCHAR(256), 
  imageURL3 VARCHAR(256), 
  contentType VARCHAR(512) NOT NULL, 
  shortDesc VARCHAR(512) NOT NULL, 
  longDesc VARCHAR(1024), 
  created_on timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  status TINYINT(8) NOT NULL,
  Tags VARCHAR(1024) NOT NULL,  
  FOREIGN KEY (providerID) REFERENCES providers (id),
  FOREIGN KEY (contentProviderID) REFERENCES channel_content_providers (id),
  FOREIGN KEY (languageID) REFERENCES languages (id),
  FOREIGN KEY (genreId) REFERENCES genres (id),
  FOREIGN KEY (subGenreID) REFERENCES subGenres (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO `videoCatalogs` (languageID, genreID, subGenreID, contentProviderID, videoURL, contentType, shortDesc, status, Tags) VALUES 
  (1, 1, 2, 1, 'https://youtu.be/LEGvUqh-Vj4', 'video', 'comic series', 1, 'Comedy,dariya, adi, Ramesh, Local'),
  (2, 1, 1, 1, 
  'http://www.metacafe.com/watch/11682799/solo-a-star-wars-story-190-years-old-film-clip-star-wars-the-last-jedi-lucasfilm-ltd-walt-disney-studios-motion-pictures-director-ron-howard/',
  'video', 'A Star war story', 1, 'Action, Star wars, making');

--this is not yet completed
CREATE TABLE `viewrship`(
  id BIGINT(8) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  videoID BIGINT(8) NOT NULL

)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;