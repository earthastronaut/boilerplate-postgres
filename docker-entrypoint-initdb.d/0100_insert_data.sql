
INSERT INTO mytable (name, description) VALUES 
    ('tron', 'a digital world'),
    ('firefly', 'cowboys in space')
;

UPDATE mytable
SET
    description='the grid'
WHERE 
   name='tron'
;