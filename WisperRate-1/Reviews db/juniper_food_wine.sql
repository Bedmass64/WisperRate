-- Switch to the created database
USE wisper_rate_reviews_db;

-- Create the contacts table
CREATE TABLE IF NOT EXISTS juniper_food_wine_reviews (
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
INSERT INTO juniper_food_wine_reviews (pseudoname, email, review, rating) VALUES
('Sophia G', 'sophiag@email.com', 'What a fantastic experience! The food was delicious and paired perfectly with the wine. The atmosphere was cozy and inviting. Highly recommend!', '5 ★'),
('Ethan W', 'ethanw@email.com', 'Amazing selection of wines! The food was exceptional too—each dish was beautifully presented and bursting with flavor. Definitely a place to return to!', '4.5 ★'),
('Lily P', 'lilyp@email.com', 'Had a lovely evening here. The wine list was diverse, and the food was delicious. I especially enjoyed the grilled salmon paired with a crisp white wine!', '4 ★'),
('James T', 'jamest@email.com', 'Fantastic spot for a night out. The service was excellent, and the wine was top-notch. I would have liked a few more options on the menu, though.', '4 ★'),
('Emma L', 'emmal@email.com', 'This is my new favorite place for food and wine. The staff is knowledgeable and guided us to some great wine pairings. The pasta was incredible!', '5 ★'),
('Jack B', 'jackb@email.com', 'Really enjoyed my time here. The food was tasty, but the wine list could have been a bit more diverse. Still, the pairing suggestions were spot-on!', '4 ★'),
('Olivia R', 'oliviar@email.com', 'Great ambiance, wonderful wine selection, and the food was absolutely delicious. The steak I had was cooked to perfection. Can’t wait to go back!', '5 ★'),
('Aiden F', 'aidenf@email.com', 'A great spot for a relaxing evening with friends. The wine was amazing, and the appetizers were perfect for sharing. Highly recommend the bruschetta!', '4.5 ★'),
('Isabella S', 'isabellas@email.com', 'The food and wine were fantastic! I had the duck, and it paired beautifully with a rich red wine. The only downside was the wait time, but totally worth it!', '4 ★'),
('Mason H', 'masonh@email.com', 'A wonderful place for a date night. The wine selection was impressive, and the food was exquisite. The tiramisu was the perfect way to end the meal!', '5 ★'),
('Chloe D', 'chloed@email.com', 'Such a great atmosphere and the food was delicious! I tried the cheese board with a lovely Sauvignon Blanc. The flavors were perfect together.', '4.5 ★'),
('Lucas K', 'lucask@email.com', 'The food and wine were excellent, but the service was a bit slow. Still, the quality of the food made up for it. Highly recommend the risotto!', '4 ★'),
('Amelia J', 'ameliaj@email.com', 'A hidden gem! The food was amazing, and the wine list was impressive. The staff made great recommendations and were very friendly. Will be back for sure!', '5 ★'),
('Henry M', 'henrym@email.com', 'The food was good, but the wine pairing didn’t quite match my preferences. Still, the place had a nice vibe and I enjoyed the evening overall.', '3.5 ★'),
('Charlotte V', 'charlottev@email.com', 'A fantastic dining experience. The wine was carefully selected to pair with each dish, and the food was bursting with flavor. Worth every penny!', '5 ★'),
('Zoe C', 'zoec@email.com', 'Great place for a meal with a glass of wine. The steak was perfect, but I would have liked a bit more variety in the dessert options.', '4 ★'),
('Benjamin P', 'benjaminp@email.com', 'The food was absolutely delicious, and the wine pairings were exceptional. However, it was a little on the pricey side. Worth it for a special occasion though!', '4.5 ★'),
('Grace A', 'gracea@email.com', 'Wonderful food, fantastic service, and a superb selection of wines. The atmosphere was cozy and elegant. I’ll be recommending this place to all my friends!', '5 ★');



-- Display the table structure
DESCRIBE juniper_food_wine_reviews;