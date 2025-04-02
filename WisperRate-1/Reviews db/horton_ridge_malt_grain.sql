-- Switch to the created database
USE wisper_rate_reviews_db;

-- Create the contacts table
CREATE TABLE IF NOT EXISTS horton_ridge_malt_grain_reviews (
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
INSERT INTO horton_ridge_malt_grain_reviews (pseudoname, email, review, rating) VALUES
('Daniel K', 'danielk@email.com', 'Horton Ridge provides top-notch malts! The quality is unmatched, and it’s great to support a local company. Highly recommend to any craft brewers!', '5 ★'),
('Emma J', 'emmaj@email.com', 'I’ve been using Horton Ridge for my brewery for a while now. Their malts really make a difference in the taste of our beers. Great customer service too!', '4.5 ★'),
('Chris P', 'chrisp@email.com', 'Fantastic quality malt. It’s nice to have a local option with such consistent product. Would love to see more varieties in the future!', '4 ★'),
('Sophia W', 'sophiaw@email.com', 'Great experience! The malt from Horton Ridge adds a unique flavor to our brews. Local and high-quality. What’s not to love?', '5 ★'),
('George L', 'georgel@email.com', 'We’ve been using Horton Ridge for our distillery. The malt and grain are perfect for our spirits. Excellent local option for Nova Scotia!', '5 ★'),
('Laura T', 'laurat@email.com', 'The malt quality is always excellent. It’s clear they care about the grains and the environment. Love supporting local businesses!', '4.5 ★'),
('Ryan F', 'ryanf@email.com', 'I tried their malts for the first time in my homebrewing, and I’m very impressed. Smooth, rich flavor. I’ll definitely be coming back!', '5 ★'),
('Olivia B', 'oliviab@email.com', 'Great product, but the prices are a bit high compared to some other options. Still, you can taste the quality, and it’s worth it for our brewery.', '4 ★'),
('Mason C', 'masonc@email.com', 'As a local business owner, I can’t recommend Horton Ridge enough. They provide a fantastic product and the customer service is excellent.', '5 ★'),
('Ava S', 'avas@email.com', 'The malts from Horton Ridge bring out a special character in our beers. We can really taste the difference in quality. Definitely worth checking out.', '5 ★'),
('William D', 'williamd@email.com', 'Love supporting local producers. The malts are top quality and have helped elevate our brewing process. Will be ordering more!', '4.5 ★'),
('Isabella M', 'isabellam@email.com', 'I’ve used many malts in my brewing, but Horton Ridge offers the best consistency and flavor. Their malts really stand out.', '5 ★'),
('James T', 'jamest@email.com', 'Great products, but the shipping process could be a bit smoother. Overall, I’m happy with the malts and will continue using them for my brewery.', '4 ★'),
('Liam A', 'liama@email.com', 'Fantastic service and quality malts! We’ve been getting our grains from them for months now, and they never disappoint. Highly recommend.', '5 ★'),
('Evelyn R', 'evelynr@email.com', 'The malt I got from Horton Ridge was a game-changer for my homebrew. The flavor was so much better than what I’ve had before. Love it!', '5 ★'),
('Lucas V', 'lucasv@email.com', 'Horton Ridge always delivers. Their malts have become a crucial ingredient for my brewery, and I wouldn’t go anywhere else.', '5 ★'),
('Chloe N', 'chloen@email.com', 'It’s great to know I’m supporting a local business that cares about sustainability. The quality of their malt is exceptional, and the service is fantastic.', '4.5 ★'),
('Henry G', 'henryg@email.com', 'Love using locally grown grains in my brewing! The malts from Horton Ridge are some of the best I’ve worked with. Definitely worth trying.', '5 ★'),
('Grace F', 'gracef@email.com', 'I’ve tried other malts, but nothing compares to the richness of Horton Ridge. The flavor they bring to my brews is unmatched!', '5 ★'),
('Jack L', 'jackl@email.com', 'Horton Ridge is a solid choice for craft brewers. I’d love to see them expand their offerings, but the current selection is fantastic.', '4.5 ★'),
('Mia D', 'miad@email.com', 'The malt from Horton Ridge always delivers the right flavor. It’s perfect for both beer and spirits. Highly recommend to anyone looking for quality.', '5 ★'),
('Noah W', 'noahw@email.com', 'Really happy with the service and quality of malts. It’s great to have a local option for craft brewing. Their products have been consistently amazing!', '5 ★');
('Daniel K', 'danielk@email.com', 'Horton Ridge provides top-notch malts! The quality is unmatched, and it’s great to support a local company. Highly recommend to any craft brewers!', '5 ★'),
('Emma J', 'emmaj@email.com', 'I’ve been using Horton Ridge for my brewery for a while now. Their malts really make a difference in the taste of our beers. Great customer service too!', '4.5 ★'),
('Chris P', 'chrisp@email.com', 'Fantastic quality malt. It’s nice to have a local option with such consistent product. Would love to see more varieties in the future!', '4 ★'),
('Sophia W', 'sophiaw@email.com', 'Great experience! The malt from Horton Ridge adds a unique flavor to our brews. Local and high-quality. What’s not to love?', '5 ★'),
('George L', 'georgel@email.com', 'We’ve been using Horton Ridge for our distillery. The malt and grain are perfect for our spirits. Excellent local option for Nova Scotia!', '5 ★'),
('Laura T', 'laurat@email.com', 'The malt quality is always excellent. It’s clear they care about the grains and the environment. Love supporting local businesses!', '4.5 ★'),
('Ryan F', 'ryanf@email.com', 'I tried their malts for the first time in my homebrewing, and I’m very impressed. Smooth, rich flavor. I’ll definitely be coming back!', '5 ★'),
('Olivia B', 'oliviab@email.com', 'Great product, but the prices are a bit high compared to some other options. Still, you can taste the quality, and it’s worth it for our brewery.', '4 ★'),
('Mason C', 'masonc@email.com', 'As a local business owner, I can’t recommend Horton Ridge enough. They provide a fantastic product and the customer service is excellent.', '5 ★'),
('Ava S', 'avas@email.com', 'The malts from Horton Ridge bring out a special character in our beers. We can really taste the difference in quality. Definitely worth checking out.', '5 ★'),
('William D', 'williamd@email.com', 'Love supporting local producers. The malts are top quality and have helped elevate our brewing process. Will be ordering more!', '4.5 ★'),
('Isabella M', 'isabellam@email.com', 'I’ve used many malts in my brewing, but Horton Ridge offers the best consistency and flavor. Their malts really stand out.', '5 ★'),
('James T', 'jamest@email.com', 'Great products, but the shipping process could be a bit smoother. Overall, I’m happy with the malts and will continue using them for my brewery.', '4 ★'),
('Liam A', 'liama@email.com', 'Fantastic service and quality malts! We’ve been getting our grains from them for months now, and they never disappoint. Highly recommend.', '5 ★'),
('Evelyn R', 'evelynr@email.com', 'The malt I got from Horton Ridge was a game-changer for my homebrew. The flavor was so much better than what I’ve had before. Love it!', '5 ★'),
('Lucas V', 'lucasv@email.com', 'Horton Ridge always delivers. Their malts have become a crucial ingredient for my brewery, and I wouldn’t go anywhere else.', '5 ★'),
('Chloe N', 'chloen@email.com', 'It’s great to know I’m supporting a local business that cares about sustainability. The quality of their malt is exceptional, and the service is fantastic.', '4.5 ★'),
('Henry G', 'henryg@email.com', 'Love using locally grown grains in my brewing! The malts from Horton Ridge are some of the best I’ve worked with. Definitely worth trying.', '5 ★'),
('Grace F', 'gracef@email.com', 'I’ve tried other malts, but nothing compares to the richness of Horton Ridge. The flavor they bring to my brews is unmatched!', '5 ★'),
('Jack L', 'jackl@email.com', 'Horton Ridge is a solid choice for craft brewers. I’d love to see them expand their offerings, but the current selection is fantastic.', '4.5 ★'),
('Mia D', 'miad@email.com', 'The malt from Horton Ridge always delivers the right flavor. It’s perfect for both beer and spirits. Highly recommend to anyone looking for quality.', '5 ★'),
('Noah W', 'noahw@email.com', 'Really happy with the service and quality of malts. It’s great to have a local option for craft brewing. Their products have been consistently amazing!', '5 ★');



-- Display the table structure
DESCRIBE horton_ridge_malt_grain_reviews;