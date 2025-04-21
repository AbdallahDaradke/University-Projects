-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 11:33 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `primary_care_clinic`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `addBranch` (IN `numberr` INT, IN `phonee` INT, `employee_idd` INT, `idd` INT)  INSERT INTO branch(	
NUMBER,
phone,
employee_id,
id)
VALUES(numberr,phonee,employee_idd,idd)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `addPatient` (IN `idd` INT, IN `first_namee` INT, IN `fourth_namee` INT, IN `emaill` INT, IN `birthdatee` VARCHAR(200), IN `usernamee` VARCHAR(200), IN `paswordd` VARCHAR(200))  INSERT INTO branch(	
id,
first_name,
fourth_name,
email,
birthdate,
username,
PASSWORD)
VALUES(idd,first_namee,fourth_namee,emaill,birthdatee,usernamee,paswordd)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Add_prescription_to_patient` (IN `numberr` INT, IN `datedatee` DATE, IN `timetimee` TIME, IN `doctor_idd` INT, IN `patient_idd` VARCHAR(200))  INSERT INTO branch(
    NUMBER,
    datedate,
    timetime,
    Doctor_id,
    Patient_id
)
VALUES(
    numberr,
    datedatee,
    timetimee,
    doctor_idd,
    patient_idd
)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteBranch` (IN `numberr` INT)  DELETE FROM  branch where number = numberr$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_doctor_manager_1111` (IN `idd` INT)  delete FROM doctor WHERE doctor.branch_number = (SELECT branch.employee_id FROM branch where branch.employee_id = 1111)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_doctor_manager_1234` (IN `idd` INT)  delete FROM doctor WHERE doctor.branch_number = (SELECT branch.employee_id FROM branch where branch.employee_id = 1234)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_doctor_manager_1342` (IN `idd` INT)  delete FROM doctor WHERE doctor.branch_number = (SELECT branch.employee_id FROM branch where branch.employee_id = 1342)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_doctor_manager_3344` (IN `idd` INT)  delete FROM doctor WHERE doctor.branch_number = (SELECT branch.employee_id FROM branch where branch.employee_id = 3344)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_doctor_manager_3344_2` (IN `idd` INT)  delete FROM doctor WHERE doctor.branch_number = (SELECT branch.employee_id FROM branch where branch.employee_id = 3344)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete_manager` ()  delete FROM employee WHERE employee.role = 'Manager'$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete_patient` (IN `idd` INT)  delete FROM patient WHERE patient.id = idd$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete_prescription_to_patient` (IN `idd` INT)  delete FROM prescription WHERE prescription.Patient_id = idd$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `doctor_show_his_information` (IN `idd` INT)  SELECT * FROM doctor_phone INNER JOIN doctor ON doctor_phone.Doctor_id = doctor.id INNER JOIN doctor_address on doctor.id = doctor_address.doctor_id
WHERE doctor.id = idd$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Doctor_update_his_information` (IN `idd` INT, IN `first_namee` INT, IN `fourth_namee` INT, IN `specialityy` VARCHAR(200), IN `emaill` VARCHAR(200), IN `salaryy` INT, IN `birthdatee` VARCHAR(200), IN `usernamee` VARCHAR(200), IN `paswordd` VARCHAR(200), IN `branchNumber` INT, IN `iddd` INT)  UPDATE doctor
SET
doctor.id = idd,
doctor.first_name = first_namee,
doctor.fourth_name=fourth_namee,
doctor.speciality = specialityy,
doctor.email=emaill,
doctor.salary = salaryy,
doctor.birthdate=birthdatee,
doctor.username = usernamee,
doctor.PASSWORD=passwordd,
doctor.branch_number = branchNumber
WHERE doctor.id = iddd$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_doctor_manager_1111` (IN `idd` INT, IN `first_namee` VARCHAR(200), IN `fourth_namee` VARCHAR(200), IN `specialityy` VARCHAR(200), IN `emaill` VARCHAR(200), IN `salaryy` INT, IN `birthdatee` VARCHAR(200), IN `usernamee` VARCHAR(200), IN `paswordd` VARCHAR(200), IN `branchNumber` INT, IN `iddd` INT)  INSERT INTO doctor
VALUES(
    idd,
    first_namee,
    fourth_namee,
    specialityy,
    emaill,
    salaryy,
    birthdatee,
    usernamee,
    passwordd,
    branchNumber
)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_doctor_manager_1234` (IN `idd` INT, IN `first_namee` VARCHAR(200), IN `fourth_namee` VARCHAR(200), IN `specialityy` VARCHAR(200), IN `emaill` VARCHAR(200), IN `salaryy` INT, IN `birthdatee` VARCHAR(200), IN `usernamee` VARCHAR(200), IN `paswordd` VARCHAR(200), IN `branchNumber` INT, IN `iddd` INT)  INSERT INTO doctor
VALUES(
    idd,
    first_namee,
    fourth_namee,
    specialityy,
    emaill,
    salaryy,
    birthdatee,
    usernamee,
    passwordd,
    branchNumber
)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_doctor_manager_1342` (IN `idd` INT, IN `first_namee` VARCHAR(200), IN `fourth_namee` VARCHAR(200), IN `specialityy` VARCHAR(200), IN `emaill` VARCHAR(200), IN `salaryy` INT, IN `birthdatee` VARCHAR(200), IN `usernamee` VARCHAR(200), IN `paswordd` VARCHAR(200), IN `branchNumber` INT, IN `iddd` INT)  INSERT INTO doctor
VALUES(
    idd,
    first_namee,
    fourth_namee,
    specialityy,
    emaill,
    salaryy,
    birthdatee,
    usernamee,
    passwordd,
    branchNumber
)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_doctor_manager_3344` (IN `idd` INT, IN `first_namee` VARCHAR(200), IN `fourth_namee` VARCHAR(200), IN `specialityy` VARCHAR(200), IN `emaill` VARCHAR(200), IN `salaryy` INT, IN `birthdatee` VARCHAR(200), IN `usernamee` VARCHAR(200), IN `paswordd` VARCHAR(200), IN `branchNumber` INT, IN `iddd` INT)  INSERT INTO doctor
VALUES(
    idd,
    first_namee,
    fourth_namee,
    specialityy,
    emaill,
    salaryy,
    birthdatee,
    usernamee,
    passwordd,
    branchNumber
)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_doctor_manager_3344_2` (IN `idd` INT, IN `first_namee` VARCHAR(200), IN `fourth_namee` VARCHAR(200), IN `specialityy` VARCHAR(200), IN `emaill` VARCHAR(200), IN `salaryy` INT, IN `birthdatee` VARCHAR(200), IN `usernamee` VARCHAR(200), IN `paswordd` VARCHAR(200), IN `branchNumber` INT, IN `iddd` INT)  INSERT INTO doctor
VALUES(
    idd,
    first_namee,
    fourth_namee,
    specialityy,
    emaill,
    salaryy,
    birthdatee,
    usernamee,
    passwordd,
    branchNumber
)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_manager` (IN `idd` INT, IN `first_namee` VARCHAR(200), IN `last_namee` VARCHAR(200))  INSERT INTO employee
VALUES(idd, first_namee,last_namee,'Manager')$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Patient_show_his_information` (IN `idd` INT)  SELECT * FROM patient_address INNER JOIN patient ON patient_address.Patient_id = patient.id INNER JOIN prescription ON patient.id = prescription.Patient_id INNER JOIN prescription_medication ON prescription.NUMBER = prescription_medication.prescription_number
WHERE patient.id = idd$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Patient_show_his_prescription` (IN `idd` INT)  SELECT * FROM prescription INNER JOIN prescription_medication on prescription.NUMBER = prescription_medication.prescription_number
WHERE prescription.Patient_id = idd$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Patient_update_his_information` (IN `idd` INT, IN `firstName` VARCHAR(200), IN `fourthName` VARCHAR(200), IN `emaill` VARCHAR(200), IN `birthdatee` VARCHAR(200), IN `usernamee` VARCHAR(200), IN `passwordd` VARCHAR(200))  UPDATE patient
SET
patient.id = idd,
patient.first_name = firstName,
patient.fourth_name = fourthName,
patient.email = emaill,
patient.birthdate = birthdatee,
patient.username = usernamee,
patient.PASSWORD = passwordd$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ShowDoctorNum` (IN `numberr` INT)  SELECT branch_number, COUNT(*) FROM doctor WHERE doctor.branch_number = numberr$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `showHealthRecord` (IN `idd` INT)  SELECT * FROM patient_address INNER JOIN patient ON patient_address.Patient_id = patient.id INNER JOIN prescription on patient.id = prescription.Patient_id INNER JOIN prescription_medication ON prescription.NUMBER = prescription_medication.prescription_number
WHERE patient.id = idd$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `showSalaryOfDoctors` ()  SELECT id,salary FROM doctor$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Show_salaries_by_manager` (IN `idd` INT)  SELECT id, salary FROM doctor INNER JOIN branch on doctor.branch_number = branch.NUMBER WHERE employee.id = idd$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_doctor_manager_1111` (IN `idd` INT)  UPDATE doctor
SET
doctor.id = idd,
doctor.first_name = firstName,
doctor.fourth_name =fourthName,
doctor.speciality = specialityy,
doctor.email = emaill,
doctor.salary = salaryy,
doctor.birthdate = birthdatee,
doctor.username = usernamee,
doctor.PASSWORD = passwordd,
doctor.branch_number = branchNumber$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_doctor_manager_1234` (IN `idd` INT)  UPDATE doctor
SET
doctor.id = idd,
doctor.first_name = firstName,
doctor.fourth_name =fourthName,
doctor.speciality = specialityy,
doctor.email = emaill,
doctor.salary = salaryy,
doctor.birthdate = birthdatee,
doctor.username = usernamee,
doctor.PASSWORD = passwordd,
doctor.branch_number = branchNumber$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_doctor_manager_1342` (IN `idd` INT)  UPDATE doctor
SET
doctor.id = idd,
doctor.first_name = firstName,
doctor.fourth_name =fourthName,
doctor.speciality = specialityy,
doctor.email = emaill,
doctor.salary = salaryy,
doctor.birthdate = birthdatee,
doctor.username = usernamee,
doctor.PASSWORD = passwordd,
doctor.branch_number = branchNumber$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_doctor_manager_3344` (IN `idd` INT)  UPDATE doctor
SET
doctor.id = idd,
doctor.first_name = firstName,
doctor.fourth_name =fourthName,
doctor.speciality = specialityy,
doctor.email = emaill,
doctor.salary = salaryy,
doctor.birthdate = birthdatee,
doctor.username = usernamee,
doctor.PASSWORD = passwordd,
doctor.branch_number = branchNumber$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_doctor_manager_3344_2` (IN `idd` INT)  UPDATE doctor
SET
doctor.id = idd,
doctor.first_name = firstName,
doctor.fourth_name =fourthName,
doctor.speciality = specialityy,
doctor.email = emaill,
doctor.salary = salaryy,
doctor.birthdate = birthdatee,
doctor.username = usernamee,
doctor.PASSWORD = passwordd,
doctor.branch_number = branchNumber$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `NUMBER` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`NUMBER`, `phone`, `employee_id`, `id`) VALUES
(2, 775846662, 1342, 22),
(3, 778855998, 1111, 22),
(5, 777777777, 3344, 66),
(13, 785326297, 1234, 55),
(77, 785453212, 1234, 22),
(99, 778977899, 3344, 11);

-- --------------------------------------------------------

--
-- Table structure for table `branch_address`
--

CREATE TABLE `branch_address` (
  `branch_number` int(11) NOT NULL,
  `city` varchar(200) NOT NULL,
  `streetNAME` varchar(200) NOT NULL,
  `buildingNUMBER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch_address`
--

INSERT INTO `branch_address` (`branch_number`, `city`, `streetNAME`, `buildingNUMBER`) VALUES
(2, 'Irbid', 'AmTeenah', 2154);

-- --------------------------------------------------------

--
-- Table structure for table `branch_name_and_opening_date`
--

CREATE TABLE `branch_name_and_opening_date` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `opening_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch_name_and_opening_date`
--

INSERT INTO `branch_name_and_opening_date` (`id`, `name`, `opening_date`) VALUES
(11, 'Aboody_clinic', '2023-01-31'),
(22, 'Aboody_clinic1', '2023-02-15'),
(33, 'Aboody_clinic2', '2023-03-31'),
(44, 'Aboody_clinic3', '2023-04-02'),
(55, 'Aboody_clinic4', '2023-05-02'),
(66, 'Aboody_clinic5', '2023-06-02');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `fourth_name` varchar(200) NOT NULL,
  `speciality` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `salary` decimal(6,2) DEFAULT NULL,
  `birthdate` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `PASSWORD` varchar(200) NOT NULL,
  `branch_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `first_name`, `fourth_name`, `speciality`, `email`, `salary`, `birthdate`, `username`, `PASSWORD`, `branch_number`) VALUES
(45, 'Falah\r\n', 'Add', 'Doctor', 'Mahmood@gmail.com', '600.00', '2000-03-06', 'Mahmmod', '1234', 2),
(212, 'Fal', 'Salah', 'Doctor', 'Salah@gmail.com', '1544.00', '2002-5-5', 'Salah', '112233', 3),
(564, 'Abdallah', 'Abood', 'Doctor', 'Mazen@gmail.com', '1000.00', '2000-4-4', 'Abood', '123123', 2),
(1254, 'Asama', 'Hassan', 'Surgery', 'AsamaHassan@gmail.com', '500.00', '1999-5-5', 'Asama', '123456', 99),
(5432, 'Aboody', 'Samoody', 'Doctor', 'Aboody@gmail.com', '1200.00', '2001-5-5', 'Aboody', '1235412', 5),
(8000, 'Mazen', 'Saeeed', 'Doctor', 'Mazen1@gmail.com', '750.00', '2000-5-5', 'Mazen', '12344', 5),
(9987, 'Laith', 'Ajaj', 'General', 'LaithAjaj@gmail.com', '710.00', '2003-02-03', 'LaithAjaj', '984486', 99);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_address`
--

CREATE TABLE `doctor_address` (
  `doctor_id` int(11) NOT NULL,
  `city` varchar(200) NOT NULL,
  `street_name` varchar(200) NOT NULL,
  `building_number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_address`
--

INSERT INTO `doctor_address` (`doctor_id`, `city`, `street_name`, `building_number`) VALUES
(45, 'Amman', 'Al Ashraphia', '30'),
(45, 'Amman', 'Jabal AlNadeef', '15'),
(45, 'Irbid', 'Abu nussier', '28'),
(9987, 'Amman', 'Abu NUssier', '22'),
(9987, 'Amman', 'AL Dakhlia', '25'),
(9987, 'Amman', 'Al Mesdar', '17');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_patient`
--

CREATE TABLE `doctor_patient` (
  `Doctor_id` int(11) NOT NULL,
  `Patient_id` int(11) NOT NULL,
  `datedate` date NOT NULL,
  `timetime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_patient`
--

INSERT INTO `doctor_patient` (`Doctor_id`, `Patient_id`, `datedate`, `timetime`) VALUES
(1254, 1864, '2023-06-22', '04:00:00'),
(9987, 9000, '2023-06-22', '04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_phone`
--

CREATE TABLE `doctor_phone` (
  `Doctor_id` int(11) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_phone`
--

INSERT INTO `doctor_phone` (`Doctor_id`, `phone`) VALUES
(45, 77998877),
(45, 78987898),
(45, 79999758),
(1254, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `role`) VALUES
(1111, 'Abdal', 'Waleed', 'Manager'),
(1234, 'Ahmad', 'Dady', 'doctor'),
(1243, 'Mohammad', 'Ramadan', 'doctor'),
(1342, 'Abdalla', 'Hamdan', 'Owner'),
(3344, 'Saeed', 'Sami', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `fourth_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `birthdate` date NOT NULL,
  `username` varchar(200) NOT NULL,
  `PASSWORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `first_name`, `fourth_name`, `email`, `birthdate`, `username`, `PASSWORD`) VALUES
(22, 'sohaib', 'Ammani', 'shoib@gmail.com', '0000-00-00', ' sohaib ', ' soso '),
(1864, 'Sal', 'mor', 'Salmor@gmail.com', '0000-00-00', 'SalamMor', 'hello'),
(9000, 'Sami', 'alpha', 'sami@gmail.com', '0000-00-00', 'samialpha', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `patient_address`
--

CREATE TABLE `patient_address` (
  `Patient_id` int(11) NOT NULL,
  `city` varchar(200) NOT NULL,
  `street_name` varchar(200) NOT NULL,
  `building_number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_address`
--

INSERT INTO `patient_address` (`Patient_id`, `city`, `street_name`, `building_number`) VALUES
(22, 'Amman', 'Aaa', '23'),
(1864, 'Irbid', 'Aaab', '22'),
(9000, 'Jarash', 'bib', '25');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `NUMBER` int(11) NOT NULL,
  `datedate` date NOT NULL,
  `timetime` time NOT NULL,
  `Doctor_id` int(11) DEFAULT NULL,
  `Patient_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`NUMBER`, `datedate`, `timetime`, `Doctor_id`, `Patient_id`) VALUES
(22222, '1980-04-04', '10:20:50', 546, 22),
(25687, '0000-00-00', '13:30:09', 45615, 77885),
(33322, '2000-04-04', '12:12:12', 546, 896),
(69123, '2023-03-20', '10:20:00', 55555, 77885),
(97648, '2023-01-19', '09:45:00', 45615, 98765);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_medication`
--

CREATE TABLE `prescription_medication` (
  `prescription_number` int(11) NOT NULL,
  `Medicine_Name` varchar(200) NOT NULL,
  `amount_patient_should_take` varchar(200) NOT NULL,
  `route_how_to_take_it` varchar(200) NOT NULL,
  `frequency` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription_medication`
--

INSERT INTO `prescription_medication` (`prescription_number`, `Medicine_Name`, `amount_patient_should_take`, `route_how_to_take_it`, `frequency`) VALUES
(22222, 'bebel', 'See doctor', 'orally', 'two a days'),
(25687, 'Metahpormin', 'Doctor notes', 'orally by doctor supervision', 'two a days'),
(33322, 'Metaphorm', 'Doctor NOtes', 'Orally by doctor supervision', 'two a days');

-- --------------------------------------------------------

--
-- Stand-in structure for view `show_doctor_num_manager_1111`
-- (See below for the actual view)
--
CREATE TABLE `show_doctor_num_manager_1111` (
`branch_number` int(11)
,`salary` decimal(6,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `show_doctor_num_manager_1234`
-- (See below for the actual view)
--
CREATE TABLE `show_doctor_num_manager_1234` (
`branch_number` int(11)
,`salary` decimal(6,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `show_doctor_num_manager_1342`
-- (See below for the actual view)
--
CREATE TABLE `show_doctor_num_manager_1342` (
`branch_number` int(11)
,`num_of_doctor` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `show_doctor_num_manager_3344`
-- (See below for the actual view)
--
CREATE TABLE `show_doctor_num_manager_3344` (
`branch_number` int(11)
,`salary` decimal(6,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `show_doctor_num_manager_3344_2`
-- (See below for the actual view)
--
CREATE TABLE `show_doctor_num_manager_3344_2` (
`branch_number` int(11)
,`salary` decimal(6,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `show_patient_num`
-- (See below for the actual view)
--
CREATE TABLE `show_patient_num` (
`COUNT(patient.id)` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `show_doctor_num_manager_1111`
--
DROP TABLE IF EXISTS `show_doctor_num_manager_1111`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `show_doctor_num_manager_1111`  AS  select `doctor`.`branch_number` AS `branch_number`,`doctor`.`salary` AS `salary` from `doctor` where (`doctor`.`branch_number` = 36) ;

-- --------------------------------------------------------

--
-- Structure for view `show_doctor_num_manager_1234`
--
DROP TABLE IF EXISTS `show_doctor_num_manager_1234`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `show_doctor_num_manager_1234`  AS  select `doctor`.`branch_number` AS `branch_number`,`doctor`.`salary` AS `salary` from `doctor` where (`doctor`.`branch_number` = 99) ;

-- --------------------------------------------------------

--
-- Structure for view `show_doctor_num_manager_1342`
--
DROP TABLE IF EXISTS `show_doctor_num_manager_1342`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `show_doctor_num_manager_1342`  AS  select `doctor`.`branch_number` AS `branch_number`,count(`doctor`.`id`) AS `num_of_doctor` from `doctor` where (`doctor`.`branch_number` = 2) ;

-- --------------------------------------------------------

--
-- Structure for view `show_doctor_num_manager_3344`
--
DROP TABLE IF EXISTS `show_doctor_num_manager_3344`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `show_doctor_num_manager_3344`  AS  select `doctor`.`branch_number` AS `branch_number`,`doctor`.`salary` AS `salary` from `doctor` where (`doctor`.`branch_number` = 5) ;

-- --------------------------------------------------------

--
-- Structure for view `show_doctor_num_manager_3344_2`
--
DROP TABLE IF EXISTS `show_doctor_num_manager_3344_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `show_doctor_num_manager_3344_2`  AS  select `doctor`.`branch_number` AS `branch_number`,`doctor`.`salary` AS `salary` from `doctor` where (`doctor`.`branch_number` = 99) ;

-- --------------------------------------------------------

--
-- Structure for view `show_patient_num`
--
DROP TABLE IF EXISTS `show_patient_num`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `show_patient_num`  AS  select count(`patient`.`id`) AS `COUNT(patient.id)` from `patient` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`NUMBER`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `branch_name_and_opening_date_FK2` (`employee_id`),
  ADD KEY `branch_name_and_opening_date_FK3` (`id`);

--
-- Indexes for table `branch_address`
--
ALTER TABLE `branch_address`
  ADD KEY `branch_number_FK1` (`branch_number`);

--
-- Indexes for table `branch_name_and_opening_date`
--
ALTER TABLE `branch_name_and_opening_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `PASSWORD` (`PASSWORD`),
  ADD KEY `branch_id_FK77` (`branch_number`);

--
-- Indexes for table `doctor_address`
--
ALTER TABLE `doctor_address`
  ADD PRIMARY KEY (`doctor_id`,`city`,`street_name`,`building_number`);

--
-- Indexes for table `doctor_patient`
--
ALTER TABLE `doctor_patient`
  ADD PRIMARY KEY (`Doctor_id`,`Patient_id`,`datedate`,`timetime`),
  ADD KEY `patient_id_FK1` (`Patient_id`);

--
-- Indexes for table `doctor_phone`
--
ALTER TABLE `doctor_phone`
  ADD PRIMARY KEY (`Doctor_id`,`phone`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `PASSWORD` (`PASSWORD`);

--
-- Indexes for table `patient_address`
--
ALTER TABLE `patient_address`
  ADD PRIMARY KEY (`Patient_id`,`city`,`street_name`,`building_number`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`NUMBER`),
  ADD KEY `patient_id_FK3` (`Patient_id`),
  ADD KEY `doctor_id_FK3` (`Doctor_id`);

--
-- Indexes for table `prescription_medication`
--
ALTER TABLE `prescription_medication`
  ADD PRIMARY KEY (`prescription_number`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_name_and_opening_date_FK3` FOREIGN KEY (`id`) REFERENCES `branch_name_and_opening_date` (`id`),
  ADD CONSTRAINT `employee_id_FK1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `branch_address`
--
ALTER TABLE `branch_address`
  ADD CONSTRAINT `branch_number_FK1` FOREIGN KEY (`branch_number`) REFERENCES `branch` (`NUMBER`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `branch_id_FK77` FOREIGN KEY (`branch_number`) REFERENCES `branch` (`NUMBER`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor_address`
--
ALTER TABLE `doctor_address`
  ADD CONSTRAINT `doctor_id_FK44` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor_patient`
--
ALTER TABLE `doctor_patient`
  ADD CONSTRAINT `doctor_FK11` FOREIGN KEY (`Doctor_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patient_id_FK1` FOREIGN KEY (`Patient_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor_phone`
--
ALTER TABLE `doctor_phone`
  ADD CONSTRAINT `doctor_FK1` FOREIGN KEY (`Doctor_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patient_address`
--
ALTER TABLE `patient_address`
  ADD CONSTRAINT `patient_id_FK56` FOREIGN KEY (`Patient_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prescription_medication`
--
ALTER TABLE `prescription_medication`
  ADD CONSTRAINT `prescription_number_FK33` FOREIGN KEY (`prescription_number`) REFERENCES `prescription` (`NUMBER`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
