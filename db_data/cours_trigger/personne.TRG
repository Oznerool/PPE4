TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`%` TRIGGER `triggerUn` AFTER INSERT ON `personne` FOR EACH ROW BEGIN\n	IF NEW.type_personne = \'M\' THEN\n    	INSERT INTO personne_morale(num_personne) VALUES (NEW.num_personne);\n        ELSE \n        INSERT INTO personne_physique(num_personne) VALUES (NEW.num_personne);\n        END IF;\nEND' 'CREATE DEFINER=`root`@`%` TRIGGER `historique` BEFORE DELETE ON `personne` FOR EACH ROW INSERT INTO personne_historique (num_personne, type_personne, nom, date_suppr) VALUES (OLD.num_personne, OLD.type_personne, OLD.nom, CURRENT_DATE)'
sql_modes=1436549152 1436549152
definers='root@%' 'root@%'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci'
created=157486093127 157486255551
