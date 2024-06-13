-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bazabig`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `prezime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `korisnicko_ime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `lozinka` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `razina`) VALUES
(15, 'Bruno', 'Agatic', 'admin', '$2y$10$/q25PstwUXSZ9wDU4oMR0.B13xQruBPua8.nYYk9LH9rxoeC.WxW2', 1),
(16, 'Bruno', 'Agatic', 'user', '$2y$10$8epEahrX..BQz5Zo7ksiUuz38YBFmUMcNGPWz2WVytrt6MrNSvlXy', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `naslov` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `sazetak` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `tekst` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `slika` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `kategorija` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `arhiva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(34, '2024-06-01', 'Ekonomija na prekretnici', 'Ekonomski pokazatelji ukazuju na prekretnicu.', 'Ekonomski pokazatelji u SAD-u ukazuju na moguću prekretnicu. Ovaj razvoj događaja može imati dalekosežne posledice na globalnoj sceni, jer se mnogi pitaju kako će Amerika reagovati na nove izazove.', 'Vijest_1.jpg', 'USA', 0),
(35, '2024-06-02', 'Klimatske promjene sve izraženije', 'Novi izvještaj o ozbiljnim posljedicama.', 'Novi izveštaj ukazuje na sve ozbiljnije posledice klimatskih promena širom sveta. Stručnjaci pozivaju na hitne akcije kako bi se ublažili efekti globalnog zagrevanja i zaštitili najugroženiji regioni.', 'Vijest_2.jpg', 'Svijet', 1),
(36, '2024-06-03', 'Novi zakon o imigraciji', 'Predložen zakon menja imigracionu politiku.', 'Predložen je novi zakon koji će značajno promeniti imigracionu politiku SAD-a. Promene uključuju strože kriterijume za ulazak, ali i olakšice za kvalifikovane radnike.', 'Vijest_3.jpg', 'USA', 0),
(37, '2024-06-04', 'Konflikt u bliskom istoku eskalira', 'Nasilje u bliskom istoku se intenzivira.', 'Nasilje u Bliskom Istoku se intenzivira, uz mnoge žrtve. Međunarodna zajednica poziva na smirenje tenzija i hitne pregovore kako bi se sprečio dalji gubitak života.', 'Vijest_4.jpg', 'Svijet', 1),
(38, '2024-06-05', 'Tehnološki napredak u Silicijumskoj dolini', 'Inovacije obećavaju revoluciju u industriji.', 'Nove tehnološke inovacije u Silicijumskoj dolini obećavaju revoluciju u industriji. Stručnjaci očekuju da će ovi napredci doneti značajne promene u svakodnevnom životu i poslovanju.', 'Vijest_5.jpg', 'USA', 0),
(39, '2024-06-06', 'Sporazum o klimatskim promjenama', 'Globalni sporazum postignut na samitu.', 'Na samitu o klimatskim promenama postignut je novi globalni sporazum. Cilj je smanjenje emisija štetnih gasova i povećanje upotrebe obnovljivih izvora energije.', 'Vijest_6.jpg', 'Svijet', 0),
(40, '2024-06-07', 'Povećanje minimalne plate', 'Novi zakon donosi povećanje plate.', 'Novi zakon o minimalnoj plati u SAD-u donosi značajno povećanje. Očekuje se da će ovaj potez pomoći mnogim radnicima da poboljšaju svoj životni standard.', 'Vijest_7.jpg', 'USA', 1),
(41, '2024-06-08', 'Poplave u Aziji', 'Teške poplave evakuacija hiljada ljudi.', 'Teške poplave u Aziji prisilile su hiljade ljudi na evakuaciju. Spasilačke ekipe rade danonoćno kako bi pomogle ugroženima i sprečile dalje štete.', 'Vijest_8.jpg', 'Svijet', 0),
(42, '2024-06-09', 'Reforma zdravstvene zaštite', 'Reforma obećava bolje usluge za sve.', 'Nova reforma zdravstvene zaštite u SAD-u obećava bolje usluge za sve građane. Promene uključuju povećanje pristupačnosti i smanjenje troškova zdravstvene nege.', 'Vijest_9.jpg', 'USA', 1),
(43, '2024-06-10', 'Razvoj vakcine protiv novog virusa', 'Naučnici blizu otkrića vakcine.', 'Naučnici su blizu otkrića vakcine protiv novog opasnog virusa. Ovo otkriće može imati ključnu ulogu u zaustavljanju širenja i zaštiti globalnog zdravlja.', 'Vijest_10.jpg', 'Svijet', 0),
(44, '2024-06-11', 'Zakon o zaštiti podataka', 'Novi zakon štiti podatke širom zemlje.', 'Novi zakon o zaštiti podataka stupio je na snagu širom SAD-a. Cilj zakona je povećanje sigurnosti i privatnosti korisničkih informacija u digitalnom svetu.', 'Vijest_11.jpg', 'USA', 1),
(45, '2024-06-12', 'Unapređenje obrazovnih sistema', 'Novi programi za unapređenje obrazovanja.', 'Novi programi za unapređenje obrazovnih sistema pokrenuti su globalno. Cilj je modernizacija obrazovanja i povećanje dostupnosti kvalitetnog školovanja za sve.', 'Vijest_12.jpg', 'Svijet', 0),
(46, '2024-06-13', 'Investicije u zelenu energiju', 'Velike investicije u zelenu energiju.', 'Velike investicije u zelenu energiju najavljene su u SAD-u. Očekuje se da će ovaj potez pomoći u borbi protiv klimatskih promena i smanjenju zavisnosti od fosilnih goriva.', 'Vijest_13.jpg', 'USA', 1),
(47, '2024-06-14', 'Humanitarna kriza u Africi', 'Milioni ljudi suočavaju se s krizom.', 'Humanitarna kriza u Africi pogađa milione ljudi. Međunarodne organizacije rade na pružanju pomoći i sprečavanju dalje eskalacije krize.', 'Vijest_14.jpg', 'Svijet', 0),
(48, '2024-06-15', 'Inovacije u medicini', 'Nove tehnologije obećavaju bolju njegu.', 'Nove medicinske tehnologije obećavaju bolju njegu pacijenata. Očekuje se da će ovi napredci poboljšati dijagnostiku i lečenje raznih bolesti.', 'Vijest_15.jpg', 'USA', 1),
(49, '2024-06-16', 'Politička kriza u Južnoj Americi', 'Politička kriza produbljuje se s protestima.', 'Politička kriza u Južnoj Americi se produbljuje s novim protestima. Građani zahtevaju promene i odgovornost od svojih lidera.', 'Vijest_16.jpg', 'Svijet', 0),
(50, '2024-06-17', 'Poboljšanje infrastrukture', 'Nova ulaganja donose poboljšanja.', 'Nova ulaganja u infrastrukturu donose značajna poboljšanja širom SAD-a. Fokus je na modernizaciji puteva, mostova i javnog prevoza.', 'Vijest_17.jpg', 'USA', 1),
(51, '2024-06-18', 'Ekonomski rast u Aziji', 'Azijske zemlje bilježe snažan rast.', 'Azijske zemlje beleže snažan ekonomski rast uprkos globalnim izazovima. Ovaj rast je vođen industrijskim inovacijama i povećanom potrošnjom.', 'Vijest_18.jpg', 'Svijet', 0),
(52, '2024-06-19', 'Povećanje budžeta za obrazovanje', 'Novi budžet donosi veća izdvajanja.', 'Novi budžet u SAD-u donosi veća izdvajanja za obrazovni sektor. Očekuje se da će ovo pomoći u unapređenju obrazovnih resursa i kvaliteta nastave.', 'Vijest_19.jpg', 'USA', 1),
(53, '2024-06-20', 'Ekološke inicijative u Europi', 'Evropske zemlje pokreću inicijative.', 'Evropske zemlje pokreću ambiciozne ekološke inicijative. Cilj je smanjenje zagađenja i povećanje korišćenja obnovljivih izvora energije.', 'Vijest_20.jpg', 'Svijet', 0),
(54, '2024-06-21', 'Borba protiv opioidne krize', 'Novi programi za borbu protiv krize.', 'Novi programi za borbu protiv opioidne krize u SAD-u uključuju prevenciju, lečenje i rehabilitaciju. Očekuje se da će ove mere smanjiti broj zavisnika i spasiti živote.', 'Vijest_21.jpg', 'USA', 1),
(55, '2024-06-22', 'Sukobi u Africi', 'Nasilje i sukobi izazivaju zabrinutost.', 'Nasilje i sukobi u Africi izazivaju veliku zabrinutost međunarodne zajednice. Ugroženi su životi hiljada ljudi, a mnogi su prisiljeni na beg.', 'Vijest_22.jpg', 'Svijet', 0),
(56, '2024-06-23', 'Razvoj ruralnih područja', 'Novi planovi za razvoj ruralnih područja.', 'Novi planovi za razvoj ruralnih područja širom SAD-a fokusiraju se na poboljšanje infrastrukture, obrazovanja i zdravstvene zaštite.', 'Vijest_23.jpg', 'USA', 1),
(57, '2024-06-24', 'Rast turizma', 'Globalni turizam bilježi porast.', 'Globalni turizam beleži porast nakon pandemije. Oporavak industrije donosi ekonomske beneficije mnogim zemljama širom sveta.', 'Vijest_24.jpg', 'Svijet', 0),
(58, '2024-06-25', 'Digitalna transformacija', 'Digitalna transformacija postaje prioritet.', 'Digitalna transformacija postaje prioritet za američke kompanije. Inovacije u tehnologiji omogućavaju efikasnije poslovanje i bolju korisničku uslugu.', 'Vijest_25.jpg', 'USA', 1),
(59, '2024-06-26', 'Migracije u Europi', 'Evropa se suočava s novim migracijama.', 'Evropa se suočava s novim valom migracija iz Afrike i Bliskog Istoka. Ovo predstavlja veliki izazov za zemlje prijema i međunarodnu zajednicu.', 'Vijest_26.jpg', 'Svijet', 0),
(60, '2024-06-27', 'Inovacije u energetici', 'Nove tehnologije obećavaju veću efikasnost.', 'Nove tehnologije u energetici obećavaju veću efikasnost i održivost. Ovi napredci mogu smanjiti troškove energije i zaštititi životnu sredinu.', 'Vijest_27.jpg', 'USA', 1),
(61, '2024-06-28', 'Izbori u Aziji', 'Predstojeći izbori izazivaju veliki interes.', 'Predstojeći izbori u Aziji izazivaju veliki interes međunarodne zajednice. Ishod može imati značajan uticaj na regionalnu stabilnost i međunarodne odnose.', 'Vijest_28.jpg', 'Svijet', 0),
(62, '2024-06-29', 'Unapređenje cyber sigurnosti', 'Nova strategija za unapređenje sigurnosti.', 'Nova strategija za unapređenje cyber sigurnosti u SAD-u ima za cilj zaštitu kritične infrastrukture i privatnih podataka od sve većih pretnji.', 'Vijest_29.jpg', 'USA', 1),
(63, '2024-06-30', 'Zdravstvena kriza', 'Globalna zdravstvena kriza zahtijeva hitne mjere.', 'Globalna zdravstvena kriza zahteva hitne mere kako bi se sprečilo dalje širenje bolesti. Međunarodne organizacije rade na koordinaciji odgovora i pružanju pomoći najugroženijima.', 'Vijest_30.jpg', 'Svijet', 0);
 
--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
