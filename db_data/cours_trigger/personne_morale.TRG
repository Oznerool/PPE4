TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`%` TRIGGER `triggerDeux` BEFORE INSERT ON `personne_morale` FOR EACH ROW BEGIN\n	SELECT COUNT(*) INTO @nombre\n    FROM personne P\n    LEFT JOIN personne_morale PM ON P.num_personne = PM.num_personne\n    LEFT JOIN personne_physique PP ON P.num_personne = PP.num_personne\n    WHERE P.num_personne = NEW.num_personne;\n    IF @nombre > 0 THEN\n    	SIGNAL SQLSTATE \'45000\' SET MESSAGE_TEXT = \'Personne deja affecté\';\n     END IF;\nEND'
sql_modes=1436549152
definers='root@%'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='utf8_general_ci'
created=157486271797
