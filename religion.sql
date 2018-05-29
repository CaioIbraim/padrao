-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Maio-2018 às 19:25
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pt_migdal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `religion`
--

CREATE TABLE `religion` (
  `id` smallint(4) NOT NULL,
  `code` varchar(15) NOT NULL,
  `name` varchar(60) NOT NULL,
  `heritage` varchar(30) NOT NULL,
  `area_of_origin` varchar(15) NOT NULL,
  `founded` varchar(15) NOT NULL,
  `founder` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `god` varchar(15) NOT NULL,
  `afterlife` varchar(30) NOT NULL,
  `holy_texts` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `religion`
--

INSERT INTO `religion` (`id`, `code`, `name`, `heritage`, `area_of_origin`, `founded`, `founder`, `description`, `god`, `afterlife`, `holy_texts`) VALUES
(1, '9101e4d16b76041', 'agnosticism', 'Natural thought', 'Prehistoric/uni', '', '', 'Belief that (1) God, if it exists, is by nature unknowable and will always be unknowable, or, (2) that the individual being asked cannot conclude if god exists or not for lack of evidence one way or the other', 'Atheist/monothe', 'Not defined', 'None	'),
(2, '13691053504c3d1', 'Amish', 'Christianity', 'Switzerland', '1693 CE', 'Jakob Ammann and his followers split from the Anabaptists', ' Peaceful Christian fundamentalist group famous for its rejection of technology and strict adherence to OT and NT laws', 'Monotheist', 'Heaven or hell', 'The Bible	'),
(3, '575f4fde1cc5e90', 'ancestor worship', 'Natural thought', 'Prehistoric/uni', 'prehistoric', '', 'Belief that good relations need to be kept with tribal ancestor spirits. Often a form of Shamanism', 'Not defined', 'Yes', 'None	'),
(4, 'b2c48b4da592b4c', 'animism', 'Natural thought', 'Prehistoric/uni', 'prehistoric', '', 'The belief that all objects contain spirits. More a traditional form of belief than a \'religion\' in the Western sense', 'Not defined', 'Not defined', 'None	'),
(5, '51bde6c53bcc5fa', 'Asatrú', 'Scandinavian folklore', 'Iceland', '1972 CE', '', 'A modern uptake of Nordic religion', 'Polytheist', 'Other', 'None	'),
(6, 'd337c9792bf9af4', 'atheism', 'Natural thought', 'Prehistoric/uni', 'prehistoric', '', 'Either (1) the active and extrinsic disbelief that God exists, or (2) an intrinsic lack of belief due to lack of knowledge about god(s) in local culture', 'Atheist', 'Not defined', 'None	'),
(7, '4ed501969a61b71', 'Aum Shinrikyo', 'Christianity and Far Eastern r', 'Japan', '1984 CE', 'Shoko Asahara', 'Dangerous and violent religious community responsible for the 1995 Sarin gas attack on Tokyo\'s subway and other crimes. Eventually they apologized, stopped using the Bible, and formed the more prosaic group called Aleph', 'Theist', 'Yes', 'The Bible and other	'),
(8, 'cae48bdfd501602', '  Bahá\'\'í Faith', 'Shi\'a Islam', 'Iran', '18634 CE', 'By Bahá\'u\'lláh', ' Belief that a series of prophets have come from God, and that Bahá\'í is the latest religion founded by God. A liberal offshoot of Islam, but persecuted in Iran', 'Monotheist', 'Yes', 'Writings of Baha\'u\'llah and Ab'),
(9, 'e8230c2270aa4ec', 'Brahma Kumari', 'Hinduism', 'India', '1930s CE', 'Lekhraj Kripalani (called Brahma Baba)', 'This group are preparing to rule the world after a coming apocalypse, and embrace many practices which are now called New Age', 'Monotheist', '', 'Writings of founder and leader'),
(10, '76bdbfbbd8de6f0', 'Branch Davidians', 'Christianity', 'USA', '1930 CE', 'Benjamin Roden', ' Apocalyptic suicide cult famed for its dramatic armed fight against authorities in the town of Waco, USA, in 1993', 'Theist', 'Heaven or hell', 'The Bible	'),
(11, '22dc94687119738', 'Buddhism', 'Hinduism', 'India', '1st millennium ', 'Traditions based on teachings attributed to Siddhartha Gauta', ' The belief that meditation and good living can break the cycle of reincarnation and result in enlightenment', 'Atheist', 'Reincarnation until escape', 'Multifaceted	'),
(12, '86aeb02d4ea8a42', 'Celtic Paganism', 'Prehistoric', 'UK', 'prehistoric', '', 'Modern reconstructions of Celtic paganism form part of the neo-pagan range of religions', 'Not known', '', 'None	'),
(13, '13c9011ac1f4303', 'Chen Tao', 'Christianity and Buddhism', 'Taiwan', '1996 CE', 'By Hon Ming Chen', 'A series of civilisations on Earth have arisen but destroyed themselves in nuclear war. Each time, some faithful believers were rescued by flying saucers and put back on Earth', 'Theist', 'Yes', '	'),
(14, '95615579647faa8', 'Chinese Religion', 'Prehistoric', 'China', 'prehistoric', '', 'A varied cultural religion practiced traditionally on a town-by-town and region-by-region basis', 'Atheist', 'Reincarnation until escape', 'None	'),
(15, '9ac99b06cc6d454', 'Christadelphians', 'Christianity', 'USA', '1840s CE', 'By Dr John Thomas', ' Bible-based Christianity', 'Monotheist', 'Heaven or hell', 'The Bible	'),
(16, 'b8480bdb23ac77b', 'Christian Apostolic Church In Zion ', 'Christianity', 'USA', '1895 CE', 'John Alexander Dowie', ' Fundamentalist Anti-science flat-earth Christian cult, who also predicted the End of the World would occur 4 different times', 'Theist', 'Heaven or hell', 'The Bible	'),
(17, 'bcf58b19077aa77', 'Christianity', 'Judaism6 and paganism7', 'Roman Empire', '1st-3rd century', 'Multiple Greek writers. St Paul', ' Belief that a single creator god had a son, Jesus Christ, born to a human mother, and that Jesus crucifixion by the Romans brings salvation', 'Monotheist', 'Heaven or hell', 'The Bible	'),
(18, 'dfbcf9072d34a1c', 'Concerned Christians', 'Christianity', 'USA', '1980s CE', 'Monte Kim Miller', ' Fundamentalist Christians active in USA, Israel and Greece who expected the end of the world in year 2000, starting with a nuclear attack on the USA, which they appeared to be trying to instigate themselves', 'Theist', 'Heaven or hell', 'The Bible	'),
(19, 'a2fcab23dee2433', 'Confucianism', 'Chinese religion', 'China', '-551 to 479 BCE', 'By Confucius', ' A collection of ethical and moral teachings', 'Atheist', '', 'None	'),
(20, '3e0eb0f5f9dc18e', 'Dami Xuanjiao', 'Christianity', 'South Korea', '1980s CE', '', 'A millenarian cult based on the belief that Jesus would return to judge survivors in 1999. Suspected of being on the verge of mass suicide after predictions of the end of the world failed in year 2000', 'Theist', 'Yes', '	'),
(21, 'ea7b62203faf067', 'deism', 'theism', 'Prehistoric/uni', 'prehistoric', '', 'Belief in a single creator god who is not \'personal\' and does not have human emotions, and which many believers say does not interact with the world', 'Monotheist', 'Not defined', 'None	'),
(22, '50c04e702880665', 'Divine Lightmission', 'Hinduism', 'India', '1960 CE', 'Indian guru Shri Hans Ju Maharaj', 'A self-help religious group involving meditation, with few fixed beliefs', 'Hard to tell', '', 'None	'),
(23, '6b91ce0ab8a4c72', 'Druidism', 'Prehistoric', 'UK', 'prehistoric', '', 'Celtic religion in prehistoric England. Modern reconstructed Druidism is part of the neo-pagan range of religions', 'Not known/polyt', 'Reincarnation', 'None	'),
(24, '4c31747ebc30746', 'Druze', 'Islam', 'Egypt', '11th century', '', 'A semi-secretive esoteric religion with features of a Mystery Religion', 'Monotheist', '', 'Qur\'an, Rasa\'il al-hikma (Epis'),
(25, '9237be40d1b0bda', 'dualism', 'Natural thought', 'Prehistoric/uni', '', '', 'Belief that either (1) There is a good and evil god of equal, or almost-equal power, or (2) there are two gods, such as a male and female one', 'Dualist', 'Not defined', 'Multifaceted	'),
(26, '149a208c25fbf41', 'Ebionites', 'Judaism', 'Judea (now Isra', '1st century', '', '1st century Jewish Christians, possibly the earliest form of Christianity to exist', 'Monotheist', '', 'Early version of the Gospel of'),
(27, '2e4981731a3677a', 'Eckankar', 'New Age', 'USA', '1965 CE', 'By Paul Twitchell', ' New Age religion, a mix of Sant Mat, Theosophy and Scientology', 'Monotheist', 'Reincarnation until escape', 'Shariyat-Ki-Sugmad9	'),
(28, '215294c6abc7d6c', 'Gnosticism', 'Prehistoric', 'Greece', 'prehistoric (1s', '', 'The belief that we must escape from this world, which was created and is ruled by an inferior and unworthy god, and reunite with the true god', 'Polytheist', '', 'Multifaceted	'),
(29, '4bffdc7238a172b', 'Hare Krishna', 'Hinduism', 'USA', '1966 CE', 'By A. C. Bhaktivedanta Swami Prabhupada', 'The embracing of Krishna through correct living, honesty, spiritual life and austerity', 'Polytheist', 'Reincarnation until escape', 'Various Indian scriptures	'),
(30, '3d34a77eb9bd76a', 'Heathenism', 'Asatru', 'Scandinavia', '', '', 'Modern uptake of Nordic religion. Part of the neo-pagan range of religions', 'Polytheist', '', 'None	'),
(31, 'c5e01e2a5eebbda', 'Heaven\'s Gate', 'Christianity and New Age', 'USA', '1970s CE', 'Marshall Applewhite and Bonnie Nettles', ' Apocalyptic suicide cult who combined Biblical eschatology with New Age and ideas about UFOs. All 39 members committed suicide in San Diego, USA in 1997', 'Theist', 'Yes', '	'),
(32, 'ca4a34a958569bd', 'Hinduism', 'Prehistoric', 'India', 'prehistoric', '', ' Cultural religion of India which was historically decentralized and disparate and not a single belief system. Western influence made it into a single religion, an identity which Hindus now accept', 'Polytheist', 'Reincarnation until escape', 'Multifaceted	'),
(33, '1f850af8943fea5', 'Hookers For Jesus / The Family Of God', 'Christianity', 'USA', '1968 CE', 'David Berg', ' Sexually promiscuous group who fell foul of police suspicion. As is often the case, increasing pressure from outside resulted in the group retreating even further into insanity, and they became The Family, predicting the end of the world', 'Theist', 'Heaven or hell', 'The Bible	'),
(34, '1176c5879ab3452', 'Humanism', 'The enlightenment', 'Europe', 'The Enlightenme', 'Enlightenment thinkers', 'An organized form of atheism where moral and ethical goodness is emphasized', 'Atheist', 'None', 'None	'),
(35, '9466a8389a403f2', 'Islam', 'Judaism', 'Saudi Arabia', '0610 CE', 'By Muhammad', ' Strict monotheism taught by Muhammad, the world\'s 2nd largest religion', 'Monotheist', 'Heaven or hell', 'Qur\'an and Hadiths	'),
(36, '4ba505a27acd060', 'Jainism', 'Prehistoric', 'India', 'prehistoric', '', ' Beliefs include non-violence and equality of all living things', 'Atheist', 'Reincarnation until escape', 'Multifaceted	'),
(37, 'da3c688b63ac9e5', 'Jedi Knights', 'Science fiction', 'UK', '2001 CE', 'Campaign for UK Census', 'A campaign saw many put this down as their religion on the UK census in 2001. Midichlorians exist in all living beings, which create a \'living force\' that can be interacted with', 'Animist', 'Select few', 'None	'),
(38, 'daa9b9a2f990a2d', 'Jehovah\'s Witnesses', 'Christianity', 'USA', '1870s CE', 'By Charles Taze Russell', ' A 140-year-old Christian fundamentalist/literalist organisation famous for preaching that the world is about to end (nowadays - because of the existence of the United Nations)', 'Monotheist', 'Other', 'The Bible	'),
(39, '2f986eaf65a5fe7', 'Judaism', 'Prehistoric', 'Babylon (mostly', '1st millennium ', 'Combination of prehistoric practices which became organized ', ' Organized Judaism emerged from Babylonian writings. Belief that God has a special contract with a Hebrew tribe, involving many specific rules of behaviour', 'Monotheist', 'Yes', 'Tanakh and Talmud	'),
(40, 'def409384226ed7', 'Mennonite', 'Christianity', 'Central Europe', '', '', ' A Protestant Christian denomination', 'Monotheist', 'Heaven or hell', 'The Bible	'),
(41, '9f4ec6af2eef243', 'Mithraism', 'Roman mystery religions', 'Greece', '-50 BCE to 50 C', '', 'Roman mystery religion that believed that the Son of the Sun was a saviour who was sacrificed for the good of all', 'Monotheist', 'Yes', 'Not known	'),
(42, '0bcf7f1ba0b5fe4', 'monotheism', 'Natural thought', 'Prehistoric/uni', '', '', 'Belief in a single creator god', 'Theist', 'Not defined', 'Multifaceted	'),
(43, '918cc147a063df2', 'Mysticism', 'Natural thought', 'Prehistoric/uni', 'prehistoric', '', 'The belief that God is unknowable but accessible, and that doctrinal religion hampers spiritual growth', 'Not defined', 'Not defined', 'Multifaceted	'),
(44, '570a96a975b419f', 'Native American Church', 'The Peyote religion', 'Mexico', '1880s CE', 'By Quanah Parker', 'Beliefs vary from tribe to tribe and are sometimes noticeably Christian', 'Monotheist', '', 'None	'),
(45, '3d48eb4b9df8fec', 'New Age', 'Counterculture', 'The West', '1850s CE', 'Popular beliefs from the 1850s, attaining identification in ', 'A disparate and diverse collection of popular beliefs and practices', 'Not defined', 'Other', 'None	'),
(46, '0b1456cff63199e', 'no religion', 'Natural thought', 'Prehistoric/uni', '', '', 'The rise secularisation has seen public and private religion decline throughout the developed world', 'Not defined', 'Not defined', 'None	'),
(47, 'f1633ae0eb21608', 'occultism', 'Counterculture', 'Prehistoric/uni', '', '', 'Normally existing within other belief systems, occult systems concentrate on esoteric meanings in texts, often with magical undertones', 'Not defined', 'Not defined', 'Multifaceted	'),
(48, '1a32829d9c07c5a', 'Order Of The Solar Temple', 'Christianity and New Age', 'France', '1984 CE', 'Joseph Di Mambro & Luc Jouret', 'Apocalyptic suicide cult, with mass suicides in Switzerland, France and Quebec, in preparation for Jesus second coming', 'Theist', 'Yes', 'The Bible and other	'),
(49, '881a16ccd9c2c57', 'Paganism', 'Counterculture', 'The West', '19th century', 'Romantic revival of interest in Celtic, Greek and pre-Christ', 'Part of the neo-pagan range of religions', 'Polytheist', 'Yes', 'None	'),
(50, 'a8f67c1b812d92b', 'pantheism', 'Natural thought', 'Prehistoric/uni', 'prehistoric', '', 'God is everywhere, and everything, but is not transcendent and may have no distinct consciousness', 'Monotheist', '', 'None	'),
(51, '79e621ca9261cb8', 'Pastafarianism', 'Parody', 'USA', '2005 CE', 'By Bobby Henderson', 'A parody religion based on worship of the Flying Spaghetti Monster', 'Monotheist', 'Heaven or hell', 'Gospel of the Flying Spaghetti'),
(52, '564f9dd39ae0343', 'People\'s Temple', 'Christianity', 'USA', '1960s CE', 'Rev. James (Jim) Warren Jones', ' Apocalyptic suicide cult that imploded, resulting in the deaths of over 600 adults and 276 children', 'Theist', 'Heaven or hell', 'The Bible	'),
(53, '1fdeb621618a885', 'polytheism', 'Natural thought', 'Prehistoric/uni', '', '', 'Belief in multiple gods, often in some form of hierarchy', 'Theist', 'Not defined', 'Multifaceted	'),
(54, '448a078164c7894', 'Raja Yoga', 'Hinduism', 'India', '', '', 'An astika school of Hindu philosophy based around mastering and quieting the mind, involving meditation', 'Polytheist', '', 'The Yoga Sutras of Patanjali	'),
(55, '01cd1575df27167', 'Rastafarian', 'Christianity', 'Jamaica', '1930s CE', '', ' God (called Jah) fathered a black Jesus; marijuana use in rituals', 'Monotheist', '', 'The Bible (generally)	'),
(56, 'effaafb08944bb9', 'Ravidassia', 'Hinduism and Sikhism', 'India', '14th century', 'By the guru Ravidass', 'Souls are part of the divine and proper living allows us to realize God', 'Monotheist', '', 'Amritbani Guru Ravidass Ji	'),
(57, '924a1961d570850', 'Salvation Army', 'Christianity (Methodist)', 'UK', '1865 CE', 'By Methodist minister William Booth', ' Christian organisation of evangelists organised along military lines, famous for charity work', 'Monotheist', 'Heaven or hell', 'The Bible	'),
(58, '0198e60b7e97410', 'Santería', 'Christianity and West African ', 'Cuba', '', '', 'A combination of West African, Caribbean beliefs with some elements of Roman Catholicism', 'Monotheist', '', 'None	'),
(59, '0baae3b6d32033f', 'Satanism', 'Atheism', 'USA', '1966 CE', 'By Anton Lavey', ' An atheist religion that uses dark and evil symbology for self-development and anti-religious purposes - Satan itself is not a real being, just a symbol', 'Atheist', 'None', 'Writings of founder and leader'),
(60, '695f0a17c665233', 'Scientology', 'Science fiction', 'USA', '1952 CE', 'By L. Ron Hubbard', 'Derived from the writings of science fiction author L. Ron Hubbard, a series of practices called Dianetics is used to clear minds of alien influences and attain a state of mental perfection', 'Atheist', 'Reincarnation', 'Writings of founder and leader'),
(61, '88a7491dae693ab', 'Shamanism', 'Natural thought', 'Prehistoric/uni', 'prehistoric', '', 'Belief that Shamans need to keep good relations with tribal ancestor spirits for the good fortune of the whole tribe', 'Not defined', 'Yes', 'None	'),
(62, 'f129563e30b4dc9', 'Shinto', 'Japanese culture', 'Japan', '3rd century BCE', 'Gradually formed', ' Official collection of practices in Japan, more cultural than religious', 'Atheist', '', 'Various	'),
(63, 'a76ec6fa52a31fd', 'Sikhism', 'Hinduism', 'India', '15th century', 'By Guru Nanak', ' Prayer, meditation and self control to become a soldier of God', 'Monotheist', 'Reincarnation until escape', 'Sri Guru Granth Sahib and othe'),
(64, 'a7f9a59364db537', 'Spiritualism', 'Christianity and New Age', 'USA', '1848 CE', 'By fraudsters Kate and Margaret Fox', 'The belief that the souls of the dead communicate with the living, mostly through Mediums, but, suffered serious credibility problems with the original founders admitted to fraudulently inventing the \'rappings\' that formed the communications', 'Not defined', 'Yes', 'None	'),
(65, '16d41e777f50e18', 'sun worship', 'Prehistoric', 'Universal', 'prehistoric', '', 'The basis of much symbology used in many subsequent religions', 'Not defined', 'Not defined', 'None	'),
(66, 'b69cc5c18e4f713', 'Taoism', 'Chinese philosophy', 'China', '3rd century BCE', 'Based on teachings attributed to Lao Tzu', ' A relaxed and peaceful religion based on following and accepting the flow of life', 'Atheist', 'None', 'Tao Te Ching	'),
(67, '777b81ecdfc6ed6', 'theism', 'Natural thought', 'Prehistoric/uni', 'prehistoric', '', 'The belief in god(s)', '', '', 'Multifaceted	'),
(68, 'abb92bb90bb8d98', 'Thelema', 'Occultism', 'UK', '1904 CE', 'By Aleister Crowley', 'A magical system of discerning True Will with inspiration from a host of Egyptian gods', 'Polytheist', '', 'Book of the Law	'),
(69, '4e38d9cd4478224', 'Theosophy', 'Spiritualism and Westernized I', 'USA', '1875 CE', 'By Madame Blavatsky', 'Mired in fraud arrests and exposés, the Spiritualism scene had soured, so Madame Blavatsky reinvented her routine as a new religion, using an Indian theme', '', 'Yes', '	'),
(70, '782a98917aa61e6', 'Traditional African Church', 'Christianity and African cultu', 'Africa', '', '', 'A range of Churches ranging from mostly Christian, to those mostly encapsulating native African spirituality', 'Monotheist', '', 'The Bible	'),
(71, 'beb75c04b264907', 'Unification Church', 'Christianity', 'South Korea', '1954 CE', 'By Sun Myung Moon', 'Sun Myung Moon embodied the Second Coming of Christ, and his commercialist church runs a media empire', 'Monotheist', 'Heaven or hell', 'The Bible and The Exposition o'),
(72, '3cd193addc8b3bf', 'Unitarianism', 'Christianity', 'Poland, Lithuan', '16th century', '', 'A liberal and non-Trinitarian Christian church', 'Monotheist', 'Heaven', 'The Bible	'),
(73, '7f4891d56c327f8', 'Unitarian-universalism', 'Christianity', 'USA', '19th century', '', ' A liberal and diverse pluralist religion accepting of believers without needing them to leave their current religions', 'Not defined', 'Heaven', 'Multifaceted	'),
(74, '565c6e8f440f630', 'Unitas Fratrum', 'Christianity (Protestant)', 'Bohemia (now Cz', '1457 CE', '', ' A Protestant Christian denomination', 'Monotheist', 'Heaven or hell', 'The Bible	'),
(75, '2b125acf18cab74', 'universalism', 'Natural thought', 'Prehistoric/uni', '', '', 'Belief that all people go to heaven', 'Theist', 'Heaven', 'Multifaceted	'),
(76, '739b7f4a4db62ec', 'Voodoo', 'African traditional theology', 'Africa', 'prehistoric', '', 'A traditional religion from Haiti with an ethical focus on combating greed and promoting honour', 'Deist', '', 'None	'),
(77, '6ba810868f7efaa', 'Wicca', 'Counterculture', 'UK', '1954 CE', 'By Gerald Gardner', 'Neo-pagan organisation based around reconstructed elements of folklore', 'Dualist', 'Not defined', 'None	'),
(78, '766b9d97ca70247', 'Witchcraft', 'Natural thought', 'Prehistoric/uni', '', '', 'A description of various cultural practices, which are often part of a parent belief system', 'Not defined', 'Not defined', 'Multifaceted	'),
(79, 'a3a9fdfef8243cf', 'Yezidism', 'Zoroastrianism and ancient Mes', 'Assyria (now Ir', '12th century', 'By Abi ibn Musafir', 'An ancient religion. Malek Taus looks after the world with 6 other angels. Heavily persecuted by Muslims and accused of Devil Worship', 'Monotheist', 'Reincarnation', 'Yezidi Book of Revelation & Bl'),
(80, 'e734352451595e9', 'Zhu Shen Jiao', 'The Shouters', 'China', '1993 CE', '', 'As this group got more and more excited about establishing a Kingdom of God, in the approach to year 2000, its leaders were arrested amid fears that it would turn into a suicide cult', 'Theist', 'Yes', '	'),
(81, '01e9dd5b9caf71a', 'Zoroastrianism', 'Prehistoric', 'Persia (now Ira', 'before 5th cent', 'By Zoroaster', 'An ancient dualistic religion from Iran with one good god (Ahura Mazda) and one evil one (Ahriman)', 'Dualist', '', 'Avesta	');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
