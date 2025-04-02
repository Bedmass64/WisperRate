-- Switch to the created database
USE wisper_rate_reviews_db;

-- Create the contacts table
CREATE TABLE IF NOT EXISTS millstone_harvest_brewhouse_reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pseudoname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    review VARCHAR(1000) NOT NULL,
    rating VARCHAR(50) NOT NULL,
    added TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE USER IF NOT EXISTS 'review_user'@'localhost' IDENTIFIED BY 'passw0rd';
GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON *.* TO 'review_user'@'localhost';

-- Insert sample data into the contacts table
INSERT INTO millstone_harvest_brewhouse_reviews (pseudoname, email, review, rating) VALUES
('Zoe P', 'zoep@email.com', 'Millstone Harvest is my go-to spot for a chill night out. The beer selection is on point, and the staff is super friendly. I love the pub atmosphere!', '5 ★'),
('Ethan M', 'ethanm@email.com', 'I had a blast at Millstone! The food was solid, and their seasonal brews hit the spot. Totally recommend trying the IPA if you like something hoppy!', '4.5 ★'),
('Maya L', 'mayal@email.com', 'The vibe at Millstone is awesome! Grabbed a burger and a beer, and it was exactly what I needed after a long week. Super chill place!', '5 ★'),
('Jack S', 'jacks@email.com', 'Had dinner here last night. Beer was tasty, food was good, and the service was quick. The perfect place to unwind and enjoy a cold one.', '4 ★'),
('Grace B', 'graceb@email.com', 'Totally enjoyed my visit to Millstone! The pulled pork sandwich was amazing, and the beer selection is perfect for any beer lover. Definitely coming back!', '5 ★'),
('Luke R', 'luker@email.com', 'Millstone is great for a casual hangout. The beer is cold, and the food is tasty. I had the fish and chips, and they were pretty solid. Can’t wait to go back!', '4 ★'),
('Olivia T', 'oliviat@email.com', 'Nice place to grab a drink with friends. The vibe is relaxed, and the beer menu is killer. I tried the amber ale, and it was so good!', '4.5 ★'),
('Ben C', 'benc@email.com', 'Great little spot! Grabbed a pint of their stout and the burger, and it was exactly what I was craving. I’ll definitely be back for more.', '5 ★'),
('Chloe A', 'chloea@email.com', 'Had a great time here! Their craft beers are top-notch, and the service was great. The food came out quick, and the steak was cooked perfectly!', '4.5 ★'),
('Henry F', 'henryf@email.com', 'Millstone Harvest is one of my favorite spots. The beers are always cold, and the food never disappoints. I especially love their roasted chicken. Always a good time!', '5 ★'),
('Lily J', 'lilyj@email.com', 'Really loved the vibe at Millstone. The staff is friendly, the food is tasty, and they’ve got a great variety of beers. Definitely a great place for an easy night out.', '4 ★'),
('Max W', 'maxw@email.com', 'Just tried Millstone for the first time and had a great experience. The food was decent, but the beer selection is what really stands out. Definitely worth checking out.', '4.5 ★'),
('Sophie D', 'sophied@email.com', 'Nice chill spot for good beer and comfort food. Their seasonal brews are awesome, and I really enjoyed the pretzels with beer cheese. Will be back soon!', '5 ★');



-- Display the table structure
DESCRIBE millstone_harvest_brewhouse_reviews;