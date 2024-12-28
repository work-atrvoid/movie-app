-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2024 at 06:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `picture` text DEFAULT NULL,
  `rating` float NOT NULL,
  `year` varchar(4) NOT NULL,
  `director` text NOT NULL,
  `actors` text NOT NULL,
  `genres` text NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `picture`, `rating`, `year`, `director`, `actors`, `genres`, `description`) VALUES
(1, 'The Shawshank Redemption', 'https://m.media-amazon.com/images/M/MV5BMDAyY2FhYjctNDc5OS00MDNlLThiMGUtY2UxYWVkNGY2ZjljXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 9.3, '1994', 'Frank Darabont', 'Tim Robbins, Morgan Freeman', 'Drama, Crime', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.'),
(2, 'The Godfather', 'https://m.media-amazon.com/images/M/MV5BYTJkNGQyZDgtZDQ0NC00MDM0LWEzZWQtYzUzZDEwMDljZWNjXkEyXkFqcGc@._V1_.jpg', 9.2, '1972', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino', 'Crime, Drama', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.'),
(3, 'The Dark Knight', 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg', 9, '2008', 'Christopher Nolan', 'Christian Bale, Heath Ledger', 'Action, Crime, Drama', 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.'),
(4, 'Forrest Gump', 'https://m.media-amazon.com/images/M/MV5BNDYwNzVjMTItZmU5YS00YjQ5LTljYjgtMjY2NDVmYWMyNWFmXkEyXkFqcGc@._V1_.jpg', 8.8, '1994', 'Robert Zemeckis', 'Tom Hanks, Robin Wright', 'Drama, Romance', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal, and other historical events unfold from the perspective of an Alabama man with an IQ of 75.'),
(5, 'Inception', 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_FMjpg_UX1000_.jpg', 8.8, '2010', 'Christopher Nolan', 'Leonardo DiCaprio, Joseph Gordon-Levitt', 'Action, Sci-Fi, Thriller', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.'),
(6, 'Pulp Fiction', 'https://m.media-amazon.com/images/M/MV5BYTViYTE3ZGQtNDBlMC00ZTAyLTkyODMtZGRiZDg0MjA2YThkXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 8.9, '1994', 'Quentin Tarantino', 'John Travolta, Uma Thurman', 'Crime, Drama', 'The lives of two mob hitmen, a boxer, a gangster, and his wife intertwine in four tales of violence and redemption.'),
(7, 'The Matrix', 'https://m.media-amazon.com/images/M/MV5BN2NmN2VhMTQtMDNiOS00NDlhLTliMjgtODE2ZTY0ODQyNDRhXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 8.7, '1999', 'Lana Wachowski, Lilly Wachowski', 'Keanu Reeves, Laurence Fishburne', 'Action, Sci-Fi', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.'),
(8, 'The Lord of the Rings: The Return of the King', 'https://m.media-amazon.com/images/M/MV5BMTZkMjBjNWMtZGI5OC00MGU0LTk4ZTItODg2NWM3NTVmNWQ4XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 9, '2003', 'Peter Jackson', 'Elijah Wood, Viggo Mortensen', 'Action, Adventure, Drama', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.'),
(9, 'Interstellar', 'https://m.media-amazon.com/images/M/MV5BYzdjMDAxZGItMjI2My00ODA1LTlkNzItOWFjMDU5ZDJlYWY3XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 8.6, '2014', 'Christopher Nolan', 'Matthew McConaughey, Anne Hathaway', 'Adventure, Drama, Sci-Fi', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.'),
(10, 'The Lion King', 'https://lumiere-a.akamaihd.net/v1/images/p_thelionking_19752_1_0b9de87b.jpeg?region=0%2C0%2C540%2C810', 8.5, '1994', 'Roger Allers, Rob Minkoff', 'Matthew Broderick, Jeremy Irons', 'Animation, Adventure, Drama', 'Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.'),
(11, 'Fight Club', 'https://m.media-amazon.com/images/M/MV5BOTgyOGQ1NDItNGU3Ny00MjU3LTg2YWEtNmEyYjBiMjI1Y2M5XkEyXkFqcGc@._V1_.jpg', 8.8, '1999', 'David Fincher', 'Brad Pitt, Edward Norton', 'Drama', 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.'),
(12, 'The Avengers', 'https://m.media-amazon.com/images/M/MV5BNGE0YTVjNzUtNzJjOS00NGNlLTgxMzctZTY4YTE1Y2Y1ZTU4XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 8, '2012', 'Joss Whedon', 'Robert Downey Jr., Chris Evans', 'Action, Adventure, Sci-Fi', 'Earth\'s mightiest heroes must come together to stop the mischievous Loki and his alien army from enslaving humanity.'),
(13, 'Schindler\'s List', 'https://m.media-amazon.com/images/M/MV5BNjM1ZDQxYWUtMzQyZS00MTE1LWJmZGYtNGUyNTdlYjM3ZmVmXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 9, '1993', 'Steven Spielberg', 'Liam Neeson, Ralph Fiennes', 'Biography, Drama, History', 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.'),
(14, 'Gladiator', 'https://m.media-amazon.com/images/M/MV5BMWYzZTM5ZGQtOGE5My00NmM2LWFlMDEtMGNjYjdmOWM1MzA1XkEyXkFqcGc@._V1_.jpg', 8.5, '2000', 'Ridley Scott', 'Russell Crowe, Joaquin Phoenix', 'Action, Adventure, Drama', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.'),
(15, 'The Social Network', 'https://m.media-amazon.com/images/M/MV5BMjlkNTE5ZTUtNGEwNy00MGVhLThmZjMtZjU1NDE5Zjk1NDZkXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 7.7, '2010', 'David Fincher', 'Jesse Eisenberg, Andrew Garfield', 'Biography, Drama', 'The story of the creation of Facebook and the lawsuits that followed its meteoric rise.'),
(16, 'Parasite', 'https://m.media-amazon.com/images/M/MV5BYjk1Y2U4MjQtY2ZiNS00OWQyLWI3MmYtZWUwNmRjYWRiNWNhXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 8.6, '2019', 'Bong Joon Ho', 'Kang-ho Song, Sun-kyun Lee', 'Drama, Thriller', 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.'),
(17, 'The Silence of the Lambs', 'https://m.media-amazon.com/images/M/MV5BNDdhOGJhYzctYzYwZC00YmI2LWI0MjctYjg4ODdlMDExYjBlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 8.6, '1991', 'Jonathan Demme', 'Jodie Foster, Anthony Hopkins', 'Crime, Drama, Thriller', 'A young FBI cadet must receive the help of an incarcerated and manipulative cannibal killer to catch another serial killer, a madman who skins his victims.'),
(18, 'Titanic', 'https://m.media-amazon.com/images/M/MV5BYzYyN2FiZmUtYWYzMy00MzViLWJkZTMtOGY1ZjgzNWMwN2YxXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 7.9, '1997', 'James Cameron', 'Leonardo DiCaprio, Kate Winslet', 'Drama, Romance', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.'),
(19, 'Avengers: Endgame', 'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_FMjpg_UX1000_.jpg', 8.4, '2019', 'Anthony Russo, Joe Russo', 'Robert Downey Jr., Chris Evans', 'Action, Adventure, Drama', 'After the devastating events of Avengers: Infinity War, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.'),
(20, 'The Wolf of Wall Street', 'https://m.media-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_.jpg', 8.2, '2013', 'Martin Scorsese', 'Leonardo DiCaprio, Jonah Hill', 'Biography, Comedy, Crime', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stockbroker living the high life to his fall involving crime, corruption, and the federal government.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
