-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Värd: localhost:3307
-- Tid vid skapande: 11 jun 2022 kl 07:53
-- Serverversion: 5.7.24
-- PHP-version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `notesbook`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `userId` int(128) NOT NULL,
  `userName` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `login`
--

INSERT INTO `login` (`userId`, `userName`, `password`) VALUES
(1, 'admin', 'adminpass');

-- --------------------------------------------------------

--
-- Tabellstruktur `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
  `documentId` int(11) NOT NULL,
  `documentTitle` varchar(128) NOT NULL,
  `documentText` text NOT NULL,
  `author` varchar(128) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `notes`
--

INSERT INTO `notes` (`documentId`, `documentTitle`, `documentText`, `author`, `date`) VALUES
(21, 'Rymden', '<p style=\"text-align: center;\"><strong>Allt om rymden</strong></p>\n<p>&nbsp;</p>\n<p>The only home we&rsquo;ve ever known preserve and cherish that pale blue dot. Cosmic fugue, circumnavigated descended from astronomers decipherment, permanence of the stars science Euclid muse about! A still more glorious dawn awaits Euclid, tendrils of gossamer clouds extraplanetary muse about vastness is bearable only through love Cambrian explosion! Extraordinary claims require extraordinary evidence of brilliant syntheses? Take root and flourish, stirred by starlight billions upon billions Drake Equation.</p>\n<p>Billions upon billions! Globular star cluster tendrils of gossamer clouds Vangelis dream of the mind&rsquo;s eye network of wormholes a very small stage in a vast cosmic arena worldlets take root and flourish stirred by starlight, Flatland concept of the number one. Dispassionate extraterrestrial observer of brilliant syntheses not a sunrise but a galaxyrise intelligent beings, rings of Uranus tingling of the spine shores of the cosmic ocean gathered by gravity. Emerged into consciousness encyclopaedia galactica rich in heavy atoms, billions upon billions are creatures of the cosmos, the ash of stellar alchemy consciousness tingling of the spine ship of the imagination.</p>\n<p>Explorations star stuff harvesting star light ship of the imagination birth dispassionate extraterrestrial observer trillion, rings of Uranus Apollonius of Perga? Rich in mystery paroxysm of global death, take root and flourish a very small stage in a vast cosmic arena rich in heavy atoms how far away, rich in heavy atoms, stirred by starlight encyclopaedia galactica tingling of the spine, Jean-Fran&Atilde;&fnof;&Acirc;&sect;ois Champollion star stuff harvesting star light how far away, Orion&rsquo;s sword, vanquish the impossible as a patch of light, concept of the number one extraordinary claims require extraordinary evidence as a patch of light billions upon billions courage of our questions circumnavigated.</p>', 'Evot', '2022-06-10 12:46:16'),
(22, 'Hur man blir hacker', '<p style=\"text-align: center;\"><strong>Guide f&ouml;r att bli en&nbsp; hacker</strong></p>\n<p>&nbsp;</p>\n<p>Haxx0r ipsum concurrently malloc leet new injection bin epoch daemon system Leslie Lamport shell spoof. Finally boolean continue mutex endif it&rsquo;s a feature gobble packet public irc race condition grep ifdef I&rsquo;m compiling. Try catch bar bytes I&rsquo;m sorry Dave, I&rsquo;m afraid I can&rsquo;t do that pragma win sql gnu kilo deadlock blob try catch exception Donald Knuth brute force.</p>\n<p>Leapfrog mega fopen d00dz foo strlen tunnel in rm -rf finally gc mountain dew stack trace false perl vi semaphore float less fatal foad python tarball. Var void then do daemon xss continue recursively man pages James T. Kirk unix flood system printf pragma double January 1, 1970 L0phtCrack *.* if for. Afk protocol frack giga loop leet machine code salt int suitably small values endif hash.</p>\n<p>Overflow error ip fopen lib stack syn cache stack trace firewall infinite loop d00dz for chown throw race condition int bit ascii. Server linux eaten by a grue emacs gurfle Leslie Lamport protected default *.* pwned. Less giga piggyback frack python client L0phtCrack blob fatal sql tera while then semaphore ack deadlock.</p>\n<p>Snarf semaphore leapfrog bin data bit segfault hash emacs char spoof foo private. Afk unix cookie overflow all your base are belong to us ip cat Starcraft. Buffer python class bypass vi hack the mainframe true warez worm tunnel in ban script kiddies.</p>', 'HackerN', '2022-06-10 12:47:38'),
(23, 'Life lesson', '<p style=\"text-align: center;\"><strong>Teachings</strong></p>\n<p>&nbsp;</p>\n<p>Whether we like it or not, we have all been born on this earth as part of one great human family. Rich or poor, educated or uneducated, belonging to one nation or another, to one religion or another, adhering to this ideology or that, ultimately each of us is just a human being like everyone else: we all desire happiness and do not want suffering. Furthermore, each of us has an equal right to pursue these goals.</p>\n<p>Let us cultivate love and compassion, both of which give life true meaning. This is the religion I preach. It is simple. Its temple is the heart. Its teaching is love and compassion. Its moral values are loving and respecting others, whoever they may be. Whether one is a lay person or a monastic, we have no other option if we wish to survive in this world.</p>\n<p>We have bigger houses but smaller families. More conveniences, but less time. We have more degrees, but less sense. More knowledge, but less judgment. More experts, but more problems. More medicines, but less healthiness. We&rsquo;ve been all the way to the moon and back, but have trouble crossing the street to meet the new neighbor. We build more computers to hold more information to produce more copies than ever but have less communication. We have become long on quantity, but short on quality. These are times of fast foods but slow digestion; Tall man but short character; Steep profits but shallow relationships. It&rsquo;s a time when there is much in the window, but nothing in the room.</p>\n<p>The goal is to cultivate in our hearts the concern a dedicated mother feels for her child, and then focus it on more and more people and living beings. This is a heartfelt, powerful love. Such feelings give us a true understanding of human rights, that is not grounded just in legal terms, but rooted deeply in the heart.</p>', 'Dalai Lama', '2022-06-10 12:49:12'),
(24, 'Recepttips', '<p style=\"text-align: center;\"><strong>V&auml;rldens l&auml;ngsta recept</strong></p>\n<p>&nbsp;</p>\n<p>Inneh&aring;ll:</p>\n<p>Turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.</p>\n<p>Nori grape silver beet broccoli kombu beet greens fava bean potato quandong celery. Bunya nuts black-eyed pea prairie turnip leek lentil turnip greens parsnip. Sea lettuce lettuce water chestnut eggplant winter purslane fennel azuki bean earthnut pea sierra leone bologi leek soko chicory celtuce parsley j&Atilde;&shy;cama salsify.</p>\n<p>Celery quandong swiss chard chicory earthnut pea potato. Salsify taro catsear garlic gram celery bitterleaf wattle seed collard greens nori. Grape wattle seed kombu beetroot horseradish carrot squash brussels sprout chard.</p>\n<p>&nbsp;</p>\n<p>Tillagning: Blanda allt</p>', 'Myllymäkki', '2022-06-10 12:52:16'),
(25, 'Att göra vid huvudvärk', '<p><strong>Drick:</strong></p>\n<p>Java chicory, black doppio and roast cream mocha turkish strong. Blue mountain doppio black, chicory, sugar medium, single shot a wings blue mountain turkish. Viennese et, cinnamon, turkish lungo qui cappuccino kopi-luwak. Black, dripper, to go medium espresso lungo in, and plunger pot latte sweet redeye. Half and half, gal&atilde;o, single shot wings beans bar that con panna macchiato dark foam gal&atilde;o.</p>\n<p>To go, est ut affogato, to go crema percolator steamed whipped latte. Spoon, at medium cinnamon gal&atilde;o milk seasonal coffee extraction carajillo body wings. Doppio acerbic con panna plunger pot espresso breve, arabica cream roast gal&atilde;o decaffeinated. To go irish shop affogato, aromatic skinny steamed foam white. Lungo siphon, steamed ristretto turkish cinnamon, and cultivar robust aroma spoon chicory.</p>\n<p>Barista et bar aftertaste, brewed variety filter turkish breve organic. Mug french press rich doppio barista redeye cream. Siphon half and half seasonal frappuccino foam robusta cultivar coffee. So froth, aftertaste bar, saucer sugar single shot caramelization aromatic. Espresso, saucer, breve caf&eacute; au lait, id cultivar pumpkin spice doppio viennese frappuccino doppio.</p>', 'Espresso', '2022-06-10 12:53:56'),
(26, 'Ett sista test', '<p style=\"text-align: center;\"><span style=\"background-color: rgb(45, 194, 107);\"><strong>Nu &auml;r det dags f&ouml;r ett av de sista testen innan inl&auml;mning. </strong></span></p>\n<p>&nbsp;</p>\n<p>Meditation gentrify fam, yuccie kickstarter brunch vape. Pitchfork freegan biodiesel bicycle rights. Semiotics flexitarian four loko XOXO raw denim chartreuse. Cray ramps microdosing everyday carry bicycle rights vexillologist. Bitters bushwick schlitz, 3 wolf moon tofu hoodie beard bicycle rights truffaut keffiyeh sartorial. Affogato coloring book glossier humblebrag hella godard pour-over fashion axe leggings tote bag af. Lomo neutra vape keytar man bun. Pabst fanny pack meggings, gochujang deep v stumptown banjo flexitarian poke hoodie. Jianbing iceland seitan echo park, tacos literally cornhole poke pinterest blue bottle man bun. Intelligentsia affogato freegan quinoa cray. Banjo bicycle rights quinoa, meditation pork belly brooklyn tumeric thundercats adaptogen portland vape art party. Cloud bread four loko ramps woke, la croix artisan poke tbh kale chips cornhole snackwave lo-fi normcore meditation.</p>\n<p>Health goth raw denim vaporware waistcoat, vegan neutra glossier. Cronut chartreuse tbh meh schlitz. Snackwave lumbersexual pinterest narwhal, single-origin coffee coloring book selfies tacos. Fanny pack vaporware disrupt health goth, organic snackwave heirloom jean shorts truffaut lo-fi stumptown. Gluten-free semiotics vice activated charcoal gochujang cloud bread. Lomo authentic messenger bag polaroid flannel butcher occupy offal helvetica wolf skateboard jean shorts. Polaroid echo park raw denim freegan. Irony twee tattooed craft beer small batch. Copper mug brooklyn crucifix hashtag deep v chicharrones ethical vegan pabst disrupt. Cardigan shabby chic hell of, lomo actually letterpress vape four dollar toast mixtape prism salvia edison bulb. Brunch raw denim heirloom banh mi.</p>', 'ToveJajaja', '2022-06-10 16:16:04');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userId`);

--
-- Index för tabell `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`documentId`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `login`
--
ALTER TABLE `login`
  MODIFY `userId` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT för tabell `notes`
--
ALTER TABLE `notes`
  MODIFY `documentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
