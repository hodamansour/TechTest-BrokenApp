-- DONT CHANGE THIS FILE
BEGIN;

DROP TABLE IF EXISTS animals CASCADE;

CREATE TABLE animals (
  id SERIAL PRIMARY KEY,
  animal_name VARCHAR(30) NOT NULL,
  img_link VARCHAR(200),
  habitat VARCHAR(200),
  origin VARCHAR(200),
  facts TEXT,
  myths TEXT
);

INSERT INTO animals (animal_name, img_link, habitat, origin, facts, myths) VALUES
  ('elephant', '/assets/animals/elephant.jpeg', 'Lives in the toundra in Africa.', 'Africa', 'big animal', 'the long lost elephant'),
  ('tiger', '/assets/animals/tiger.jpeg', 'Lives in the jungle', 'Somewhere in the jungle', 'Likes to roar', 'The tiger and the dragon'),
  ('koala', '/assets/animals/koala.jpeg', 'The forest', 'Asia', 'So cute!', 'Something cute'),
  ('kangoroo', '/assets/animals/kangoroo.jpeg', 'The forest', 'Australia', 'Has a pocket', 'The bouncing Kangoroo'),
  ('lion', '/assets/animals/lion.jpeg', 'The JUNGLE', 'Africa', 'Imposing', 'The lion King'),
  ('giraffe', '/assets/animals/giraffe.jpeg', 'The plains of Africa', 'Unknown', 'Has long neck', 'Giraffe and friends'),
  ('antilope', '/assets/animals/antilope.jpeg', 'The plains', 'no idea', 'Runs very fast', 'The champion antilope');

COMMIT;
