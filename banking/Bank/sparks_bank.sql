SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `user` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Prasad', 'prasad@gmail.com', 50000),
(2, 'Safal', 'safal@gmail.com', 200000),
(3, 'Parth', 'parth@gmail.com', 50000),
(4, 'Yogesh', 'yogesh@gmail.com', 10000),
(5, 'Anvesh', 'anvesh@gmail.com', 40700),
(6, 'Gaurav', 'gaurav@gmail.com', 30000),
(7, 'Nikhil', 'nikhil@gmail.com', 50000),
(8, 'Jay', 'jay@gmail.com', 40000),
(9, 'Prathamesh', 'prathamesh@gmail.com', 130000),
(10, '', 'swastika@gmail.com', 50000);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;

ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

