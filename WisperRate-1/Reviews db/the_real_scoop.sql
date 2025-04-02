-- Create the database
CREATE DATABASE IF NOT EXISTS wisper_rate_reviews_db;

-- Switch to the created database
USE wisper_rate_reviews_db;

-- Create the contacts table
CREATE TABLE IF NOT EXISTS the_real_scoop_reviews (
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
INSERT INTO the_real_scoop_reviews (pseudoname, email, review, rating) VALUES
('Samantha R.', 'samanthar23@wisperrate.com', 'Absolutely love this ice cream shop! The variety of flavors is incredible, and they always have something new to try. The staff is friendly, and the atmosphere is so cozy. My go-to spot for a sweet treat!', '5 ★'),
('John D.', 'johndoe88@wisperrate.com', 'Great place for a quick ice cream fix! The flavors are rich and creamy, though I wish they had more dairy-free options. Overall, a solid experience, and I’ll definitely be coming back for more!', '4 ★'),
('Lily M.', 'lilym34@wisperrate.com', 'The best ice cream I’ve ever had! I’m a huge fan of their seasonal flavors. Always something new and exciting. Highly recommend!', '5 ★'),
('Chris W.', 'chrisw99@wisperrate.com', 'Good ice cream but a bit overpriced for the portion sizes. Still a solid experience overall and very friendly staff!', '4 ★'),
('Anna G.', 'annag12@wisperrate.com', 'Love the variety of flavors here! I always end up trying something new and never regret it. The waffle cones are amazing too.', '5 ★'),
('Peter H.', 'peterh77@wisperrate.com', 'The ice cream is good, but the lines are usually long, especially during the weekends. I wish they had more seating inside!', '3 ★'),
('Mia S.', 'mias23@wisperrate.com', 'I’ve been coming here for years, and it’s never let me down. The chocolate fudge sundae is my favorite. Staff is always so friendly!', '5 ★'),
('Luke P.', 'lukep56@wisperrate.com', 'Nice ice cream, but I’ve had better elsewhere. The place itself is cozy, though, and worth checking out if you’re in the area.', '3 ★'),
('Grace T.', 'gracet88@wisperrate.com', 'A hidden gem! The flavor combinations are out of this world. I love the salted caramel crunch! Can’t wait to visit again!', '5 ★'),
('Oscar J.', 'oscarj21@wisperrate.com', 'Pretty good, but I found the ice cream to be a bit too sweet for my liking. Still, a solid spot for dessert!', '3 ★'),
('Natalie B.', 'natalieb57@wisperrate.com', 'I adore this ice cream shop! The mango sorbet is incredible, and the outdoor seating makes it perfect for summer days.', '5 ★'),
('Ethan V.', 'ethanv93@wisperrate.com', 'The vanilla is fantastic, but I’m not a huge fan of their chocolate. Still a great place overall, especially if you like fruity flavors.', '4 ★'),
('Zoe K.', 'zoek24@wisperrate.com', 'Incredible ice cream! I love how they have so many unique options, like lavender honey and coconut lime. Definitely worth the visit.', '5 ★'),
('Jack F.', 'jackf82@wisperrate.com', 'Ice cream is good, but the wait time is way too long, especially if you go during peak hours. Needs to speed up service.', '2 ★'),
('Nina C.', 'ninac67@wisperrate.com', 'Amazing place with an awesome atmosphere! Love their variety of toppings and the ability to create your own custom sundae.', '5 ★'),
('Will R.', 'willr49@wisperrate.com', 'The ice cream is great, but the portions could be a bit bigger for the price. Overall, a fun place for a treat.', '4 ★'),
('Sophia P.', 'sophiap93@wisperrate.com', 'I’ve been coming here for months, and the consistency of the flavors is impressive. Always creamy and flavorful. Definitely a must-try!', '5 ★'),
('Oliver M.', 'oliverm65@wisperrate.com', 'Delicious flavors, but the location is a bit small. If you’re looking for a quiet spot, it’s best to go during off-peak hours.', '3 ★'),
('Charlotte W.', 'charlottew78@wisperrate.com', 'A must-visit if you love ice cream! Their unique toppings are the best part. Can’t get enough of the caramelized nuts!', '5 ★'),
('Eliot J.', 'eliotj84@wisperrate.com', 'Very good ice cream, though I’d prefer if they had a few more vegan options. The staff is always kind, though, and the place has a great vibe!', '4 ★'),
('Riley D.', 'rileyd92@wisperrate.com', 'Best ice cream in town! The pistachio flavor is my favorite, and they always serve it fresh. Can’t go wrong with this spot!', '5 ★');

-- Display the table structure
DESCRIBE the_real_scoop_reviews;