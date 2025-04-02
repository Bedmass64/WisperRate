-- Switch to the created database
USE wisper_rate_reviews_db;

-- Create the contacts table
CREATE TABLE IF NOT EXISTS tangled_garden_reviews (
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
INSERT INTO tangled_garden_reviews (pseudoname, email, review, rating) VALUES
('Lily S', 'lilys@email.com', 'Tangled Garden is such a cool spot! The food is fresh and tasty, especially their homemade jams. The garden setting is super relaxing and just makes the whole experience so nice.', '5 ★'),
('Ethan G', 'ethang@email.com', 'What a chill place! The atmosphere is peaceful, and the food was really good. I especially liked the pies. The garden around you makes it feel like you\’re eating in nature.', '4.5 ★'),
('Sophia M', 'sophiam@email.com', 'Tangled Garden is alright. The food was fresh, but I expected a little more variety in the menu. The garden is nice, though, and adds a relaxing touch to the experience.', '3.5 ★'),
('Benjamin T', 'benjamint@email.com', 'Had a good time here. The food was decent, and the setting is beautiful. I was hoping the jam would be a bit more flavorful, but overall, it\’s a nice place to visit.', '4 ★'),
('Chloe W', 'chloew@email.com', 'The atmosphere is amazing at Tangled Garden. The food was fresh, but some of the dishes didn\’t stand out as much as I thought they would. Still, it\’s a pretty spot to visit.', '3 ★'),
('Jack R', 'jackr@email.com', 'Tangled Garden is a lovely spot! The food was tasty, and the setting in the garden makes it a perfect place to relax. I highly recommend the homemade breads—they\’re so good!', '5 ★'),
('Olivia D', 'oliviad@email.com', 'Tangled Garden is pretty, but I wasn\’t blown away by the food. It\’s fresh, but there wasn\’t much variety. The garden, though, is a great place to relax while you eat.', '3 ★'),
('Noah F', 'noahf@email.com', 'I had a nice time here. The food was okay, but I expected more from the fresh ingredients they use. The garden was lovely, though, and I enjoyed sitting outside.', '3.5 ★'),
('Emma J', 'emmaj@email.com', 'Tangled Garden is such a beautiful spot. The food was great, but I felt some dishes were a little overpriced for what you get. Still, the vibe and surroundings make it a nice experience.', '4 ★'),
('Ava K', 'avak@email.com', 'The food was decent, but I think the garden atmosphere is the real highlight here. It\’s a nice place to enjoy a relaxed meal, but don\’t expect anything too fancy with the food.', '2.5 ★'),
('Mason P', 'masonp@email.com', 'I\’ve been to better places. The food was fine, but the menu didn\’t have much variety. The garden is beautiful, though, and that definitely makes it a nice place to hang out for a bit.', '3 ★'),
('Grace L', 'gracel@email.com', 'The food at Tangled Garden was just okay. It\’s fresh, but I was hoping for a bit more flavor. The garden setting is really nice, though, so it\’s still worth a visit if you enjoy nature.', '2 ★'),
('Liam F', 'liamf@email.com', 'Tangled Garden didn\’t impress me much. The food was mediocre, and while the garden is pretty, I felt like the food could be more exciting for the price. Not sure I\’ll be coming back anytime soon.', '2 ★');



-- Display the table structure
DESCRIBE tangled_garden_reviews;