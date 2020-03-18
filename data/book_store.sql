-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-03-2020 a las 01:58:59
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `acamica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='id autor';

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id`, `nombre`, `estado`) VALUES
(1, 'J.R.R. Tolkien', 1),
(2, 'Douglas Adams', 1),
(3, 'Orson Scott Card', 1),
(4, 'Frank Herbert', 1),
(5, 'George R.R. Martin', 1),
(6, 'George Orwell', 1),
(7, 'Ray Bradbury', 1),
(8, 'Isaac Asimov', 1),
(9, 'Aldous Huxley', 1),
(10, 'Neil Gaiman', 1),
(11, 'William Goldman', 1),
(12, 'Robert Jordan', 1),
(13, 'William Gibson', 1),
(14, 'Alan Moore', 1),
(15, 'Robert A. Heinlein', 1),
(16, 'Patrick Rothfuss', 1),
(17, 'Kurt Vonnegut', 1),
(18, 'Mary Wollstonecraft Shelley', 1),
(19, 'Philip K. Dick', 1),
(20, 'Margaret Atwood', 1),
(21, 'Stephen King', 1),
(22, 'Arthur C. Clarke', 1),
(23, 'Neal Stephenson', 1),
(24, 'Anthony Burgess', 1),
(25, 'Richard Adams', 1),
(26, 'Anne McCaffrey', 1),
(27, 'Walter M. Miller Jr.', 1),
(28, 'H.G. Wells', 1),
(29, 'Jules Verne', 1),
(30, 'Daniel Keyes', 1),
(31, 'Roger Zelazny', 1),
(32, 'David Eddings', 1),
(33, 'Marion Zimmer Bradley', 1),
(34, 'Brandon Sanderson', 1),
(35, 'Larry Niven', 1),
(36, 'Ursula K. Le Guin', 1),
(37, 'T.H. White', 1),
(38, 'Carl Sagan', 1),
(39, 'Dan Simmons', 1),
(40, 'Max Brooks', 1),
(41, 'Peter S. Beagle', 1),
(42, 'Joe Haldeman', 1),
(43, 'Terry Pratchett', 1),
(44, 'Stephen R. Donaldson', 1),
(45, 'Lois McMaster Bujold', 1),
(46, 'Terry Goodkind', 1),
(47, 'Cormac McCarthy', 1),
(48, 'Susanna Clarke', 1),
(49, 'Richard Matheson', 1),
(50, 'Raymond E. Feist', 1),
(51, 'Terry Brooks', 1),
(52, 'Robert E. Howard', 1),
(53, 'Robin Hobb', 1),
(54, 'Audrey Niffenegger', 1),
(55, 'R. A. Salvatore', 1),
(56, 'John Scalzi', 1),
(57, 'Jacqueline Carey', 1),
(58, 'Gregory Maguire', 1),
(59, 'Steven Erikson', 1),
(60, 'Jasper Fforde', 1),
(61, 'Iain Banks', 1),
(62, 'Mary Stewart', 1),
(63, 'Jim Butcher', 1),
(64, 'Gene Wolfe', 1),
(65, 'Timothy Zahn', 1),
(66, 'Diana Gabaldon', 1),
(67, 'Michael Moorcock', 1),
(68, 'Robin McKinley', 1),
(69, 'Vernor Vinge', 1),
(70, 'Kim Stanley Robinson', 1),
(71, 'Connie Willis', 1),
(72, 'China Miéville', 1),
(73, 'Piers Anthony', 1),
(74, 'C.S. Lewis', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` bigint(16) UNSIGNED NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `apellido_cliente` varchar(255) NOT NULL,
  `alias_cliente` varchar(255) NOT NULL,
  `email` varchar(80) NOT NULL,
  `num_doc` int(11) NOT NULL,
  `numero_movil` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre_cliente`, `apellido_cliente`, `alias_cliente`, `email`, `num_doc`, `numero_movil`) VALUES
(4736, 'Alan', 'Acastello', 'aacastello', 'alamacastello@dumymaul.com', 3000252, '0'),
(4737, 'Carlos', 'Alarcon', 'calarcon', 'ralarcon@dumyil.com', 21234540, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id` bigint(16) UNSIGNED NOT NULL,
  `id_autor` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(4000) NOT NULL,
  `anyo_publicacion` year(4) NOT NULL DEFAULT 2020
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id`, `id_autor`, `titulo`, `descripcion`, `anyo_publicacion`) VALUES
(1, 1, 'The Lord Of The Rings', 'Tolkien\'s seminal three-volume epic chronicles the War of the Ring, in which Frodo the hobbit and his companions set out to destroy the evil Ring of Power and restore peace to Middle-earth. The beloved trilogy still casts a long shadow, having established some of the most familiar and enduring tropes in fantasy literature.', 2020),
(2, 2, 'The Hitchhiker\'s Guide To The Galaxy', 'In the first, hilarious volume of Adams\' Hitchhiker\'s series, reluctant galactic traveler Arthur Dent gets swept up in some literally Earth-shattering events involving aliens, sperm whales, a depressed robot, mice who are more than they seem, and some really, really bad poetry.', 2020),
(3, 3, 'Ender\'s Game', 'Young Andrew \"Ender\" Wiggin, bred to be a genius, is drafted to Battle School where he trains to lead the century-long fight against the alien Buggers.', 2020),
(4, 4, 'The Dune Chronicles', 'Follows the adventures of Paul Atreides, the son of a betrayed duke given up for dead on a treacherous desert planet and adopted by its fierce, nomadic people, who help him unravel his most unexpected destiny.', 2020),
(5, 5, 'A Song Of Ice And Fire Series', 'As the Seven Kingdoms face a generation-long winter, the royal Stark family confronts the poisonous plots of the rival Lannisters, the emergence of the Neverborn demons, the arrival of barbarian hordes, and other threats.', 2020),
(6, 6, '1984', 'Portrays life in a future time when a totalitarian government watches over all citizens and directs all activities.', 2020),
(7, 7, 'Fahrenheit 451', 'In a far future world, television dominates, and books are outlawed. The totalitarian regime has ordered all books to be burned by \"firemen,\" whose job is to start the fires rather than stop them. But one fireman begins to see the value of the printed word.', 2020),
(8, 8, 'The Foundation Trilogy', 'A band of psychologists, under the leadership of psychohistorian Hari Seldon, plant a colony to encourage art, science, and technology in the declining Galactic Empire and to preserve the accumulated knowledge of humankind.', 2020),
(9, 9, 'Brave New World', 'Huxley\'s classic prophetic novel describes the socialized horrors of a futuristic utopia devoid of individual freedom.', 2020),
(10, 10, 'American Gods', 'On the plane home to attend the funerals of his wife and best friend, Shadow, an ex-con, encounters an enigmatic stranger who seems to know a lot about him. When Shadow accepts the stranger\'s job offer, he finds himself plunged into a perilous game with the highest of stakes: the soul of America itself.', 2020),
(11, 11, 'The Princess Bride', 'This tale of a handsome farm boy who, aided by a drunken swordsman and a gentle giant, rescues a beautiful princess named Buttercup comes with a slyly humorous, metafictional edge: Goldman claims to have merely abridged an earlier text by one \"S. Morgenstern\" (actually a pseudonym) and peppers his text with clever commentary.', 2020),
(12, 12, 'The Wheel Of Time Series', 'At 13 volumes and counting, this sweeping — some would say sprawling – richly imagined epic chronicles the struggle between servants of the Dark One and those of the champion of light known as the Dragon Reborn.', 2020),
(13, 6, 'Animal Farm', 'Farm animals overthrow their human owners and set up their own deeply (and familiarly) flawed government. Orwell\'s mordant satire of totalitarianism is still a mainstay of ninth-grade reading lists.', 2020),
(14, 13, 'Neuromancer', 'Gibson\'s groundbreaking debut novel follows Case, a burned-out computer whiz, who is asked to steal a security code that is locked in the most heavily guarded databank in the solar system. A seminal work in the genre that would come to be known as cyberpunk.', 2020),
(15, 14, 'Watchmen', 'As former members of a disbanded group of superheroes called the Crimebusters start turning up dead, the remaining members of the group try to discover the identity of the murderer before they, too, are killed. A graphic novel.', 2020),
(16, 8, 'I, Robot', 'Isaac Asimov changed our perception of robots forever when he formulated the laws governing their behavior. In I, Robot, Asimov chronicles the development of the robot through a series of interlinked stories: from its primitive origins in the present to its ultimate perfection in the not-so-distant future — a future in which humanity itself may be rendered obsolete.', 2020),
(17, 15, 'Stranger In A Strange Land', 'Valentine Michael Smith, born and raised on Mars, arrives on Earth stunning Western culture with his superhuman abilities.', 2020),
(18, 16, 'The Kingkiller Chronicles', 'This suspenseful coming-of-age story folllows Kvothe as he recounts his transformation from a magically gifted young man into the most notorious wizard, musician, thief and assassin in his world.', 2020),
(19, 17, 'Slaughterhouse-Five', 'Billy Pilgrim returns home from World War II only to be kidnapped by aliens from the planet Tralfamadore, who teach him that time is an eternal present.', 2020),
(20, 18, 'Frankenstein', 'Mary Shelley\'s chilling portrait of a scientist obsessed with creating life (whose eventual success comes at too great a cost) was among the first works of science fiction ever produced. Its potent allegorical power, compelling ethical and philosophical themes, and its sheer creepiness have ensured it remains one of the most enduring and influential as well.', 2020),
(21, 19, 'Do Androids Dream Of Electric Sheep?', 'Dick\'s trippy novel tells of sophisticated off-world androids who turn against their creators, slip back to a post-apocalyptic Earth, and must be hunted down by bounty hunter Rick Deckard. The book inspired — albeit very loosely — the 1982 Ridley Scott film Blade Runner.', 2020),
(22, 20, 'The Handmaid\'s Tale', 'A chilling look at the near future presents the story of Offred, a Handmaid in the Republic of Gilead, once the United States, an oppressive world where women are no longer allowed to read and are valued only as long as they are viable for reproduction.', 2020),
(23, 21, 'The Dark Tower Series', 'Roland, the world\'s last gunslinger, tracks an enigmatic Man in Black toward a forbidding dark tower, fighting forces both mortal and other worldly on his quest.', 2020),
(24, 22, '2001: A Space Odyssey', 'Two astronauts find their journey into space and their very lives jeopardized by the jealousy of an extraordinary computer named HAL.', 2020),
(25, 21, 'The Stand', 'A monumentally devastating plague leaves only a few survivors who, while experiencing dreams of a battle between good and evil, move toward an actual confrontation as they migrate to Boulder, Colo.', 2020),
(26, 23, 'Snow Crash', 'Weaving contemporary imagery with Sumerian myths, Stephenson\'s third novel revolves around a mysterious \"pseudo-narcotic\" Snow Crash that is capable of affecting people both within — and without — the alternate-reality Internet called the \"Metaverse.\"', 2020),
(27, 7, 'The Martian Chronicles', 'The tranquillity of Mars is disrupted by the earthmen who have come to conquer space, colonize the planet, and escape a doomed Earth.', 2020),
(28, 17, 'Cat\'s Cradle', 'A young writer decides to interview the children of a scientist primarily responsible for the creation of the atomic bomb.', 2020),
(29, 10, 'The Sandman Series', 'Gaiman originally told his tale of Morpheus, the Dream King, whose interactions with mortals rarely end well, and whose fractious extended family includes the personifications of Death, Despair, Desire and Destiny, in a 75-issue comic book series over several years; the hugely influential series is now collected in ten trade volumes.', 2020),
(30, 24, 'A Clockwork Orange', 'Burgess created his own youth slang for this acid satire of contemporary culture which follows young Alex as he makes his merry way through a dystopia of drugs, sex and ruthless violence, only to be chosen for a psychological experiment meant to mend his ways.', 2020),
(31, 15, 'Starship Troopers', 'In one of Robert A. Heinlein\'s most controversial novels, a recruit of the future goes through the toughest boot camp in the universe and into battle with the Terran Mobile Infantry against humankind\'s most frightening enemy.', 2020),
(32, 25, 'Watership Down', 'Often described as \"the Aeneid of rabbits,\" this is the story of young rabbit Fiver and his brother Hazel, who set out on an epic journey to find a new home after their own warren is destroyed. Watership Down began as a series of improvised stories author Richard Adams told his young daughters during car trips. Adams also invented the language, Lapine, spoken by Hazel and Fiver.', 2020),
(33, 26, 'Dragonflight', 'At a time when the number of Dragonriders has fallen too low for safety and only one Weyr trains the creatures and their riders, the Red Star approaches Pern, threatening the planet with disaster.', 2020),
(34, 15, 'The Moon Is A Harsh Mistress', 'A one-armed computer technician, a radical blond bombshell, an aging academic and a sentient all-knowing computer lead the lunar population in a revolution against Earth\'s colonial rule.', 2020),
(35, 27, 'A Canticle For Leibowitz', 'Miller\'s 1959 novel follows the Monks of the Order of St. Leibowitz as they attempt to preserve the remnants of civilization after a nuclear war.', 2020),
(36, 28, 'The Time Machine', 'Wells\' classic 1895 story of an unassuming British inventor who creates a device that sends him hurtling into the far future – A.D. 802,701, to be precise – where subterranean Morlocks prey upon the childlike Eloi.', 2020),
(37, 29, '20,000 Leagues Under The Sea', 'Professor Arronax and his two companions, trapped aboard a fantastic submarine as prisoners of the deranged Captain Nemo, come face to face with exotic ocean creatures and strange sights hidden from the world above.', 2020),
(38, 30, 'Flowers For Algernon', 'When brain surgery makes a mouse into a genius, dull-witted Charlie Gordon wonders if it might also work for him. It does ... but then the mouse begins to regress.', 2020),
(39, 28, 'The War Of The Worlds', 'With advanced machines of destruction, aliens from another planet swoop down on planet Earth and begin their conquest, in the classic sci-fi work by the author of The Time Machine.', 2020),
(40, 31, 'The Amber Chronicles', 'Zelazny\'s tales of Corwin, prince of the \"true world\" of Amber (of which our Earth is merely a shadow) and his son Merlin, a magic-user/computer hacker, have spanned several decades. Amid the eternal struggle between Order and Chaos, Zelazny delights in tossing in allusions to Shakespeare, the Tarot and quantum mechanics.', 2020),
(41, 32, 'The Belgariad', 'Edding\'s five-volume epic fantasy follows young farmboy Garion as he is drawn into a quest for a stolen mystical orb, and the rich world of prophecy and power that surrounds it.', 2020),
(42, 33, 'The Mists Of Avalon', 'Retells the legend of King Arthur as perceived by the women central to the tale, from the zealous Morgaine, sworn to uphold her goddess at any cost, to the devout Gwenhwyfar, pledged to the king but drawn to another.', 2020),
(43, 34, 'Mistborn Trilogy', 'In a world where special magic users called Allomancers can employ metals to enhance their physical and mental abilities, a young thief discovers her destiny and sets out to overthrow the Lord Ruler.', 2020),
(44, 35, 'Ringworld', 'Niven\'s hugely influential 1970 novel of an outer space expedition to a mysterious object – a vast artificial world in the shape of a ring – that goes horribly wrong.', 2020),
(45, 36, 'The Left Hand Of Darkness', 'While on a mission to the planet Gethen — a world whose inhabitants can change their gender — earthling Genly Ai is sent by leaders of the nation of Orgoreyn to a concentration camp. The exiled prime minister of the nation of Karhide tries to rescue him.', 2020),
(46, 1, 'The Silmarillion', 'These creation myths of Tolkien\'s Middle-earth, for those who found The Lord of the Rings too breezy and slight: In the author\'s characteristic Beowulfian prose, he recounts the legends of the world\'s beginnings, the downfall of its gods and men, and the events that changed the face of Middle-earth forever.', 2020),
(47, 37, 'The Once And Future King', 'Describes King Arthur\'s life from his childhood to the coronation, creation of the Round Table, and search for the Holy Grail.', 2020),
(48, 10, 'Neverwhere', 'Gaiman\'s wry, darkly whimsical tale of an average young businessman who stops to help a girl bleeding on a London sidewalk and finds himself pulled into a bizarre subterranean world.', 2020),
(49, 22, 'Childhood\'s End', 'The author questions the survival of mankind in this science-fiction tale about Overlords from outer space who dominate the world.', 2020),
(50, 38, 'Contact', 'In 1999, a multinational team of astronauts ventures deep into outer space, where they come face to face with an advanced alien civilization.', 2020),
(51, 39, 'The Hyperion Cantos', 'Seven pilgrims undertake a voyage to the world of Hyperion — dominated by a fearsome and mysterious creature called the Shrike — where they hope to learn the secret that will save humanity.', 2020),
(52, 10, 'Stardust', 'In the quiet English hamlet of Wall, Tristran Thorn embarks on a remarkable journey through the world of Faerie to recover a fallen star for his lover, the hauntingly beautiful Victoria Forester.', 2020),
(53, 23, 'Cryptonomicon', 'More than 50 years after Lawrence Pritchard Waterhouse and Sergeant Bobby Shaftoe are assigned to Detachment 2702, a secret cryptographic mission, their grandchildren — Randy and Amy — join forces to create a \"data haven\" in the South Pacific, only to uncover a massive conspiracy with roots in Detachment 2702.', 2020),
(54, 40, 'World War Z', 'An account of the decade-long conflict between humankind and hordes of the predatory undead is told from the perspective of dozens of survivors — soldiers, politicians, civilians and others — who describe in their own words the epic human battle for survival.', 2020),
(55, 41, 'The Last Unicorn', 'The last unicorn leaves the protection of her enchanted lavender forest to search for her own kind, with the assistance of Schmedrick, the only occasionally successful magician, and dreamer Molly Grue.', 2020),
(56, 42, 'The Forever War', 'Drafted into the ranks of Earth\'s interstellar warriors, private William Mandella finds his fight against the Taurans secondary to the side-effects of faster-than-light space travel, which affects the rate at which he ages.', 2020),
(57, 43, 'Small Gods', 'Brutha, a simple man leading a quiet life tending his garden, finds his life irrevocably changed when his god, speaking to him through a tortoise, sends him on a mission of peace.', 2020),
(58, 44, 'The Chronicles Of Thomas Covenant The Unbeliever', 'In this first trilogy, reclusive, guilt-ridden writer Thomas Covenant finds himself transported to a magical realm where he is hailed as a hero who wields powerful magic — and where he finds his leprosy miraculously cured. Ultimately, he must defeat the malevolent Lord Foul to save the Land — and his own sanity.', 2020),
(59, 45, 'The Vorkosigan Saga', 'In a human colony on one of a series of planets connected by wormholes, a young man who suffers from a series of physical disabilities (the result of an assassination attempt on his royal parents) grows up to become a powerful military leader.', 2020),
(60, 43, 'Going Postal', 'Sentenced to death for forgery and swindling, Moist von Lipwig accepts an offer of a pardon in exchange for revamping an ancient post office, but his efforts are thwarted by tons of undelivered mail, an 18,000-year-old ghost postman, his shoe-wielding new girlfriend, and murderous characters who want the post office shut down.', 2020),
(61, 35, 'The Mote In God\'s Eye', 'The accidental killing of a group of emissaries to Earth threatens man\'s survival.', 2020),
(62, 46, 'The Sword Of Truth Series', 'Young Richard Cypher gradually embraces his destiny as the Seeker of Truth, and sets out to stop the evil that others would unleash.', 2020),
(63, 47, 'The Road', 'In a novel set in an indefinite, futuristic, post-apocalyptic world, a father and his young son make their way through the ruins of a devastated American landscape, struggling to survive and preserve the last remnants of their own humanity.', 2020),
(64, 48, 'Jonathan Strange & Mr. Norrell', 'In nineteenth century England, all is going well for rich, reclusive Mr Norrell, who has regained some of the power of England\'s magicians from the past, until a rival magician, Jonathan Strange, appears and becomes Mr Norrell\'s pupil.', 2020),
(65, 49, 'I Am Legend', 'A lone human survivor in a world that is overrun by vampires, Robert Neville leads a desperate life in which he must barricade himself in his home every night and hunt down the starving undead by day.', 2020),
(66, 50, 'The Riftwar Saga', 'Evil entities have opened a rift in the fabric of space-time, plunging the world of Medkemia into peril. As the battle between Order and Chaos threatens to engulf everything, reluctant wizard Pug is the only hope of a thousand worlds.', 2020),
(67, 51, 'The Sword of Shannara Trilogy', 'Over the course of three novels, several generations of the Ohmsford family find themselves retrieving magical artifacts in the desperate hope to fight evil.', 2020),
(68, 52, 'The Conan The Barbarian Series', 'Howard\'s original set of interlinked stories featuring his muscle-bound warrior represents a classic kind of sword-and-sorcery fantasy adventure in all its pulpy, richly imaginative glory.', 2020),
(69, 53, 'The Farseer Trilogy', 'An wily assassin plies his trade while his uncle the Prince confronts attackers who are turning people into emotionless, zombie-like \"Forged ones.\"', 2020),
(70, 54, 'The Time Traveler\'s Wife', 'Passionately in love, Clare and Henry vow to hold onto each other and their marriage as they struggle with the effects of Chrono-Displacement Disorder, a condition that casts Henry involuntarily into the world of time travel.', 2020),
(71, 34, 'The Way Of Kings', 'Introduces the world of Roshar through the experiences of a war-weary royal compelled by visions, a high-born youth condemned to military slavery, and a woman who is desperate to save her impoverished house.', 2020),
(72, 29, 'Journey To The Center Of The Earth', 'Follows Professor Lidenbrock, his nephew Axel and their guide Hans as they venture deep into a volcanic crater in Iceland on a journey that leads them to the center of the earth and to incredible and horrifying discoveries.', 2020),
(73, 55, 'The Legend Of Drizzt Series', 'Drizzt Do\'Urden, a Dark Elf, finds adventure, peril and awesome magical power as he confronts the underground civilization of the evil and treacherous matriarchal race of Drow elves.', 2020),
(74, 56, 'Old Man\'s War', 'Enlisting in the Army on his 75th birthday, John Perry joins an interstellar war between Earth and alien enemies who would stake claims on the few existing inhabitable planets, unaware that the conflict involves much more than he understands.', 2020),
(75, 23, 'The Diamond Age', 'The story of an engineer who creates a device to raise a girl capable of thinking for herself reveals what happens when a young girl of the poor underclass obtains the device.', 2020),
(76, 22, 'Rendezvous With Rama', 'During the 22nd century, a space probe\'s investigation of a mysterious, cylindrical asteroid brings man into contact with an extra-galactic civilization.', 2020),
(77, 57, 'The Kushiel\'s Legacy Series', 'Sold into indentured servitude at the exotic Night Court as a child, Phedre faces a difficult choice between honor and duty as she deals with a world of glittering luxury, conspiracy, sacrifice, and betrayal. Two subsequent trilogies chronicle the adventures of her adopted son and her distant descendant.', 2020),
(78, 36, 'The Dispossessed', 'Unwilling to accept that his anarchist world must be separated from the rest of the civilized universe, Shevek, a brilliant physicist, risks his life by traveling to the utopian mother planet of Urras.', 2020),
(79, 7, 'Something Wicked This Way Comes', 'When the carnival comes to town, two boys unearth the terrifying and horrible secrets that lurk within Cooger & Dark\'s Pandemonium Shadow Show and learn the consequences of wishes, as a sinister and evil force is at work in Green Town, Ill.', 2020),
(80, 58, 'Wicked', 'Set in an Oz where a morose Wizard battles suicidal thoughts, the story of the green-skinned Elphaba, otherwise known as the Wicked Witch of the West, profiles her as an animal-rights activist striving to avenge her dear sister\'s death.', 2020),
(81, 59, 'The Malazan Book Of The Fallen series', 'Erickson\'s densely plotted series jumps around in time to chronicle the vicissitudes of the sprawling Malazan Empire, a place of shifting alliances, mysterious mage guilds, assassin gods and military uprisings.', 2020),
(82, 60, 'The Eyre Affair', 'In a world where you can actually get lost (literally) in literature, Thursday Next, a notorious Special Operative in literary detection, races against time to stop the world\'s Third Most Wanted criminal from kidnapping characters, including Jane Eyre, from works of literature, forcing her to dive into the pages of a novel to stop literary homicide, in a wildly imaginative, mesmerizing thriller.', 2020),
(83, 61, 'The Culture Series', 'A science-fiction series by the author of the Wasp Factory features a symbiotic human and machine society that is engaged in a galaxy-wide battle to the death between the Idrians, who fight for their faith, and the Culture, which defends its right to exist.', 2020),
(84, 62, 'The Crystal Cave', 'Stewart\'s first chapter in her five-volume take on the Arthurian legend is told from the point of view of young Merlin, who reluctantly engineers the birth of Arthur.', 2020),
(85, 23, 'Anathem', 'Raz, who has lived in a monastery since childhood, away from the violent upheavals of the outside world, becomes one of a group of formerly cloistered scholars who are appointed by a higher power to avert an impending disaster.', 2020),
(86, 63, 'The Codex Alera Series', 'In the land of Alera, where people bond with the furies — elementals of earth, air, fire, water, and metal — young Tavi struggles to cope with his lack of magical talent, until his homeland erupts into conflict between rebels and loyalists and Tavi discovers that he holds the key to his realm\'s survival.', 2020),
(87, 64, 'The Book Of The New Sun', 'In the distant future, after the sun has cooled and dimmed, the disgraced torturer Sevarian recounts his hard-fought rise to absolute power.', 2020),
(88, 65, 'The Thrawn Trilogy', 'Five years after the fall of the Empire, a dying part of the Empire all the more dangerous near death has just discovered something that could bring it back, the last of the Emperor\'s warlords, Admiral Thrawn.', 2020),
(89, 66, 'The Outlander Series', 'Hurtled back through time more than 200 hundred years to Scotland in 1743, Claire Randall finds herself in the midst of a world torn apart by violence, pestilence and revolution, and haunted by her feelings for a young soldier.', 2020),
(90, 67, 'The Elric Saga', 'Elric of Melnibone, an albino prince, travels in the Ship Which Sails Over Land and Sea to the city of Dhoz-Kam, through the Shade Gate to the Pulsing Cavern where the magic swords Stormbringer and Mournblade await him.', 2020),
(91, 7, 'The Illustrated Man', 'Eighteen science fiction stories deal with love, madness and death on Mars, Venus and in space.', 2020),
(92, 68, 'Sunshine', 'All hope for stopping the vampiric elite from controlling Earth depends on human SOFs (Special Other Forces) and the success of their attempt to recruit Sunshine, the daughter of legendary sorcerer Onyx Blaise.', 2020),
(93, 69, 'A Fire Upon The Deep', 'Set in a far-future where space has been portioned into \"regions of thought,\" a human expedition to an ancient data archive unleashes the Blight, a superintelligent entity capable of destroying thousands of worlds.', 2020),
(94, 8, 'The Caves Of Steel', 'Fearing a violent confrontation between Earthmen and Spacers, Detective Baley and his new partner, a robot, investigate the murder of a Spacetown scientist', 2020),
(95, 70, 'The Mars Trilogy', 'On a mission to provide Mars with an Earth-like atmosphere, John Boone, Maya Toitovna, Frank Chalmers and Arkady Bogdanov meet stiff resistance from those who will fight to the death to prevent Mars from being changed.', 2020),
(96, 35, 'Lucifer\'s Hammer', 'As the great Hamner-Brown comet, dubbed Lucifer\'s Hammer by the press, approaches Earth, various business executives, politicians, criminals, journalists and scientists await the impending cataclysm and its general and personal effects with decidedly differing feelings', 2020),
(97, 71, 'Doomsday Book', 'Stranded in the 14th century — a time of superstition and fear — time traveler Kivrin becomes an unlikely angel of hope during history\'s darkest hour and awaits rescue by her comrades.', 2020),
(98, 72, 'Perdido Street Station', 'In the squalid, Gothic city of New Crobuzon, a mysterious half-human, half-bird stranger comes to Isaac, a gifted but eccentric scientist, with a request to help him fly, but Isaac\'s obsessive experiments and attempts to grant the request unleash a terrifying dark force on the entire city.', 2020),
(99, 73, 'The Xanth Series', 'In Anthony\'s pun-besotted magical realm (which is shaped a lot like Florida), every human is born with a unique magical ability, which they use navigate a landscape full of dragons, goblins, harpies, centaurs and all manner of eldritch creatures.', 2020),
(100, 74, 'The Space Trilogy', 'Philologist Edwin Ransom travels to Mars and Venus, and makes a series of dramatic discoveries about Earth\'s place in the solar system – and the nature of a threat it unwittingly faces.', 2020);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` bigint(16) UNSIGNED NOT NULL,
  `id_cliente` bigint(16) NOT NULL,
  `fecha_pedido` date NOT NULL,
  `estado` varchar(1) NOT NULL,
  `importe_total` decimal(19,2) NOT NULL,
  `fecha_entrega` date NOT NULL,
  `dias_garantia` bigint(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_producto`
--

CREATE TABLE `pedido_producto` (
  `id_pedido_producto` bigint(16) UNSIGNED NOT NULL,
  `id_pedido` bigint(16) UNSIGNED NOT NULL,
  `id_producto` bigint(16) UNSIGNED NOT NULL,
  `cantidad` bigint(10) UNSIGNED NOT NULL,
  `subtotal` decimal(19,2) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(16) UNSIGNED NOT NULL,
  `id_libro` bigint(16) NOT NULL,
  `stock` bigint(16) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descuento` int(2) NOT NULL DEFAULT 0,
  `fecha_agregacion` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `id_libro`, `stock`, `precio`, `descuento`, `fecha_agregacion`) VALUES
(1, 1, 93, '7900.00', 0, '2020-03-09'),
(2, 2, 8, '8300.00', 0, '2020-03-09'),
(3, 3, 63, '7100.00', 0, '2020-03-09'),
(4, 4, 4, '5200.00', 0, '2020-03-09'),
(5, 5, 59, '1600.00', 0, '2020-03-09'),
(6, 6, 33, '8400.00', 0, '2020-03-09'),
(7, 7, 33, '7200.00', 0, '2020-03-09'),
(8, 8, 33, '7200.00', 0, '2020-03-09'),
(9, 9, 46, '8500.00', 0, '2020-03-09'),
(10, 10, 85, '5500.00', 0, '2020-03-09'),
(11, 11, 75, '7100.00', 0, '2020-03-09'),
(12, 12, 59, '2400.00', 0, '2020-03-09'),
(13, 13, 10, '9300.00', 5, '2020-03-09'),
(14, 14, 44, '700.00', 0, '2020-03-09'),
(15, 15, 22, '2300.00', 0, '2020-03-09'),
(16, 16, 58, '6600.00', 0, '2020-03-09'),
(17, 17, 78, '5500.00', 0, '2020-03-09'),
(18, 18, 66, '2300.00', 0, '2020-03-09'),
(19, 19, 80, '3200.00', 0, '2020-03-09'),
(20, 20, 92, '8100.00', 0, '2020-03-09'),
(21, 21, 87, '5200.00', 0, '2020-03-09'),
(22, 22, 53, '2100.00', 0, '2020-03-09'),
(23, 23, 29, '400.00', 0, '2020-03-09'),
(24, 24, 21, '3700.00', 40, '2020-03-09'),
(25, 25, 47, '9500.00', 0, '2020-03-09'),
(26, 26, 26, '5200.00', 0, '2020-03-09'),
(27, 27, 18, '5000.00', 0, '2020-03-09'),
(28, 28, 64, '7200.00', 0, '2020-03-09'),
(29, 29, 87, '3200.00', 0, '2020-03-09'),
(30, 30, 5, '300.00', 0, '2020-03-09'),
(31, 31, 27, '100.00', 0, '2020-03-09'),
(32, 32, 32, '300.00', 0, '2020-03-09'),
(33, 33, 50, '9000.00', 0, '2020-03-09'),
(34, 34, 23, '8500.00', 0, '2020-03-09'),
(35, 35, 68, '2800.00', 0, '2020-03-09'),
(36, 36, 62, '5200.00', 0, '2020-03-09'),
(37, 37, 35, '5700.00', 0, '2020-03-09'),
(38, 38, 30, '2000.00', 0, '2020-03-09'),
(39, 39, 51, '9300.00', 0, '2020-03-09'),
(40, 40, 34, '500.00', 0, '2020-03-09'),
(41, 41, 8, '3700.00', 0, '2020-03-09'),
(42, 42, 64, '7400.00', 0, '2020-03-09'),
(43, 43, 30, '6400.00', 0, '2020-03-09'),
(44, 44, 46, '7600.00', 0, '2020-03-09'),
(45, 45, 39, '2400.00', 0, '2020-03-09'),
(46, 46, 94, '8600.00', 0, '2020-03-09'),
(47, 47, 13, '8100.00', 0, '2020-03-09'),
(48, 48, 79, '2900.00', 0, '2020-03-09'),
(49, 49, 18, '9500.00', 0, '2020-03-09'),
(50, 50, 56, '8300.00', 0, '2020-03-09'),
(51, 51, 94, '4600.00', 0, '2020-03-09'),
(52, 52, 79, '7000.00', 0, '2020-03-09'),
(53, 53, 60, '1100.00', 0, '2020-03-09'),
(54, 54, 50, '1000.00', 0, '2020-03-09'),
(55, 55, 35, '7100.00', 0, '2020-03-09'),
(56, 56, 30, '3400.00', 0, '2020-03-09'),
(57, 57, 27, '7100.00', 0, '2020-03-09'),
(58, 58, 66, '8600.00', 0, '2020-03-09'),
(59, 59, 35, '2200.00', 0, '2020-03-09'),
(60, 60, 5, '1500.00', 10, '2020-03-09'),
(61, 61, 1, '6600.00', 0, '2020-03-09'),
(62, 62, 40, '7400.00', 0, '2020-03-09'),
(63, 63, 25, '3300.00', 0, '2020-03-09'),
(64, 64, 18, '1600.00', 0, '2020-03-09'),
(65, 65, 80, '2200.00', 0, '2020-03-09'),
(66, 66, 78, '3400.00', 0, '2020-03-09'),
(67, 67, 100, '7700.00', 0, '2020-03-09'),
(68, 68, 5, '1500.00', 0, '2020-03-09'),
(69, 69, 14, '3000.00', 0, '2020-03-09'),
(70, 70, 96, '9000.00', 0, '2020-03-09'),
(71, 71, 74, '1800.00', 0, '2020-03-09'),
(72, 72, 15, '8000.00', 0, '2020-03-09'),
(73, 73, 75, '700.00', 0, '2020-03-09'),
(74, 74, 55, '2800.00', 0, '2020-03-09'),
(75, 75, 15, '8600.00', 0, '2020-03-09'),
(76, 76, 93, '7600.00', 0, '2020-03-09'),
(77, 77, 34, '3000.00', 0, '2020-03-09'),
(78, 78, 95, '600.00', 0, '2020-03-09'),
(79, 79, 97, '5100.00', 0, '2020-03-09'),
(80, 80, 69, '4900.00', 0, '2020-03-09'),
(81, 81, 98, '3900.00', 0, '2020-03-09'),
(82, 82, 92, '5500.00', 0, '2020-03-09'),
(83, 83, 78, '7400.00', 0, '2020-03-09'),
(84, 84, 6, '6900.00', 0, '2020-03-09'),
(85, 85, 16, '500.00', 0, '2020-03-09'),
(86, 86, 7, '8300.00', 0, '2020-03-09'),
(87, 87, 90, '7600.00', 0, '2020-03-09'),
(88, 88, 54, '8200.00', 0, '2020-03-09'),
(89, 89, 72, '9700.00', 20, '2020-03-09'),
(90, 90, 82, '2900.00', 0, '2020-03-09'),
(91, 91, 90, '4600.00', 0, '2020-03-09'),
(92, 92, 24, '300.00', 0, '2020-03-09'),
(93, 93, 11, '1100.00', 0, '2020-03-09'),
(94, 94, 6, '1500.00', 0, '2020-03-09'),
(95, 95, 36, '8200.00', 0, '2020-03-09'),
(96, 96, 77, '2800.00', 0, '2020-03-09'),
(97, 97, 76, '3400.00', 0, '2020-03-09'),
(98, 98, 68, '9800.00', 0, '2020-03-09'),
(99, 99, 55, '3400.00', 0, '2020-03-09'),
(100, 100, 83, '7800.00', 0, '2020-03-09');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_autor` (`id_autor`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Indices de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD PRIMARY KEY (`id_pedido_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` bigint(16) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9450;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id` bigint(16) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` bigint(16) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  MODIFY `id_pedido_producto` bigint(16) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(16) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
