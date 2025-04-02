-- Create the database
CREATE DATABASE IF NOT EXISTS wisper_rate_reviews_db;

-- Switch to the created database
USE wisper_rate_reviews_db;

-- Create the contacts table
CREATE TABLE IF NOT EXISTS annapolis_cider_co_reviews (
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
INSERT INTO annapolis_cider_co_reviews (pseudoname, email, review, rating) VALUES
('Sarah M', 'sarahm@email.com', 'Amazing ciders! Loved the variety and the friendly atmosphere. The tasting room was a great place to relax and enjoy. Highly recommend!', '5 ★'),
('John H', 'johnh@email.com', 'I enjoyed my visit, but I was hoping for more options in the sweet cider range. Still, the dry ones were fantastic!', '4.5 ★'),
('Emily R', 'emilyr@email.com', 'Such a cozy spot! The ciders were delicious, especially the "Dandy". Would definitely come back when I’m in the area!', '5 ★'),
('Michael P', 'michaelp@email.com', 'Great experience, but the service could’ve been a little faster. The ciders were top-notch though!', '4 ★'),
('Laura W', 'lauraw@email.com', 'Really impressed by the quality of the ciders and the local, sustainable approach. Can’t wait to share them with friends!', '5 ★'),
('Kevin T', 'kevinT@email.com', 'Great tasting experience. The staff was knowledgeable, and the ciders were delicious. I’m a fan of the "Crimson".', '4.5 ★'),
('Natalie J', 'nataliej@email.com', 'I was expecting more variety of flavors. The ciders were good but not as exciting as I hoped for.', '3.5 ★'),
('Robert L', 'robertl@email.com', 'Fantastic experience! The view from the tasting room was beautiful, and the ciders were just as good. Will be back soon!', '5 ★'),
('Ava K', 'avak@email.com', 'Lovely spot! The "Dandy" cider is amazing. Perfect balance of dry and crisp. Worth a visit!', '4.5 ★'),
('James F', 'jamesf@email.com', 'A great way to spend an afternoon! Friendly service, tasty ciders, and beautiful surroundings. Definitely coming back!', '5 ★'),
('Olivia S', 'olivias@email.com', 'Nice place, but I didn’t find any ciders that were quite to my taste. Still, it’s worth checking out if you’re in the area.', '3 ★'),
('Liam C', 'liamc@email.com', 'The "Crimson" cider was a standout! Very refreshing and well-made. Friendly staff and great location. Highly recommend.', '5 ★');


-- Display the table structure
DESCRIBE annapolis_cider_co_reviews;