-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 30 jan 2018 om 08:46
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dc-heroes`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `hero`
--

CREATE TABLE `hero` (
  `heroId` int(3) NOT NULL COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable',
  `heroName` varchar(50) NOT NULL COMMENT 'the name of the hero, just a string',
  `heroDescription` text NOT NULL COMMENT 'some information of the hero, just a string',
  `heroAtt` text NOT NULL,
  `heroImage` varchar(50) NOT NULL COMMENT 'the image of the hero is strored as a string. The actual image is strored on the server. Use the string as the source of the HTML img-tag.',
  `teamId` int(3) NOT NULL COMMENT 'this is the teamId. Used as a referenc to the team table.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `hero`
--

INSERT INTO `hero` (`heroId`, `heroName`, `heroDescription`, `heroAtt`, `heroImage`, `teamId`) VALUES
(3, 'Eddard Stark', 'Lord Eddard Stark, also known as Ned Stark, was the head of House Stark, the Lord of Winterfell, Lord Paramount and Warden of the North, and later Hand of the King to King Robert I Baratheon. He was the older brother of Benjen, Lyanna and the younger brother of Brandon Stark. He is the father of Robb, Sansa, Arya, Bran and Rickon by his wife, Catelyn Tully, and uncle of Jon Snow, who he raised as his bastard son. He was a dedicated husband and father, a loyal friend and an honorable lord.\r\n\r\nEddard\'s execution and revealing the illegitimacy of Cersei\'s children was the spark of the War of the Five Kings between Joffrey Baratheon, Robb, Renly Baratheon, Stannis Baratheon and Balon Greyjoy, being posthumously responsible for the involvement of four of the kings in this war.', 'Warden of the north </br>\r\nHonorable </br>\r\nHighly skilled swordsman </br>\r\nFriends with the King </br>\r\nBlood of the first men</br>', 'images/Nedstark.jpg', 1),
(4, 'Robb Stark', 'King Robb Stark was the eldest son of Lord Eddard Stark of Winterfell and his wife, Lady Catelyn. He was the older brother of Sansa, Arya, Bran, and Rickon Stark, and cousin (believed to be half-brother) of Jon Snow. He also adopted a direwolf, whom he named Grey Wind. Robb was declared King in the North, the first since his ancestor Torrhen Stark bent the knee three centuries before, during the War of the Five Kings after the execution of his father by King Joffrey Baratheon.', 'Strong Leader </br>\r\nFights for family</br> \r\nKing in the north (in War of the 5 kings) </br>\r\nNothern Warrior</br>\r\n', 'images/RobStark.jpg', 1),
(5, 'Arya Stark', 'Arya Stark is the youngest daughter and third child of Lady Catelyn and Lord Eddard Stark. Eddard was the head of House Stark and Lord Paramount of the North. The North is one of the constituent regions of the Seven Kingdoms and House Stark is one of the Great Houses of the realm. House Stark rules the region from their seat of Winterfell and Eddard also holds the title Lord of Winterfell. He is also the Warden of the North to King Robert Baratheon.[2]\r\n\r\nArya was born and raised at Winterfell. She has an older sister, Sansa Stark. She also has an older brother, Robb, two younger brothers, Bran and Rickon and a \"bastard half-brother\", Jon Snow.', 'Trained Assassin </br> \r\nOwns a direwolf </br> \r\nOwns a Valaryin dagger\r\ncan kill the strongest knights/warrior of the 7 kingdoms </br> ', 'images/AS.jpg', 1),
(6, 'Rhaegar Targaryen', 'Prince Rhaegar Targaryen was the eldest son and heir to King Aerys II Targaryen, Prince of Dragonstone. He was the older brother of Viserys and Daenerys Targaryen and the husband of Elia Martell, with whom he had two children: Rhaenys and Aegon Targaryen.\r\n\r\nSecretly, however, Rhaegar annulled his marriage with Elia and married Lyanna Stark. Rhaegar\'s alleged \"abduction\" of Lyanna sparked Robert\'s Rebellion, as Lyanna was betrothed to Robert Baratheon. Robert killed Rhaegar at the climactic Battle of the Trident, and then deposed the Targaryen dynasty. Lyanna\'s brother Eddard Stark found her soon afterwards, as she was dying from childbirth. She was giving birth to her son with Rhaegar. To protect the child from Robert and others who sought the destruction of House Targaryen, Eddard passed him off as his bastard son that he fathered during the war: Jon Snow.', 'Blood of the dragon \r\n1 of the best swordsman in the 7 kingdoms </br> \r\nInspirement </br> \r\ncan\'t be killed by fire </br> \r\n', 'images/RT.png', 2),
(7, 'Daenerys Targaryen', 'Daenerys is the only daughter and youngest child of King Aerys II Targaryen, the \"Mad King\", and his sister-wife, Rhaella. Her father died during the Sack of King\'s Landing, before she was even born. The usurper Robert Baratheon installed himself as king, having defeated Aerys in the conquest known as Robert\'s Rebellion. Her pregnant mother and brother Viserys, fled to the island of Dragonstone, the ancestral home of House Targaryen, to escape Robert. Daenerys\'s brother Rhaegar Targaryen was killed in the war by Robert. The forces of House Lannister murdered Rhaegar\'s wife, Elia Martell, and their children, Rhaenys and Aegon, during the Sack of King\'s Landing.', 'Dragon Blood</br>  \r\nCan\'t be killed by fire</br> \r\nHas 2 dragons</br> \r\nhas a horde of 100.000 Dothraki \r\nHas 8.000 unsullied \r\nAllied with the North </br> \r\nRules over 3 major cities in the east</br> \r\n', 'images/DT.jpg', 2),
(8, 'Aegon Targaryen (Jon snow)', 'People thouth Jon snow was the Bastard son of Ned Stark and an unknown woman, but in the last season they realised he was Aegon Targaryen Son of Rhaegar Targaryen and Lyanna stark. Jon Snow has lived with savages and has been killed and resurected and tries to protect the living from an army of the dead that is trying to takeover the 7 kingdoms.\r\n\r\n', 'Heir to the 7 kingdoms</br> \r\nOwns a </br> valaryian sword\r\nOwns a direwolf</br> \r\nKing of the north \r\nAllience with the targaryen </br> \r\nFights beacuse he has to</br> \r\nPeople with fight with him</br> \r\nBest swordsman in the north </br> ', 'images/JS.png', 2),
(9, 'Jaime Lannister', 'Ser Jaime Lannister is the eldest son of Tywin, younger twin brother of Cersei, and older brother of Tyrion Lannister. He is involved in an incestuous relationship with Cersei, and unknown to most, he is the biological father of her three children, Joffrey, Myrcella, and Tommen.\r\n\r\nJaime previously served in the Kingsguard of Aerys Targaryen, known as the Mad King, before infamously backstabbing him during the Sack of King\'s Landing, earning Jaime the nickname of the Kingslayer. He continued to serve in the Kingsguard of Robert Baratheon, and as Lord Commander for Robert\'s alleged sons Joffrey and Tommen. However, a confrontation with the Faith of the Seven led to his dismissal from the sworn order.\r\n\r\nWith Cersei\'s ascension to the Iron Throne and in light of the death of their uncle, Ser Kevan Lannister, Jaime was appointed as the new commander of the Lannister armies. However, he left his position to honor and help the North face the White Walkers after he learned that Cersei and Euron Greyjoy plot to dishonor the truce between the Iron Throne and the alliance of House Targaryen and House Stark.', 'Is in the richest family </br> \r\nLeader of the Lannister army</br>  \r\nOwns a valaryian sword</br> \r\nFought Dothraki bloodriders</br> \r\nHas a pure golden hand</br> ', 'images/JL.jpg', 3),
(10, 'Cersei Lannister', 'Queen Cersei I Lannister is the widow of King Robert Baratheon and Queen of the Seven Kingdoms. She is the daughter of Lord Tywin Lannister, twin sister of Jaime Lannister and elder sister of Tyrion Lannister. She has an incestuous relationship with Jaime, who is secretly the father of her three children, Joffrey, Myrcella and Tommen.\r\n\r\nAfter the assassinations of Joffrey and Myrcella and Tommen\'s suicide in the wake of the destruction of the Great Sept of Baelor, Cersei assumed the throne under the name of Cersei of the House Lannister, the First of Her Name, Queen of the Andals and the First Men, Protector of the Seven Kingdoms. ', 'Queen of the 7 kingdoms</br> \r\nRich </br> \r\nAllied with the Greyjoys </br> \r\nHas a weapon that can kill dragons</br> \r\nowns enough wildfire to kill millions of people</br>  \r\n', 'images/CL.png', 3),
(11, 'Robert Baratheon', 'King Robert I Baratheon was the ruler of the Seven Kingdoms, formally styled as Robert of the House Baratheon, the First of His Name, King of the Andals and the First Men, Lord of the Seven Kingdoms and Protector of the Realm.\r\n\r\nRobert, a great warrior and charismatic man in his youth, took the throne through conquest in the war known as Robert\'s Rebellion, which began when the Prince of Dragonstone, Rhaegar Targaryen, allegedly abducted Robert\'s betrothed, Lyanna Stark. Killing Rhaegar at the Battle of the Trident, his climactic duel turned the tides of the war in his favor. After the war and following Lyanna\'s death, Robert married Cersei Lannister to cement an alliance with House Lannister to hold the kingdoms together, but the marriage was loveless.\r\n\r\nRobert also had two younger brothers, Stannis and Renly. He and Cersei have three children: Joffrey, Myrcella and Tommen. However, unbeknownst to Robert and most of the realm, all three were actually fathered by Cersei\'s twin brother, Jaime Lannister. On the other hand, Robert had many bastards from other women, including Gendry and Barra.', 'Strong Warrior</br> \r\nWas king of Westeros</br> \r\nAllience with The north and the east </br> \r\nAble to wield a warhammer</br> \r\nHas slain Rheagar Targaryen </br> ', 'images/RB.jpg', 4),
(12, 'Stannis Baratheon', 'King Stannis I Baratheon was the Lord of Dragonstone, the younger brother of King Robert Baratheon and older brother of Renly Baratheon.\r\n\r\nFollowing Robert\'s death and the revelation that Robert\'s heir, Joffrey, is actually Queen Cersei\'s bastard son with her twin brother Jaime, Stannis declares himself the rightful King and begins a campaign to take the Iron Throne from the Lannisters. After amassing an army, Stannis attacks King\'s Landing and almost breaches the city, but is defeated by combined Lannister-Tyrell reinforcements and forced to retreat to Dragonstone. While planning his next move following the deaths of Joffrey and Robb Stark, Stannis travels North to the Wall to aid the Night\'s Watch against a wildling invasion and meets Jon Snow, attempting to acquire his help in retaking the North from House Bolton, who previously betrayed House Stark and murdered Robb. Stannis ultimately marches on Winterfell alone, but the weather slows his progress and he and his army are smashed by Bolton forces in the ensuing battle. In the aftermath, he is found, injured and exhausted from the battle and ultimately killed by Brienne of Tarth for his role in Renly\'s death.', 'Strong Warrior</br> \r\nHad an army of 100.000</br> \r\nFights for the god of light </br> \r\nLost 1 battle in his whole life </br> \r\n', 'images/SB.png', 4),
(13, 'Gendry Baratheon', 'Gendry is a skilled blacksmith and an unacknowledged bastard son of King Robert Baratheon. After escaping the massacre of Robert\'s other bastards in King\'s Landing, Gendry is slated to join the Night\'s Watch before being captured and traded multiple times- first to Tywin Lannister at Harrenhal, then to the Brotherhood Without Banners, and finally to Stannis Baratheon on Dragonstone. After escaping from Dragonstone with the help of Ser Davos Seaworth, Gendry returns to King\'s Landing and remains in hiding until Davos returns for him. He later accompanies Jon Snow north of the Wall on a mission to capture a wight to use as a bargaining chip at the Parley in King\'s Landing.\r\n\r\nWith the death of King Robert, the massacre of his other bastards, the deaths of Robert\'s brothers Renly and Stannis, as well as Stannis\'s daughter Shireen, Gendry is the last known living person of House Baratheon\'s bloodline.', 'Can Reforge Valaryian steel</br> \r\nFights with a giant hammer</br> \r\nLast living Baratheon\r\nSmith\r\nRoyal Blood', 'images/GB.png', 4),
(14, 'Margaery Tyrell', 'Queen Margaery Tyrell was the only daughter of Lord Mace Tyrell and Lady Alerie Tyrell, granddaughter of Lady Olenna Tyrell and sister of Ser Loras Tyrell. Margaery became Queen Consort through her marriage to King Joffrey Baratheon, and later his younger brother, King Tommen Baratheon, following Joffrey\'s death. Her desire to become Queen, however, ultimately proved to be her downfall as she was eventually killed along with her brother and father when the Great Sept of Baelor was destroyed with wildfire as orchestrated by Cersei Lannister to reclaim her lost power.', 'Queen </br>\r\nCan change people </br>\r\nHas the love of the people </br>\r\nHouse tyrell owns 60% of all the food </br>', 'images/MT.png', 5),
(15, 'Olenna Tyrell', 'Lady Olenna Tyrell, née Redwyne, was the elderly matriarch of House Tyrell. Lady Olenna had been a mistress of court politics, plotting and intrigue par excellence throughout her life. She was also known for her wit and sarcasm. As a result, Lady Olenna was popularly nicknamed the Queen of Thorns, in reference to the Tyrell sigil - a rose - and her cutting, barbed comments. In many ways she was the de facto head of House Tyrell at the time of the War of the Five Kings and appeared to hold a great deal of influence over the Reach.\r\n\r\nAfter most of her family are killed in the destruction of the Great Sept of Baelor, an event orchestrated by Cersei Lannister, Olenna\'s desire for vengeance leads her to pledge House Tyrell\'s forces to Daenerys Targaryen. However, when Daenerys sends her forces to take Casterly Rock, Jaime Lannister\'s army sacks Highgarden. Offering Olenna a peaceful end, he allows her to drink poison. However, before dying she reveals that she was the one who murdered his son Joffrey at the Purple Wedding.', 'Owns strong poisons </br>\r\nQueen of highgarden </br>', 'images/OT.png', 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(3) NOT NULL COMMENT 'unique rating is, auto incremented',
  `heroId` int(3) NOT NULL COMMENT 'the heroId used as reference to the hero table, can''t be unique in thie table',
  `rating` int(3) NOT NULL COMMENT 'rating is defined as an integer from 0 (min) to 10 (max)',
  `ratingDate` int(5) NOT NULL COMMENT 'the date of this rating. Dates are presented as an integer (timestamp) and displayed as a human readable date and time string using the PHP strftime() function',
  `ratingReview` text NOT NULL COMMENT 'a textual review added by the user\\nthe form where the user can rate the hero by using stars (radio-buttons)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `rating`
--

INSERT INTO `rating` (`ratingId`, `heroId`, `rating`, `ratingDate`, `ratingReview`) VALUES
(1, 3, 2, 1517301341, 'dasdsa'),
(2, 3, 3, 1517301379, 'dsadsa'),
(3, 3, 1, 1517301396, 'fd'),
(4, 3, 4, 1517301449, 'dsa'),
(5, 3, 3, 1517301788, 'dsa');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `team`
--

CREATE TABLE `team` (
  `teamId` int(3) NOT NULL COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable',
  `teamName` varchar(50) NOT NULL COMMENT 'team name, just an ordinary string',
  `teamDescription` text NOT NULL COMMENT 'team description, just a string',
  `teamImage` varchar(100) NOT NULL COMMENT 'team image, stored as a string and used with the source of the HTML-tag'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `team`
--

INSERT INTO `team` (`teamId`, `teamName`, `teamDescription`, `teamImage`) VALUES
(1, 'House Stark', '', 'images/stark.png'),
(2, 'House Targaryen', '', 'images/targ.jpg'),
(3, 'House Lannister', '', 'images/lannister.jpg '),
(4, 'House Baratheon', '', 'images/bobbyB.jpg'),
(5, 'House Tyrell', '', 'images/tyrell.jpg');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`heroId`);

--
-- Indexen voor tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexen voor tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `hero`
--
ALTER TABLE `hero`
  MODIFY `heroId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable', AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT voor een tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique rating is, auto incremented', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `team`
--
ALTER TABLE `team`
  MODIFY `teamId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable', AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
