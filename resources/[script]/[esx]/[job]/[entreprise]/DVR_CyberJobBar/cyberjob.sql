INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_cyber', 'cyber', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_cyber', 'cyber', 1),
  ('society_cyber_fridge', 'cyber (fridge)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    ('society_cyber', 'cyber', 1)
;

INSERT INTO `jobs` (name, label, whitelisted) VALUES
  ('cyber', 'cyber', 1)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('cyber', 0, 'barman', 'cybertender', 300, '{}', '{}'),
  ('cyber', 1, 'dancer', 'Dancer', 300, '{}', '{}'),
  ('cyber', 2, 'viceboss', 'Co-Manager', 500, '{}', '{}'),
  ('cyber', 3, 'boss', 'Manager', 600, '{}', '{}')
;


INSERT INTO `items` (`name`, `label`, `weight`) VALUES  
  ('patochebeer', 'Patoche Beer', 5),
  ('dvrcocktail', 'DVR cocktail', 5),
  ('milkdragon', 'Milk dragon', 5),
  ('duffbeer', 'Duff beer', 5),
  ('jamesbondcocktail', 'Jamesbond Cocktail', 5),
  ('scarfacecolada', 'Scarface Colada', 5),
  ('onepunchman', 'One Punch Man Cocktail', 5),
  ('dragonballcocktail', 'Dragon ball Cocktail', 5),
  ('hulkcockail', 'Hulk Cockail', 5),
  ('vitodaiquiri', 'Vito Daiquiri', 5),
  ('marvelcocktail', 'Marvel Cocktail', 5),
  ('yoshishooter', 'Yoshi shooter', 5)
;
