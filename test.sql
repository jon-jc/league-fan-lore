-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2021 at 02:54 AM
-- Server version: 5.7.35
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `Champion`
--

CREATE TABLE `Champion` (
  `champion_id` int(11) NOT NULL,
  `champion_name` varchar(255) DEFAULT 'default name',
  `champion_role` varchar(255) DEFAULT 'all',
  `champion_type` varchar(255) DEFAULT 'default type',
  `region_id` int(11) DEFAULT NULL,
  `in_arcane` tinyint(1) DEFAULT '0',
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Champion`
--

INSERT INTO `Champion` (`champion_id`, `champion_name`, `champion_role`, `champion_type`, `region_id`, `in_arcane`, `image_url`) VALUES
(1, 'Aatrox', 'Top', 'Fighter', NULL, 0, "https://images.contentstack.io/v3/assets/blt187521ff0727be24/blta877c35110144de9/60ee0b25b9fc8939338c07ae/aatrox-splash.jpg"),
(2, 'Ahri', 'Mid', 'Mage', 4, 0, "https://images.contentstack.io/v3/assets/blt187521ff0727be24/bltda668b66206f7f9e/60ee0b41cdb93c284ee3e936/Ahri_0.jpg"),
(3, 'Akali', 'Mid', 'Assassin', 4, 0, "https://images.contentstack.io/v3/assets/blt187521ff0727be24/bltadda3687d160dca6/60ee0b4666d52e63b8eb6b2f/Classic_Akali_Splash.jpg"),
(4, 'Akshan', 'Bot', 'Markman', 9, 0, "https://images.contentstack.io/v3/assets/blt187521ff0727be24/blt5e69e0645890bf95/60ee0b48aa56744b33ce03ab/akshan-splash.jpg"),
(5, 'Alistar', 'Support', 'Tank', NULL, 0, NULL),
(6, 'Amumu', 'Jungle', 'Tank', 9, 0, NULL),
(7, 'Anivia', 'Mid', 'Mage', 11, 0, NULL),
(8, 'Annie', 'Mid', 'Mage', NULL, 0, NULL),
(9, 'Aphelios', 'Bot', 'Marksman', 10, 0, NULL),
(10, 'Ashe', 'Bot', 'Marksman', NULL, 0, NULL),
(11,'Ezreal', 'Bot', 'Marksman', 7, 0, NULL),
(12,'Gwen', 'Top', 'Fighter', 8, 0, NULL),
(13,'Irelia', 'Mid', 'Assassin', 4, 0, NULL),
(14,'Jinx', 'Bot', 'Marksman', 7, 1, NULL),
(15,'Katarina', 'Mid', 'Assassin', 6, 0, NULL),
(16,'Morgana', 'Support', 'Mage', 3, 0, NULL),
(17,'Sett', 'Top', 'Fighter', 4, 0, NULL),
(18,'Teemo', 'Top', 'Marksman', 1, 0, NULL),
(19,'Thresh', 'Support', 'Fighter', 8, 0, NULL),
(20,'Tristana', 'Bot', 'Marksman', 1, 0, NULL),
(21,'Vayne', 'Bot', 'Marksman', 3, 0, NULL),
(22,'Vex', 'Mid', 'Mage', 8, 0, NULL),
(23,'Yasuo', 'Mid', 'Fighter', 4, 0, NULL),
(24,'Yone', 'Mid', 'Fighter', 4, 0, NULL),
(25,'Zyra', 'Support', 'Support', 5, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Lore`
--

CREATE TABLE `Lore` (
  `lore_id` int(11) NOT NULL,
  `champion_id` int(11) DEFAULT NULL,
  `champion_quote` varchar(255) DEFAULT 'No quote!',
  `champion_biography` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Lore`
--

INSERT INTO `Lore` (`lore_id`, `champion_id`, `champion_quote`, `champion_biography`) VALUES
(1, 1, 'I must destroy even hope…', 'Once honored defenders of Shurima against the Void, Aatrox and his brethren would eventually become an even greater threat to Runeterra, and were defeated only by cunning mortal sorcery. But after centuries of imprisonment, Aatrox was the first to find freedom once more, corrupting and transforming those foolish enough to try and wield the magical weapon that contained his essence. Now, with stolen flesh, he walks Runeterra in a brutal approximation of his previous form, seeking an apocalyptic and long overdue vengeance.'),
(2, 2, 'Human emotions can be more volatile than even the deepest magic.', 'Innately connected to the magic of the spirit realm, Ahri is a mysterious fox-like vastaya in search of her place in the world. Having become a somewhat reluctant and empathetic predator since entering mortal society, she prefers to manipulate her prey’s emotions before partaking of their life essence—receiving flashes of memory and insight from each soul she consumes.'),
(3, 3, 'If you look dangerous, you better be dangerous.', 'Abandoning the Kinkou Order and her title of the Fist of Shadow, Akali now strikes alone, ready to be the deadly weapon her people need. Though she holds onto all she learned from her master Shen, she has pledged to defend Ionia from its enemies, one kill at a time. Akali may strike in silence, but her message will be heard loud and clear: fear the assassin with no master.'),
(4, 4, 'Not everything happens for a reason. Some things need to be sorted out.', 'Raising an eyebrow in the face of danger, Akshan fights evil with dashing charisma, righteous vengeance, and a conspicuous lack of shirts. He is highly skilled in the art of stealth combat, able to evade the eyes of his enemies and reappear when they least expect him. With a keen sense of justice and a legendary death-reversing weapon, he rights the wrongs of Runeterra’s many scoundrels while living by his own moral code: “Don’t be an ass.”'),
(5, 5, 'Nothing can hold me back!', 'Always a mighty warrior with a fearsome reputation, Alistar seeks revenge for the death of his clan at the hands of the Noxian empire. Though he was enslaved and forced into the life of a gladiator, his unbreakable will was what kept him from truly becoming a beast. Now, free of the chains of his former masters, he fights in the name of the downtrodden and the disadvantaged, his rage as much a weapon as his horns, hooves and fists.'),
(6, 6, 'Solitude can be lonelier than death.', 'Legend claims that Amumu is a lonely and melancholy soul from ancient Shurima, roaming the world in search of a friend. Doomed by an ancient curse to remain alone forever, his touch is death, his affection ruin. Those who claim to have seen him describe a living cadaver, small in stature and wrapped in creeping bandages. Amumu has inspired myths, songs, and folklore told and retold for generations—such that it is impossible to separate truth from fiction.'),
(7, 7, 'I am the fury of the blizzard, the bite of the wind, and the cold of the ice. I am the Freljord.', 'Anivia is a benevolent winged spirit who endures endless cycles of life, death, and rebirth to protect the Freljord. A demi-god born of unforgiving ice and bitter winds, she wields those elemental powers to thwart any who dare disturb her homeland. Anivia guides and protects the tribes of the harsh north, who revere her as a symbol of hope, and a portent of great change. She fights with every ounce of her being, knowing that through her sacrifice, her memory will endure, and she will be reborn into a new tomorrow.'),
(8, 8, 'Ashes, ashes, they all fall down.', 'Dangerous, yet disarmingly precocious, Annie is a child mage with immense pyromantic power. Even in the shadows of the mountains north of Noxus, she is a magical outlier. Her natural affinity for fire manifested early in life through unpredictable, emotional outbursts, though she eventually learned to control these “playful tricks.” Her favorite includes the summoning of her beloved teddy bear, Tibbers, as a fiery protector. Lost in the perpetual innocence of childhood, Annie wanders the dark forests, always looking for someone to play with.'),
(9, 9, 'Our faith is proven fate each time we deny it.', 'Emerging from moonlight’s shadow with weapons drawn, Aphelios kills the enemies of his faith in brooding silence—speaking only through the certainty of his aim, and the firing of each gun. Though fueled by a poison that renders him mute, he is guided by his sister Alune in her distant temple sanctuary from where she pushes an arsenal of moonstone weapons into his hands. For as long as the moon shines overhead, Aphelios will never be alone.'),
(10, 10, 'One tribe, one people, one Freljord.', 'Iceborn warmother of the Avarosan tribe, Ashe commands the most populous horde in the north. Stoic, intelligent, and idealistic, yet uncomfortable with her role as leader, she taps into the ancestral magics of her lineage to wield a bow of True Ice. With her people’s belief that she is the mythological hero Avarosa reincarnated, Ashe hopes to unify the Freljord once more by retaking their ancient, tribal lands.');

-- --------------------------------------------------------

--
-- Table structure for table `Regions`
--

CREATE TABLE `Regions` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(255) NOT NULL,
  `region_description` text NOT NULL,
  `in_arcane` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Regions`
--

INSERT INTO `Regions` (`region_id`, `region_name`, `region_description`, `in_arcane`) VALUES
(1, 'Bandle City', 'Opinions differ as to where exactly the home of the yordles is to be found, though a handful of mortals claim to have traveled unseen pathways to a land of curious enchantment beyond the material realm. They tell of a place of unfettered magic, where the foolhardy can be led astray by myriad wonders, and end up lost in a dream...\r\nIn Bandle City, it is said that every sensation is heightened for non-yordles. Colors are brighter. Food and drink intoxicates the senses for years and, once tasted, will never be forgotten. The sunlight is eternally golden, the waters crystal clear, and every harvest brings a fruitful bounty. Perhaps some of these claims are true, or maybe none—for no two taletellers ever seem to agree on what they actually saw.\r\n\r\nOnly one thing is known for certain, and that is the timeless quality of Bandle City and its inhabitants. This might explain why those mortals who find their way back often appear to have aged tremendously, while many more never return at all.', 0),
(2, 'Bilgewater', 'Nestled away in the Blue Flame Isles archipelago, Bilgewater is a port city like no other—home to serpent hunters, dock gangs, and smugglers from across the known world. Here, fortunes are made and ambitions shattered in the blink of an eye. For those fleeing justice, debt, or persecution, Bilgewater can be a place of new beginnings, for no one on these twisted streets cares about your past. Even so, with each new dawn, careless travelers can always be found floating in the harbor, their purses empty and their throats slit…\r\n\r\nWhile incredibly dangerous, Bilgewater is ripe with opportunity, free from the shackles of formal government and trade regulation. If you have the coin, almost anything can be purchased here, from outlawed hextech to the favor of local crime lords.\r\n\r\nWith the recent removal of the last “reaver king” of Bilgewater, the city has entered a period of transition, while the most prominent captains try to agree on its future. But as long as there are seaworthy ships and crews to sail them, Bilgewater is likely to remain one of the most colorful and well-connected places in Runeterra.', 0),
(3, 'Demacia', 'A strong, lawful kingdom with a prestigious military history, Demacia’s people have always valued the ideals of justice, honor, and duty most highly, and are fiercely proud of their cultural heritage. But in spite of these lofty principles, this largely self-sufficient nation has grown more insular and isolationist in recent centuries.\r\n\r\nNow, Demacia is a kingdom in turmoil.\r\n\r\nThe capital, the Great City of Demacia, was founded as a refuge from sorcery after the nightmare of the Rune Wars, and built upon the riddle of petricite—a peculiar white stone that dampens magical energy. It is from here that the royal family has long seen to the defense of the outlying towns and villages, farmland, forests, and mountains rich with mineral resources.\r\n\r\nHowever, following the sudden death of King Jarvan III, the other noble families have not yet approved the succession of his sole heir, young Prince Jarvan, to the throne.\r\n\r\nThose who dwell beyond the heavily guarded borders are increasingly viewed with suspicion, and many former allies have begun to look elsewhere for protection, in these uncertain times. Some dare to whisper that the golden age of Demacia has passed, and unless its people are willing to adapt to a changing world—something many believe they are simply incapable of doing—the kingdom’s decline may be inevitable.\r\n\r\nAnd all the petricite in the land will not protect Demacia from itself.\r\n\r\n\r\n', 0),
(4, 'Ionia', 'Surrounded by treacherous seas, Ionia is composed of a number of allied provinces scattered across a massive archipelago, known to many as the First Lands. Since Ionian culture has long been shaped by the pursuit of balance in all things, the border between the material and spirit realms tends to be more permeable here, especially in the wild forests and mountains.\r\n\r\nAlthough these lands’ enchantments can be fickle, its creatures dangerous and fae, for many centuries most Ionians led lives of plenty. The warrior monasteries, provincial militias—and even Ionia itself—had been enough to protect them.\r\n\r\nBut that ended twelve years ago, when Noxus attacked the First Lands. The empire’s seemingly endless warhosts savaged Ionia, and were only defeated after many years, and at great cost.\r\n\r\nNow, Ionia exists in an uneasy peace. Different reactions to the war have divided the region—some groups, such as the Shojin monks or the Kinkou, seek a return to isolationist pacifism, and pastoral traditions. Other more radical factions, such as the Navori Brotherhood and the Order of Shadow, demand a militarization of the land’s magic, to create a single, unified nation that can take vengeance on Noxus.\r\n\r\nThe fate of Ionia hangs in a delicate balance that few are willing to overturn, but all can feel shifting uneasily beneath their feet.\r\n\r\n\r\n', 0),
(5, 'Ixtal', 'Renowned for its mastery of elemental magic, Ixtal was one of the first independent nations to join the Shuriman empire. In truth, Ixtali culture is much older—part of the great westward diaspora that gave rise to civilizations including the Buhru, magnificent Helia, and the ascetics of Targon—and it is likely they played a significant role in the creation of the first Ascended.\r\n\r\nBut the mages of Ixtal survived the Void, and later the Darkin, by distancing themselves from their neighbors, drawing the wilderness around them like a shield. While much had already been lost, they were committed to the preservation of what little remained…\r\n\r\nNow, secluded deep in the jungle for thousands of years, the sophisticated arcology-city of Ixaocan remains mostly free of outside influence. Having witnessed from afar the ruination of the Blessed Isles and the Rune Wars that followed, the Ixtali view all the other factions of Runeterra as upstarts and pretenders, and use their powerful magic to keep any intruders at bay.\r\n\r\n\r\n', 0),
(6, 'Noxus', 'Noxus is a powerful empire with a fearsome reputation. To those beyond its borders, it is brutal, expansionist, and threatening, yet those who look past its warlike exterior see an unusually inclusive society, where the strengths and talents of its people are respected and cultivated.\r\n\r\nThe Noxii were once fierce barbarian tribes, until they stormed the ancient city that now lies at the heart of their domain. Under threat from all sides, they aggressively took the fight to their enemies, pushing their borders outward with each passing year. This struggle for survival has made modern Noxians a deeply proud people who value strength above all—though that strength can manifest in many different forms.\r\n\r\nAnyone can rise to a position of power and respect within Noxus if they display the necessary aptitude, regardless of social standing, background, homeland, or wealth. Those who are able to wield magic are held in particularly high esteem, and are actively sought out in order that their special talents may be honed and best harnessed for the benefit of the empire.\r\n\r\nBut in spite of this meritocratic ideal, the old noble houses still wield considerable power… and some fear that the greatest threat to Noxus comes not from its enemies, but from within.\r\n\r\n\r\n', 0),
(7, 'Piltover', 'Piltover is a thriving, progressive city whose power and influence is on the rise. It is Valoran’s cultural center, where art, craftsmanship, trade and innovation walk hand in hand. Its power comes not through military might, but the engines of commerce and forward thinking. Situated on the cliffs above the district of Zaun and overlooking the ocean, fleets of ships pass through its titanic sea-gates, bringing goods from all over the world. The wealth this generates has given rise to an unprecedented boom in the city’s growth. Piltover has - and still is - reinventing itself as a city where fortunes can be made and dreams can be lived. Burgeoning merchant clans fund development in the most incredible endeavors: grand artistic follies, esoteric hextech research, and architectural monuments to their power. With ever more inventors delving into the emergent lore of hextech, Piltover has become a lodestone for the most skilled craftsmen the world over.\r\n\r\n', 0),
(8, 'Shadow Isles', 'This cursed land was once home to a noble, enlightened civilization, known to its allies and emissaries as the Blessed Isles. However, more than a thousand years ago, an unprecedented magical cataclysm left the barrier between the material and spirit realms in tatters, effectively merging the two… and dooming all living things in an instant.\r\n\r\nNow, a malevolent Black Mist permanently shrouds the Isles, and the earth itself is tainted by dark sorcery. Mortals who dare to venture to these dismal shores will slowly have their life force stolen away from them, which in turn attracts the insatiable, restless spirits of the dead.\r\n\r\nThose who perish within the Mist are condemned to haunt this nightmarish place for eternity—worse still, the power of the Shadow Isles appears to wax stronger with every passing year, allowing the most powerful specters to roam farther and farther across Runeterra.', 0),
(9, 'Shurima', 'The empire of Shurima was once a thriving civilization that spanned an entire continent. Forged in a bygone age by the mighty god-warriors of the Ascended Host, it united all the disparate peoples of the south, and enforced a lasting peace between them.\r\n\r\nFew dared to rebel. Those that did, like the accursed nation of Icathia, were crushed without mercy.\r\n\r\nHowever, after several thousand years of growth and prosperity, the failed Ascension of Shurima’s last emperor left the capital in ruins, and tales of the empire’s former glory became little more than myth. Now, most of the nomadic inhabitants of Shurima’s deserts eke out a meager existence from the unforgiving land. Some have built small outposts to defend the few oases, while others delve into long lost catacombs in search of the untold riches that must surely lay buried there. There are also those who live as mercenaries, taking coin for their service before disappearing back into the lawless wastelands.\r\n\r\nStill, a handful dare to dream of a return to the old ways. Indeed, more recently the tribes have been stirred by whispers from the heart of the desert—that their emperor Azir has returned, to lead them into a new, wondrous age.', 0),
(10, 'Targon', 'Mount Targon is the mightiest peak in Runeterra, a towering peak of sun-baked rock amid a range of summits unmatched in scale anywhere else in the world. Located far from civilization, Mount Targon is utterly remote and all but impossible to reach save by the most determined seeker. Many legends cling to Mount Targon, and, like any place of myth, it is a beacon to dreamers, madmen and questors of adventure. Some of these brave souls attempt to scale the impossible mountain, perhaps seeking wisdom or enlightenment, perhaps chasing glory or some soul-deep yearning to witness its summit. The ascent is all but impossible, and those hardy few who somehow survive to reach the top almost never speak of what they have seen. Some return with a haunted, empty look in their eyes, others changed beyond all recognition, imbued by an Aspect of unearthly, inhuman power with a destiny few mortals can comprehend.', 0),
(11, 'The Freljord', 'The Freljord is a harsh and unforgiving place—where the people are born warriors, who must persevere against all odds.\r\n\r\nProud and fiercely independent, the tribes of the Freljord are often considered wild, rugged, and “uncivilized” by their neighbors across Valoran, who do not know the ancient traditions that shaped them. Many thousands of years ago, the alliance between the sisters Avarosa, Serylda, and Lissandra was shattered in a war that unknowingly threatened all of Runeterra, plunging the northern lands into chaos, and near-constant winter. Now, only those truly exceptional mortals who seem immune to the ravages of fire or ice seem destined, or able, to lead.\r\n\r\nDespite the best efforts of the Frostguard, myths and legends still endure of the old gods, the enigmatic yetis, and restless spirit walker shamans. The raiders of the Winter’s Claw range further with each passing year, harrying the borders of Demacia to the south, and the frontiers of Noxus to the east. Finally, seeking a more peaceful future, the fractious independent tribes and clans have begun to offer their allegiance to Ashe, young queen of the Avarosans.\r\n\r\nEven so, the portents are grim. War is surely returning to the Freljord, and none can hope to escape it.', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Champion`
--
ALTER TABLE `Champion`
  ADD PRIMARY KEY (`champion_id`),
  ADD UNIQUE KEY `champion_name` (`champion_name`),
  ADD KEY `region_id` (`region_id`);

--
-- Indexes for table `Lore`
--
ALTER TABLE `Lore`
  ADD PRIMARY KEY (`lore_id`),
  ADD KEY `champion_id` (`champion_id`);

--
-- Indexes for table `Regions`
--
ALTER TABLE `Regions`
  ADD PRIMARY KEY (`region_id`),
  ADD UNIQUE KEY `region_name` (`region_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Champion`
--
ALTER TABLE `Champion`
  MODIFY `champion_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Lore`
--
ALTER TABLE `Lore`
  MODIFY `lore_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Regions`
--
ALTER TABLE `Regions`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Champion`
--
ALTER TABLE `Champion`
  ADD CONSTRAINT `Champion_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `Regions` (`region_id`) ON DELETE SET NULL;

--
-- Constraints for table `Lore`
--
ALTER TABLE `Lore`
  ADD CONSTRAINT `Lore_ibfk_1` FOREIGN KEY (`champion_id`) REFERENCES `Champion` (`champion_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
