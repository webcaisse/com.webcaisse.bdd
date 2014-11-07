DELIMITER  $$
CREATE  PROCEDURE ADD_USERS ( nbLoop 1 INTEGER ) 
BEGIN
 INSERT INTO societe (nom, adresse, telephone ) values ('pizaaa', 'paris idf', '0125455588');
END$$

DELIMITER;