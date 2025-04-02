-- Switch to the created database
USE wisper_rate_reviews_db;

-- Create the contacts table
CREATE TABLE IF NOT EXISTS old_orchard_inn_reviews (
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
INSERT INTO old_orchard_inn_reviews (pseudoname, email, review, rating) VALUES
('Hannah S', 'hannahs@email.com', 'The food at the Inn’s restaurant is great for the price! It’s not fancy, but everything was fresh, and the atmosphere is relaxed. I loved the cozy vibe!', '4 ★'),
('Oscar J', 'oscarj@email.com', 'I had a lovely meal here. The food was simple but tasty, and the service was friendly. It\’s not the most gourmet experience, but it\’s definitely good value for money.', '4.5 ★'),
('Claire T', 'clairet@email.com', 'The restaurant at the inn is pretty good. The menu isn’t huge, but the food we had was fresh and flavorful. I was hoping for a little more variety, but overall it\’s solid.', '3.5 ★'),
('Liam B', 'liamb@email.com', 'Nice spot for a relaxed meal. The food was tasty, though nothing too exciting. It\’s not too expensive, which makes it a great option when you’re staying at the Inn.', '3 ★'),
('Mia F', 'miaf@email.com', 'Had a nice dinner here after a spa day. The food was tasty, and the service was great. It\’s an affordable option and definitely hits the spot when you\’re looking for something comforting.', '4.5 ★'),
('Lucas W', 'lucasw@email.com', 'The restaurant is fine for what it is. The food is decent, but it\’s nothing to write home about. I was expecting a little more, especially considering the spa experience. It\’s good but not amazing.', '3 ★'),
('Ella D', 'ellad@email.com', 'Had a nice lunch here. The food was light and satisfying. It\’s not too expensive, and the atmosphere is relaxing. Definitely a good choice if you\’re staying at the inn.', '4 ★'),
('Ryan K', 'ryank@email.com', 'It\’s a good spot to grab a bite after a day of pampering. The food was simple but well-prepared. I wouldn\’t say it\’s anything extraordinary, but it\’s definitely worth the price.', '3.5 ★'),
('Isabel H', 'isabelh@email.com', 'I really enjoyed my meal at the inn’s restaurant. The staff was friendly, and the food was good, especially for the price. It’s a great casual place to eat, and the ambiance is cozy.', '4.5 ★'),
('Jackson P', 'jacksonp@email.com', 'The restaurant was fine. Nothing fancy, but the food was decent for the price. I was hoping for a little more creativity in the menu, but it\’s a good option if you\’re staying at the Inn.', '3 ★'),
('Sophia N', 'sophian@email.com', 'I had a great time here! The food was good, and the setting is nice and relaxed. It\’s a great value for the price, and the service was friendly. I\’ll definitely come back if I stay at the Inn again.', '4 ★');


-- Display the table structure
DESCRIBE old_orchard_inn_reviews;