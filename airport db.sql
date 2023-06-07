-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 10:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airport db`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `airlines_id` int(11) NOT NULL,
  `airlines_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`airlines_id`, `airlines_name`) VALUES
(1, 'Aegean Airlines'),
(2, 'Sky Express'),
(3, 'British Airways'),
(4, 'Ryanair'),
(5, 'Air France'),
(6, 'Lufthansa'),
(7, 'American Airlines'),
(8, 'Turkish Airlines'),
(9, 'Qatar Airways'),
(10, 'KLM Royal Dutch Airlines'),
(11, 'Alitalia'),
(12, 'Air Canada'),
(13, 'Air India'),
(14, 'Japan Airlines'),
(15, 'Air China'),
(16, 'Air New Zealand'),
(17, 'Aer Lingus'),
(18, 'Air Malta'),
(19, 'Thai Airways'),
(20, 'Cathay Pacific'),
(21, 'Swiss International Air Lines'),
(22, 'China Eastern Airlines'),
(23, 'Singapore Airlines'),
(24, 'Etihad Airways'),
(25, 'Finnair'),
(26, 'Garuda Indonesia'),
(27, 'Iberia'),
(28, 'Korean Air'),
(29, 'LATAM Airlines'),
(30, 'Malaysia Airlines'),
(31, 'Norwegian Air Shuttle'),
(32, 'Oman Air'),
(33, 'Philippine Airlines'),
(34, 'SAS Scandinavian Airlines'),
(35, 'South African Airways'),
(36, 'TAP Air Portugal'),
(37, 'Vietnam Airlines'),
(38, 'Wizz Air'),
(39, 'Aeroflot'),
(40, 'Air Europa'),
(41, 'Air Mauritius'),
(42, 'Air Tahiti Nui'),
(43, 'Asiana Airlines'),
(44, 'Avianca'),
(45, 'Copa Airlines'),
(46, 'EgyptAir'),
(47, 'El Al'),
(48, 'EVA Air'),
(49, 'Gulf Air'),
(50, 'Royal Air Maroc');

-- --------------------------------------------------------

--
-- Table structure for table `crew`
--

CREATE TABLE `crew` (
  `crews_id` int(11) NOT NULL,
  `crew_name` varchar(255) DEFAULT NULL,
  `crew_surname` varchar(255) NOT NULL,
  `rank` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crew`
--

INSERT INTO `crew` (`crews_id`, `crew_name`, `crew_surname`, `rank`) VALUES
(1, 'Nikos', 'Papadopoulos', 'Captain'),
(2, 'Maria', 'Gerekou', 'First Officer'),
(3, 'Panos', 'Katsaros', 'Captain'),
(4, 'Sophia', 'Constantinou', 'First Officer'),
(5, 'Michael', 'Brown', 'Captain'),
(6, 'Emily', 'Nguyen', 'First Officer'),
(7, 'George', 'Katsikaris', 'Captain'),
(8, 'Catherine', 'Smith', 'First Officer'),
(9, 'Christos', 'Papadakis', 'Captain'),
(10, 'Anna', 'Petrova', 'First Officer'),
(11, 'David', 'Jones', 'Captain'),
(12, 'Alexandros', 'Vasilopoulos', 'First Officer'),
(13, 'Lucas', 'Rodriguez', 'Captain'),
(14, 'Eleni', 'Vlachou', 'First Officer'),
(15, 'Thomas', 'Johnson', 'Captain'),
(16, 'Jasmine', 'Kim', 'First Officer'),
(17, 'Costas', 'Georgiou', 'Captain'),
(18, 'Jenna', 'Thompson', 'First Officer'),
(19, 'Spyridon', 'Papageorgiou', 'Captain'),
(20, 'Hiroshi', 'Tanaka', 'First Officer'),
(21, 'Jared', 'Davis', 'Captain'),
(22, 'Dimitris', 'Mavrommatis', 'First Officer'),
(23, 'Samantha', 'Lee', 'Captain'),
(24, 'Konstantinos', 'Antonopoulos', 'First Officer'),
(25, 'Ayako', 'Nakamura', 'Captain'),
(26, 'Yong', 'Kim', 'First Officer'),
(27, 'Georgios', 'Kyprianou', 'Captain'),
(28, 'Claudia', 'Gonzalez', 'First Officer'),
(29, 'Aikaterini', 'Michalopoulou', 'Captain'),
(30, 'Juan', 'Hernandez', 'First Officer'),
(31, 'Jenny', 'Nguyen', 'Captain'),
(32, 'Anastasios', 'Stathopoulos', 'First Officer'),
(33, 'Kevin', 'Lee', 'Captain'),
(34, 'Evangelia', 'Tsakiri', 'First Officer'),
(35, 'Makoto', 'Nakamura', 'Captain'),
(36, 'Daniel', 'Yasu', 'First Officer'),
(37, 'Theodora', 'Stavropoulou', 'Captain'),
(38, 'Emily', 'Garcia', 'First Officer'),
(39, 'Panagiotis', 'Konstantinidis', 'Captain'),
(40, 'Javier', 'Fernandez', 'First Officer'),
(41, 'Anastasia', 'Nikolaou', 'Captain'),
(42, 'Ioannis', 'Vasileiou', 'First Officer'),
(43, 'Isabela', 'Martinez', 'Captain'),
(44, 'Eirini', 'Papageorgiou', 'First Officer'),
(45, 'Mohammed', 'Ali', 'Captain'),
(46, 'Tiffany', 'Zohios', 'First Officer'),
(47, 'Stefanos', 'Christopoulos', 'Captain'),
(48, 'Julia', 'Hellmans', 'First Officer'),
(49, 'Antonis', 'Katsoulas', 'Captain'),
(50, 'Ming', 'Zhang', 'First Officer');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flights_id` int(11) NOT NULL,
  `airline_id` int(11) NOT NULL,
  `flight_number` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `departure_time` time NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `gate_id` int(11) NOT NULL,
  `plane_id` int(11) NOT NULL,
  `hotels_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flights_id`, `airline_id`, `flight_number`, `type`, `origin`, `destination`, `departure_time`, `date`, `gate_id`, `plane_id`, `hotels_id`) VALUES
(1, 1, 'OA101', 'Domestic', 'Athens', 'Corfu', '05:30:00', '2023-06-13', 1, 35, 1),
(2, 1, 'OA204', 'Domestic', 'Heraklion', 'Athens', '06:00:00', '2023-05-02', 2, 2, 2),
(3, 2, 'OA332', 'International', 'London', 'Athens', '06:45:00', '2023-05-03', 3, 2, 3),
(4, 40, 'OA437', 'International', 'Athens', 'New York', '14:30:00', '2023-03-18', 4, 3, 4),
(5, 4, 'OA513', 'Domestic', 'Chania', 'Athens', '14:30:00', '2023-05-05', 5, 35, 5),
(6, 1, 'OA620', 'Domestic', 'Athens', 'Corfu', '14:30:00', '2023-05-06', 6, 35, 6),
(7, 9, 'OA751', 'International', 'Dubai', 'Athens', '14:30:00', '2023-05-07', 7, 4, 7),
(8, 3, 'OA899', 'Domestic', 'Athens', 'London', '14:30:00', '2023-03-18', 8, 4, 8),
(9, 5, 'OA956', 'International', 'Athens', 'Paris', '14:30:00', '2023-05-09', 9, 4, 9),
(10, 39, 'OA102', 'Domestic', 'Athens', 'Thessaloniki', '14:30:00', '2023-05-10', 10, 5, 10),
(11, 1, 'OA205', 'Domestic', 'Chania', 'Athens', '14:30:00', '2023-05-11', 11, 5, 11),
(12, 6, 'OA333', 'International', 'Athens', 'Maroco', '14:30:00', '2023-03-18', 12, 5, 12),
(13, 6, 'OA438', 'International', 'New York', 'Athens', '14:30:00', '2023-04-17', 13, 6, 13),
(14, 1, 'OA514', 'Domestic', 'Chania', 'Athens', '14:30:00', '2023-05-14', 14, 6, 14),
(15, 1, 'OA621', 'Domestic', 'Athens', 'Corfu', '14:30:00', '2023-06-13', 15, 6, 15),
(16, 9, 'OA752', 'International', 'Heraklion', 'Dubai', '14:30:00', '2023-05-16', 16, 7, 16),
(17, 4, 'OA900', 'Domestic', 'Thessaloniki', 'Chania', '14:30:00', '2023-05-17', 17, 7, 17),
(18, 4, 'OA957', 'International', 'Chania', 'Paris', '14:30:00', '2023-05-18', 18, 7, 18),
(19, 4, 'OA103', 'Domestic', 'Athens', 'Heraklion', '14:30:00', '2023-05-19', 19, 7, 19),
(20, 2, 'OA206', 'Domestic', 'Chania', 'Thessaloniki', '14:30:00', '2023-05-20', 20, 8, 20),
(21, 1, 'OA334', 'International', 'Heraklion', 'London', '14:30:00', '2023-05-21', 21, 8, 21),
(22, 7, 'OA439', 'International', 'Chania', 'New York', '14:30:00', '2023-05-22', 22, 8, 22),
(23, 1, 'OA515', 'Domestic', 'Thessaloniki', 'Athens', '14:30:00', '2023-05-23', 23, 8, 23),
(24, 1, 'OA622', 'Domestic', 'Heraklion', 'Chania', '14:30:00', '2023-05-24', 24, 9, 24),
(25, 9, 'OA753', 'International', 'Athens', 'Dubai', '14:30:00', '2023-05-25', 25, 9, 25),
(26, 2, 'OA901', 'Domestic', 'Chania', 'Athens', '14:30:00', '2023-04-17', 26, 9, 26),
(27, 3, 'OA625', 'Domestic', 'Chania', 'Thessaloniki', '14:30:00', '2023-06-19', 27, 9, 27),
(28, 3, 'OA104', 'Domestic', 'Heraklion', 'Athens', '14:30:00', '2023-05-27', 28, 10, 28),
(29, 2, 'OA207', 'Domestic', 'Thessaloniki', 'Chania', '14:30:00', '2023-05-28', 29, 10, 29),
(30, 5, 'OA335', 'International', 'Athens', 'Paris', '14:30:00', '2023-05-29', 30, 10, 30),
(31, 7, 'OA440', 'International', 'Heraklion', 'New York', '14:30:00', '2023-05-30', 31, 10, 31),
(32, 1, 'OA516', 'Domestic', 'Chania', 'Athens', '14:30:00', '2023-05-31', 32, 11, 32),
(33, 1, 'OA623', 'Domestic', 'Thessaloniki', 'Athens', '14:30:00', '2023-04-17', 33, 11, 33),
(34, 6, 'OA754', 'International', 'Chania', 'Dubai', '14:30:00', '2023-06-02', 34, 11, 34),
(35, 2, 'OA902', 'Domestic', 'Athens', 'Chania', '14:30:00', '2023-06-03', 35, 11, 35),
(36, 40, 'OA959', 'International', 'Heraklion', 'Paris', '14:30:00', '2023-06-04', 36, 12, 36),
(37, 1, 'OA105', 'Domestic', 'Athens', 'Chania', '14:30:00', '2023-06-05', 37, 12, 37),
(38, 1, 'OA208', 'Domestic', 'Heraklion', 'Thessaloniki', '14:30:00', '2023-06-06', 38, 12, 38),
(39, 1, 'OA336', 'International', 'Chania', 'London', '14:30:00', '2023-06-07', 39, 12, 39),
(40, 4, 'OA441', 'International', 'Athens', 'New York', '14:30:00', '2023-06-08', 40, 13, 40),
(41, 4, 'OA517', 'Domestic', 'Heraklion', 'Chania', '14:30:00', '2023-06-09', 41, 13, 41),
(42, 4, 'OA624', 'Domestic', 'Athens', 'Heraklion', '14:30:00', '2023-06-10', 42, 13, 42),
(43, 3, 'OA755', 'International', 'Thessaloniki', 'Dubai', '14:30:00', '2023-06-11', 43, 13, 43),
(44, 4, 'OA903', 'Domestic', 'Chania', 'Thessaloniki', '14:30:00', '2023-06-12', 44, 14, 44),
(45, 1, 'OA960', 'Domestic', 'Athens', 'Corfu', '10:30:00', '2023-06-13', 45, 14, 45),
(46, 2, 'OA106', 'Domestic', 'Thessaloniki', 'Athens', '14:30:00', '2023-06-14', 46, 14, 46),
(47, 1, 'OA209', 'Domestic', 'Chania', 'Heraklion', '14:30:00', '2023-06-15', 47, 14, 47),
(48, 5, 'OA337', 'International', 'Heraklion', 'Paris', '14:30:00', '2023-06-16', 48, 15, 48),
(49, 7, 'OA442', 'International', 'Thessaloniki', 'New York', '14:30:00', '2023-06-17', 49, 48, 49),
(50, 4, 'OA518', 'Domestic', 'Corfu', 'Chania', '14:30:00', '2023-06-18', 50, 50, 50);

-- --------------------------------------------------------

--
-- Table structure for table `flights_crews`
--

CREATE TABLE `flights_crews` (
  `flights_crews_id` int(11) NOT NULL,
  `flight_id` int(11) DEFAULT NULL,
  `crew_id` int(11) DEFAULT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights_crews`
--

INSERT INTO `flights_crews` (`flights_crews_id`, `flight_id`, `crew_id`, `hotel_id`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 2, 3, 2),
(4, 2, 4, 2),
(5, 3, 5, 3),
(6, 3, 6, 3),
(7, 4, 7, 4),
(8, 4, 8, 4),
(9, 5, 9, 5),
(10, 5, 10, 5),
(11, 6, 11, 6),
(12, 6, 12, 6),
(13, 7, 13, 7),
(14, 7, 14, 7),
(15, 8, 15, 8),
(16, 8, 16, 8),
(17, 9, 17, 9),
(18, 9, 18, 9),
(19, 10, 19, 10),
(20, 10, 20, 10),
(21, 11, 21, 11),
(22, 11, 22, 11),
(23, 12, 23, 12),
(24, 12, 24, 12),
(25, 13, 25, 13),
(26, 13, 26, 13),
(27, 14, 27, 14),
(28, 14, 28, 14),
(29, 15, 29, 15),
(30, 15, 30, 15),
(31, 16, 31, 16),
(32, 16, 32, 16),
(33, 17, 33, 17),
(34, 17, 34, 17),
(35, 18, 35, 18),
(36, 18, 36, 18),
(37, 19, 37, 19),
(38, 19, 38, 19),
(39, 20, 39, 20),
(40, 20, 40, 20),
(41, 21, 41, 21),
(42, 21, 42, 21),
(43, 22, 43, 22),
(44, 22, 44, 22),
(45, 23, 45, 23),
(46, 23, 46, 23),
(47, 24, 47, 24),
(48, 24, 48, 24),
(49, 25, 49, 25),
(50, 25, 50, 25);

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `gates_id` int(11) NOT NULL,
  `gate_name` varchar(255) DEFAULT NULL,
  `security_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gates`
--

INSERT INTO `gates` (`gates_id`, `gate_name`, `security_id`) VALUES
(1, 'A1', 1),
(2, 'B2', 2),
(3, 'C3', 3),
(4, 'D4', 4),
(5, 'E5', 5),
(6, 'F6', 6),
(7, 'G7', 7),
(8, 'H8', 8),
(9, 'I9', 9),
(10, 'J10', 10),
(11, 'K11', 11),
(12, 'L12', 12),
(13, 'M13', 13),
(14, 'N14', 14),
(15, 'O15', 15),
(16, 'P16', 16),
(17, 'Q17', 17),
(18, 'R18', 18),
(19, 'S19', 19),
(20, 'T20', 20),
(21, 'U21', 21),
(22, 'V22', 22),
(23, 'W23', 23),
(24, 'X24', 24),
(25, 'Y25', 25),
(26, 'Z26', 26),
(27, 'A2', 27),
(28, 'B3', 28),
(29, 'C4', 29),
(30, 'D5', 30),
(31, 'E6', 31),
(32, 'F7', 32),
(33, 'G8', 33),
(34, 'H9', 34),
(35, 'I10', 35),
(36, 'J11', 36),
(37, 'K12', 37),
(38, 'L13', 38),
(39, 'M14', 39),
(40, 'N15', 40),
(41, 'O16', 41),
(42, 'P17', 42),
(43, 'Q18', 43),
(44, 'R19', 44),
(45, 'S20', 45),
(46, 'T21', 46),
(47, 'U22', 47),
(48, 'V23', 48),
(49, 'W24', 49),
(50, 'X25', 50);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotels_id` int(11) NOT NULL,
  `hotels_name` varchar(255) DEFAULT NULL,
  `postal_address` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotels_id`, `hotels_name`, `postal_address`, `email_address`) VALUES
(1, 'The Grand Resort', '77 Ethnikis Antistaseos, Loutraki 20300, Greece', 'info@grandresort.gr'),
(2, 'Hilton Athens', '46 Vasilissis Sofias Avenue, Athens 11528, Greece', 'athhi.info@hilton.com'),
(3, 'Plaza Resort Hotel', 'Coastal Road, Anavyssos 19013, Greece', 'info@plazaresort.gr'),
(4, 'Divani Caravel Hotel', '2 Vassileos Alexandrou Avenue, Athens 16121, Greece', 'info@divanicaravelhotel.com'),
(5, 'Hotel Grande Bretagne', '1 Vasileos Georgiou A, Syntagma Square, Athens 105 64, Greece', 'info@hotelgrandebretagne.gr'),
(6, 'The Ritz-Carlton, Berlin', 'Potsdamer Platz 3, 10785 Berlin, Germany', 'info@ritzcarlton.com'),
(7, 'The Plaza Hotel', 'Fifth Avenue at Central Park South, New York, NY 10019, USA', 'info@theplazany.com'),
(8, 'Burj Al Arab Jumeirah', 'Jumeirah St, Umm Suqeim 3, Dubai, UAE', 'info@burjalarab.com'),
(9, 'The Ritz London', '150 Piccadilly, London W1J 9BR, United Kingdom', 'info@theritzlondon.com'),
(10, 'Belmond Hotel Caruso', 'Piazza San Giovanni del Toro 2, 84010 Ravello SA, Italy', 'info@belmond.com'),
(11, 'Astir Palace Hotel Athens', 'Apollonos 40, Vouliagmeni 16671, Greece', 'info@astir.gr'),
(12, 'The Westin Resort Costa Navarino', 'Navarino Dunes, Costa Navarino, Messinia 240 01, Greece', 'info@westincostanavarino.com'),
(13, 'King George, a Luxury Collection Hotel', '3 Vasileos Georgiou A, Syntagma Square, Athens 105 64, Greece', 'info@kinggeorgeathens.com'),
(14, 'Mandarin Oriental, Bangkok', '48 Oriental Avenue, Bangkok 10500, Thailand', 'info@mandarinoriental.com'),
(15, 'The St. Regis Bali Resort', 'Kawasan Pariwisata, Nusa Dua, Lot S6, PO Box 44, Nusa Dua 80363, Indonesia', 'info@stregisbali.com'),
(16, 'SLS Beverly Hills', '465 S La Cienega Blvd, Los Angeles, CA 90048, USA', 'info@slshotels.com'),
(17, 'Grace Santorini', 'Imerovigli 847 00, Greece', 'info@gracehotels.com'),
(18, 'Amangiri', '1 Kayenta Road, Canyon Point, UT 84741, USA', 'info@aman.com'),
(19, 'Four Seasons Hotel George V Paris', '31 Avenue George V, 75008 Paris, France', 'info@fourseasons.com'),
(20, 'Hotel Diogenis', 'Athens 105 51, Greece', 'diogenis@hotel.com'),
(21, 'Hotel Nefeli', 'Chania 731 00, Greece', 'nefeli@hotel.com'),
(22, 'Villa Paradiso', 'Amalfi, Italy', 'paradiso@villa.com'),
(23, 'Grand Hotel du Cap-Ferrat', 'Saint-Jean-Cap-Ferrat, France', 'grandhotel@capferrat.com'),
(24, 'Hotel Nacional de Cuba', 'Havana, Cuba', 'nacional@hotel.com'),
(25, 'Mandarin Oriental', 'Bangkok, Thailand', 'mandarin@bangkok.com'),
(26, 'The Plaza Hotel', 'New York, NY 10019, United States', 'plaza@hotel.com'),
(27, 'Atlantis, The Palm', 'Dubai, United Arab Emirates', 'atlantis@thepalm.com'),
(28, 'The Ritz-Carlton', 'Moscow, Russia', 'ritzcarlton@moscow.com'),
(29, 'The Setai', 'Miami Beach, FL 33139, United States', 'setai@miamibeach.com'),
(30, 'InterContinental Danang Sun Peninsula Resort', 'Da Nang, Vietnam', 'intercontinental@danang.com'),
(31, 'Fairmont Chateau Lake Louise', 'Lake Louise, AB T0L 1E0, Canada', 'chateau@lakelouise.com'),
(32, 'The St. Regis', 'Bali, Indonesia', 'stregis@bali.com'),
(33, 'Rosewood Miramar Beach', 'Montecito, CA 93108, United States', 'rosewood@miramarbeach.com'),
(34, 'The Ritz-Carlton', 'Tokyo, Japan', 'ritzcarlton@tokyo.com'),
(35, 'Belmond Hotel Caruso', 'Ravello, Italy', 'caruso@belmond.com'),
(36, 'Waldorf Astoria Beverly Hills', 'Beverly Hills, CA 90210, United States', 'waldorf@beverlyhills.com'),
(37, 'Four Seasons Resort Bali at Sayan', 'Ubud, Bali, Indonesia', 'fourseasons@sayan.com'),
(38, 'Burj Al Arab', 'Dubai, United Arab Emirates', 'burjalarab@hotel.com'),
(39, 'The Savoy', 'London WC2R 0EU, United Kingdom', 'savoy@hotel.com'),
(40, 'Le Bristol Paris', 'Paris, France', 'bristol@paris.com'),
(41, 'The Beverly Hills Hotel', 'Beverly Hills, CA 90210, United States', 'beverlyhillshotel@hotel.com'),
(42, 'The Ritz-Carlton', 'Hong Kong', 'ritzcarlton@hongkong.com'),
(43, 'Amangiri', 'Canyon Point, UT 84741, United States', 'amangiri@canyonpoint.com'),
(44, 'Alila Villas Uluwatu', 'Bali, Indonesia', 'alilavillas@uluwatu.com'),
(45, 'Acropolis View Hotel', 'Rovertou Galli 10, Athens 11742, Greece', 'acropolisviewhotel@example.com'),
(46, 'Mykonos Grand Hotel & Resort', 'Agios Ioannis, Mykonos 84600, Greece', 'mykonosgrandhotel@example.com'),
(47, 'Canaves Oia Suites', 'Oia, Santorini 84702, Greece', 'canavesoiasuites@example.com'),
(48, 'Daios Cove Luxury Resort & Villas', 'Vathi, Agios Nikolaos 72100, Greece', 'daioscove@example.com'),
(49, 'Amanzoe Resort', 'Kranidi, Porto Heli 213 00, Greece', 'amanzoe@example.com'),
(50, 'Mystique, a Luxury Collection Hotel', 'Oia, Santorini 84702, Greece', 'mystiquehotel@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `inspections`
--

CREATE TABLE `inspections` (
  `inspections_id` int(11) NOT NULL,
  `inspections_name` varchar(255) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inspections`
--

INSERT INTO `inspections` (`inspections_id`, `inspections_name`, `test_id`) VALUES
(1, 'Airframe Inspection', 33),
(2, 'Avionics Check', 26),
(3, 'Battery Test', 44),
(4, 'Brake System Inspection', 4),
(5, 'Cockpit Instrument Calibration', 5),
(6, 'Control Surfaces Inspection', 6),
(7, 'Engine Run-Up Test', 7),
(8, 'Fuel System Check', 24),
(9, 'Hydraulic System Inspection', 9),
(10, 'Landing Gear Inspection', 10),
(11, 'Navigation Systems Check', 11),
(12, 'Oxygen System Inspection', 12),
(13, 'Pitot-Static System Check', 13),
(14, 'Propeller Check', 14),
(15, 'Radar Check', 15),
(16, 'Starter/Generator Test', 16),
(17, 'Tire Pressure Check', 17),
(18, 'Wing Inspection', 18),
(19, 'Aileron Inspection', 19),
(20, 'Flap Inspection', 20),
(21, 'Fuselage Inspection', 21),
(22, 'Horizontal Stabilizer Inspection', 22),
(23, 'Vertical Stabilizer Inspection', 23),
(24, 'Windshield Check', 24),
(25, 'Yoke Check', 25),
(26, 'Air Conditioning Check', 26),
(27, 'Anti-Ice System Check', 27),
(28, 'Autopilot Check', 28),
(29, 'Cabin Pressurization Check', 29),
(30, 'Circuit Breaker Check', 30),
(31, 'De-Ice System Check', 31),
(32, 'Emergency Equipment Inspection', 32),
(33, 'Evacuation Slide Inspection', 33),
(34, 'Fire Detection System Check', 34),
(35, 'Flight Controls Check', 35),
(36, 'Galley Equipment Inspection', 36),
(37, 'Lavatory Inspection', 37),
(38, 'Life Raft Inspection', 38),
(39, 'Oxygen Masks Inspection', 39),
(40, 'Passenger Seats Inspection', 40),
(41, 'Seat Belt Inspection', 41),
(42, 'Smoke Detection System Check', 42),
(43, 'Storage Compartments Inspection', 43),
(44, 'Window Shade Check', 44),
(45, 'Wing Flaps Inspection', 45),
(46, 'Backup Generator Check', 46),
(47, 'Inverter Check', 47),
(48, 'Power Distribution Panel Check', 48),
(49, 'Strobe Light Inspection', 49),
(50, 'VHF Communication Check', 50);

-- --------------------------------------------------------

--
-- Table structure for table `inspections_history`
--

CREATE TABLE `inspections_history` (
  `inspections_history_id` int(11) NOT NULL,
  `inspection_date` date DEFAULT NULL,
  `inspection_result` varchar(255) DEFAULT NULL,
  `test_section_id` int(11) DEFAULT NULL,
  `technician_id` int(11) DEFAULT NULL,
  `pln_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inspections_history`
--

INSERT INTO `inspections_history` (`inspections_history_id`, `inspection_date`, `inspection_result`, `test_section_id`, `technician_id`, `pln_id`) VALUES
(1, '2022-01-05', 'Passed', 1, 1001, 1),
(2, '2021-12-22', 'Failed', 2, 1002, 2),
(3, '2022-03-15', 'Passed', 3, 1003, 3),
(4, '2022-02-10', 'Passed', 4, 1004, 4),
(5, '2022-04-01', 'Failed', 5, 1005, 5),
(6, '2021-11-25', 'Failed', 6, 1006, 6),
(7, '2022-01-12', 'Passed', 7, 1007, 7),
(8, '2022-02-20', 'Passed', 8, 1008, 8),
(9, '2022-03-05', 'Passed', 9, 1009, 9),
(10, '2022-04-28', 'Failed', 10, 1010, 10),
(11, '2022-02-01', 'Passed', 11, 1011, 11),
(12, '2022-03-18', 'Failed', 12, 1012, 12),
(13, '2022-01-19', 'Passed', 13, 1013, 13),
(14, '2022-03-10', 'Passed', 14, 1014, 14),
(15, '2022-02-12', 'Failed', 15, 1015, 15),
(16, '2022-04-20', 'Passed', 16, 1016, 16),
(17, '2021-12-29', 'Passed', 17, 1017, 17),
(18, '2022-01-28', 'Failed', 18, 1018, 18),
(19, '2022-02-22', 'Passed', 19, 1019, 19),
(20, '2022-03-25', 'Failed', 20, 1020, 20),
(21, '2022-04-15', 'Passed', 21, 1021, 21),
(22, '2022-01-15', 'Passed', 22, 1022, 22),
(23, '2022-02-05', 'Failed', 23, 1023, 23),
(24, '2022-04-05', 'Passed', 24, 1024, 24),
(25, '2022-03-08', 'Passed', 25, 1025, 25),
(26, '2022-02-15', 'Failed', 26, 1026, 26),
(27, '2022-04-25', 'Failed', 27, 1027, 27),
(28, '2022-01-08', 'Passed', 28, 1018, 28),
(29, '2022-02-26', 'Passed', 29, 1029, 29),
(30, '2022-03-22', 'Passed', 30, 1030, 30),
(31, '2022-04-18', 'Failed', 31, 1031, 31),
(32, '2022-01-22', 'Passed', 32, 1032, 32),
(33, '2022-03-01', 'Failed', 33, 1033, 33),
(34, '2022-04-08', 'Passed', 34, 1034, 34),
(35, '2022-02-08', 'Passed', 35, 1035, 35),
(36, '2022-03-29', 'Passed', 36, 1036, 36),
(37, '2022-04-22', 'Passed', 37, 1037, 37),
(38, '2022-01-01', 'Failed', 38, 1038, 38),
(39, '2022-03-12', 'Failed', 39, 1039, 39),
(40, '2022-04-02', 'Passed', 40, 1040, 40),
(41, '2022-05-15', 'Passed', 41, 1041, 41),
(42, '2022-06-02', 'Failed', 42, 1042, 42),
(43, '2022-07-11', 'Passed', 43, 1043, 43),
(44, '2022-08-27', 'Passed', 44, 1044, 44),
(45, '2022-09-05', 'Failed', 45, 1045, 45),
(46, '2022-10-03', 'Passed', 46, 1046, 46),
(47, '2022-11-11', 'Passed', 47, 1047, 47),
(48, '2022-12-01', 'Failed', 48, 1048, 48),
(49, '2023-06-14', 'Passed', 49, 1049, 49),
(50, '2023-06-13', 'Passed', 50, 1050, 50);

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `passengers_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `income` int(20) DEFAULT NULL,
  `num_credit_cards` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`passengers_id`, `name`, `surname`, `address`, `age`, `income`, `num_credit_cards`) VALUES
(1, 'John', 'Smith', '123 Main St, New York, NY', 35, 50000, '4556-2114-3111-4654'),
(2, 'Maria', 'Garcia', '456 Elm St, Los Angeles, CA', 28, 40000, '4539-3487-1058-7168'),
(3, 'Nikos', 'Papadopoulos', '10 Panepistimiou St, Athens, Greece', 42, 45000, '4485-9451-7466-9863'),
(4, 'Anna', 'Mueller', '20 Hauptstrasse, Berlin, Germany', 31, 55000, '4539-4814-3376-1974'),
(5, 'Mohammed', 'Ali', '15 Al-Andalus St, Casablanca, Morocco', 45, 60000, '4916-3254-4604-0178'),
(6, 'Sophia', 'Rodriguez', '789 Broadway, Miami, FL', 27, 38000, '4539-9741-5902-2431'),
(7, 'Hiroshi', 'Tanaka', '1-1-1 Shibuya, Tokyo, Japan', 39, 75000, '4716-4286-9576-6014'),
(8, 'Sofia', 'Kourtidou', '15 Tsimiski St, Thessaloniki, Greece', 33, 47000, '4556-2146-9513-2297'),
(9, 'Mariana', 'Gomez', '20 Calle de Alcala, Madrid, Spain', 29, 42000, '4716-8404-6772-1573'),
(10, 'Ali', 'Hassan', '25 Pyramids St, Giza, Egypt', 41, 58000, '4532-0595-7998-0058'),
(11, 'David', 'Kim', '100 Main St, San Francisco, CA', 30, 55000, '4539-4209-7370-8326'),
(12, 'Isabella', 'Rossi', '10 Via Veneto, Rome, Italy', 34, 49000, '4485-0325-8949-2882'),
(13, 'Rachid Ben', 'Ali', '30 Rue de la Republique, Algiers, Algeria', 48, 62000, '4485-6687-2955-4725'),
(14, 'Juan', 'Hernandez', '50 Avenida de Mayo, Buenos Aires, Argentina', 25, 35000, '4024-0071-4856-7943'),
(15, 'Yiannis', 'Mitsopoulos', '5 Aristotelous Sq, Thessaloniki, Greece', 37, 52000, '4916-1478-8343-3751'),
(16, 'Sophie', 'Dupont', '15 Rue de Rivoli, Paris, France', 29, 43000, '4539-9520-3038-3529'),
(17, 'Sergei', 'Ivanov', '10 Tverskaya St, Moscow, Russia', 50, 80000, '4916-6412-2569-5010'),
(18, 'Christina', 'Antoniou', '25 Makariou Ave, Nicosia, Cyprus', 36, 51000, '4187-2527-6872-1874'),
(19, 'Fernando', 'Hernandez', '75 Avenida Central, Panama City, Panama', 26, 37000, '4624-0748-4572-2209'),
(20, 'Kyoko', 'Nakamura', '3-1-1 Higashi-Shinjuku, Tokyo, Japan', 40, 69000, '4485-2975-2725-0987'),
(21, 'Katia', 'Sotiropoulou', '7 Pireos St, Athens, Greece', 31, 46000, '4916-4436-1420-2999'),
(22, 'Mohammed', 'Aziz', '10 Boulevard Abdelmoumen, Casablanca, Morocco', 43, 61000, '4024-0071-2175-5275'),
(23, 'Giovanni', 'Russo', '5 Via della Conciliazione, Vatican City', 32, 48000, '4556-8636-6476-7440'),
(24, 'Jorge', 'Rodriguez', '150 Avenida Reforma, Mexico City, Mexico', 27, 39000, '4485-3042-9528-1697'),
(25, 'Aisha', 'Al-Maktoum', 'Dubai Mall, Dubai, UAE', 38, 72000, '4687-5878-1246-5811'),
(26, 'Anna', 'Kovalenko', '20 Khreshchatyk St, Kiev, Ukraine', 35, 53000, '4532-5575-9208-4725'),
(27, 'Angelo', 'Edwards', '534 4th Street, New York, NY 10001', 41, 24000, '4556-8873-3866-4931'),
(28, 'Aurora', 'Torres', '891 Oak Avenue, Boston, MA 02101', 27, 32000, '4485-1890-1122-7391'),
(29, 'Leonard', 'Warren', '975 East Street, San Francisco, CA 94101', 29, 29000, '4532-5453-3861-5035'),
(30, 'Sophie', 'Walker', '651 Broadway, New York, NY 10001', 35, 38000, '4716-2133-4257-8305'),
(31, 'Yannis', 'Papadopoulos', '26 Athinas Street, Athens, Greece', 43, 21000, '4556-0429-2583-5599'),
(32, 'Nina', 'Nguyen', '328 Main Street, San Francisco, CA 94101', 24, 36000, '4716-6553-4413-2483'),
(33, 'Nikos', 'Karamanlis', '10 Aristotelous Street, Thessaloniki, Greece', 50, 32000, '4556-4326-1686-2749'),
(34, 'Molly', 'Thompson', '409 Elm Street, Boston, MA 02101', 32, 29000, '4916-7157-5072-0854'),
(35, 'Katerina', 'Ioannou', '11 Dimitriou Street, Athens, Greece', 38, 27000, '4024-0071-4069-0362'),
(36, 'Elena', 'Dimitriou', '17 Irodotou Street, Athens, Greece', 29, 25000, '4929-1456-4437-0580'),
(37, 'Amelia', 'Wilson', '875 Maple Avenue, New York, NY 10001', 26, 31000, '4532-7087-3152-6460'),
(38, 'Christos', 'Athanasiou', '3 Alexandrou Street, Athens, Greece', 47, 28000, '4024-0071-4051-5494'),
(39, 'Julia', 'Davis', '193 Cherry Lane, San Francisco, CA 94101', 31, 30000, '4716-7343-5697-1979'),
(40, 'Eleni', 'Georgiou', '22 Ethnikis Antistasis Street, Thessaloniki, Greece', 42, 26000, '4539-4814-7807-8011'),
(41, 'Vasilis', 'Giannakopoulos', '7 Tsimiski Street, Thessaloniki, Greece', 36, 29000, '4024-0071-3254-9634'),
(42, 'Sarah', 'Lee', '277 Oak Lane, Boston, MA 02101', 28, 35000, '4556-3228-2118-4239'),
(43, 'Marianna', 'Papadopoulou', '13 Ermou Street, Athens, Greece', 45, 23000, '4532-6872-2277-4302'),
(44, 'Panagiotis', 'Arvanitis', '1 Leoforos Vasileos Pavlou, Athens, Greece', 54, 31000, '4539-4920-1590-8396'),
(45, 'Ricardo', 'Garcia', '222 Vine Street, San Francisco, CA 94101', 30, 33000, '4716-0284-2880-0294'),
(46, 'Ioanna', 'Papadaki', '20 Agias Sofias Street, Thessaloniki, Greece', 25, 28000, '4929-5849-9975-0964'),
(47, 'Sofia', 'Katsarou', '2 Evaggelistrias Street, Athens, Greece', 33, 26000, '4024-0071-3242-5439'),
(48, 'Sotiris', 'Christou', '15 Proxenou Koromila Street, Thessaloniki, Greece', 49, 32000, '4532-8255-4031-9695'),
(49, 'Daniel', 'Hernandez', '739 Pine Street, New York, NY 10001', 39, 27000, '4024-0071-3808-7860'),
(50, 'Ibrahim', 'Davis', '4325 Meadow View Drive', 35, 58000, '4556-8987-1525-3297');

-- --------------------------------------------------------

--
-- Table structure for table `pilot_meetings`
--

CREATE TABLE `pilot_meetings` (
  `pilot_meeting_id` int(11) NOT NULL,
  `pilots_surname` varchar(255) NOT NULL,
  `meeting_date` date NOT NULL,
  `meeting_subject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pilot_meetings`
--

INSERT INTO `pilot_meetings` (`pilot_meeting_id`, `pilots_surname`, `meeting_date`, `meeting_subject`) VALUES
(1, 'Nikolaou', '2023-01-03', 'Improving Cockpit Communication Strategies'),
(2, 'Nikolaou', '2023-01-05', 'Responding to Emergency Situations in Flight'),
(3, 'Nikolaou', '2023-01-10', 'Enhancing Pilot Safety Training Programs'),
(4, 'Nikolaou', '2023-02-19', 'Managing In-Flight System Failures'),
(5, 'Nikolaou', '2023-02-21', 'Implementing New Navigation Technologies'),
(6, 'Nikolaou', '2023-02-23', 'Improving Crew Resource Management Practices'),
(7, 'Nikolaou', '2023-02-25', 'Enhancing Pilot Navigation Skills'),
(8, 'Papadopoulos', '2023-03-01', 'Addressing Pilot Fatigue and Stress'),
(9, 'Gerekou', '2023-03-02', 'Reducing Fuel Consumption During Flight'),
(10, 'Katsaros', '2023-03-03', 'Developing More Efficient Flight Paths'),
(11, 'Constantinou', '2023-03-04', 'Improving Aircraft Maintenance Procedures'),
(12, 'Brown', '2023-03-05', 'Managing Severe Weather Conditions During Flight'),
(13, 'Nguyen', '2023-03-06', 'Enhancing Pilot Instrument Proficiency'),
(14, 'Katsikaris', '2023-03-07', 'Developing New Flight Training Programs'),
(15, 'Smith', '2023-03-08', 'Addressing Pilot Shortage and Retention'),
(16, 'Papadakis', '2023-03-09', 'Improving Airport Infrastructure for Pilots'),
(17, 'Petrova', '2023-03-10', 'Enhancing Pilot Decision-Making Skills'),
(18, 'Jones', '2023-03-11', 'Managing In-Flight Medical Emergencies'),
(19, 'Vasilopoulos', '2023-03-12', 'Implementing New Air Traffic Control Procedures'),
(20, 'Rodriguez', '2023-03-13', 'Enhancing Pilot Autopilot System Knowledge'),
(21, 'Vlachou', '2023-03-14', 'Improving Pilot Debriefing Practices'),
(22, 'Georgiou', '2023-03-15', 'Addressing Pilot Mental Health Concerns'),
(23, 'Thompson', '2023-03-16', 'Managing In-Flight Security Threats'),
(24, 'Papageorgiou', '2023-03-17', 'Developing More Efficient Loading Procedures'),
(25, 'Tanaka', '2023-03-18', 'Enhancing Pilot Hand-Flying Skills'),
(26, 'Davis', '2023-03-19', 'Addressing Cockpit Noise and Distractions'),
(27, 'Mavrommatis', '2023-03-20', 'Managing Bird Strikes During Flight'),
(28, 'Lee', '2023-03-21', 'Implementing New Cockpit Technology'),
(29, 'Antonopoulos', '2023-03-22', 'Improving Pilot Teamwork and Collaboration'),
(30, 'Nakamura', '2023-03-23', 'Enhancing Pilot Communication with Air Traffic Control'),
(31, 'Kim', '2023-03-24', 'Addressing Pilot Training Costs and Funding'),
(32, 'Kyprianou', '2023-03-25', 'Managing In-Flight Oxygen Systems'),
(33, 'Gonzalez', '2023-03-26', 'Developing More Accurate Weather Forecasting Methods'),
(34, 'Michalopoulou', '2023-03-27', 'Enhancing Pilot Visibility During Landing'),
(35, 'Hernandez', '2023-03-28', 'Improving Aircraft Ground Handling Procedures'),
(36, 'Nguyen', '2023-03-29', 'Addressing In-Flight Fire Hazards'),
(37, 'Stathopoulos', '2023-03-30', 'Managing Airspace Congestion and Delays'),
(38, 'Lee', '2023-03-31', 'Implementing New In-Flight Entertainment Systems'),
(39, 'Tsakiri', '2023-04-01', 'Enhancing Pilot Understanding of Meteorology'),
(40, 'Nakamura', '2023-04-02', 'Improving Pilot Response to Electrical Malfunctions'),
(41, 'Yasu', '2023-04-05', 'Addressing Cabin Air Quality Issues'),
(42, 'Stavropoulou', '2023-04-06', 'Managing Flight Crew Time Zones and Jet Lag'),
(43, 'Garcia', '2023-04-07', 'Developing More Efficient Boarding Procedures'),
(44, 'Konstantinidis', '2023-04-08', 'Enhancing Pilot Understanding of Aircraft Performance'),
(45, 'Fernandez', '2023-04-09', 'Improving Aircraft Emergency Evacuation Procedures'),
(46, 'Vasileiou', '2023-04-10', 'Addressing Pilot Simulator Training Gaps'),
(47, 'Martinez', '2023-04-11', 'Managing Flight Crew Meal and Rest Breaks'),
(48, 'Papageorgiou', '2023-04-12', 'Implementing New Ground Handling Technology'),
(49, 'Ali', '2023-04-13', 'Enhancing Pilot Understanding of Fuel Systems'),
(50, 'Katsoulas', '2023-04-14', 'Addressing Pilot Language and Cultural Barriers');

-- --------------------------------------------------------

--
-- Table structure for table `planes`
--

CREATE TABLE `planes` (
  `planes_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `type_name_id` int(11) NOT NULL,
  `seating_capacity` int(255) NOT NULL,
  `tests_tests_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `planes`
--

INSERT INTO `planes` (`planes_id`, `code`, `year`, `type_name_id`, `seating_capacity`, `tests_tests_id`) VALUES
(1, 'A319', 1979, 1, 132, 1),
(2, 'A320', 1980, 1, 180, 2),
(3, 'A321', 1982, 1, 236, 3),
(4, 'A330-200', 1983, 1, 246, 4),
(5, 'A330-300', 1985, 1, 300, 5),
(6, 'A350-900', 1976, 1, 440, 6),
(7, 'A380-800', 2014, 1, 853, 7),
(8, '737-700', 1986, 2, 126, 8),
(9, '737-800', 1987, 2, 189, 9),
(10, '737 MAX 8', 1975, 2, 210, 10),
(11, '747-400', 1988, 2, 416, 11),
(12, '747-8', 2020, 2, 467, 12),
(13, '757-200', 2010, 2, 239, 13),
(14, '767-300ER 	', 1989, 2, 290, 14),
(15, '777-200ER', 1974, 2, 301, 15),
(16, '777-300ER', 2023, 2, 386, 16),
(17, '787-8', 2003, 2, 242, 17),
(18, '787-9', 2005, 2, 290, 18),
(19, 'E170', 2007, 3, 76, 19),
(20, 'E175', 1990, 3, 78, 20),
(21, 'E190', 1991, 3, 114, 21),
(22, 'E195', 1992, 3, 124, 22),
(23, '50', 1994, 4, 50, 23),
(24, '70', 1995, 4, 80, 24),
(25, '100', 1996, 4, 109, 25),
(26, 'DC-9-30', 1997, 5, 115, 26),
(27, 'MD-82', 1998, 5, 172, 27),
(28, 'MD-88', 1999, 5, 108, 28),
(29, 'MD-90-30', 2000, 5, 180, 29),
(30, 'Superjet 1', 2001, 6, 214, 30),
(31, 'TU-154', 2002, 7, 110, 31),
(32, 'TU-204', 2004, 7, 135, 32),
(33, '717-200', 2006, 1, 160, 33),
(34, 'A220-100', 2008, 1, 50, 34),
(35, 'A220-300', 2011, 8, 50, 35),
(36, 'CRJ100', 1978, 8, 70, 36),
(37, 'CRJ200', 1981, 8, 90, 37),
(38, 'CRJ700', 1993, 8, 104, 38),
(39, 'CRJ900', 1984, 8, 37, 39),
(40, 'CRJ1000', 2009, 8, 44, 40),
(41, 'E135', 2017, 8, 50, 41),
(42, 'E140', 2012, 8, 114, 42),
(43, 'E145', 2013, 8, 146, 43),
(44, 'E190-E2', 2015, 8, 82, 44),
(45, 'E195-E2', 2016, 8, 100, 45),
(46, '146-100', 2018, 8, 112, 46),
(47, '146-200', 2019, 8, 70, 47),
(48, '146-300', 2021, 8, 85, 48),
(49, 'Avro RJ170', 2022, 8, 120, 49),
(50, 'Avro RJ85', 1977, 8, 220, 50);

-- --------------------------------------------------------

--
-- Table structure for table `plane_types`
--

CREATE TABLE `plane_types` (
  `type_name` varchar(255) NOT NULL,
  `type_name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plane_types`
--

INSERT INTO `plane_types` (`type_name`, `type_name_id`) VALUES
('Airbus', 1),
('BAe', 9),
('Boeing', 2),
('Bombardier', 8),
('Embraer', 3),
('Fokker', 4),
('McDonnell Douglas', 5),
('Sukhoi', 6),
('Tupolev', 7);

-- --------------------------------------------------------

--
-- Table structure for table `rented_spaces`
--

CREATE TABLE `rented_spaces` (
  `rented_spaces_id` int(11) NOT NULL,
  `space_number` varchar(10) DEFAULT NULL,
  `airline_number` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `rent_amount` decimal(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rented_spaces`
--

INSERT INTO `rented_spaces` (`rented_spaces_id`, `space_number`, `airline_number`, `expiration_date`, `rent_amount`) VALUES
(1, '100', 1, '2022-01-15', '120.000'),
(2, '103', 2, '2022-02-02', '150.000'),
(3, '108', 3, '2022-03-19', '160.000'),
(4, '110', 4, '2022-04-20', '170.000'),
(5, '120', 5, '2022-05-31', '180.000'),
(6, '133', 6, '2022-06-27', '190.000'),
(7, '143', 7, '2022-07-01', '200.000'),
(8, '153', 8, '2022-08-03', '210.000'),
(9, '154', 9, '2022-09-04', '220.000'),
(10, '156', 10, '2022-10-05', '230.000'),
(11, '158', 11, '2022-11-06', '240.000'),
(12, '160', 12, '2022-12-07', '250.000'),
(13, '161', 13, '2024-01-08', '260.000'),
(14, '164', 14, '2024-02-09', '270.000'),
(15, '164', 15, '2024-03-10', '280.000'),
(16, '175', 16, '2024-04-11', '290.000'),
(17, '186', 17, '2024-05-12', '300.000'),
(18, '196', 18, '2024-06-13', '310.000'),
(19, '200', 19, '2024-07-14', '320.000'),
(20, '205', 20, '2024-08-16', '330.000'),
(21, '210', 21, '2024-09-17', '340.000'),
(22, '220', 22, '2024-10-18', '350.000'),
(23, '221', 23, '2024-11-21', '360.000'),
(24, '227', 24, '2024-11-22', '370.000'),
(25, '230', 25, '2024-12-23', '380.000'),
(26, '235', 26, '2025-01-24', '390.000'),
(27, '238', 27, '2025-02-25', '400.000'),
(28, '240', 28, '2025-03-26', '410.000'),
(29, '255', 29, '2025-04-28', '420.000'),
(30, '287', 30, '2025-05-29', '430.000'),
(31, '300', 31, '2025-06-30', '440.000'),
(32, '310', 32, '2025-07-01', '450.000'),
(33, '320', 33, '2025-08-02', '460.000'),
(34, '330', 34, '2025-09-03', '470.000'),
(35, '340', 35, '2025-10-04', '480.000'),
(36, '346', 36, '2025-11-05', '490.000'),
(37, '348', 37, '2025-12-06', '500.000'),
(38, '400', 38, '2026-06-07', '510.000'),
(39, '2', 39, '2023-12-08', '520.000'),
(40, '237', 40, '2023-11-09', '530.000'),
(41, '350', 41, '2023-10-10', '540.000'),
(42, '11', 42, '2023-09-11', '550.000'),
(43, '1', 43, '2023-08-12', '560.000'),
(44, '43', 44, '2023-07-13', '570.000'),
(45, '50', 45, '2023-06-14', '580.000'),
(46, '60', 46, '2023-01-15', '590.000'),
(47, '13', 47, '2023-02-16', '600.000'),
(48, '15', 48, '2023-03-17', '610.000'),
(49, '10', 49, '2023-04-18', '620.000'),
(50, '20', 50, '2023-05-19', '630.000');

-- --------------------------------------------------------

--
-- Table structure for table `security_personnel`
--

CREATE TABLE `security_personnel` (
  `security_personnel_id` int(11) NOT NULL,
  `sec_pers_code` varchar(255) DEFAULT NULL,
  `sec_person_gate_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `security_personnel`
--

INSERT INTO `security_personnel` (`security_personnel_id`, `sec_pers_code`, `sec_person_gate_id`) VALUES
(1, 'SEC-0000-001', 1),
(2, 'SEC-0000-002', 2),
(3, 'SEC-0000-003', 3),
(4, 'SEC-0000-004', 4),
(5, 'SEC-0000-005', 5),
(6, 'SEC-0000-006', 6),
(7, 'SEC-0000-007', 7),
(8, 'SEC-0000-008', 8),
(9, 'SEC-0000-009', 9),
(10, 'SEC-0000-010', 10),
(11, 'SEC-0000-011', 11),
(12, 'SEC-0000-012', 12),
(13, 'SEC-0000-013', 13),
(14, 'SEC-0000-014', 14),
(15, 'SEC-0000-015', 15),
(16, 'SEC-0000-016', 16),
(17, 'SEC-0000-017', 17),
(18, 'SEC-0000-018', 18),
(19, 'SEC-0000-019', 19),
(20, 'SEC-0000-020', 20),
(21, 'SEC-0000-021', 21),
(22, 'SEC-0000-022', 22),
(23, 'SEC-0000-023', 23),
(24, 'SEC-0000-024', 24),
(25, 'SEC-0000-025', 25),
(26, 'SEC-0000-026', 26),
(27, 'SEC-0000-027', 27),
(28, 'SEC-0000-028', 28),
(29, 'SEC-0000-029', 29),
(30, 'SEC-0000-030', 30),
(31, 'SEC-0000-031', 31),
(32, 'SEC-0000-032', 32),
(33, 'SEC-0000-033', 33),
(34, 'SEC-0000-034', 34),
(35, 'SEC-0000-035', 35),
(36, 'SEC-0000-036', 36),
(37, 'SEC-0000-037', 37),
(38, 'SEC-0000-038', 38),
(39, 'SEC-0000-039', 39),
(40, 'SEC-0000-040', 40),
(41, 'SEC-0000-041', 41),
(42, 'SEC-0000-042', 42),
(43, 'SEC-0000-043', 43),
(44, 'SEC-0000-044', 44),
(45, 'SEC-0000-045', 45),
(46, 'SEC-0000-046', 46),
(47, 'SEC-0000-047', 47),
(48, 'SEC-0000-048', 48),
(49, 'SEC-0000-049', 49),
(50, 'SEC-0000-050', 50);

-- --------------------------------------------------------

--
-- Table structure for table `technicians`
--

CREATE TABLE `technicians` (
  `technicians_id` int(11) NOT NULL,
  `technicians_name` varchar(255) DEFAULT NULL,
  `specialization_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicians`
--

INSERT INTO `technicians` (`technicians_id`, `technicians_name`, `specialization_id`) VALUES
(1001, 'Alexandros Katsaros', 'SPEC-2023-1001'),
(1002, 'Stefania Ioannou', 'SPEC-2023-1002'),
(1003, 'Andreas Papadakis', 'SPEC-2023-1003'),
(1004, 'Eirini Konstantinou', 'SPEC-2023-1004'),
(1005, 'Dimitrios Manolis', 'SPEC-2023-1005'),
(1006, 'Eleni Anastasiou', 'SPEC-2023-1006'),
(1007, 'Nikolaos Papadopoulos', 'SPEC-2023-1007'),
(1008, 'Maria Karamanlis', 'SPEC-2023-1008'),
(1009, 'Georgios Christodoulou', 'SPEC-2023-1009'),
(1010, 'Anastasia Pappas', 'SPEC-2023-1010'),
(1011, 'Dimitrios Athanasiadis', 'SPEC-2023-1011'),
(1012, 'Eleni Papandreou', 'SPEC-2023-1012'),
(1013, 'Spyridon Tzortzis', 'SPEC-2023-1013'),
(1014, 'Panagiota Papageorgiou', 'SPEC-2023-1014'),
(1015, 'Ioannis Georgiou', 'SPEC-2023-1015'),
(1016, 'Athanasia Lefteris', 'SPEC-2023-1016'),
(1017, 'Michalis Vasilopoulos', 'SPEC-2023-1017'),
(1018, 'Christina Petrakis', 'SPEC-2023-1018'),
(1019, 'Apostolos Theodorou', 'SPEC-2023-1019'),
(1020, 'Vasiliki Papadimitriou', 'SPEC-2023-1020'),
(1021, 'Alexandros Kotsopoulos', 'SPEC-2023-1021'),
(1022, 'Kiriaki Zachariou', 'SPEC-2023-1022'),
(1023, 'Andreas Georgiadis', 'SPEC-2023-1023'),
(1024, 'Maria Zervos', 'SPEC-2023-1024'),
(1025, 'Christos Katsouras', 'SPEC-2023-1025'),
(1026, 'Katerina Papadopoulou', 'SPEC-2023-1026'),
(1027, 'Nikolaos Athanasiou', 'SPEC-2023-1027'),
(1028, 'Aggeliki Michalakis', 'SPEC-2023-1028'),
(1029, 'Georgios Nikolaou', 'SPEC-2023-1029'),
(1030, 'Stella Antonopoulos', 'SPEC-2023-1030'),
(1031, 'Emmanouil Papadimitriou', 'SPEC-2023-1031'),
(1032, 'Elena Konstantopoulos', 'SPEC-2023-1032'),
(1033, 'Andreas Tziotis', 'SPEC-2023-1033'),
(1034, 'Maria Mavridis', 'SPEC-2023-1034'),
(1035, 'Ioannis Katsikaris', 'SPEC-2023-1035'),
(1036, 'Athina Tsoukalas', 'SPEC-2023-1036'),
(1037, 'Vasilis Georgiadis', 'SPEC-2023-1037'),
(1038, 'Christina Tzanetos', 'SPEC-2023-1038'),
(1039, 'Apostolos Kiriakou', 'SPEC-2023-1039'),
(1040, 'Vasiliki Kostopoulos', 'SPEC-2023-1040'),
(1041, 'Aris Papageorgiou', 'SPEC-2023-1041'),
(1042, 'Konstantina Karanikas', 'SPEC-2023-1042'),
(1043, 'Nikitas Kyriakopoulos', 'SPEC-2023-1043'),
(1044, 'Sofia Tziolas', 'SPEC-2023-1044'),
(1045, 'Dimitrios Kontos', 'SPEC-2023-1045'),
(1046, 'Eirini Papakonstantinou', 'SPEC-2023-1046'),
(1047, 'Nikolaos Michopoulos', 'SPEC-2023-1047'),
(1048, 'Katerina Christoforou', 'SPEC-2023-1048'),
(1049, 'Giannis Skordis', 'SPEC-2023-1049'),
(1050, 'Anastasia Tsakalou', 'SPEC-2023-1050');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `tests_id` int(255) NOT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  `section_number` varchar(255) DEFAULT NULL,
  `part_of_airplane_examined` varchar(255) DEFAULT NULL,
  `technician_performing_test_id` int(255) DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `test_result` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`tests_id`, `test_name`, `section_number`, `part_of_airplane_examined`, `technician_performing_test_id`, `completion_date`, `test_result`) VALUES
(1, 'Emergency landing gear test', 'Section 1', 'Landing gear', 1001, '2023-03-18', 'Passed'),
(2, 'Engine inspection', 'Section 2', 'Engine Cylinder', 1002, '2022-05-12', 'Failed'),
(3, 'Hydraulic system test', 'Section 3', 'Hydraulic system', 1003, '2023-03-18', 'Passed'),
(4, 'Fuel system inspection', 'Section 4', 'Fuel system', 1004, '2022-02-15', 'Passed'),
(5, 'Wing inspection', 'Section 5', 'Wings', 1005, '2022-07-01', 'Failed'),
(6, 'Electrical system test', 'Section 6', 'Electrical system', 1006, '2022-04-10', 'Passed'),
(7, 'Cabin pressure check', 'Section 7', 'Cabin', 1007, '2022-08-19', 'Passed'),
(8, 'Avionics check', 'Section 8', 'Avionics', 1008, '2022-03-25', 'Failed'),
(9, 'Navigation system test', 'Section 9', 'Navigation system', 1009, '2022-06-02', 'Passed'),
(10, 'Flight control check', 'Section 10', 'Flight controls', 1010, '2022-05-28', 'Failed'),
(11, 'Engine oil pressure test', 'Section 11', 'Engine', 1011, '2022-04-15', 'Passed'),
(12, 'Fuel tank inspection', 'Section 12', 'Fuel Sys', 1012, '2022-06-22', 'Failed'),
(13, 'Landing gear retraction test', 'Section 13', 'Landing (Gear)', 1013, '2022-03-10', 'Passed'),
(14, 'Cockpit instruments check', 'Section 14', 'Avionics Instruments', 1014, '2022-07-11', 'Failed'),
(15, 'APU inspection', 'Section 15', 'APU', 1015, '2022-05-05', 'Passed'),
(16, 'Cargo hold pressure check', 'Section 16', 'Cargo hold', 1016, '2022-06-17', 'Passed'),
(17, 'Fuel filter inspection', 'Section 17', 'Fuel Syst', 1017, '2022-04-27', 'Failed'),
(18, 'Aileron control check', 'Section 18', 'Flight controls Sys', 1018, '2022-03-08', 'Passed'),
(19, 'Engine fan blade check', 'Section 19', 'Engine Sys', 1019, '2022-05-13', 'Failed'),
(20, 'Pitot tube inspection', 'Section 20', 'Navigation Sys', 1020, '2022-07-07', 'Passed'),
(21, 'Emergency oxygen system check', 'Section 21', 'Cabin System', 1021, '2022-06-11', 'Passed'),
(22, 'Hydraulic Sys Test', 'Section 22', 'Landing Gear System', 1022, '2022-01-15', 'Passed'),
(23, 'Cabin Pressurization Test', 'Section 23', 'Air Conditioning', 1023, '2022-02-03', 'Failed'),
(24, 'Fuel System Test', 'Section 24', 'Fuel Tanks', 1024, '2022-01-22', 'Passed'),
(25, 'Navigation Sys Test', 'Section 25', 'GPS', 1025, '2023-03-18', 'Passed'),
(26, 'Avionics Test', 'Section 26', 'Instrument Panel', 1026, '2022-02-11', 'Passed'),
(27, 'Engine Inspection Test', 'Section 27', 'Engine Syst', 1027, '2022-03-04', 'Passed'),
(28, 'Flight Control System Test', 'Section 28', 'Ailerons', 1028, '2022-02-23', 'Failed'),
(29, 'Fire Protection System Test', 'Section 29', 'Fire Extinguishers', 1029, '2022-03-15', 'Passed'),
(30, 'Electrical Sys Test', 'Section 30', 'Cockpit Lighting', 1030, '2022-03-19', 'Failed'),
(31, 'Emergency Equipment Test', 'Section 31', 'Life Rafts', 1031, '2022-03-28', 'Passed'),
(32, 'Landing Gear Test', 'Section 32', 'Hydraulic Actuators', 1032, '2022-04-01', 'Passed'),
(33, 'Airframe Inspection', 'Section 33', 'Fuselage', 1033, '2022-04-05', 'Passed'),
(34, 'Propulsion System Test', 'Section 34', 'Turbine Blades', 1034, '2022-04-12', 'Failed'),
(35, 'Cabin Safety Test', 'Section 35', 'Emergency Slides', 1035, '2022-04-20', 'Passed'),
(36, 'Flight Recorder Test', 'Section 36', 'Black Box', 1036, '2022-04-26', 'Passed'),
(37, 'Pitot Static System Test', 'Section 37', 'Airspeed Indicators', 1037, '2022-05-01', 'Passed'),
(38, 'Ice Protection System Test', 'Section 38', 'Deicing Boots', 1038, '2022-05-05', 'Failed'),
(39, 'Hydraulic Pressure Test', 'Section 39', 'Pressure Sensors', 1039, '2022-05-12', 'Passed'),
(40, 'Oxygen System Test', 'Section 40', 'Emergency Masks', 1040, '2023-03-18', 'Passed'),
(41, 'Stall Warning System Test', 'Section 41', 'Angle of Attack Sensors', 1041, '2022-05-24', 'Failed'),
(42, 'Anti-Collision System Test', 'Section 42', 'Transponder', 1042, '2022-06-13', 'Passed'),
(43, 'Fire Protection Sys Test', '43', 'Extinguishers', 1043, '2022-02-17', 'Failed'),
(44, 'Avionics Tst', 'Section 44', 'Navigation Systems', 1044, '2023-03-18', 'Passed'),
(45, 'Anti-Ice System Test', '45', 'Engine Intake', 1045, '2022-02-20', 'Passed'),
(46, 'Pneumatic System Test', '46', 'Air Conditioning Sys', 1046, '2022-02-22', 'Passed'),
(47, 'Emergency Lighting Test', '47', 'Emergency lights in the cabin', 1047, '2023-04-23', 'Passed'),
(48, 'Evacuation Slide Test', '48', 'Emergency slides in the exits', 1048, '2023-04-27', 'Passed'),
(49, 'Radio Communications Test', '49', 'Avionics System', 1049, '2022-03-02', 'Passed'),
(50, 'Landing Gear Tst', '50', 'Hydraulic Sys', 1050, '2023-04-19', 'Passed');

-- --------------------------------------------------------

--
-- Table structure for table `test_sections`
--

CREATE TABLE `test_sections` (
  `test_sections_id` int(11) NOT NULL,
  `inspection_id` int(11) DEFAULT NULL,
  `tests_section_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test_sections`
--

INSERT INTO `test_sections` (`test_sections_id`, `inspection_id`, `tests_section_number`) VALUES
(1, 1, 'A'),
(2, 2, 'B'),
(3, 3, 'C'),
(4, 4, 'D'),
(5, 5, 'E'),
(6, 6, 'F'),
(7, 7, 'G'),
(8, 8, 'H'),
(9, 9, 'I'),
(10, 10, 'J'),
(11, 11, 'K'),
(12, 12, 'L'),
(13, 13, 'M'),
(14, 14, 'N'),
(15, 15, 'O'),
(16, 16, 'P'),
(17, 17, 'Q'),
(18, 18, 'R'),
(19, 19, 'S'),
(20, 20, 'T'),
(21, 21, 'U'),
(22, 22, 'V'),
(23, 23, 'W'),
(24, 24, 'X'),
(25, 25, 'Y'),
(26, 26, 'Z'),
(27, 27, 'AA'),
(28, 28, 'BB'),
(29, 29, 'CC'),
(30, 30, 'DD'),
(31, 31, 'EE'),
(32, 32, 'FF'),
(33, 33, 'GG'),
(34, 34, 'HH'),
(35, 35, 'II'),
(36, 36, 'JJ'),
(37, 37, 'KK'),
(38, 38, 'LL'),
(39, 39, 'MM'),
(40, 40, 'NN'),
(41, 41, 'OO'),
(42, 42, 'PP'),
(43, 43, 'QQ'),
(44, 44, 'RR'),
(45, 45, 'SS'),
(46, 46, 'TT'),
(47, 47, 'UU'),
(48, 48, 'VV'),
(49, 49, 'WW'),
(50, 50, 'XX');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `tickets_id` int(11) NOT NULL,
  `passenger_id` int(11) DEFAULT NULL,
  `ticket_flight_id` int(11) DEFAULT NULL,
  `baggage_receipt_id` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`tickets_id`, `passenger_id`, `ticket_flight_id`, `baggage_receipt_id`) VALUES
(1131, 1, 1, '7821-7743'),
(1428, 2, 2, '2659-7627'),
(1889, 3, 3, '8907-5713'),
(2186, 4, 4, '4646-9258'),
(2271, 5, 5, '2783-8830'),
(2346, 6, 6, '5356-9057'),
(2401, 7, 7, '5989-2407'),
(2483, 8, 8, '3293-3093'),
(2646, 9, 9, '3278-2535'),
(2673, 10, 10, '5673-5828'),
(2818, 11, 11, '6135-3181'),
(3145, 12, 12, '7732-3012'),
(3166, 13, 13, '4526-2369'),
(3460, 14, 14, '2259-8209'),
(3779, 15, 15, '6102-7172'),
(3815, 16, 16, '6947-7084'),
(4255, 17, 17, '9697-1058'),
(4583, 18, 18, '9023-1079'),
(5058, 19, 19, '2901-8797'),
(5084, 20, 20, '5184-2895'),
(5108, 21, 21, '7221-2807'),
(5294, 22, 22, '6694-5614'),
(5403, 23, 23, '9682-6953'),
(5462, 24, 24, '4267-9476'),
(5597, 25, 25, '5949-2019'),
(5681, 26, 26, '1476-5928'),
(6035, 27, 27, '8942-4086'),
(6207, 28, 28, '4609-7253'),
(6312, 29, 29, '2605-6801'),
(6495, 30, 30, '7472-2429'),
(6565, 31, 31, '2854-2954'),
(6692, 32, 32, '7082-7533'),
(7028, 33, 33, '8317-8039'),
(7309, 34, 34, '2318-1480'),
(7377, 35, 35, '6521-4991'),
(7605, 36, 36, '4677-5188'),
(7940, 37, 37, '1525-3182'),
(7971, 38, 38, '6121-2591'),
(7994, 39, 39, '1043-2923'),
(8093, 40, 40, '1661-9523'),
(8291, 41, 41, '4273-9318'),
(8350, 42, 42, '8086-8543'),
(8358, 43, 43, '7223-5241'),
(8365, 44, 44, '5172-5701'),
(8656, 45, 45, '4896-7111'),
(9058, 46, 46, '5838-5641'),
(9358, 47, 47, '2376-9462'),
(9432, 48, 48, '2692-8865'),
(9461, 49, 49, '3227-1241'),
(9679, 50, 50, '7212-6176');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`airlines_id`);

--
-- Indexes for table `crew`
--
ALTER TABLE `crew`
  ADD PRIMARY KEY (`crews_id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flights_id`),
  ADD UNIQUE KEY `flight_number` (`flight_number`),
  ADD KEY `fk.airline.id` (`airline_id`),
  ADD KEY `fk.gate.id` (`gate_id`),
  ADD KEY `fk.plane.id` (`plane_id`),
  ADD KEY `fk.hotels.id` (`hotels_id`);

--
-- Indexes for table `flights_crews`
--
ALTER TABLE `flights_crews`
  ADD PRIMARY KEY (`flights_crews_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `crew_id` (`crew_id`),
  ADD KEY `hotels_id` (`hotel_id`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gates_id`),
  ADD UNIQUE KEY `gate_name` (`gate_name`),
  ADD KEY `fk_security_id` (`security_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotels_id`);

--
-- Indexes for table `inspections`
--
ALTER TABLE `inspections`
  ADD PRIMARY KEY (`inspections_id`),
  ADD KEY `fk_test_id` (`test_id`);

--
-- Indexes for table `inspections_history`
--
ALTER TABLE `inspections_history`
  ADD PRIMARY KEY (`inspections_history_id`),
  ADD KEY `fk_test_section_id` (`test_section_id`),
  ADD KEY `fk_technician_id` (`technician_id`),
  ADD KEY `fk.pln_id` (`pln_id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`passengers_id`);

--
-- Indexes for table `pilot_meetings`
--
ALTER TABLE `pilot_meetings`
  ADD PRIMARY KEY (`pilot_meeting_id`),
  ADD UNIQUE KEY `meeting_subject` (`meeting_subject`);

--
-- Indexes for table `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`planes_id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `year` (`year`),
  ADD KEY `fk.tests.tests.id` (`tests_tests_id`),
  ADD KEY `fk.type_names_id` (`type_name_id`);

--
-- Indexes for table `plane_types`
--
ALTER TABLE `plane_types`
  ADD PRIMARY KEY (`type_name_id`),
  ADD UNIQUE KEY `type_name` (`type_name`);

--
-- Indexes for table `rented_spaces`
--
ALTER TABLE `rented_spaces`
  ADD PRIMARY KEY (`rented_spaces_id`),
  ADD KEY `fk.airline_number` (`airline_number`);

--
-- Indexes for table `security_personnel`
--
ALTER TABLE `security_personnel`
  ADD PRIMARY KEY (`security_personnel_id`),
  ADD KEY `fk_gate_num` (`sec_person_gate_id`);

--
-- Indexes for table `technicians`
--
ALTER TABLE `technicians`
  ADD PRIMARY KEY (`technicians_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`tests_id`),
  ADD UNIQUE KEY `part_of_airplane_examined` (`part_of_airplane_examined`),
  ADD UNIQUE KEY `section_number` (`section_number`),
  ADD UNIQUE KEY `test_name` (`test_name`),
  ADD KEY `fk.technician.performing.test.id` (`technician_performing_test_id`);

--
-- Indexes for table `test_sections`
--
ALTER TABLE `test_sections`
  ADD PRIMARY KEY (`test_sections_id`),
  ADD KEY `fk_inspection_id` (`inspection_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`tickets_id`),
  ADD KEY `passenger_id` (`passenger_id`),
  ADD KEY `flight_id` (`ticket_flight_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `fk.airline.id` FOREIGN KEY (`airline_id`) REFERENCES `airlines` (`airlines_id`),
  ADD CONSTRAINT `fk.gate.id` FOREIGN KEY (`gate_id`) REFERENCES `gates` (`gates_id`),
  ADD CONSTRAINT `fk.hotels.id` FOREIGN KEY (`hotels_id`) REFERENCES `hotels` (`hotels_id`),
  ADD CONSTRAINT `fk.plane.id` FOREIGN KEY (`plane_id`) REFERENCES `planes` (`planes_id`);

--
-- Constraints for table `flights_crews`
--
ALTER TABLE `flights_crews`
  ADD CONSTRAINT `fk.crew_id` FOREIGN KEY (`crew_id`) REFERENCES `crew` (`crews_id`),
  ADD CONSTRAINT `fk.flight_id` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flights_id`),
  ADD CONSTRAINT `fk.hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotels_id`);

--
-- Constraints for table `gates`
--
ALTER TABLE `gates`
  ADD CONSTRAINT `fk.security.gate` FOREIGN KEY (`security_id`) REFERENCES `security_personnel` (`security_personnel_id`);

--
-- Constraints for table `inspections`
--
ALTER TABLE `inspections`
  ADD CONSTRAINT `fk.test.id` FOREIGN KEY (`test_id`) REFERENCES `tests` (`tests_id`);

--
-- Constraints for table `inspections_history`
--
ALTER TABLE `inspections_history`
  ADD CONSTRAINT `fk.pln_id` FOREIGN KEY (`pln_id`) REFERENCES `planes` (`planes_id`),
  ADD CONSTRAINT `fk.technicians_id` FOREIGN KEY (`technician_id`) REFERENCES `technicians` (`technicians_id`),
  ADD CONSTRAINT `fk.test_section_id` FOREIGN KEY (`test_section_id`) REFERENCES `test_sections` (`test_sections_id`);

--
-- Constraints for table `planes`
--
ALTER TABLE `planes`
  ADD CONSTRAINT `fk.tests.tests.id` FOREIGN KEY (`tests_tests_id`) REFERENCES `tests` (`tests_id`),
  ADD CONSTRAINT `fk.type_names_id` FOREIGN KEY (`type_name_id`) REFERENCES `plane_types` (`type_name_id`);

--
-- Constraints for table `rented_spaces`
--
ALTER TABLE `rented_spaces`
  ADD CONSTRAINT `fk.airline_number` FOREIGN KEY (`airline_number`) REFERENCES `airlines` (`airlines_id`);

--
-- Constraints for table `security_personnel`
--
ALTER TABLE `security_personnel`
  ADD CONSTRAINT `fk.sec.person.gate.id` FOREIGN KEY (`sec_person_gate_id`) REFERENCES `gates` (`gates_id`);

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `fk.technician.performing.test.id` FOREIGN KEY (`technician_performing_test_id`) REFERENCES `technicians` (`technicians_id`);

--
-- Constraints for table `test_sections`
--
ALTER TABLE `test_sections`
  ADD CONSTRAINT `fk.inspection_id` FOREIGN KEY (`inspection_id`) REFERENCES `inspections` (`inspections_id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `fk.passenger_id` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passengers_id`),
  ADD CONSTRAINT `fk.ticket_flight_id` FOREIGN KEY (`ticket_flight_id`) REFERENCES `flights` (`flights_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
