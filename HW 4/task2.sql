INSERT INTO petEvent (petname, eventdate, eventtype, remark)
 VALUES ("Fluffy", "2020-10-15", "vet", "antibiotics");

INSERT INTO petEvent (petname, eventdate, eventtype, remark)
 VALUES ("Hammy", "2020-10-15", "vet", "antibiotics");

UPDATE petEvent SET remark="5 kittens, 3 female, 2 male" WHERE petname="Fluffy" AND eventtype= "litter";

UPDATE petEvent SET petname="Claws" WHERE eventdate="1997-08-03";

INSERT INTO petEvent (petname, eventdate, eventtype, remark)
 VALUES ("Puffball", "2020-09-01", "death", NULL);

DELETE FROM petPet WHERE petname="Buffy";

DELETE FROM petEvent WHERE petname="Buffy";

SELECT * FROM petPet;

SELECT * FROM petEvent;
