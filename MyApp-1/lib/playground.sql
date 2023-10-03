-- CREATE TABLE Incident (
--   id int,
--   urgency varchar(30),
--   triggered boolean,
--   acknowledgement boolean,
--   resolved boolean,
--   description varchar(30),
--   assigned_to int,
--   created_date DATE
-- );
-- CREATE TABLE Team (
--   id int,
--   first_name varchar(30),
--   last_name varchar(30),
--   email varchar(255),
--   number varchar(255),
--   avathar varchar(255),
--   oncall boolean,
--   shift_start date,
--   shift_end date,
--   incident varchar[]
-- );

-- INSERT INTO Incident (id,urgency,triggered,acknowledgement,resolved,description,assigned_to,created_date) VALUES(1,'HIGH',true,true,false,'Software Requrement',201,'2022-11-14 09:17:44.087');

-- INSERT INTO Incident (id,urgency,triggered,acknowledgement,resolved,description,assigned_to,created_date) VALUES(2,'LOW',true,false,false,'Android Developer Requrement',202,'2022-11-14 09:17:44.087');

-- INSERT INTO Team (id ,first_name ,last_name ,email ,number ,avathar ,oncall ,shift_start ,shift_end ,incident) VALUES(201,'Dhiraj','N','dhirajn3012@gmail.com','17697597639','https://imgs.search.brave.com/PMQGtGNf5LMM7Nrka52qBQvZkDbBV4MFNS1M-njxuHg/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/dmVjdG9yc3RvY2su/Y29tL2kvcHJldmll/dy0xeC83MC83Ni9o/YW5kc29tZS1tYW4t/YXZhdGFyLXdpdGgt/YmVhcmQtdmVjdG9y/LTQ3NzY3MDc2Lmpw/Zw',true,'2022-11-08 09:17:44.087','2022-11-14 09:17:44.087', ARRAY['Software Requrement','Android Developer Requrement']);

-- DROP TABLE Incident