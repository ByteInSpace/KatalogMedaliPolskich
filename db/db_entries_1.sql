-- Conditions of medals

INSERT INTO dr_condition (id, grade_cond_pl, grade_cond_deu, grade_cond_eng) VALUES('1', 'Stan menniczy', 'UNZ=unzirkuliert','UNC=uncirculated');
INSERT INTO dr_condition (id, grade_cond_pl, grade_cond_deu, grade_cond_eng) VALUES('2', 'Stan znakomity', 'VZ=vorzüglich','EF/XF=extremely fine');
INSERT INTO dr_condition (id, grade_cond_pl, grade_cond_deu, grade_cond_eng) VALUES('3', 'Stan bardzo piękny', 'SS=sehr schön','VF=very fine');
INSERT INTO dr_condition (id, grade_cond_pl, grade_cond_deu, grade_cond_eng) VALUES('4', 'Stan piękny', 'S=schön','F=fine');
INSERT INTO dr_condition (id, grade_cond_pl, grade_cond_deu, grade_cond_eng) VALUES('5', 'Stan bardzo dobry', 'SG=sehr gut','VF=very good');
INSERT INTO dr_condition (id, grade_cond_pl, grade_cond_deu, grade_cond_eng) VALUES('6', 'Stan dobry', 'G=gut','G=good');
INSERT INTO dr_condition (id, grade_cond_pl, grade_cond_deu, grade_cond_eng) VALUES('7', 'Stan zły', 'schlecht','PR=poor');

INSERT INTO dr_country (id, country_pl, country_deu, country_eng) VALUES('1', 'Polska', 'Polen', 'Poland');
INSERT INTO dr_country (id, country_pl, country_deu, country_eng) VALUES('2', 'Rosja Carska', 'Russland', 'Russia');
INSERT INTO dr_country (id, country_pl, country_deu, country_eng) VALUES('3', 'Niemcy', 'Deutschland', 'Germany');
INSERT INTO dr_country (id, country_pl, country_deu, country_eng) VALUES('4', 'Francja', 'Frankreich', 'France');
INSERT INTO dr_country (id, country_pl, country_deu, country_eng) VALUES('5', 'Włochy', 'Italien', 'Italy');
INSERT INTO dr_country (id, country_pl, country_deu, country_eng) VALUES('6', 'USA', 'USA', 'USA');
INSERT INTO dr_country (id, country_pl, country_deu, country_eng) VALUES('7', 'Austria-Węgry', 'Österreich-Ungarn', 'Austria-Hungary');

INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('1', 'Do 1530 roku.', 'Bis 1530', 'Until 1530', '0', '1530');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('2', 'Zygmunt II August', 'Sigismund II. August', 'Sigismund II Augustus',  '1530', '1572');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('3', 'Henryk Walezy', 'Heinrich von Valois', 'Henry',  '1573', '1574');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('4', 'Anna Jagiellonka', 'Anna Jagiellonica', 'Anna',  '1575', '1576');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('5', 'Stefan Batory', 'Stephan Bathory', 'Stephen Bathory',  '1576', '1586');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('6', 'Zygmunt III Waza', 'Sigismund III.', 'Sigismund III',  '1587', '1632');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('7', 'Władysław IV Waza', 'Wladyslaw IV.', 'Wladyslaw IV',  '1632', '1648');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('8', 'Jan II Kazimierz Waza', 'Johann II. Kasimir', 'John II Casimir',  '1648', '1668');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('9', 'Michał Korybut Wiśnowiecki', 'Michael Korybut Wisniowiecki', 'Michael',  '1669', '1673');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('10', 'Jan III Sobieski', 'Johann III. Sobieski', 'John III Sobieski',  '1674', '1696');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('11', 'August II Mocny', 'August II. der Starke', 'Augustus the Strong',  '1698', '1733');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('12', 'Stanisław Leszczyński', 'Stanislaus I. Leszczynski', 'Stanislaus I',  '1704', '1736');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('13', 'August III Sas', 'August III.', 'Augustus III',  '1733', '1763');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('14', 'Stanisław August Poniatowski', 'Stanislaus II. August Poniatowski', 'Stanislaus II Augustus',  '1764', '1795');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('15', 'Księstwo Warszawskie', 'Herzogtum Warschau', 'Duchy of Warsaw',  '1807', '1815');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('16', 'Królestwo Polskie', 'Königreich Polen', 'Kingdom of Poland',  '1815', '1832');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('17', 'Do pierwszej wojny światowej', 'Bis zum Ersten Weltkrieg', 'Until First World War',  '1833', '1914');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('18', 'Pierwsza wojna światowa', 'Erster Weltkrieg', 'First World War',  '1914', '1918');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('19', 'Okres międzywojenny', 'Zwischen den Kriegen', 'Between the wars',  '1918', '1939');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('20', 'Druga wojna światowa', 'Zweiter Weltkrieg', 'Second World War',  '1939', '1945');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('21', 'Rzeczpospolia Polska Ludowa', 'Volksrepublik Polen', 'Polish Peoples Republic',  '1945', '1989');
INSERT INTO dr_epoch (id, epoch_pl, epoch_deu, epoch_eng, time_ab, time_bis) VALUES('22', 'Rzeczpospolia Polska ', 'Republik Polen', 'Republic of Poland',  '1990', '2999');

INSERT INTO dr_material (id, material_pl, material_deu, material_eng) VALUES('1', 'Złoto', 'Gold', 'Gold');
INSERT INTO dr_material (id, material_pl, material_deu, material_eng) VALUES('2', 'Srebro', 'Silber', 'Silver');
INSERT INTO dr_material (id, material_pl, material_deu, material_eng) VALUES('3', 'Brąz', 'Bronze', 'Bronze');
INSERT INTO dr_material (id, material_pl, material_deu, material_eng) VALUES('4', 'Tombak', 'Tombak', 'Tombac');
INSERT INTO dr_material (id, material_pl, material_deu, material_eng) VALUES('5', 'Tombak srebrzony', 'Tombak versilbert', 'Tombac coated with silver');
INSERT INTO dr_material (id, material_pl, material_deu, material_eng) VALUES('6', 'Cyna', 'Zinn', 'Tin');
INSERT INTO dr_material (id, material_pl, material_deu, material_eng) VALUES('7', 'Cynk', 'Zink', 'Zinc');
INSERT INTO dr_material (id, material_pl, material_deu, material_eng) VALUES('8', 'Cynk srebrzony', 'Zink versilbert', 'Zinc coated with silver');