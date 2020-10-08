-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 26, 2019 at 06:38 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ecom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  `cat_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_description`) VALUES
(1, 'Action Figures', 'This is quality info'),
(2, 'Art', 'Yo whats good?'),
(3, 'Banks', 'wazzzzzup'),
(4, 'Barbie', 'All the Barbie Product(s) We Currently Have'),
(5, 'Books/Graphic Novels', 'Come Look Through Our Selection To Find Your Favorite Book(s)!'),
(6, 'Calico Critters', ''),
(7, 'DC', ''),
(8, 'Disney', ''),
(9, 'Gaming: Board Games', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_amount` decimal(10,2) NOT NULL,
  `order_transaction` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `short_description` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `item_product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `product_quantity`, `product_description`, `short_description`, `product_image`, `item_product_image`) VALUES
(1, 'Bandai Tamashii Nations Tamashii Buddies Frieza â€œDragon Ballâ€ Action Figure', 1, '12.99', 1, 'The second edition to the Dragon Ball series includes the Emperor of Space, Frieza in his first form! \\\\r\\\\n\\\\r\\\\nFrieza comes with a unique, stackable display and matching background panel that is interchangeable.\\\\r\\\\n\\\\r\\\\nStack all your Dragon Ball BUDDIES for a display with impact! \\\\r\\\\n\\\\r\\\\nThis licensed product is distributed and shipped exclusively by an authorized Bandai retailer within and for the U.S. and Canadian markets.\\\\r\\\\n\\\\r\\\\nTested for safety and in compliance with all North American consumer product safety regulations; Product support assistance provided.', '', 'AF-DragonBallActionFigure.jpg', 'AF-DragonBallActionFigureFull.jpg'),
(2, 'Batman Hush Series 3 Action Figure Scarecrow', 1, '19.99', 2, 'DC Direct\r\n\r\nHush Scarecrow\r\n\r\nCollector\r\n\r\nAction Figure', '', 'AF-batman-hush-scarecrow-two.jpg', 'AF-batman-hush-scarecrow-full.jpg'),
(3, 'Batman Hush Series 3: Raâ€™s Al Ghul Action Figure', 1, '19.99', 2, 'Batman Hush Series 3 action Figure, Raâ€™s Al Ghul\r\n\r\nRare & Collectible Hush Collector\r\n\r\nDC Direct Product, Best in the Business \r\n\r\nNew in Factory Sealed Package\r\n\r\nBest/Lowest Price on the Market\r\n', '', 'AF-Hush-Ras-al-Ghul.jpg', 'AF-Hush-Rus-al-Ghul-Full.jpg'),
(4, 'DC Collectibles Batman: Arkham Knight: Azrael Action Figure', 1, '22.99', 1, 'From the hit Batman: Arkham Knight video game\r\n\r\nRecreates Azrael based on his appearance in the game\r\n\r\n100% toy\r\n\r\nImported, exceptional detail\r\n\r\nGenerous articulation\r\n\r\nLimited edition.', '', 'AF-Batman-Arkham-Knight-Azrael.jpg', 'AF-Batman-Arkham-Knight-Azrael-Full.jpg'),
(5, 'DC Collectibles Comics Justice League: Shazam', 1, '24.99', 2, 'From DC Comics-The New 52 and the pages of Justice League\r\n\r\nRecreates Earthâ€™s Mightiest Mortal\r\n\r\nBased on the designs of comics superstar Gary Frank\r\n\r\nStands 6.75â€³ high\r\n\r\nLimited edition.', '', 'AF-DC-JL-Shazam.jpg', 'AF-DC-JL-Shazam-Full.jpg'),
(6, 'DC Collectibles DC Comics Designer Action Figures Series 1 Nightwing', 1, '24.99', 1, 'Based on designs from the artist of DC Comicsâ€™ best-selling Batman title\r\n\r\nPart of the first wave in an all new DC Collectibles Designer Series\r\n\r\nMeasures 6.75â€³ high\r\n\r\nExceptional detail, Limited edition.', '', 'AF-DC-Nightwing-One.jpg', 'AF-DC-Nightwing-One-Full.jpg'),
(7, 'DC Collectibles DC Comics Icons: Swamp Thing with Un-Man from Dark Genesis', 1, '24.99', 1, 'Made in USA, Iconic DC characters from bestselling stories\r\n\r\nRecreates Swamp Thing from Dark Genesis\r\n\r\nStands 6.25â€³ tall\r\n\r\nIncludes Un-Man accessory\r\n\r\nLimited edition.', '', 'AF-DC-Swamp-Thingy.jpg', 'AF-DC-Swamp-Thingy-Full.jpg'),
(8, 'DC Collectibles Icons Nightwing', 1, '24.99', 1, 'From the classic DC Comics\r\n\r\nFigure stands 6â€³ tall\r\n\r\nHeavily articulated figure\r\n\r\nInterchangeable hands\r\n\r\nAccessories included', '', 'AF-DC-Nightwing-Two.jpg', 'AF-DC-Nightwing-Two-Full.jpg'),
(9, 'DC Comics Multiverse Batman The Dark Knight Returns The Joker', 1, '22.99', 1, 'Highly detailed 6â€³ The Joker from top rated DC series The Dark Knight Returns\r\n\r\n20 points of articulation\r\n\r\nDetailed paint, iconic elements and a bonus piece\r\n\r\nCollect all the figuresâ€™ bonus pieces to build a King Shark figure! Each figure sold separately. Colors and decorations may vary\r\n\r\nGreat gift for any DC Comics fan', '', 'AF-DC-DKR-Joker.jpg', 'AF-DC-DKR-Joker-Full.jpg'),
(10, 'DC Comics Multiverse Classic Comic Skin Batman and Clayface Figure 2-Pack', 1, '22.99', 2, 'Expanding the DC Comics Multiverse, come these popular characters from the Arkham City video games\r\n\r\nHighly articulated, highly detailed, dynamically authentic 4â€³ Batman is paired with true-to-scale giant DC Super-Villain Clayface\r\n\r\nBatman wears Classic blue and grey Comic Skin and Clayface features an interchangeable hammer fist, to unleash shape-shifting mayhem!\r\n\r\nDisplay the adversaries in the included Arkham jail cell base\r\n\r\nCollect the other assortment pairs and stage a massive prison breakout for the ultimate battle of good versus evil right out of the pack', '', 'AF-DC-Clayface.jpg', 'AF-DC-Clayface-Full.jpg'),
(11, 'DC Comics Multiverse General Zod (Superman II)', 1, '7.99', 4, 'Authentic to parallel character in the world of DC, this figure celebrates Batman video games and classic DC Comics movies\r\n\r\nHighly detailed DC Comics character has 14-points of articulation\r\n\r\nWill delight those seeking collector-quality action figure in the 4-inch scale\r\n\r\nCollect all your favorite DC Comic characters, each sold separately\r\n\r\nA must have for any DC Comic collector or fan.', '', 'AF-DC-Zod.jpg', 'AF-DC-Zod-Full.jpg'),
(12, 'DC Comics Multiverse Hawkman DC Legends of Tomorrow', 1, '22.99', 1, 'Highly detailed 6â€³ Hawkman character from hit DC TV series\\r\\n\\r\\n20 points of articulation\\r\\n\\r\\nDetailed paint, iconic elements and a bonus piece\\r\\n\\r\\nConnect and collect all their bonus pieces to build a King Shark figure! Each sold separately. \r\n\r\nColors and decorations may vary\\r\\n\\r\\nGreat gift for any DC Comics fan', '', 'AF-DC-Hawkman.jpg', 'AF-DC-Hawkman-Full.jpg'),
(13, 'DC Comics Multiverse Year One Skin Batman and Solomon Grundy Figure 2-Pack', 1, '22.99', 2, 'Expanding the DC Comics Multiverse, come these popular characters from the Arkham City video games\r\n\r\nHighly articulated, highly detailed, authentic 4â€³ Batman in Year 1 Skin is paired with giant oversized Solomon Grundy\r\n\r\nUndead DC Super-Villain Grundy features electrified flesh and clothes and Batman wears his iconic black and grey Batsuit Skin from Year One\r\n\r\nDisplay the adversaries in the included Arkham jail cell base\r\n\r\nCollect the other assortment pairs and stage a massive prison breakout for the ultimate battle of good versus evil right out of the pack', '', 'AF-DC-Soloman.jpg', 'AF-DC-Soloman-Full.jpg'),
(14, 'DC Comics Total Heroes Green Lantern', 1, '14.99', 1, 'Compelling top DC Comics characters to recreate classic good versus evil capers or invent new stories\\r\\n\\r\\n6-inch figure features iconic details\\r\\n\\r\\nRecreate iconic capers or invent your own stories\\r\\n\\r\\nWage heroes against villains and see who emerges victorious! \\r\\n\\r\\nIncludes 1 6-inch figure.', '', 'AF-DC-GL.jpg', 'AF-DC-GL-Full.jpg'),
(15, 'DC Comics Total Heroes Hawkman', 1, '14.99', 2, 'Compelling top DC comics characters to recreate classic good versus evil capers or invent new stories\r\n\r\n6-Inch figure features iconic details\r\n\r\nRecreate iconic capers or invent your own stories\r\n\r\nWage heroes against villains and see who emerges victorious!\r\n\r\nIncludes 1 6-inch figure.', '', 'AF-DC-Hawkman-Two.jpg', 'AF-DC-Hawkman-Two-Full.jpg'),
(16, 'DC Comics Total Heroes Superman', 1, '14.99', 1, 'Compelling top DC Comics characters to recreate classic good versus evil capers or invent new stories\r\n\r\n6-inch figure features iconic details\r\n\r\nRecreate iconic capers or invent your own stories\r\n\r\nWage heroes against villains and see who emerges victorious!\r\n\r\nIncludes 1 6-inch figure.', '', 'AF-DC-Superman.jpg', 'AF-DC-Superman-Full.jpg'),
(17, 'DC Direct Just Us League of Stupid Heroes: Series 1: Aquaman', 1, '17.99', 2, 'Released in time for MAD Magazineâ€™s 60th anniversary\r\n\r\nPlaces MAD mascot Alfred E. Neuman in DC Comicsâ€™ classic Justice League costumes\r\n\r\nAlfred stands ready for aquatic action as the King of the Seven Seas\r\n\r\nFigure stands 6â€³ tall\r\n\r\nHilariously detailed and accessorized.', '', 'AF-DC-JLS-Aquaman.jpg', 'AF-DC-JLS-Aquaman-Full.jpg'),
(18, 'DC Direct Just Us League of Stupid Heroes: Series 1: Green Arrow', 1, '17.99', 3, 'Released in time for MAD Magazineâ€™s 60th anniversary\r\n\r\nPlaces MAD mascot Alfred E. Neuman in DC Comicsâ€™ classic Justice League costumes\r\n\r\nAlfred stands ready for aquatic action as the King of the Seven Seas\r\n\r\nFigure stands 6â€³ tall\r\n\r\nHilariously detailed and accessorized', '', 'AF-DC-JLS-GL.jpg', 'AF-DC-JLS-GL-Full.jpg'),
(19, 'DC Direct Just Us League of Stupid Heroes: Series 1: Superman', 1, '17.99', 1, 'Released in time for MAD Magazineâ€™s 60th anniversary\r\n\r\nPlaces MAD mascot Alfred E. Neuman in DC Comicsâ€™ classic Justice League costumes\r\n\r\nAlfred stands ready for aquatic action as the King of the Seven Seas\r\n\r\nFigure stands 6â€³ tall\r\n\r\nHilariously detailed and accessorized', '', 'AF-DC-JLS-Superman-2.jpg', 'AF-DC-JLS-Superman-Full.jpg'),
(20, 'DC Direct Justice League: Aquaman', 1, '24.99', 1, '100% Toy\r\n\r\nImported\r\n\r\nFrom DC Comicsâ€™ New 52 comics\r\n\r\nBased on designs by superstar artist Jim Leeâ€™s artwork from Justice League\r\n\r\nFeatures a new take on the characterâ€™s classic costume\r\n\r\nGreat for new fans of the character, or longtime fans who appreciate a fresh take on the DC Universe\r\n\r\nStands 6.75-Inch tall', '', 'AF-DC-Aquaman.jpg', 'AF-DC-Aquaman-Full.jpg'),
(21, 'DC Direct Justice League: Green Lantern', 1, '24.99', 2, 'First figures reflecting the DC Comics â€“ The New 52 design\r\n\r\nGreen Lantern measures 6.75â€³\r\n\r\nGenerously articulated\r\n\r\nMeticulously detailed, Iconic costume design\r\n\r\nLatest in the ongoing series of figures based on DC Comics â€“ The New 52, Based on designs by superstar artist Jim Leeâ€™s artwork from Justice League\r\n\r\nFeatures a new take on the characterâ€™s classic costume\r\n\r\nGreat for new fans of the character, or longtime fans who appreciate a fresh take on the DC Universe', '', 'AF-DC-JL-GL.jpg', 'AF-DC-JL-GL-Full.jpg'),
(22, 'Gene Simmons The Demon Kiss Special Edition McFarlane Toys', 1, '40.00', 20, 'New Sealed in Box w/ Original Shrink Wrap still in Place\r\n\r\nRare are to find Gene Simmons Mcfarlane Figure\r\n\r\nMust have for Kiss fan', '', 'AF-Kiss.jpg', 'AF-Kiss-Full.jpg'),
(23, 'Justice League â€“ The New 52: Superman', 1, '24.99', 6, 'Based on the best-selling Justice League comic\r\n\r\nFeatures a unique head sculpt\r\n\r\nMultiple points of articulation\r\n\r\nFigure stands 6.8â€³ tall\r\n\r\nFeatures Superman in his New 52 redesign\r\n\r\nBased on the best-selling Justice League comic book by Geoff Johns and Jim Lee', '', 'AF-DC-JS-Superman.jpg', 'AF-DC-JS-Superman-Full.jpg'),
(24, 'MEZCO Exclusive Thundercats Mega Scale Lion-o Deluxe Edition', 1, '45.00', 20, 'Straight from Third Earth comes the leader of the Thundercats, Lion-O. This mega scale figure measures over 14â€³ tall from the top of his head to the soles of his Thunderian boots. This deluxe version comes complete with 2 interchangeable heads: a roaring mouth for battle and a serious closed mouth face for when he is planning his next clash with Mumm-Ra.\r\n\r\nFeaturing 7 points of articulation this mega figure is carefully detailed, perfectly capturing not only the iconic look of Lion-O as he appeared in the classic television series, but the essence, of Lion-O as he proudly raises the mystic Sword of Omens towards the heavens and roars out â€œThundercats, Ho!\"\r\n\r\nMint In Box a must have for any Thundercats Fan', '', 'AF-Thundercats.jpg', 'AF-Thundercats-Full.jpg'),
(25, 'Mezco Toyz Hellraiser Pinhead 6â€³ Stylized Action Figure', 1, '28.00', 20, 'Brand New Fresh In Box\r\n\r\nGreat Collectible for any Pinhead fan\r\n\r\nThe Lament Configuration has been solved and Pinhead has been summoned.', '', 'AF-Pinhead-Two.jpg', 'AF-Pinhead-Full.jpg'),
(26, 'Doctor Who Series 9 Missy in Bright Purple Outfit 5.5â€³ Variant Collector Figure', 1, '24.99', 1, 'Series 9 Missy Variant in Bright Purple Outfit 5.5â€³ Collector Figure\r\n\r\nThe Bright Purple Variant Missy Collector Figure features the Series 9 logo on the front of the pack\r\n\r\nIn hand, this variant has a brighter purple finish, off-white shirt, yellow and white brooch, and a vertical black braid detail on the front of the skirt', '', 'AF-DrWho.jpg', 'AF-DrWho-Full.jpg'),
(27, 'Wonder Woman Essentials', 1, '24.99', 3, 'Recreates the New 52 incarnation of the fan-favorite Amazon from DC Entertainmentâ€™s top super-team, the Justice League\r\n\r\nExceptional detail\r\n\r\nGenerous articulation\r\n\r\nFigure stands 6.75â€³ high\r\n\r\nLimited edition', '', 'AF-WW.jpg', 'AF-WW-Full.jpg'),
(28, 'Action Comics Godzilla', 2, '400.00', 1, 'You may be either an Action Comics reader or a Godzilla fan. Do you notice that Doug painted this in such a way that the items up close are sharp and in focus and the items further away are a bit out of focus. How cool is that? Even after a year, you will still notice new things in the painting whenever you look at it. Look at the bag of marbles. You probably had that exact bag of marbles when you was a kid. And you probably recognize a lot of those marbles too. If only you had kept them (read if only your Mom hadnâ€™t thrown them out when you went to college). Doug loves the sensation of painting different textures. Quote from Doug: â€œFor me, it is a challenge. Can I do this? Can I paint in oil paint to look like a Crayola mark on a coloring book? Can I paint newspaper to look like a newspaper? Or plastic to look like plastic?â€ These are not photos. They are limited edition reproductions on canvas of original oil paintings by Doug Bloodworth.', '', 'Art-Godzilla.jpg', 'Art-Godzilla-Full.jpg'),
(29, 'Batman by Doug Bloodworth', 2, '400.00', 1, 'Batman by Doug Bloodworth Hand-Signed and Numbered', '', 'Art-Batman.jpg', 'Art-Batman-Full.jpg'),
(30, 'Superman by Doug Bloodworth', 2, '400.00', 1, 'Superman by Doug Bloodworth Hand-Signed and Numbered', '', 'Art-Superman.jpg', 'Art-Superman-Full.jpg'),
(31, 'Swampthing by Doug Bloodworth', 2, '400.00', 1, 'Swamp Thing by Doug Bloodworth Hand-Signed and Numbered', '', 'Art-Swampthing.jpg', 'Art-Swampthing-Full.jpg'),
(32, 'Wonder Woman by Doug Bloodworth', 2, '400.00', 1, 'Wonder Woman by Doug Bloodworth Hand-Signed and Numbered', '', 'Art-WW.jpg', 'Art-WW-Full.jpg'),
(33, 'BATMAN Classic TV Series ROBIN Vinyl Bust Bank from Diamond Select 2014', 3, '25.00', 20, 'A Diamond Select Toys release\r\n\r\nRecreates the Boy Wonder as he appeared in the Batman Classic TV Series, Durable vinyl\r\n\r\nBust is 8â€³ high, Detailed sculpting and paint', '', 'Banks-Robin-One.jpg', 'Banks-Robin-One-Full.jpg'),
(34, 'DC Comics Batman Penguin Figure Statue Bust Licensed Piggy Coin Bank', 3, '15.00', 20, 'Made of durable plastic\r\n\r\nUnique item for The Penguin fans\r\n\r\nSlot for money in back', '', 'Banks-DC-Penguin.jpg', 'Banks-DC-Penguin-Full.jpg'),
(35, 'Diamond Select DC Robin 8â€³ Vinyl Bust Coin Bank', 3, '15.00', 20, 'Made of durable plastic\r\n\r\nUnique item for Robin fans\r\n\r\nSlot for money in back', '', 'Banks-Robin-Two.jpg', 'Banks-Robin-Two-Full.jpg'),
(36, 'Diamond Select Toys Batman 1966 Classic TV Series Batphone Vinyl Bank', 3, '34.00', 20, 'A Diamond Select Toys Release! Your personal Batcave is almost complete, but no Batcave is complete without a bright red telephone! \r\n\r\nThis life-sized vinyl bank, based directly on the red phone seen in the Batman Classic TV Series, may not connect you with Commissioner Gordon, but it will hold your loose change, thanks to a slot in the top and an access door in the base! \r\n\r\nUse it to save up for that Batmobile youâ€™ve always wanted! \r\n\r\nPackaged in a full-color window box. \r\n\r\nSculpted by Paul Harding!', '', 'Banks-DC-Phone.jpg', 'Banks-DC-Phone-Full.jpg'),
(37, 'Marvel Black Panther Bust Bank Action Figure', 3, '18.00', 20, 'High Quality & Detail\r\n\r\nMakes a great gift\r\n\r\nFigural Bust Bank', '', 'Banks-BP.jpg', 'Banks-BP-Full.jpg'),
(38, 'Monogram Marvel Heroes: Deadpool Head Bank Statue', 3, '24.99', 1, 'From Monogram Products. Marvel Comicsâ€™ Merc with a Mouth stands ready to protect your coinage with this happeninâ€™ head bank!\r\n\r\nBased on Marvel Comicsâ€™ Merc with a Mouth\r\n\r\nDepicts Wade Wilson in his classic red gear, Finely sculpted head with realistic details\r\n\r\nA great way to safeguard your change\r\n\r\nClassic red and black color scheme', '', 'Banks-Deadpool.jpg', 'Banks-Deadpool-Full.jpg'),
(39, 'Monogram Marvelâ€™s Guardians of The Galaxy: Rocket Raccoon Coin Bank', 3, '15.00', 20, 'Based onGuardians of Galaxy Rocket Raccoon Figural Bank â€“ Exclusive: Just in time to save the galaxy! Exclusive figural bank features Rocket Raccoon! Limited edition from Marvel Comicsâ€ Guardians of the Galaxy movie. Display base includes a gunmetal-color logo on a blue background. Entertainment Earth Exclusive! From Marvel Comicsâ€ Guardians of the Galaxy movie, comes this incredibly detailed Guardians of the Galaxy Rocket Raccoon Figural Bank. This Entertainment Earth Exclusive version has a gunmetal-color Guardians of the Galaxy word logo on a blue background display base. \r\n\r\nThe 10-inch tall Guardians of the Galaxy Rocket Raccoon Figural Bank â€“ Entertainment Earth Exclusive is a limited edition that makes an excellent addition to any budget-conscious collectorâ€s shelf. Ages 4 and up. The breakout character of Marvel Studiosâ€™ Guardians of the Galaxy. \r\n\r\nRocket is show in an action pose \r\n\r\nDetailed sculpting,Fun & functional.', '', 'Banks-Rocket.jpg', 'Banks-Rocket-Full.jpg'),
(40, 'Monopoly Oversized Car Bank', 3, '18.99', 20, 'Celebrate the 80th anniversary of MONOPOLY with USAopolyâ€™s new line of collectible vinyl oversized Monopoly token banks featuring your favorite iconic tokens!', '', 'Banks-Car.jpg', 'Banks-Car-Full.jpg'),
(41, 'Monopoly Oversized Hat Bank', 3, '18.99', 20, 'Celebrate the 80th anniversary of MONOPOLY with USAopolyâ€™s new line of collectible vinyl oversized Monopoly token banks featuring your favorite iconic tokens!', '', 'Banks-Hat.jpg', 'Banks-Hat-Full.jpg'),
(42, 'Universal Monsters Metaluna Mutant B&W Bust Bank', 3, '18.00', 20, 'A Diamond Select Toys Release, Based on the sci-fi classic This Island Earth\r\n\r\nHigh-quality sculpting and paint details\r\n\r\nCoin slot in back', '', 'Banks-Monster.jpg', 'Banks-Monster-Full.jpg'),
(43, 'Barbie Advent Calendar', 4, '19.99', 2, 'Celebrate the holidays in signature style with this Barbie advent calendar! Depicting a festive background with a modern look and sparkling print, girls will love opening a compartment each day â€” for 24 days â€” to discover a fab fashion, cool accessories and even a gift for the girl! With fashion items like shoes, purses and jewelry, as well as go-to pieces like a wrapped present, camera and hair dryer, girls will love playing out Barbie dollâ€™s busy holiday schedule when anything is possible. And in the 24th compartment, theyâ€™ll find an accessory they can wear to look festive too! The calendar includes 24 items. Doll sold separately. Colors and decorations may vary.', '', 'Barbie-Cal.jpg', 'Barbie-Cal-Full.jpg'),
(44, 'Adventures In Middle Earth Loremasterâ€™s Guide', 5, '39.99', 1, 'The Loremasterâ€™s Guide offers expanded rules, new options, a Wilderland bestiary, guidance on making magic items, and tons of advice for the Loremaster.', '', 'Book-Adven-One.jpg', 'Book-Adven-One-Full.jpg'),
(45, 'Adventures in Middle Earth: Playerâ€™s Guide', 5, '39.99', 1, '11 Middle-earth specific playable Cultures, 6 New and unique Classes, 13 New Backgrounds custom-made for Middle-earth, Middle-earth appropriate arms and armour, Unique Journey rules, New rules for Corruption, New Audience rules, Rules for The Fellowship Phase, Middle-earth maps (as the end papers) for Players and Loremasters', '', 'Book-Adven-Two.jpg', 'Book-Adven-Two-Full.jpg'),
(46, 'All Star Batman Vol. 1: My Own Worst Enemy (Rebirth) Hardback', 5, '16.99', 2, 'From the #1 New York Times best-selling author of BATMAN, Scott Snyder, comes his newest Dark Knight project as a part of DC Universe Rebirth, ALL-STAR BATMAN VOL. 1: MY OWN WORST ENEMY! \r\n\r\nSnyder is one of the most critically acclaimed authors in the comics world, with titles that include the genre-defining BATMAN VOL. 1: THE COURT OF OWLS, as well as BATMAN: BLACK MIRROR and AMERICAN VAMPIRE. But this time, he teams with Eisner Award-winning illustrator and comics legend John Romita Jr. (Avengers, THE DARK KNIGHT RETURNS: THE LAST CRUSADE) and critically acclaimed artist Declan Shalvey (Moon Knight)!', '', 'Book-AS-Bat-One.jpg', 'Book-AS-Bat-One-Full.jpg'),
(47, 'All Star Batman Vol.2: Ends of the Earth (Rebirth) Hardcover', 5, '22.99', 2, 'New York Times best-selling writer Scott Snyder, author of such instant-classic BATMAN graphic novels as THE COURT OF OWLS, DEATH OF THE FAMILY and ENDGAME, joins forces with an all-star lineup of comicsâ€™ top artists to bring the madness and menace of some of the Dark Knightâ€™s greatest villains into the modern era with ALL-STAR BATMAN VOL. 2: ENDS OF THE EARTH (Rebirth).', '', 'Book-AS-Bat-Two.jpg', 'Book-AS-Bat-Two-Full.jpg'),
(48, 'All-Star Batman Vol. 1: My Own Worst Enemy (Rebirth) Paperback', 5, '24.99', 1, 'From the #1 NEW YORK TIMES best-selling author of BATMAN, Scott Snyder, comes his newest Dark Knight project as a part of DC Universe Rebirth, ALL-STAR BATMAN VOL. 1: MY OWN WORST ENEMY!', '', 'Book-AS-Bat-Three.jpg', 'Book-AS-Bat-Three-Full.jpg'),
(49, 'BCW Short Comic Book Storage Box House â€“ (Bundle of 10)', 5, '5.99', 2, 'Comic Book Short House is a reinforced â€œouter shellâ€ in which a heavy-duty short box (sold separately) will slide. This combination allows you to stack boxes up to six boxes high, while still being able to instantly access any one of the boxesâ€™ contents without rearranging stacks of heavy comic boxes.\r\nShort House consists of two parts: the drawer (any regular short box) and the shell, one outer sleeve and reinforcement inner sleeve which makes the shell even more sturdy. The pieces are formed from white 275 lb-test cardboard.', '', 'Book-Storage.jpg', 'Book-Storage-Full.jpg'),
(50, 'Color Your Own Star Wars: Darth Vader Paperback', 5, '9.99', 2, 'Wield your pencils, markers or crayons like a lightsaber and bring life to the world of one of the greatest villains of all â€“ Darth Vader! For the Dark Lord is rendered here in 60 pages of crisp black and white, and he fi nds the lack of color disturbing! Vader is waiting for you to add the shades to the legendary struggle between the Empire and the rebels â€“ and heâ€™s brought along more Star Wars bad guys, like Boba Fett, Jabba the Hutt and the all-new rogues: Dr. Aphra, BeeTee, Triple-Zero and Black Krrsantan! Feel the power of the dark side, and go to town with your charcoals â€“ or bring out the Sith Lordâ€™s rarely seen lighter side with pastels! Use the Force, or press lightly! But whatever you do, join Vader, and together you can rule this coloring book!', '', 'Book-StarWars-Coloring.jpg', 'Book-StarWars-Coloring-Full.jpg'),
(51, 'Games Workshop Black Library Dante Novel', 5, '26.99', 1, 'For the first time, discover the history of the glorious Blood Angels Commander Dante and his many centuries serving the Imperium.', '', 'Book-Workshop-Dante.jpg', 'Book-Workshop-Dante-Full.jpg'),
(52, 'DC Meets Hanna-Barbera Paperback', 5, '16.99', 1, 'DCâ€™s iconic superheroes meet some of Hanna-Barberaâ€™s best-loved characters in the most unexpected stories of the year, collected here in DC MEETS HANNA-BARBERA.\r\nWhen Booster Gold tries to rescue future Earth from an alien invasion, he travels back in time and finds help from none other than Fred Flintstone and Barney Rubble! In an unexplored sector of space, Green Lantern and Space Ghost join forces to help an alien race facing disaster! Adam Strange lands on an unfamiliar Earth, and only Jonny Quest, Hadji, Dr. Quest and Race Bannon can help him get home! And when Amanda Waller needs to rescue the Suicide Squad, she reaches out to the newest inmates in Belle Reve: animal rock band the Banana Splits!', '', 'Book-DC-Hanna.jpg', 'Book-DC-Hanna-Full.jpg'),
(53, 'Games Workshop Death Guard Codex', 5, '39.99', 1, 'Everything you need to get a Death Guard army primed for games of Warhammer 40,000 is in here:\r\n33 datasheets containing rules for every Death Guard unit;\r\nâ€“ Army abilities reflecting the Death Guardâ€™s methods of war;\r\nâ€“ Gifts of the Plague God: wargear both ranged and close-combat used by the Death Guard;\r\nâ€“ Points values for all miniatures, weapons and wargear for use in Matched Play games;\r\nâ€“ Scions of Mortarion: rules for Battle-forged armies:\r\nâ€“ 6 unique Warlord Traits,\r\nâ€“ 14 unique Stratagems (with a focus on the psychic might of this army),\r\nâ€“ the Relics of Decay (6 rare artefacts unique to the Death Guard),\r\nâ€“ the unique Contagion psychic discipline, available to all Death Guard psykers;\r\nâ€“ 6 unique Tactical Objectives.', '', 'Book-Death-Codex.jpg', 'Book-Death-Codex-Full.jpg'),
(54, 'Descending Stories: Showa Genroku Rakugo Shinju 1 Paperback', 5, '12.99', 2, 'A hapless young man is released from prison with nothing to his name, but he knows exactly what he wants: to train in the art of rakugo comedic storytelling. After seeing an unforgettable performance from one of Japanâ€™s greatest masters, Yakumo Yurakutei VIII, during his time in jail, he will settle for nothing less than to become apprentice to the best. Yakumo, notorious for taking no students, is persuaded to take him on, and nicknames him Yotaroâ€”the fool. Yotaro has no formal training or elegance, but something about his charisma reminds Yakumo of someone from his past.', '', 'Book-Showa.jpg', 'Book-Showa-Full.jpg'),
(55, 'Draxius Lost Paperback', 5, '7.99', 2, 'â€œYou need to realize leadership isnâ€™t a sprint. Itâ€™s a marathon and a team marathon at that. Even if youâ€™re the fastest, sometimes you have to turn around and come back to help the slower ones. If you show them you care about the team, about them, then youâ€™re all running the same race. Thatâ€™s when youâ€™ll really see what they can do.â€ The clandestine war between the Xen Empire and the Terillian Confederation continues. The Dark Zoneâ€”officially called the Neutral Quadrantâ€”is littered with the bodies of countless soldiers from both sides. It is into this wasteland that Lieutenant Emily Martin and her crew set out on a recon mission to investigate a planet they suspect contains an illegal Terillian base. Why have the Terillians violated the Peace Accords, and what are they so desperate to protect? It doesnâ€™t take them long, however, to run into a squad of Terillian fighters. Outmatched and outgunned, Lieutenant Martin and her crew make a desperate gamble for survival, aiming their ruined ship for a crash landing at the planet below. There the fight for survival takes a vicious turn. Itâ€™s not only the Terillians and the inhospitable ecosystem of the planet that Lieutenant Martin must defeat, but also dissent from within her own ranks. Her superior officer has no combat skills and her crew questions Emilyâ€™s own leadershipâ€”skills both her men and her superior officers report are sorely lacking. With the odds this stacked against her, how can Lieutenant Martin ever possibly survive, much less uncover what the Terillians are hiding? Lieutenant Emily Martin didnâ€™t become the only female officer ever in the Elite Guard because she thought it would be easy, but this battle could easily prove to be her last.', '', 'Book-Draxius-Lost.jpg', 'Book-Draxius-Lost-Full.jpg'),
(56, 'Draxius Redeemed: A Gateway Novella Paperback', 5, '7.99', 2, 'â€œâ€˜Move,â€™ she said to herself, reluctantly stepping over the girlâ€™s body toward the door. In the few steps between the dead youth and the exit, the disgust that hung over her suddenly transitioned to a spark and then an inferno of rage. She had to complete the missionâ€”and the mission was just.â€ Her ship Draxiusâ€”destroyed. Her platoonâ€”scattered, captured, or killed. Her enemiesâ€”numerous and powerful. Stranded in the icy swamps of planet Golf 2, deep in the Neutral Quadrantâ€”better known as the Dark Zoneâ€”Lieutenant Emily Martin stands on the verge of becoming one more body among the countless casualties in the covert war between the Xen Empire and the Terillian Confederation. Despite the destruction of her ship and the deaths of her fellow Guardsmen, despite the threat of enemy warriors slinking through the hostile landscape, the mission remains: rescue her captured brothers in arms and find out what the Terillians are up to on this isolated, inhospitable rock. With few resources and few allies, the odds are mightily stacked against Lieutenant Martin. But thatâ€™s never stopped her before.', '', 'Book-Draxius-Gateway.jpg', 'Book-Draxius-Gateway-Full.jpg'),
(57, 'Gateway (Volume 1) Paperback', 5, '15.99', 2, 'Major Tyler Stone stands at the precipice of greatness. After years of faithful service to the Republic, everything seems to be coming togetherâ€”a promotion, an engagement to a beautiful (and powerful) woman, and the restoration of his traditional family name promise to restore his family to its long lost place among Alpha Humanaâ€™s elite. But his world suddenly begins to crumble when deceit and defeat bring him face to face with the enemyâ€”an enemy that turns his perception of the galaxy on its ear, challenging his understanding of his civilization and his own identity. Now Stone must choose between duty and honor as he struggles to understand the nature of the war the Humani have been waging for so many generations.', '', 'Book-Gateway.jpg', 'Book-Gateway-Full.jpg'),
(58, 'KENK: A Graphic Portrait Paperback', 5, '9.99', 1, 'KENK: A Graphic Portrait is an award-winning, 300-page, journalistic comic book surrounding Igor Kenk, â€œthe worldâ€™s most prolific bicycle thiefâ€ (The New York Times and The Guardian). In the summer of 2008, Kenk was arrested and nearly 3,000 bicycles were seized in what became one of the biggest news stories of the year. Built from an incredible mix of candid, filmed interviews prior to his arrest, found footage and archival material, treated with a dazzling visual style, KENK is a thought-provoking and surprisingly funny journalistic profile of an outsize neighborhood figure and a city in flux (in the tradition of New Yorker masters Joseph Mitchell and A.J. Liebling). KENK is a one-of-a-kind profile â€“ a mash-up of mediums that culminates in a marriage of thorough investigative journalism and the comic book form in an entirely new way.', '', 'Book-Kenk.jpg', 'Book-Kenk-Full.jpg'),
(59, 'Games Workshop Black Library Magnus The Red Novel', 5, '18.99', 1, 'Fighting in the Great Crusade beside his staunchly anti-mystical brother Perturabo, the psychic primarch Magnus and his Legion of knowledge-seekers must walk a fine line between their mission and their own desire to learn forbidden secrets.', '', 'Book-Workshop-Magnus.jpg', 'Book-Workshop-Magnus-Full.jpg'),
(60, 'Games Workshop Black Library Mephiston Graphic Novel', 5, '26.99', 1, 'A religious civil war brings the Blood Angels, commanded by Chief Librarian Mephiston, to a shrine world where they find a mystery that might help Mephiston understand how he survived the Black Rage â€“ and perhaps cure the Blood Angels of their affliction.', '', 'Book-Workshop-Mephiston.jpg', 'Book-Workshop-Mephiston-Full.jpg'),
(61, 'Mister Miracle by Jack Kirby (New Edition) Paperback', 5, '29.99', 1, 'Jack Kirby reinvented the superhero genre with his sprawling saga of the Fourth World â€”a bold storytelling vision that was decades ahead of its time. In honor of this extraordinary talentâ€™s centennial, DC Comics is proud to re-present the groundbreaking work of the King of Comics in a brand-new series of trade paperback editions collecting his classic DC titles in all their four-color glory: MISTER MIRACLE BY JACK KIRBY (New Edition)!', '', 'Book-Miracle.jpg', 'Book-Miracle-Full.jpg'),
(62, 'Marvel: The New Avengers Vol. 3 Hardcover', 5, '11.99', 1, 'Get ready for some old-school Avengers blockbuster action as Norman Osborn returns in a blistering new storyline! HAMMER is becoming a force to be reckoned with and the followers of Osborn are ready. The New Avengers/HAMMER showdown is one for the record books â€“ and heralds the return of the Dark Avengers! What insanity is about to be unleashed on the world and what can the Avengers do to stop it?! And wait until you find out who is behind the Dark Avengersâ€™ masks! Actually, wait until the Avengers find out who is behind the masks!', '', 'Book-Avengers.jpg', 'Book-Avengers-Full.jpg'),
(63, 'Poe: Stories and Poems: A Graphic Novel Adaptation', 5, '12.99', 1, 'In a thrilling adaptation of Edgar Allan Poeâ€™s best-known works, acclaimed artist-adapter Gareth Hinds translates Poeâ€™s dark genius into graphic-novel format.\r\n\r\nIt is true that I am nervous. But why will you say that I am mad?\r\n\r\nIn â€œThe Cask of Amontillado,â€ a man exacts revenge on a disloyal friend at carnival, luring him into catacombs below the city. In â€œThe Masque of the Red Death,â€ a prince shielding himself from plague hosts a doomed party inside his abbey stronghold. A prisoner of the Spanish Inquisition, faced with a swinging blade and swarming rats, canâ€™t see his tormentors in â€œThe Pit and the Pendulum,â€ and in â€œThe Tell-Tale Heart,â€ a milky eye and a deafening heartbeat reveal the effects of conscience and creeping madness. Alongside these tales are visual interpretations of three poems â€” â€œThe Raven,â€ â€œThe Bells,â€ and Poeâ€™s poignant elegy to lost love, â€œAnnabel Lee.â€ The seven concise graphic narratives, keyed to thematic icons, amplify and honor the timeless legacy of a master of gothic horror.', '', 'Book-Poe.jpg', 'Book-Poe-Full.jpg'),
(64, 'Rick and Morty Official Coloring Book Paperback', 5, '14.99', 2, 'Nobody belongs anywhere, nobody exists on purpose, everybodyâ€™s going to dieâ€¦ come do some coloring.\r\nBurrrp, weâ€™ve got all your favorites: Krombopulos Michael, meeseeks, plumbuses and more. Prepare for intricate adult coloring patterns and high-concept sci-fi rigmarole in the best coloring book in dimension C-137! Peace among worlds Rick and Morty fansâ€¦ peace among worlds.', '', 'Book-RickMorty.jpg', 'Book-RickMorty-Full.jpg'),
(65, 'Rise of the Dungeon Master: Gary Gygax and the Creation of D&D Paperback', 5, '12.99', 20, 'Rise of the Dungeon Master tells, in graphic form, the story of Gary Gygax, co-creator of Dungeons & Dragons, one of the most influential games ever made. Like the game itself, the narrative casts the reader into the adventure from a first person point of view, taking on the roles of the different characters in the story.\r\n\r\nGygax was the son of immigrants who grew up in Lake Geneva, WI, in the 1950s. An imaginative misfit, he escaped into a virtual world based on science fiction novels, military history and strategic games like chess. In the mid-1970s, he co-created the wildly popular Dungeons & Dragons game. Starting out in the basement of his home, he was soon struggling to keep up with the demand. Gygax was a purist, in the sense that he was adamant that players use their imaginations and that the rules of the game remain flexible. A creative mind with no real knowledge of business, he made some strategic errors and had a falling out with the gameâ€™s co-creator, his close friend and partner, David Arneson.', '', 'Book-GaryGygax.jpg', 'Book-GaryGygax-Full.jpg'),
(66, 'Saint: Gateway Series Book 2 Paperback', 5, '12.99', 2, 'As the galaxy spirals into open warfare, Tyler Stone has joined forces with his former enemies, the Terillians. Stone now knows the new war has been manufactured by the First Families to satisfy the Xen Empireâ€™s demand for more slavesâ€”a move necessitated by the spread of a deadly virus that is killing off huge portions of their human chattel. Complicating matters is the Saint, a con-man turned messiah who begins to unite the planets under his brand of religionâ€”one that creates fanatical followers. Stone must confront not only the enemy but challenges to his own identity while he and his companions battle to save millions from enslavement and death.', '', 'Book-Saint.jpg', 'Book-Saint-Full.jpg'),
(67, 'Warhammer 40K Black Library Slaughter At Giants Coffin', 5, '23.99', 1, 'Devastated by the tyranids, remnants of the Scythes of the Emperor Chapter gather at a Chapter outpost to regroup. But the relentless menace of the hive fleets is close, and the battered Space Marines must rally for what might be their final standâ€¦', '', 'Book-Warhammer-Giants.jpg', 'Book-Warhammer-Giants-Full.jpg'),
(68, 'Tribute Edition: Out from Boneville (BONE #1) Hardcover', 5, '14.99', 1, 'A special tribute edition of the NEW YORK TIMES bestselling graphic novel that launched Scholasticâ€™s Graphix imprint. Includes 48 pages of bonus material!\r\n\r\nIn 2005, Scholastic launched Graphix, an imprint solely dedicated to publishing graphic novels for children and teens, with the publication of Jeff Smithâ€™s BONE in full color. To celebrate ten years of publishing, we offer this special tribute edition of Out from Boneville. Rediscover the world of BONE . . . or explore it for the first time. Join Fone Bone, Phoney Bone, and Smiley Bone at the beginning of their incredible journey filled with wonderful and terrifying creatures. And as an extra treat, inside youâ€™ll find minicomics and artwork inspired by BONE and the lasting impact itâ€™s had on our culture.', '', 'Book-Boneville.jpg', 'Book-Boneville-Full.jpg'),
(69, 'Uprising: Gateway Book 3', 5, '12.99', 2, 'Tyler Stone has become the most hunted man in the known galaxy. Branded a traitor and reviled by the very people he hopes to save, he must find a way to be true to himself and his people while the combined might of the Xen Empire is focused on making a bloody example of him to any that would oppose their rule. But he is not alone. Besides his loverâ€“the fierce warrior Major Mori Skyeâ€“his former subordinate, Emily Martin, has realized the lie under which she had fought and killed and has joined forces with her former commander. Although she publicly leads the campaign to arrest him, Martinâ€™s true mission is a clandestine plot to spark an uprising. But Astra Varus, the leader of the Humani, is as clever as she is ruthless. If Martin isnâ€™t careful, her actions could not only betray Stone, but lead to her own death as well. Despite the chaos surrounding him as galactic warfare consumes more and more planets, the greatest resistance Stone faces is from within as he prepares to lead the attack on his own homeworld: Alpha Humana itself', '', 'Book-Gateway-Two.jpg', 'Book-Gateway-Two-Full.jpg'),
(70, 'Calico Critters Adventure Treasure Ship', 6, '29.99', 1, 'Includes 4 secret compartments, lookout tower with steering wheel and crowâ€™s nest, slide, bridge, lifesaver swing, treasure chest, 4 treasure pieces, crown, water piece, fishing net, binoculars with strap, flag, 2 ship railings, map and 8 card inserts\r\n\r\nConnects to Splash and Play Whale\r\n\r\nShip measures 11 1/4â€³ x 5 1/2â€³ x 5â€³. All accessories are 1:24 scale and proportional\r\n\r\nCalico Critters sold separately\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Treasure-Ship.jpg', 'CC-Treasure-Ship-Full.jpg'),
(71, 'Calico Critters Caravan Family Camper', 6, '79.95', 1, 'Over 35 Accessories including round table, plates, cups, utensils, pots, pan, sleeping bags, maps, â€œboard gamesâ€, iron, soap, towel and much more! Critters and other vehicles sold separately.\r\n\r\nAll furniture is 1:24 scale and is proportional\r\n\r\nThe Camper measures 17â€³ x 9.5â€³ x 13.5â€³ opened and 7.25â€³ x 11.5â€³ x 7.25â€³ closed\r\n\r\nCalico Critters and other vehicles sold separately.\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Caravan.jpg', 'CC-Caravan-Full.jpg'),
(72, 'Calico Critters Cherry Cruiser', 6, '34.99', 20, 'Cherry Cruiser includes foldable picnic table, baby seat with safety strap, 2 meal trays with cup holders, 2 cans of juice, 4 sandwiches, serving basket and a basket of food\r\n\r\nConnects to the Caravan Family Camper (sold separately)\r\n\r\nCherry Cruiser measures 10.2â€³ x 5â€³ x 6.8â€³\r\n\r\nCan be used independently or with all Calico Critters accessories\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!\r\n', '', 'CC-Cherry-Car.jpg', 'CC-Cherry-Car-Full.jpg'),
(73, 'Calico Critters Chocolate Labrador Family Doll Set', 6, '22.99', 20, 'Includes father Bruno, mother Sienna, sister Ruby, and brother Charlie.\r\n\r\nAll come with removable detailed clothing, have jointed arms and legs, and heads that turn\r\n\r\nBruno and Sienna Chocolate Labrador measure approximately 3â€ tall. Ruby and Charlie\r\n \r\nChocolate Labrador are approximately 2.25â€ tall\r\n\r\nCan be used independently or with all Calico Critters houses\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Lab-Fam.jpg', 'CC-Lab-Fam-Full.jpg'),
(74, 'Calico Critters Cozy Cottage Starter Home', 6, '49.95', 1, 'The cute beige, red-roofed 2-story house is designed just for the Hopscotch Rabbit Family, but can host all other Calico Critters as well\r\n\r\nIncludes a moveable, reversible floor to use as a front yard, expand the 1st floor, or create a 2 story house, and 1 Critter\r\n\r\nThe Cozy Cottage Starter Home measures 10.5â€ x 8â€ x 10.75â€\r\n\r\nCan be used independently or with all Calico Critters houses\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Cozy-Cot.jpg', 'CC-Cozy-Cot-Full.jpg'),
(75, 'Calico Critters Deluxe Living Room Set', 6, '27.99', 20, 'Over 40 Accessories including a couch and matching chairs, coffee table, coffee maker, newspapers, magazine rack, picture, clock and many more accessories to add realism.\r\n\r\nDesigned to furnish the Calico Critters Homes. Critters and Homes sold separately.\r\n\r\nDesigned to furnish the Calico Critters Homes (sold separately)\r\n\r\nAll furniture is 1:24 scale and is proportional\r\n\r\nCalico Calico Critters sold separately\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!\r\n', '', 'CC-Live-Room.jpg', 'CC-Live-Room-Full.jpg'),
(76, ' Calico Critters Doughnut Store', 6, '24.99', 20, 'Over 25 pieces including Carol Cuddle Bear in her special outfit, display stand, assorted doughnuts, muffins, tea set, take out containers and more!\r\n\r\nAll accessories are 1:24 scale and are proportional\r\n\r\nCarol Cuddle Bear is approximately 3â€ tall\r\n\r\nCan be used independently or with all Calico Critters accessories\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Doughnut.jpg', 'CC-Doughnut-Full.jpg'),
(77, 'Calico Critters Family Seven Seater', 6, '39.95', 1, 'Includes two detachable seats, 3 baby seats with safety straps, map, and guide book. Doors open, wheels rotate, second row seats are moveable to enable changes in seating orientation\r\n\r\nCan be used independently or with all Calico Critters accessories\r\n\r\nVehicle measures 10â€³ x 5â€³ x 4.8â€³\r\n\r\nCalico Critters sold separately\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!\r\n', '', 'CC-Fam-Seven.jpg', 'CC-Fam-Seven-Full.jpg'),
(78, 'Calico Critters Hopscotch Rabbit Family', 6, '22.99', 20, 'Includes mother Heidi, father Harlin, sister Bell, and brother Skip\r\n\r\nAll come with removable detailed clothing, have jointed arms and legs, and heads that turn\r\n\r\nHeidi and Harlin Hopscotch Rabbit measure approximately 3â€ tall. Bell and Skip Hopscotch\r\n \r\nRabbit are approximately 2.25â€ tall\r\n\r\nCan be used independently or with all Calico Critters houses\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Hops-Fam.jpg', 'CC-Hops-Fam-Full.jpg'),
(79, 'Calico Critters Hopscotch Rabbit Grandparents', 6, '19.95', 20, 'Includes grandparents George and Patricia, 2 pairs of eyeglasses with cords and removable detailed clothing\r\n\r\nCritters have jointed arms and legs and heads that turn.\r\n\r\nGrandparents George and Patricia Hopscotch Rabbit measure approximately 3â€ tall\r\n\r\nCan be used independently or with all Calico Critters houses\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!\r\n', '', 'CC-Hops-GP.jpg', 'CC-Hops-GP-Full.jpg'),
(80, 'Calico Critters Hot Dog Van', 6, '39.99', 4, 'Over 40 pieces including yummy hot dogs, pretzels, waffles, fries, drinks and more! Tires and steering wheel rotate\r\n\r\nCan be used independently or with all Calico Critters accessories\r\n\r\nVan measures 9 1/2â€³ x 5â€³ x 6 1/2â€³\r\n\r\nCalico Critters sold separately\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Hot-Dog.jpg', 'CC-Hot-Dog-Full.jpg'),
(81, 'Calico Critters Lakeside Lodge Gift Set', 6, '99.99', 2, 'This gift set includes the Lakeside Lodge with sun deck/hot tub, balcony, attic & spacious 1st floor. The Family Seven Seater seats up to 7 critters and comes with 3 baby seats. Over 60 pieces of food and accessories for a fun party, and 2 Hopscotch Rabbits in their party dresses!\r\n\r\nFamily Seven Seater measures 10â€³ x 5â€³ x 4.75â€. Heidi Hopscotch Rabbit is approximately 3â€ tall and Bell Hopscotch Rabbit is approximately 2.25â€ tall\r\nLakeside Lodge measures 14â€³ x 7.5â€³ x 11â€\r\n\r\nCan be used independently or with all Calico Critters houses\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Lodge.jpg', 'CC-Lodge-Full.jpg'),
(82, 'Calico Critters Mango Monkey Family Doll Set', 6, '19.99', 1, 'Includes father Phil, mother Kemely, and sister Leyla\r\n\r\nAll come with removable detailed clothing, have jointed arms and legs, and heads that turn\r\nPhil and Kemely Mango Monkey measure approximately 3â€ tall. Leyla Mango Monkey is approximately 2.25â€ tall\r\n\r\nCan be used independently or with all Calico Critters houses\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Monkey.jpg', 'CC-Monkey-Full.jpg'),
(83, 'Calico Critters Outback Koala Family', 6, '22.99', 2, 'Includes mother Sheila, father Bruce, sister Adelaide, and baby Joey\r\nAll come with removable detailed clothing, have jointed arms and legs, and heads that turn\r\n\r\nSheila and Bruce Outback Koala measure approximately 3â€ tall. Adelaide Outback Koala is approximately 1.75â€ tall. Baby Joey Outback Koala is approximately 1.5â€ tall\r\n\r\nCan be used independently or with all Calico Critters houses\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Koala.jpg', 'CC-Koala-Full.jpg'),
(84, 'Calico Critters Pickleweeds Hedgehog Family', 6, '22.99', 5, 'Includes mother Heloise, father Harold, brother Harry, and sister Haley\r\nAll come with removable detailed clothing, have jointed arms and legs, and heads that turn\r\n\r\nHeloise and Harold Pickleweeds Hedgehog measure approximately 3â€ tall. Harry and Haley Pickleweeds Hedgehog are approximately 2.25â€ tall\r\n\r\nCan be used independently or with all Calico Critters houses\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Hedgehog.jpg', 'CC-Hedgehog-Full.jpg'),
(85, 'Calico Critters Pizza Delivery Set', 6, '24.99', 6, 'Includes Harold Pickleweeds in uniform, pizza delivery scooter open and close storage compartment, 5 different types of sliced pizza, 2 pizza boxes, cutter and more!\r\n\r\nAll accessories are 1:24 scale and are proportional\r\n\r\nHarold Pickleweeds Hedgehog is approximately 3â€ tall\r\n\r\nCan be used independently or with all Calico Critters accessories\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Pizza.jpg', 'CC-Pizza-Full.jpg'),
(86, 'Calico Critters Seaside Camping Set', 6, '24.99', 2, 'Includes Suzie Silk Cat, tent, sleeping bag, campfire pit grill, 2 fish kebabs, 2 potatoes, 2 corncobs, 2 melon slices, 2 onion slices, cutting board, chopping knife, cooking tongs, 4 forks and 4 plates to add realism.\r\n\r\nOver 25 Pieces\r\n\r\nAccessories are 1:24 scale and are proportional\r\n\r\nAdditional Calico Critters sold separately\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Camping.jpg', 'CC-Camping-Full.jpg'),
(87, ' Calico Critters Seaside Merry-Go-Round', 6, '15.95', 1, 'Merry-go-round spins as you turn the handle\r\n\r\nAll accessories are 1:24 scale and proportional\r\n\r\nMerry-go-round measures 6â€³ x 41/2â€³ x 61/2â€³\r\n\r\nCalico Critters sold separately\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Seaside.jpg', 'CC-Seaside-Full.jpg'),
(88, 'Calico Critters Splash and Play Whale', 6, '19.99', 2, 'Features a fun slide, sand box, bucket, shovel, whale spout, and rocker!\r\n\r\nConnects to Adventure Treasure Ship\r\n\r\nWhale measures 7â€³ x 4 1/2â€³ x 4 1/2â€³. All accessories are 1:24 scale and proportional\r\n\r\nCalico Critters sold separately\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Whale.jpg', 'CC-Whale-Full.jpg');
INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `product_quantity`, `product_description`, `short_description`, `product_image`, `item_product_image`) VALUES
(89, 'Calico Critters Supermarket', 6, '69.99', 3, 'Supermarket features display stands, signs, awning, shopping cart, check-out counter, and cash register. Over 100 pieces of fruits, vegetables, bread, fish, pasta, cheese, canned food, drinks, cookies, ice cream, and much more!\r\n\r\nOver 100 pieces of fruits, vegetables, sweets, drinks & more\r\n\r\nSupermarket measures 11.5â€³ x 9â€³ x 6â€³\r\n\r\nCan be used independently or with all Calico Critters houses\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Market.jpg', 'CC-Market-Full.jpg'),
(90, 'Calico Critters Toy Shop', 6, '39.99', 3, 'Includes over 40 accessories; assorted toys, activity table, chalkboard, squeakers, rattles, building blocks, toy boxes to stock shelves, books & more!\r\n\r\nCan be used independently or with all Calico Critters figures, houses, shops and vehicles\r\n\r\nToy Shop measures 11â€³ x 6.8â€³ x 8â€³\r\n\r\nCalico Critters sold separately\r\n\r\nMix and match with other Calico Critters play sets to create a whole Calico Critters village!', '', 'CC-Toys.jpg', 'CC-Toys-Full.jpg'),
(91, 'All Star Batman Vol. 1: My Own Worst Enemy (Rebirth) Hardback', 7, '16.99', 2, 'From the #1 New York Times best-selling author of BATMAN, Scott Snyder, comes his newest Dark Knight project as a part of DC Universe Rebirth, ALL-STAR BATMAN VOL. 1: MY OWN WORST ENEMY! \r\n\r\nSnyder is one of the most critically acclaimed authors in the comics world, with titles that include the genre-defining BATMAN VOL. 1: THE COURT OF OWLS, as well as BATMAN: BLACK MIRROR and AMERICAN VAMPIRE. But this time, he teams with Eisner Award-winning illustrator and comics legend John Romita Jr. (Avengers, THE DARK KNIGHT RETURNS: THE LAST CRUSADE) and critically acclaimed artist Declan Shalvey (Moon Knight)!', '', 'Book-AS-Bat-One.jpg', 'Book-AS-Bat-One-Full.jpg'),
(92, 'All Star Batman Vol.2: Ends of the Earth (Rebirth) Hardcover', 7, '22.99', 2, 'New York Times best-selling writer Scott Snyder, author of such instant-classic BATMAN graphic novels as THE COURT OF OWLS, DEATH OF THE FAMILY and ENDGAME, joins forces with an all-star lineup of comicsâ€™ top artists to bring the madness and menace of some of the Dark Knightâ€™s greatest villains into the modern era with ALL-STAR BATMAN VOL. 2: ENDS OF THE EARTH (Rebirth).', '', 'Book-AS-Bat-Two.jpg', 'Book-AS-Bat-Two-Full.jpg'),
(93, 'All-Star Batman Vol. 1: My Own Worst Enemy (Rebirth) Paperback', 7, '24.99', 1, 'From the #1 NEW YORK TIMES best-selling author of BATMAN, Scott Snyder, comes his newest Dark Knight project as a part of DC Universe Rebirth, ALL-STAR BATMAN VOL. 1: MY OWN WORST ENEMY!', '', 'Book-AS-Bat-Three.jpg', 'Book-AS-Bat-Three-Full.jpg'),
(94, 'BATMAN Classic TV Series ROBIN Vinyl Bust Bank from Diamond Select 2014', 7, '25.00', 20, 'A Diamond Select Toys release\r\n\r\nRecreates the Boy Wonder as he appeared in the Batman Classic TV Series\r\n\r\nDurable vinyl\r\n\r\nBust is 8â€³ high\r\n\r\nDetailed sculpting and paint', '', 'Banks-Robin-One.jpg', 'Banks-Tobin-One-Full.jpg'),
(95, 'Color Your Own Star Wars: Darth Vader Paperback', 8, '9.99', 2, 'Wield your pencils, markers or crayons like a lightsaber and bring life to the world of one of the greatest villains of all â€“ Darth Vader! For the Dark Lord is rendered here in 60 pages of crisp black and white, and he fi nds the lack of color disturbing! Vader is waiting for you to add the shades to the legendary struggle between the Empire and the rebels â€“ and heâ€™s brought along more Star Wars bad guys, like Boba Fett, Jabba the Hutt and the all-new rogues: Dr. Aphra, BeeTee, Triple-Zero and Black Krrsantan! Feel the power of the dark side, and go to town with your charcoals â€“ or bring out the Sith Lordâ€™s rarely seen lighter side with pastels! Use the Force, or press lightly! But whatever you do, join Vader, and together you can rule this coloring book!', '', 'Book-StarWars-Coloring.jpg', 'Book-StarWars-Coloring-Full.jpg'),
(96, 'Loungefly Disney Princesses Backpack', 8, '44.99', 2, 'PRINTED NYLON BACKPACK\r\n\r\nINTERIOR HAS LAPTOP POCKET.\r\n\r\nMEASUREMENTS: W: 11.5â€³ X H: 17.5â€³ X D: 5â€³', '', 'Disney-Princess-BP.jpg', 'Disney-Princess-BP-Full.jpg'),
(97, 'Star Wars Darth Vader Sith Lord Badge Window Decal Action Figure', 8, '4.99', 1, 'Fanwraps window decals are made of a clear poly window film printed in full color to produce eye popping visuals.\r\n\r\nDIY installation\r\n\r\nAutomotive Grade materials\r\n\r\nUV & water resistant\r\n\r\nClean Removability', '', 'Disney-Vadar.jpg', 'Disney-Vadar-Full.jpg'),
(98, 'Adrenaline Board Game', 9, '59.99', 4, 'Adrenaline brings the classic first-person shooter video games to your table. Grab some ammo, take a gun, and start shooting. Build up an arsenal for a killer turn. Combat resolution is quick and dice less â€“ and if you get shot, you get faster! game includes 5 combatant miniatures.', '', 'GameBG-Adrenaline.jpg', 'GameBG-Adrenaline-Full.jpg'),
(99, 'Abyss', 9, '49.99', 1, 'Internal unrest brews among the court of the Abyss. The war like Crabs bring chaos against the wise mages of the Jellyfish while the merchant Shellfish wage trade wars against the insidious Squid politicians. Can you recruit the allies you need to master the lords of the Abyss? Venture to Abyss, where players must battle monsters, recruit allies and sway the great lords of the deep. The right hand of ally cards will let you control the lords who will help you seize the kingdoms of the Abyss. Be careful of your foes, though, because treachery abounds in the lands under the sea!', '', 'GameBG-Abyss.jpg', 'GameBG-Abyss-Full.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `slide_id` int(11) NOT NULL,
  `slide_title` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slide_id`, `slide_title`, `slide_image`) VALUES
(38, 'Thor Hammer', 'ThorHammer.jpg'),
(40, 'Yu-Gi-Oh Card w/ Logo', 'Yu-Gi-Oh-Card.jpg'),
(42, 'Avengers Infinity War Build-a-Figure', 'Avengers-Build-a-Figures.jpg'),
(43, 'Pokemon Spring 2018 Chest', 'Pokemon-Spring-2018-Chest.jpg'),
(44, 'Company Logo w/ Caption', 'nerdlogo2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'Nerdcore', 'Alex.test@yahoo.com', 'password1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
