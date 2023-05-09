-- Create DATABASE

DROP TABLE IF EXISTS favorite_songs;
USE SpotifyClone;

CREATE TABLE IF NOT EXISTS favorite_songs (
	id_user INT NOT NULL,
	id_song INT NOT NULL,    
	PRIMARY KEY (id_user, id_song),
	FOREIGN KEY (id_user)
		REFERENCES users (id_user),
	FOREIGN KEY (id_song)
		REFERENCES songs (id_song)
)ENGINE = InnoDB;

-- Insert DATA INFO
INSERT INTO favorite_songs (id_user, id_song) VALUES
	(1, 3),
	(1, 6),
	(1, 10),
	(2, 4),
	(3, 1),
	(3, 3),
	(4, 4),
	(4, 7),
	(5, 2),
	(5, 10),
	(8, 4),
	(9, 7),
	(10, 3);
