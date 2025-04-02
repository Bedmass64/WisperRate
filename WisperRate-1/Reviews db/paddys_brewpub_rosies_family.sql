-- Switch to the created database
USE wisper_rate_reviews_db;

-- Create the contacts table
CREATE TABLE IF NOT EXISTS paddys_brewpub_rosies_family_reviews (
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
INSERT INTO paddys_brewpub_rosies_family_reviews (pseudoname, email, review, rating) VALUES
('Tara F', 'taraf@email.com', 'The atmosphere at Paddy\’s Brewpub & Rosie\’s is fantastic! The food was delicious, and their house-brewed beers were spot-on. Highly recommend the fish and chips!', '5 ★'),
('Liam W', 'liamw@email.com', 'Great pub with a cozy vibe. I had the steak and ale pie, which was hearty and flavorful. The craft beer selection is impressive too. A must-visit!', '4.5 ★'),
('Hannah K', 'hannahk@email.com', 'Paddy\’s Brewpub offers a great selection of beers and delicious food. The service was friendly and attentive. Loved the roasted chicken and mashed potatoes!', '5 ★'),
('Jacob P', 'jacobp@email.com', 'The food at Rosie\’s Restaurant is top-notch, and the staff are friendly. The atmosphere is laid back, but the beer selection at Paddy\’s really steals the show!', '4 ★'),
('Olivia T', 'oliviat@email.com', 'Paddy\’s Brewpub has become one of my favorite spots. The ambiance is perfect for a night out, and the crab cakes were simply divine. Will definitely return!', '5 ★'),
('Ryan D', 'ryand@email.com', 'We had a great time at Paddy\’s! The beer selection was extensive, and the shepherd\’s pie was hearty and delicious. A fantastic experience overall!', '4.5 ★'),
('Emily B', 'emilyb@email.com', 'Rosie\’s Restaurant has the best ambiance. I tried the lamb chops and they were cooked perfectly. Great beer selection as well. Highly recommend!', '5 ★'),
('Michael J', 'michaelj@email.com', 'The food and drink at Paddy\’s Brewpub were excellent. I had the burger and fries, and they were fantastic. The service was also friendly and efficient!', '4.5 ★'),
('Sophia L', 'sophial@email.com', 'Paddy\’s Brewpub & Rosie\’s Restaurant never disappoints. I loved the smoked salmon and the variety of beers they offer. Perfect place to unwind with friends!', '5 ★'),
('David H', 'davidh@email.com', 'Rosie\’s Restaurant has a cozy and welcoming vibe. I tried the seafood platter, which was fresh and flavorful. Definitely coming back for more!', '5 ★'),
('Emma C', 'emmac@email.com', 'I loved the pub atmosphere at Paddy\’s. The beers were great, and I had a tasty chicken pot pie. Definitely a spot I\’ll be returning to.', '4.5 ★'),
('Ethan R', 'ethanr@email.com', 'Paddy\’s Brewpub is fantastic! The food was delicious, and the beers are brewed in-house. The service was friendly, and I had a great time there.', '4 ★'),
('Isabella N', 'isabellan@email.com', 'Rosie\’s Restaurant has the best fish tacos I\’ve ever had! Paired perfectly with one of their craft beers. A great spot for lunch or dinner.', '5 ★'),
('Chloe P', 'chloep@email.com', 'I had a great time at Paddy\’s Brewpub. The Irish stew was hearty and comforting, and the beer selection is one of the best in the area. Will definitely be back!', '5 ★'),
('Benjamin W', 'benjaminw@email.com', 'The food and drinks were amazing at Paddy\’s Brewpub. The smoked brisket sandwich was perfectly cooked, and I loved their IPA selection. Great place for a night out.', '4.5 ★'),
('Charlotte H', 'charlotteh@email.com', 'Paddy\’s Brewpub & Rosie\’s Restaurant is the perfect combination of good food and great beer. I had the fish and chips, and the portion was generous and tasty!', '5 ★'),
('Zachary M', 'zacharym@email.com', 'The service was friendly, and the food at Rosie\’s Restaurant was delicious. I highly recommend their pork belly dish and pairing it with one of their house-brewed beers!', '4.5 ★'),
('Amelia G', 'ameliag@email.com', 'The burger I had at Paddy\’s Brewpub was amazing! I paired it with a seasonal beer, which was fantastic. Will definitely be back to try more menu items!', '5 ★'),
('Jack L', 'jackl@email.com', 'Great food, great beer, and a wonderful atmosphere at Paddy\’s Brewpub & Rosie\’s Restaurant. I tried the Guinness stew, and it was hearty and satisfying. Will be back!', '4.5 ★'),
('Grace S', 'graces@email.com', 'The food was outstanding at Rosie\’s Restaurant, and the service was very friendly. The beer pairing recommendations were spot-on. Great place to relax with friends.', '5 ★'),
('Ryan T', 'ryant@email.com', 'The food was decent, but I was really impressed by the beer selection at Paddy\’s Brewpub. The atmosphere was lively, and the service was quick.', '4 ★'),
('Olivia M', 'oliviam@email.com', 'Paddy\’s Brewpub & Rosie\’s Restaurant offers a fantastic dining experience. The food was delicious, especially the grilled salmon, and the beer was cold and refreshing.', '5 ★'),
('Henry K', 'henryk@email.com', 'Really enjoyed my visit to Paddy\’s Brewpub. The food was solid, and the beer selection is top-notch. Would have liked a few more vegetarian options, but overall, a great experience.', '4 ★'),
('Lily C', 'lilyc@email.com', 'The food at Rosie\’s Restaurant was incredible! The fish and chips were crispy and delicious. Plus, the craft beer selection at Paddy\’s is perfect for any beer lover.', '5 ★'),
('Samuel G', 'samuelg@email.com', 'Paddy\’s Brewpub has a fantastic selection of beers, but the food was just average. I had the chicken wings, and they were good but nothing special.', '3.5 ★'),
('Zoe D', 'zoed@email.com', 'I love the vibes at Paddy\’s Brewpub! The Irish stew was hearty and the beer was great. The staff were very friendly and helpful with recommendations. Highly recommend it!', '4.5 ★');



-- Display the table structure
DESCRIBE paddys_brewpub_rosies_family_reviews;