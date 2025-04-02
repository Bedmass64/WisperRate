-- Switch to the created database
USE wisper_rate_reviews_db;

-- Create the contacts table
CREATE TABLE IF NOT EXISTS the_naked_crepe_bistro_inc_reviews (
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
INSERT INTO the_naked_crepe_bistro_inc_reviews (pseudoname, email, review, rating) VALUES
('Madeline L', 'madelinel@email.com', 'The crepes here are out of this world! I had the Nutella and banana crepe, and it was the perfect combination of sweet and delicious. Definitely coming back for more!', '5 ★'),
('Caleb M', 'calebm@email.com', 'Amazing savory crepes! I had the ham and cheese crepe, and it was so flavorful. The iced coffee was a great pairing too. A lovely place to visit!', '4.5 ★'),
('Isabelle T', 'isabellet@email.com', 'Such a cozy spot with delicious crepes! I tried the sweet berry crepe and paired it with an iced latte. Highly recommend this place for a sweet treat!', '5 ★'),
('Samuel P', 'samuelp@email.com', 'The crepes were good, but the coffee could use a little more flavor. I’ll definitely be back for the savory options though—they were fantastic!', '4 ★'),
('Amelia S', 'amelias@email.com', 'I had the savory crepe with chicken and spinach, and it was absolutely delicious! The cold beverages are refreshing and complement the food perfectly.', '5 ★'),
('Oliver H', 'oliverh@email.com', 'This is my new go-to for a quick and tasty meal. The sweet crepes are great, and the coffee is just right for a pick-me-up. Love the cozy ambiance too!', '4.5 ★'),
('Lila R', 'lilar@email.com', 'Perfect spot for brunch! The crepes are light and fluffy, and the iced tea was so refreshing. I can’t wait to try more options next time!', '5 ★'),
('Maxwell B', 'maxwellb@email.com', 'Great selection of sweet and savory crepes. The ham, cheese, and mushroom crepe was a hit. I also really enjoyed the cold coffee drinks.', '4 ★'),
('Sienna V', 'siennav@email.com', 'Delicious crepes and great atmosphere! The Nutella crepe with strawberries was heavenly. Perfect for a quick snack or casual lunch!', '5 ★'),
('Ethan K', 'ethank@email.com', 'The sweet crepes were good, but I think the savory ones are the standout here. I loved the one with smoked salmon and cream cheese!', '4.5 ★'),
('Chloe D', 'chloed@email.com', 'I love the variety of both sweet and savory options! The crepes are made fresh, and the iced coffee was the perfect treat on a hot day.', '5 ★'),
('Sebastian W', 'sebastianw@email.com', 'I had a savory crepe with bacon, eggs, and cheese. It was delicious, but I would love to see more variety in the sweet crepes. Still, great food overall!', '4 ★'),
('Aria C', 'ariac@email.com', 'I had a savory crepe with spinach and feta, and it was packed with flavor. The cold brew coffee was amazing. Can’t wait to come back and try more!', '5 ★'),
('Owen J', 'owenj@email.com', 'This place never disappoints! I had a sweet crepe with chocolate and strawberries. So tasty! The iced tea is always so refreshing here too.', '5 ★'),
('Tessa G', 'tessag@email.com', 'The crepes are very good, but the service could have been a bit quicker. The food was fresh, and I really enjoyed the cold lemonade with my meal.', '4 ★'),
('Mason D', 'masond@email.com', 'I’m obsessed with their sweet crepes! I had the caramel and apple crepe, and it was amazing. The coffee was simple but good as well.', '5 ★'),
('Nolan T', 'nolant@email.com', 'The savory crepes were delicious, especially the one with roasted vegetables. The coffee is basic but still good for a caffeine fix. Highly recommend!', '4.5 ★'),
('Elena B', 'elenab@email.com', 'Great experience! The sweet crepes are amazing, and I really loved the cold brew coffee. The atmosphere is warm and welcoming too.', '5 ★'),
('Jaxon F', 'jaxonf@email.com', 'I really liked the crepes here. The Nutella and strawberry crepe was a sweet treat, but I wish the savory menu had more options. Overall, a great place.', '4 ★'),
('Audrey V', 'audreyv@email.com', 'I love how you can have a sweet or savory option. The crepes are always made to order, and the cold beverages really hit the spot. Will be back soon!', '5 ★'),
('Reed S', 'reeds@email.com', 'The food was really good, but I wasn’t blown away by the iced coffee. It’s still a great spot for a casual meal, especially with friends!', '4 ★'),
('Quinn P', 'quinnp@email.com', 'Great experience all around. The sweet crepes are perfect for a treat, and the cold beverages are very refreshing. Definitely a place to visit on a warm day!', '4.5 ★'),
('Jade L', 'jadel@email.com', 'The crepes here are tasty, but I wish they had more drink options. The coffee was decent, though. Overall, a great casual spot for crepes and a snack.', '4 ★');



-- Display the table structure
DESCRIBE the_naked_crepe_bistro_inc_reviews;