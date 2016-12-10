
-- how to run this file
-- use the following command with your computer's absolute path (my filename was db.sql)
-- this will populate dummy data in your SQL file
-- mysql -u root -p < C:\Users\Khoa\Documents\HRLA11\Projects\Point-Blank\server\config\dbDummyData.sql
-- this file will delete your old data and populate your already made tables

USE pointblank;

DELETE FROM poi;
DELETE FROM review;
DELETE FROM user;

-- INSERT into `review` (`review_type`, `review_content`, `rating`, `reviewer_name`, `NumUserRevs`, `SumUserRevs`, `createdAt`, `updatedAt`, `POIId`,`UserId`)
-- VALUES ('','','','','','',NOW(),NOW(),'','')

INSERT INTO `user` (`name`,`createdAt`, `updatedAt`) VALUES('Khoa', NOW(), NOW());
INSERT INTO `user` (`name`,`createdAt`, `updatedAt`) VALUES('Nate', NOW(), NOW());
INSERT INTO `user` (`name`,`createdAt`, `updatedAt`) VALUES('Kevin', NOW(), NOW());
INSERT INTO `user` (`name`,`createdAt`, `updatedAt`) VALUES('Bruce', NOW(), NOW());
INSERT INTO `user` (`name`,`createdAt`, `updatedAt`) VALUES('Mark', NOW(), NOW());
INSERT INTO `user` (`name`,`createdAt`, `updatedAt`) VALUES('JongSu', NOW(), NOW());
INSERT INTO `user` (`name`,`createdAt`, `updatedAt`) VALUES('Jose', NOW(), NOW());


INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
    'Mark Zuckerberg',
    'American computer programmer, internet entrepreneur, and philanthropist. He is the chairman, chief executive officer, and co-founder of social networking website Facebook.',
    'http://i.imgur.com/ks3bsZW.jpg',
    90
);

INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
    'Bill Gates',
    "American business magnate, investor, author and philanthropist. Co-founded Microsoft, which became the world's largest PC software company.",
    'http://i.imgur.com/XrLaP0E.jpg',
    96
);

INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
    'Elon Musk',
    'South African-born Canadian-American business magnate, investor, engineer, and inventor. He is the founder, CEO, and CTO of SpaceX; co-founder, CEO, and product architect of Tesla Motors; and co-founder and chairman of SolarCity',
    'http://i.imgur.com/QkztkRK.jpg',
    98
);

INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
    'Pope Francis',
    'The 266th and current Pope of the Roman Catholic Church, a title he holds ex officio as Bishop of Rome, and sovereign of Vatican City.',
    'http://i.imgur.com/WFFk64n.jpg',
    100
);

INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
    'Kan Adachi',
    "Software engineer, design enthusiast, and hand letterer. One of the world's finest instructors and a genuine family man.",
    'http://i.imgur.com/BJiqB9j.jpg',
    92
);

INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
    'Ricky Walker',
    'Genius, millionaire (about $3million in bank account), playboy, philanthropist, software engineer, instructor, and (former) assassin.',
    'http://i.imgur.com/QxVU4qK.jpg',
    92

);

INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
    'Benedict Cumberbatch',
    'English actor who has performed in film, television, theatre and radio. In 2014, Time magazine included him in its annual Time 100 as one of the "Most Influential People in the World".',
    'http://i.imgur.com/8B7O4EX.jpg',
    84

);

INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
    'Kip Thorne',
    "American theoretical physicist, known for his contributions in gravitational physics and astrophysics. He is one of the world's leading experts on the astrophysical implications of Einstein's general theory of relativity.",
    'http://i.imgur.com/19tb802.jpg',
    97
);

INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
     'Neil deGrasse Tyson',
    'American astrophysicist, director of the Hayden Planetarium, and popularizer of science.',
    'http://i.imgur.com/BCj9BLe.jpg',
    82
);

-- POS

INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
   'David Miscavige',
    'The leader of the Church of Scientology. Target of allegations: forced separation of family members, coercive fundraising practices, harassment of journalists and church critics, and humiliation of church staff members, including physical assaults.',
    'http://i.imgur.com/t11UHUy.jpg',
    12

);


INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
   'Kim Jong Un',
    "Chairman of the Workers Party of Korea and supreme leader of the Democratic People's Republic of Korea (DPRK).",
    'http://i.imgur.com/It3JNzr.jpg',
    3
);

INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
    'Martin Shkreli',
    "American entrepreneur and pharmaceutical executive. In September 2015, he raised its price of antiparasitic drug Daraprimby by a factor of 56 (from US$13.5 to US$750 per pill), leading him to be referred to by media as the 'most hated man in America'.",
    'http://i.imgur.com/akNpmZM.jpg',
    24
);

INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
   'Jared Fogle',
    'Known as "the Subway Guy", he is a former American spokesperson for Subway restaurants. he was investigated for paying for sex with minors and receiving child pornography in 2015. On August 19, 2015, he agreed to plead guilty in federal court to possessing child pornography and traveling to pay for sex with minors.',
    'http://i.imgur.com/bQ4IT1A.jpg',
    23
);

INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
    'Heather Bresch',
    'American business executive and the daughter of Democratic U.S. Senator Joe Manchin.  In 1992 she started working as a clerk in a factory owned by Mylan, a pharmaceuticals company, a job her father found for her. In 2016 Mylan became embroiled in controversy after having raised the price of one of its products, the EpiPen, by nearly 500 percent since 2009.',
    'http://i.imgur.com/o95w9nf.jpg',
    11
);

INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
     'Rodrigo Duterte',
    "A Filipino politician and jurist who is the 16th and current President of the Philippines, and Chairman of the Association of Southeast Asian Nations for 2017. Duterte's political success has been aided by his vocal support for the extrajudicial killing of drug users and criminals. Human rights groups have documented over 1,400 killings allegedly by vigilante groups occurring in Davao between 1998 and May 2016; the victims were mainly drug users, petty criminals and street children. Duterte stated at a rally in April 2016 that he shot a fellow student who had teased him about his Visayan origin, while at San Beda law college: 'But the truth is, I'm used to shooting people. When we were about to graduate from San Beda, I shot a person.'",
    'http://i.imgur.com/DJ09evR.jpg',
    26
);

INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
    'Kanye West',
    "American rapper, songwriter, record producer, fashion designer, and entrepreneur. Born in Atlanta and raised in Chicago, West first became known as a producer for Roc-A-Fella Records in the early 2000s, producing hit singles for artists such as Jay Z and Alicia Keys. West's outspoken views and life outside of music have received significant mainstream attention. He has been a frequent source of controversy for his conduct at award shows, on social media, and in other public settings. His more scrutinized comments include his off-script denunciation of President George W. Bush during a live 2005 television broadcast for Hurricane Katrina relief and his interruption of singer Taylor Swift at the 2009 MTV Video Music Awards.",
    'http://i.imgur.com/siKa4j2.jpg',
    49
);



INSERT into `poi` (`createdAt`, `updatedAt`,`name`,`summary`,`profile_image_url`,`general_rating`) VALUES(NOW(), NOW(),
   'Donald Trump',
    "American businessman, politician, and the President-elect of the United States. He is scheduled to take office on January 20, 2017 (sigh). He has been the center of many scandals: sexual-assault allegations, beauty pageant scandals, racial housing discrimination, mafia ties, Trump University, tenant intimidation, the four bankruptcies, the undocumented polish workers, alleged marital rape, breaking casino rules, antitrust violations, condo hotel shenanigans, Corey Lwandowski, suing Journalist Tim O'Brien for Libel, refusing to pay workers and contractors, Trump Institute, buying up his own books, undocumented models, the Trump Foundation, the Cuban Embargo, and more.",
    'http://i.imgur.com/XjWk6fS.jpg',
    47

);





  






   



  



   


