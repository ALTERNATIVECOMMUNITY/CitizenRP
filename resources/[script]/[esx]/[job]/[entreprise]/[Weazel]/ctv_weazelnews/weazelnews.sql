

INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_weazelnews','Weazel News',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_weazelnews','Weazel News',1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('weazelnews','Weazel News')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('weazelnews',0,'recrue','Stagiaire',12,'{}','{}'),
    ('weazelnews',1,'cadreur','Cadreur',12,'{}','{}'),
      ('weazelnews',2,'journaliste','Journaliste',12,'{}','{}'),
      ('weazelnews',2,'grandreport','Grand Reportaire',12,'{}','{}'),
        ('weazelnews',3,'redac','Rédacteur en chef',12,'{}','{}'),
  ('weazelnews',1,'boss','Patron',24,'{}','{}')
;
