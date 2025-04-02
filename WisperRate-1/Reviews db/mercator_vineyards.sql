-- Switch to the created database
USE wisper_rate_reviews_db;

-- Create the contacts table
CREATE TABLE IF NOT EXISTS mercator_vineyards_reviews (
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
INSERT INTO mercator_vineyards_reviews (pseudoname, email, review, rating) VALUES
('Mason V', 'masonv@email.com', 'Such a great spot! The wine was crisp and refreshing, especially the whites. Perfect place for a relaxed afternoon, and the vineyard views are breathtaking!', '5 ★'),
('Zoe W', 'zoew@email.com', 'Loved the scenery here! The white wines were lovely and refreshing, though the reds were a bit too light for my taste. Still, I had a wonderful time!', '4 ★'),
('Theo D', 'theod@email.com', 'Had a nice time visiting, but I found the wine to be a bit too mild for my liking. The whites were okay, but I was hoping for something more full-bodied in the reds.', '3.5 ★'),
('Lena F', 'lenaf@email.com', 'The sparkling wine was incredible—super light and bubbly! I was surprised by how fresh the whites tasted. Great vibe at the vineyard, very relaxing.', '5 ★'),
('James K', 'jamesk@email.com', 'This place has a fantastic atmosphere, and the wine is good for the price. The whites were refreshing, but the reds could’ve had a bit more depth.', '3 ★'),
('Chloe G', 'chloeg@email.com', 'I loved the experience here. The wines were really crisp, especially the Sauvignon Blanc. It’s a beautiful spot for a wine tasting, and the staff were lovely!', '4.5 ★'),
('Benjamin F', 'benjaminf@email.com', 'The vineyard setting is gorgeous, but I wasn’t too impressed with the wine. The whites were okay, but the reds just didn’t have the richness I enjoy. Still a nice experience though.', '3 ★'),
('Lily A', 'lilya@email.com', 'This is such a lovely vineyard. I loved their sparkling wine—it was perfect for the warm weather! The staff was friendly, and the setting was just beautiful for a relaxing day.', '4.5 ★'),
('Aaron T', 'aaront@email.com', 'Had a great time here. The wine wasn’t the best I’ve had, but the experience itself was fantastic. The whites were light and crisp, and the atmosphere was really peaceful.', '3.5 ★'),
('Maya S', 'mayas@email.com', 'The wines here are perfect for those who love crisp, refreshing whites. The reds were a bit too light for my preference, but I still enjoyed the visit. The vineyard is stunning!', '4 ★'),
('Oliver H', 'oliverh@email.com', 'Had a relaxing afternoon at this vineyard. The wine was decent, though the reds didn’t stand out. The whites were nice, but I expected a little more variety overall.', '3 ★'),
('Eva B', 'evab@email.com', 'The vineyard is beautiful, and the wine is really good! I especially enjoyed the Chardonnay—it had such a fresh taste. The reds were a bit lighter than I expected, but still enjoyable.', '4.5 ★'),
('Milo P', 'milop@email.com', 'The sparkling wine was the highlight for me—so light and refreshing! The rest of the wines were okay, but nothing to write home about. Still, a nice spot to spend a day.', '3 ★'),
('Zara J', 'zaraj@email.com', 'Such a beautiful place to visit! I really liked their Riesling—so crisp and fresh. The reds were a little too subtle for me, but overall I had a great time!', '4 ★'),
('Aidan W', 'aidanw@email.com', 'The vineyard is stunning, and the whites are lovely, especially the Sauvignon Blanc. However, I was hoping for a bit more complexity in the reds. It’s still a relaxing and enjoyable spot!', '3.5 ★'),
('Scarlett C', 'scarlettc@email.com', 'What a peaceful place! The wine was great, and the staff really made the tasting experience fun. The whites were very refreshing, and the vineyard views were beautiful.', '5 ★'),
('Jonah M', 'jonahm@email.com', 'Had a good time here, though the wine didn’t quite live up to expectations. The whites were fine, but the reds were too light for my liking. Still, the vineyard was beautiful, and the staff was welcoming.', '3 ★'),
('Lara N', 'laran@email.com', 'Loved visiting this vineyard! The sparkling wine was a hit, and I really enjoyed the crispness of the white wines. The reds didn’t stand out to me, but it’s a nice spot for a leisurely afternoon.', '4 ★'),
('Leo R', 'leor@email.com', 'Nice spot to visit if you’re looking for a relaxing day out. The wines were good, but not extraordinary. The whites were refreshing, though the reds could’ve used more depth.', '3.5 ★'),
('Isla T', 'islat@email.com', 'I had a lovely time at the vineyard! The wine was light and crisp, just what I wanted. The staff was so friendly, and the location made for a perfect getaway. Highly recommend!', '5 ★');


-- Display the table structure
DESCRIBE mercator_vineyards_reviews;