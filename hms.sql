-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2022 at 03:37 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_call`
--

CREATE TABLE `ambulance_call` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(200) NOT NULL,
  `patient_name` varchar(50) DEFAULT NULL,
  `contact_no` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(20) DEFAULT NULL,
  `driver` varchar(100) NOT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `generated_by` int(11) NOT NULL,
  `call_from` varchar(200) NOT NULL,
  `call_to` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ambulance_call`
--

INSERT INTO `ambulance_call` (`id`, `bill_no`, `patient_name`, `contact_no`, `address`, `vehicle_no`, `vehicle_model`, `driver`, `amount`, `date`, `created_at`, `generated_by`, `call_from`, `call_to`) VALUES
(1, '1', '33', NULL, NULL, '1', NULL, 'Kashan', '1200.00', '2022-02-22 17:23:00', '2022-02-23 16:30:10', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `appointment_no` varchar(100) NOT NULL,
  `date` datetime DEFAULT NULL,
  `priority` varchar(100) NOT NULL,
  `patient_name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobileno` varchar(50) DEFAULT NULL,
  `specialist` varchar(100) NOT NULL,
  `doctor` varchar(50) DEFAULT NULL,
  `amount` varchar(200) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `appointment_status` varchar(11) DEFAULT NULL,
  `source` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_opd` varchar(200) NOT NULL,
  `is_ipd` varchar(200) NOT NULL,
  `live_consult` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `patient_id`, `appointment_no`, `date`, `priority`, `patient_name`, `gender`, `email`, `mobileno`, `specialist`, `doctor`, `amount`, `message`, `appointment_status`, `source`, `created_at`, `is_opd`, `is_ipd`, `live_consult`) VALUES
(1, 35, 'APPNO1', '2021-08-31 14:28:00', '1', 'Sumra', 'Female', 'sumrakhan95@gmail.com', '03115386956', '', '4', '', 'Extremely Migraine ', 'approved', 'Offline', '2021-08-30 09:31:37', '', '', 'No'),
(2, 6, 'APPNO2', '2021-08-31 15:24:00', '2', 'Nauman', 'Male', 'safinoman66@gmail.com', '+923165122511', '', '4', '', 'High Fever', 'approved', 'Offline', '2021-08-31 10:26:03', 'yes', '', 'No'),
(3, 0, 'APPNO3', '2021-10-30 16:02:00', '2', 'Nazir', 'Male', '', '0313464654', '', '4', '', 'ghsd fjdsgfsdaf ', 'approved', 'Offline', '2021-10-30 11:03:08', '', '', 'No'),
(4, 5, 'APPNO4', '2022-02-25 17:38:00', '', 'Adil Jameel', 'Male', 'engr.ali007@outlook.com', '03174923348', '', '4', '', 'For checkup ', 'approved', 'Online', '2022-02-17 12:38:47', '', '', 'No'),
(5, 5, 'APPNO5', '2022-02-26 17:56:00', '', 'Adil Jameel', 'Male', 'engr.ali007@outlook.com', '03174923348', '', '11', '', 'For checkup', 'approved', 'Online', '2022-02-17 12:57:04', '', 'yes', 'No'),
(6, 4, 'APPNO6', '2022-02-19 10:43:00', '2', 'Humman', 'Female', 'zahra.memorial@gmail.com', '03175302900', '', '3', '', 'Gynecology problems', 'approved', 'Offline', '2022-02-18 05:44:02', '', '', 'No'),
(7, 0, 'APPNO7', '2022-02-19 20:32:00', '3', 'osama', 'Male', 'asdas', '665656', '', '2', '', 'shit', 'approved', 'Offline', '2022-02-19 15:33:02', '', '', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `appoint_priority`
--

CREATE TABLE `appoint_priority` (
  `id` int(11) NOT NULL,
  `appoint_priority` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appoint_priority`
--

INSERT INTO `appoint_priority` (`id`, `appoint_priority`, `created_at`) VALUES
(1, 'Normal', '0000-00-00 00:00:00'),
(2, 'Urgent', '0000-00-00 00:00:00'),
(3, 'Very Urgent', '0000-00-00 00:00:00'),
(4, 'Low', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `bed_type_id` int(11) NOT NULL,
  `bed_group_id` int(100) NOT NULL,
  `is_active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`id`, `name`, `bed_type_id`, `bed_group_id`, `is_active`) VALUES
(1, 'Bed 1', 1, 1, 'yes'),
(2, 'Bed 2', 1, 1, 'yes'),
(3, 'Bed 3', 1, 1, 'no'),
(4, 'Bed 4', 1, 1, 'no'),
(5, 'Bed 5', 1, 1, 'yes'),
(6, 'Bed 6', 1, 1, 'yes'),
(7, 'Bed 7', 1, 1, 'yes'),
(8, 'Bed 8', 1, 1, 'yes'),
(9, 'Bed 9', 1, 1, 'yes'),
(10, 'Bed 10', 1, 1, 'yes'),
(11, 'Bed 11', 2, 3, 'yes'),
(12, 'Bed 12', 2, 3, 'yes'),
(13, 'Bed 13', 2, 3, 'no'),
(14, 'Bed14', 1, 2, 'yes'),
(15, 'Bed 15', 1, 2, 'yes'),
(16, 'Bed 16', 1, 2, 'yes'),
(17, 'Bed 17', 1, 2, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `bed_group`
--

CREATE TABLE `bed_group` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `floor` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bed_group`
--

INSERT INTO `bed_group` (`id`, `name`, `description`, `floor`, `is_active`) VALUES
(1, 'General Ward', '', '1', 0),
(2, 'Normal Room', '', '2', 0),
(3, 'VIP Room', '', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bed_type`
--

CREATE TABLE `bed_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bed_type`
--

INSERT INTO `bed_type` (`id`, `name`) VALUES
(1, 'Normal'),
(2, 'VIP');

-- --------------------------------------------------------

--
-- Table structure for table `birth_report`
--

CREATE TABLE `birth_report` (
  `id` int(11) NOT NULL,
  `ref_no` varchar(200) NOT NULL,
  `opd_ipd_no` varchar(200) NOT NULL,
  `child_name` varchar(200) NOT NULL,
  `child_pic` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `birth_date` datetime NOT NULL,
  `weight` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `father_pic` varchar(200) NOT NULL,
  `birth_report` mediumtext NOT NULL,
  `document` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `is_active` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `birth_report`
--

INSERT INTO `birth_report` (`id`, `ref_no`, `opd_ipd_no`, `child_name`, `child_pic`, `gender`, `birth_date`, `weight`, `mother_name`, `contact`, `mother_pic`, `father_name`, `father_pic`, `birth_report`, `document`, `address`, `is_active`, `created_at`) VALUES
(1, 'BR20211', '0003', 'Manahil', 'uploads/birth_image/1/child_img1.jpg', 'Female', '2021-08-30 18:01:00', '3kg', '4', '03174923348', 'uploads/patient_images/no_image.png', 'Ali Khan', 'uploads/patient_images/no_image.png', '', '', 'Islamabad', 'yes', '2021-08-30 13:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank_status`
--

CREATE TABLE `blood_bank_status` (
  `id` int(11) NOT NULL,
  `blood_group` varchar(3) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `ceated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blood_bank_status`
--

INSERT INTO `blood_bank_status` (`id`, `blood_group`, `status`, `ceated_at`) VALUES
(1, 'A+', '5', '2018-08-18 11:40:07'),
(2, 'B+', '3', '2018-08-18 12:10:55'),
(3, 'A-', '0', '2018-08-18 12:11:24'),
(4, 'B-', '0', '2018-08-18 12:11:44'),
(5, 'O+', '0', '2018-08-18 12:12:06'),
(6, 'O-', '0', '2018-08-18 12:12:20'),
(7, 'AB+', '0', '2018-08-18 12:12:36'),
(8, 'AB-', '0', '2018-08-18 12:13:18');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `id` int(11) NOT NULL,
  `donor_name` varchar(100) DEFAULT NULL,
  `age` varchar(11) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `blood_group` varchar(11) DEFAULT NULL,
  `gender` varchar(11) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blood_donor`
--

INSERT INTO `blood_donor` (`id`, `donor_name`, `age`, `month`, `blood_group`, `gender`, `father_name`, `address`, `contact_no`, `created_at`) VALUES
(1, 'Kashif', '25', '4', 'B+', 'Male', 'Kamran', 'Islamabad', '03115386956', '2021-08-30 04:59:10'),
(2, 'Ahmed', '30', '6', 'A+', 'Male', 'Nazir', 'Rawalpindi', '0345789789', '2021-08-30 04:59:57'),
(3, 'Javed', '25', '', 'B+', 'Male', 'Amjad', 'Islamabad', '03125465484', '2022-01-17 17:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor_cycle`
--

CREATE TABLE `blood_donor_cycle` (
  `id` int(11) NOT NULL,
  `blood_donor_id` int(11) NOT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `lot` varchar(11) DEFAULT NULL,
  `bag_no` varchar(11) DEFAULT NULL,
  `quantity` varchar(11) DEFAULT NULL,
  `donate_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blood_donor_cycle`
--

INSERT INTO `blood_donor_cycle` (`id`, `blood_donor_id`, `institution`, `lot`, `bag_no`, `quantity`, `donate_date`, `created_at`) VALUES
(1, 2, 'PIMS', 'A', '001', '700', '2021-08-30', '2021-08-30 05:01:13'),
(2, 2, 'PIMS', 'A', '002', '70031', '2021-08-18', '2021-08-30 06:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `blood_issue`
--

CREATE TABLE `blood_issue` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(200) NOT NULL,
  `date_of_issue` datetime DEFAULT NULL,
  `recieve_to` varchar(50) DEFAULT NULL,
  `blood_group` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `doctor` varchar(200) DEFAULT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `technician` varchar(50) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `donor_name` varchar(50) DEFAULT NULL,
  `lot` varchar(20) DEFAULT NULL,
  `bag_no` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `generated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blood_issue`
--

INSERT INTO `blood_issue` (`id`, `bill_no`, `date_of_issue`, `recieve_to`, `blood_group`, `gender`, `doctor`, `institution`, `technician`, `amount`, `donor_name`, `lot`, `bag_no`, `remark`, `created_at`, `generated_by`) VALUES
(1, '1', '2021-08-30 10:01:00', '3', NULL, NULL, 'Javed Khan', NULL, 'Ali', '3000.00', '2', 'A', '001', '', '2021-08-30 05:02:14', 1),
(2, '2', '2021-08-30 11:47:00', '3', NULL, NULL, 'Javed Khan', NULL, 'Ali', '5000.00', '2', 'A', '001', '', '2021-08-30 06:47:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` int(11) NOT NULL,
  `charge_type` varchar(200) NOT NULL,
  `charge_category` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `code` varchar(100) NOT NULL,
  `standard_charge` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`id`, `charge_type`, `charge_category`, `description`, `code`, `standard_charge`, `date`, `status`) VALUES
(1, 'Operation Theatre', 'OT Charges', '', '001', '10000', '0000-00-00', ''),
(2, 'General Ward Charges', 'General Ward', '', '002', '1000', '0000-00-00', ''),
(3, 'VIP Room Charges', 'VIP Room', '', '003', '5000', '0000-00-00', ''),
(4, 'Investigations', 'Lab', '', '001', '500', '0000-00-00', ''),
(5, 'Orphan', 'Orphan', '', 'Orphan', '500', '0000-00-00', ''),
(6, 'COVID19', 'COVID19', '', '19', '6000', '0000-00-00', ''),
(7, 'Investigations', 'Pathology', 'Typhoid', '001', '1000', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `charge_categories`
--

CREATE TABLE `charge_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `charge_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `charge_categories`
--

INSERT INTO `charge_categories` (`id`, `name`, `description`, `charge_type`) VALUES
(1, 'OT Charges', 'OT Charges', 'Operation Theatre'),
(2, 'Services', 'Services', 'Services'),
(3, 'General Ward', 'General Ward', 'General Ward Charges'),
(4, 'VIP Room', 'VIP Room', 'VIP Room Charges'),
(5, 'Category1', 'Category1 desc', 'General Ward Charges'),
(6, 'Pathology', 'Pathology', 'Investigations'),
(7, 'Lab', 'Lab', 'Investigations'),
(8, 'Orphan', 'Orphans', 'Orphan'),
(9, 'COVID19', 'COVID19 desc', 'COVID19');

-- --------------------------------------------------------

--
-- Table structure for table `charge_type_master`
--

CREATE TABLE `charge_type_master` (
  `id` int(11) NOT NULL,
  `charge_type` varchar(200) NOT NULL,
  `is_default` varchar(100) NOT NULL,
  `is_active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charge_type_master`
--

INSERT INTO `charge_type_master` (`id`, `charge_type`, `is_default`, `is_active`) VALUES
(1, 'Procedures', 'yes', 'yes'),
(2, 'Investigations', 'yes', 'yes'),
(3, 'Supplier', 'yes', 'yes'),
(4, 'Operation Theatre', 'yes', 'yes'),
(5, 'Others', 'yes', 'yes'),
(6, 'Services', 'no', 'yes'),
(7, 'General Ward Charges', 'no', 'yes'),
(8, 'VIP Room Charges', 'no', 'yes'),
(9, 'Lab Charges', 'no', 'yes'),
(10, 'Orphan', 'no', 'yes'),
(11, 'COVID19', 'no', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `source` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `action_taken` varchar(200) NOT NULL,
  `assigned` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `complaint_type`, `source`, `name`, `contact`, `email`, `date`, `description`, `action_taken`, `assigned`, `note`, `image`) VALUES
(1, '', '', 'patient', '+923335037204', '', '2022-02-22', 'The hosptial management\'s attitude with patients is derogatory and disrespecful', '', 'Director Faizan Ali', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_type`
--

CREATE TABLE `complaint_type` (
  `id` int(11) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `conferences`
--

CREATE TABLE `conferences` (
  `id` int(11) NOT NULL,
  `purpose` varchar(200) CHARACTER SET utf8 NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  `opd_id` int(11) NOT NULL,
  `ipd_id` int(11) NOT NULL,
  `created_id` int(11) DEFAULT NULL,
  `title` text CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `host_video` int(11) NOT NULL,
  `client_video` int(11) NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL,
  `timezone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `return_response` text NOT NULL,
  `api_type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conferences_history`
--

CREATE TABLE `conferences_history` (
  `id` int(11) NOT NULL,
  `conference_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `total_hit` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conference_staff`
--

CREATE TABLE `conference_staff` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `conference_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consultant_register`
--

CREATE TABLE `consultant_register` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `ipd_id` int(11) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `ins_date` varchar(50) DEFAULT NULL,
  `instruction` varchar(200) NOT NULL,
  `cons_doctor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `consultant_register`
--

INSERT INTO `consultant_register` (`id`, `patient_id`, `ipd_id`, `date`, `ins_date`, `instruction`, `cons_doctor`) VALUES
(1, 2, 2, '2021-08-30 16:29:00', '2021-08-30', 'treatment', 2),
(2, 3, 1, '2021-08-30 16:36:00', '2021-08-30', 'Need to sleep well', 2),
(3, 3, 1, '2021-08-30 16:37:00', '2021-08-30', 'Medicine use after meal', 2),
(4, 10, 6, '2022-01-20 10:38:00', '2022-01-20', 'inject pain killer after 2 hrs jk fjsdh fkhsdjk fhjkdsh fkjsdhf jhsd kj fsdfh kjsdh fjsdhkj fsdkjf hsdakjhfkjsdh fkjhsdkjf hds', 2),
(5, 10, 6, '2022-01-20 10:40:00', '2022-01-20', 'Meal timely', 2),
(6, 26, 7, '2022-02-19 16:17:00', '2022-02-19', 'CBC', 2),
(7, 26, 7, '2022-02-23 11:43:00', '2022-02-22', 'DRE by Medical officer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `consult_charges`
--

CREATE TABLE `consult_charges` (
  `id` int(11) NOT NULL,
  `doctor` int(11) NOT NULL,
  `standard_charge` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `consult_charges`
--

INSERT INTO `consult_charges` (`id`, `doctor`, `standard_charge`, `date`, `status`) VALUES
(1, 4, '2500', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_public` varchar(10) DEFAULT 'No',
  `class_id` int(11) DEFAULT NULL,
  `cls_sec_id` int(10) NOT NULL,
  `file` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `type`, `is_public`, `class_id`, `cls_sec_id`, `file`, `created_by`, `note`, `is_active`, `created_at`, `date`) VALUES
(1, 'Attn', 'Warning', 'No', NULL, 0, 'uploads/hospial_content/material/1.png', 0, '', 'no', '2021-08-30 06:55:26', '2021-08-30');

-- --------------------------------------------------------

--
-- Table structure for table `content_for`
--

CREATE TABLE `content_for` (
  `id` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `belong_to` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `bs_column` int(10) DEFAULT NULL,
  `validation` int(11) DEFAULT 0,
  `field_values` mediumtext DEFAULT NULL,
  `show_table` varchar(100) DEFAULT NULL,
  `visible_on_table` int(11) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL,
  `belong_table_id` int(11) DEFAULT NULL,
  `custom_field_id` int(11) DEFAULT NULL,
  `field_value` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `death_report`
--

CREATE TABLE `death_report` (
  `id` int(11) NOT NULL,
  `opdipd_no` varchar(200) NOT NULL,
  `patient` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `death_date` datetime NOT NULL,
  `guardian_name` varchar(200) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  `death_report` text NOT NULL,
  `is_active` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES
(1, 'OPD', 'yes'),
(2, 'Block A', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `report_type` varchar(200) NOT NULL,
  `document` varchar(200) NOT NULL,
  `description` varchar(400) NOT NULL,
  `report_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`id`, `patient_id`, `report_type`, `document`, `description`, `report_date`) VALUES
(1, 26, 'Ultrasound', '', 'Acute appendicitis', '2022-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `discharged_summary`
--

CREATE TABLE `discharged_summary` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `ipd_id` int(11) NOT NULL,
  `operation` varchar(200) NOT NULL,
  `diagnosis` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `investigations` text NOT NULL,
  `treatment_home` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discharged_summary_opd`
--

CREATE TABLE `discharged_summary_opd` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `opd_id` int(11) NOT NULL,
  `operation` varchar(200) NOT NULL,
  `diagnosis` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `investigations` text NOT NULL,
  `treatment_home` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dispatch_receive`
--

CREATE TABLE `dispatch_receive` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) NOT NULL,
  `to_title` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `from_title` varchar(200) NOT NULL,
  `date` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) UNSIGNED NOT NULL,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_username`, `smtp_password`, `ssl_tls`, `is_active`, `created_at`) VALUES
(2, 'sendmail', '', '', '', '', '', 'yes', '2019-11-01 12:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` mediumtext NOT NULL,
  `reference` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `note` mediumtext NOT NULL,
  `source` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `assigned` varchar(100) NOT NULL,
  `class` int(11) NOT NULL,
  `no_of_child` varchar(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_type`
--

CREATE TABLE `enquiry_type` (
  `id` int(11) NOT NULL,
  `enquiry_type` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_title` varchar(200) NOT NULL,
  `event_description` varchar(300) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `event_color` varchar(200) NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense_head`
--

CREATE TABLE `expense_head` (
  `id` int(11) NOT NULL,
  `exp_category` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `floor`
--

INSERT INTO `floor` (`id`, `name`, `description`) VALUES
(1, '1st Floor', ''),
(2, '2nd Floor', '');

-- --------------------------------------------------------

--
-- Table structure for table `follow_up`
--

CREATE TABLE `follow_up` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `next_date` date NOT NULL,
  `response` text NOT NULL,
  `note` text NOT NULL,
  `followup_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_media_gallery`
--

CREATE TABLE `front_cms_media_gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `thumb_path` varchar(300) DEFAULT NULL,
  `dir_path` varchar(300) DEFAULT NULL,
  `img_name` varchar(300) DEFAULT NULL,
  `thumb_name` varchar(300) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `file_type` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `vid_url` mediumtext NOT NULL,
  `vid_title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_menus`
--

CREATE TABLE `front_cms_menus` (
  `id` int(11) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `open_new_tab` int(10) NOT NULL DEFAULT 0,
  `ext_url` mediumtext NOT NULL,
  `ext_url_link` mediumtext NOT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `content_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_menus`
--

INSERT INTO `front_cms_menus` (`id`, `menu`, `slug`, `description`, `open_new_tab`, `ext_url`, `ext_url_link`, `publish`, `content_type`, `is_active`, `created_at`) VALUES
(1, 'Main Menu', 'main-menu', 'Main menu', 0, '', '', 0, 'default', 'no', '2018-04-20 09:24:49'),
(2, 'Bottom Menu', 'bottom-menu', 'Bottom Menu', 0, '', '', 0, 'default', 'no', '2018-04-20 09:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_menu_items`
--

CREATE TABLE `front_cms_menu_items` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `ext_url` mediumtext DEFAULT NULL,
  `open_new_tab` int(11) DEFAULT 0,
  `ext_url_link` mediumtext DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `description` mediumtext DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_menu_items`
--

INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES
(16, 2, 'Home', 1, 0, NULL, NULL, NULL, 'home-1', NULL, 0, NULL, 'no', '2018-07-14 08:44:12'),
(23, 1, 'Appointment', 77, 0, '1', NULL, 'http://yourdomainname.com/form/appointment', 'appointment', 2, 0, NULL, 'no', '2019-11-01 07:36:32'),
(26, 1, 'Home', 1, 0, NULL, NULL, NULL, 'home', NULL, 0, NULL, 'no', '2019-01-24 08:48:17'),
(27, 2, 'Appointment', 0, 0, '1', NULL, 'http://yourdomainname.com/form/appointment', 'appointment-1', NULL, 0, NULL, 'no', '2019-11-02 16:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_pages`
--

CREATE TABLE `front_cms_pages` (
  `id` int(11) NOT NULL,
  `page_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_homepage` int(1) DEFAULT 0,
  `title` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `meta_title` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `feature_image` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `publish_date` date NOT NULL,
  `publish` int(10) DEFAULT 0,
  `sidebar` int(10) DEFAULT 0,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_pages`
--

INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES
(1, 'default', 1, 'Home', 'page/home', 'page', 'home', '', '', '', '', '<p>Home page</p>', '0000-00-00', 1, 1, 'no', '2019-01-24 08:33:59'),
(2, 'default', 0, 'Complain', 'page/complain', 'page', 'complain', 'Complain form', '                                                                                                                                                                                    complain form                                                                                                                                                                                                                                ', 'complain form', '', '<div class=\"col-md-12 col-sm-12\">\r\n<h2 class=\"text-center\">&nbsp;</h2>\r\n\r\n<p class=\"text-center\">[form-builder:complain]</p>\r\n</div>', '0000-00-00', 1, 1, 'no', '2019-01-24 08:30:12'),
(54, 'default', 0, '404 page', 'page/404-page', 'page', '404-page', '', '                                ', '', '', '<html>\r\n<head>\r\n <title></title>\r\n</head>\r\n<body>\r\n<p>404 page found</p>\r\n</body>\r\n</html>', '0000-00-00', 0, NULL, 'no', '2018-05-18 09:16:04'),
(76, 'default', 0, 'Contact us', 'page/contact-us', 'page', 'contact-us', '', '', '', '', '<p>[form-builder:contact_us]</p>', '0000-00-00', 0, NULL, 'no', '2019-01-24 08:31:58'),
(77, 'manual', 0, 'our-appointment', 'page/our-appointment', 'page', 'our-appointment', '', '', '', '', '<form action=\"welcome/appointment\" method=\"get\">\r\n  First name: <input type=\"text\" name=\"fname\"><br>\r\n  Last name: <input type=\"text\" name=\"lname\"><br>\r\n  <input type=\"submit\" value=\"Submit\">\r\n</form>', '0000-00-00', 0, 1, 'no', '2019-11-01 07:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_page_contents`
--

CREATE TABLE `front_cms_page_contents` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_programs`
--

CREATE TABLE `front_cms_programs` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `url` mediumtext DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `event_start` date DEFAULT NULL,
  `event_end` date DEFAULT NULL,
  `event_venue` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `meta_title` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `feature_image` mediumtext NOT NULL,
  `publish_date` date NOT NULL,
  `publish` varchar(10) DEFAULT '0',
  `sidebar` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_program_photos`
--

CREATE TABLE `front_cms_program_photos` (
  `id` int(11) NOT NULL,
  `program_id` int(11) DEFAULT NULL,
  `media_gallery_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_settings`
--

CREATE TABLE `front_cms_settings` (
  `id` int(11) NOT NULL,
  `theme` varchar(50) DEFAULT NULL,
  `is_active_rtl` int(10) DEFAULT 0,
  `is_active_front_cms` int(11) DEFAULT 0,
  `is_active_sidebar` int(1) DEFAULT 0,
  `logo` varchar(200) DEFAULT NULL,
  `contact_us_email` varchar(100) DEFAULT NULL,
  `complain_form_email` varchar(100) DEFAULT NULL,
  `sidebar_options` mediumtext NOT NULL,
  `fb_url` varchar(200) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `youtube_url` varchar(200) NOT NULL,
  `google_plus` varchar(200) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `pinterest_url` varchar(200) NOT NULL,
  `linkedin_url` varchar(200) NOT NULL,
  `google_analytics` mediumtext DEFAULT NULL,
  `footer_text` varchar(500) DEFAULT NULL,
  `fav_icon` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_settings`
--

INSERT INTO `front_cms_settings` (`id`, `theme`, `is_active_rtl`, `is_active_front_cms`, `is_active_sidebar`, `logo`, `contact_us_email`, `complain_form_email`, `sidebar_options`, `fb_url`, `twitter_url`, `youtube_url`, `google_plus`, `instagram_url`, `pinterest_url`, `linkedin_url`, `google_analytics`, `footer_text`, `fav_icon`, `created_at`) VALUES
(1, 'default', NULL, 0, 0, '', '', '', '[\"news\",\"complain\"]', '', '', '', '', '', '', '', '', '', '', '2019-11-02 16:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `general_calls`
--

CREATE TABLE `general_calls` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `call_dureation` varchar(50) NOT NULL,
  `note` mediumtext NOT NULL,
  `call_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `inc_head_id` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `documents` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `inc_head_id`, `name`, `invoice_no`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `documents`) VALUES
(1, '1', 'Pick & Drop', '654', '2022-02-07', '3000.00', '', 'yes', 'no', '2022-02-07 04:43:02', NULL),
(2, '1', 'Owais', '56468636', '2022-02-19', '20000.00', '', 'yes', 'no', '2022-02-19 12:28:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `income_head`
--

CREATE TABLE `income_head` (
  `id` int(255) NOT NULL,
  `income_category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `is_deleted` varchar(255) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income_head`
--

INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`) VALUES
(1, 'transport', 'transport', 'yes', 'no', '2022-02-07 04:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `ipd_billing`
--

CREATE TABLE `ipd_billing` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `ipd_id` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `other_charge` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `tax` decimal(15,2) NOT NULL,
  `gross_total` decimal(15,2) NOT NULL,
  `net_amount` decimal(15,2) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL,
  `generated_by` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ipd_billing`
--

INSERT INTO `ipd_billing` (`id`, `patient_id`, `ipd_id`, `discount`, `other_charge`, `date`, `tax`, `gross_total`, `net_amount`, `total_amount`, `generated_by`, `status`) VALUES
(1, 2, 2, 0, '0', '2021-08-30', '0.00', '10000.00', '-5000.00', '10000.00', 1, 'paid'),
(2, 3, 1, 0, '0', '2021-08-30', '0.00', '15000.00', '0.00', '15000.00', 1, 'paid'),
(4, 4, 3, 1000, '3000', '2021-08-30', '0.00', '13000.00', '8000.00', '13000.00', 1, 'paid'),
(5, 10, 6, 200, '0', '2022-02-05', '0.00', '300.00', '300.00', '300.00', 6, 'paid'),
(7, 26, 7, 0, '0', '2022-02-23', '0.00', '0.00', '0.00', '0.00', 1, 'paid'),
(8, 28, 8, 0, '0', '2022-02-24', '0.00', '0.00', '0.00', '0.00', 1, 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `ipd_details`
--

CREATE TABLE `ipd_details` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `height` varchar(5) DEFAULT NULL,
  `weight` varchar(5) DEFAULT NULL,
  `pulse` varchar(200) NOT NULL,
  `temperature` varchar(200) NOT NULL,
  `respiration` varchar(200) NOT NULL,
  `bp` varchar(20) DEFAULT NULL,
  `ipd_no` varchar(200) NOT NULL,
  `room` varchar(100) NOT NULL,
  `bed` varchar(100) NOT NULL,
  `bed_group_id` varchar(10) DEFAULT NULL,
  `case_type` varchar(100) NOT NULL,
  `casualty` varchar(100) NOT NULL,
  `symptoms` varchar(200) NOT NULL,
  `known_allergies` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `refference` varchar(200) NOT NULL,
  `cons_doctor` int(11) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `credit_limit` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `discharged` varchar(200) NOT NULL,
  `discharged_date` date NOT NULL,
  `live_consult` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ipd_details`
--

INSERT INTO `ipd_details` (`id`, `patient_id`, `height`, `weight`, `pulse`, `temperature`, `respiration`, `bp`, `ipd_no`, `room`, `bed`, `bed_group_id`, `case_type`, `casualty`, `symptoms`, `known_allergies`, `note`, `refference`, `cons_doctor`, `amount`, `credit_limit`, `tax`, `payment_mode`, `date`, `discharged`, `discharged_date`, `live_consult`) VALUES
(1, 3, '', '', '', '', '', '', 'IPDN1', '', '1', '1', '', 'No', '', '', '', '', 2, '', '20000', '', '', '2021-08-30 10:55:00', 'yes', '2021-08-30', 'No'),
(2, 2, '', '', '', '', '', '', 'IPDN2', '', '11', '3', '', 'No', '', '', '', '', 2, '', '20000', '', '', '2021-08-29 16:03:00', 'yes', '2021-08-30', 'No'),
(3, 4, '5.5', '', '', '100', '', '', 'IPDN3', '', '4', '1', '', 'No', '', '', '', '', 4, '', '20000', '', '', '2021-08-31 14:28:00', 'yes', '2021-08-30', 'No'),
(4, 14, '', '', '', '', '', '', 'IPDN4', '', '4', '1', '', 'No', '', '', '', '', 2, '', '20000', '', '', '2021-11-14 10:55:00', 'no', '0000-00-00', 'No'),
(5, 16, '', '', '', '', '', '', 'IPDN5', '', '3', '1', '', 'No', '', '', '', '', 7, '', '20000', '', '', '2022-01-20 10:30:00', 'no', '2022-02-07', 'No'),
(6, 10, '', '', '', '', '', '', 'IPDN6', '', '6', '1', '', 'No', '', '', '', '', 3, '', '20000', '', '', '2021-10-30 17:10:00', 'yes', '2022-02-05', 'No'),
(7, 26, '', '', '', '', '', '', 'IPDN7', '', '11', '3', '', 'No', '', '', '', '', 2, '', '20000', '', '', '2022-02-19 16:16:00', 'yes', '2022-02-23', 'No'),
(8, 28, '', '', '', '', '', '', 'IPDN8', '', '12', '3', '', 'No', '', '', '', '', 4, '', '20000', '', '', '2022-02-19 17:05:00', 'yes', '2022-02-24', 'Yes'),
(9, 29, '', '', '', '', '', '', 'IPDN9', '', '13', '3', '', 'No', '', '', '', '', 4, '', '20000', '', '', '2022-02-19 17:17:00', 'no', '0000-00-00', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `ipd_prescription_basic`
--

CREATE TABLE `ipd_prescription_basic` (
  `id` int(11) NOT NULL,
  `ipd_id` int(11) NOT NULL,
  `header_note` varchar(100) NOT NULL,
  `footer_note` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ipd_prescription_basic`
--

INSERT INTO `ipd_prescription_basic` (`id`, `ipd_id`, `header_note`, `footer_note`, `date`) VALUES
(1, 2, '', '', '2021-08-30'),
(2, 1, '', '', '2021-08-30'),
(3, 9, '<p>kjdskjfksd</p>', '', '2022-02-19');

-- --------------------------------------------------------

--
-- Table structure for table `ipd_prescription_details`
--

CREATE TABLE `ipd_prescription_details` (
  `id` int(11) NOT NULL,
  `basic_id` int(11) NOT NULL,
  `ipd_id` int(11) NOT NULL,
  `medicine_category_id` int(11) NOT NULL,
  `medicine` varchar(200) NOT NULL,
  `dosage` varchar(200) NOT NULL,
  `instruction` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ipd_prescription_details`
--

INSERT INTO `ipd_prescription_details` (`id`, `basic_id`, `ipd_id`, `medicine_category_id`, `medicine`, `dosage`, `instruction`) VALUES
(1, 1, 2, 1, 'Syp Panadol 100ml', '1-1-1', ''),
(2, 2, 1, 1, 'Syp Panadol 100ml', '1-1-1', 'after meal'),
(3, 3, 9, 1, 'Beflam Tablet 75mg', '1-1-1', 'asdfasd'),
(4, 3, 9, 1, 'Syp Panadol 100ml', '1-0-1', '');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(200) NOT NULL,
  `item_photo` varchar(225) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `item_store_id` int(11) DEFAULT NULL,
  `item_supplier_id` int(11) DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `id` int(255) NOT NULL,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_issue`
--

CREATE TABLE `item_issue` (
  `id` int(11) NOT NULL,
  `issue_type` varchar(15) DEFAULT NULL,
  `issue_to` varchar(100) DEFAULT NULL,
  `issue_by` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `note` text NOT NULL,
  `is_returned` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` varchar(10) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_stock`
--

CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '+',
  `store_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `purchase_price` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_store`
--

CREATE TABLE `item_store` (
  `id` int(255) NOT NULL,
  `item_store` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_supplier`
--

CREATE TABLE `item_supplier` (
  `id` int(255) NOT NULL,
  `item_supplier` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_phone` varchar(255) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int(11) NOT NULL,
  `lab_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `lab_name`) VALUES
(1, 'Abdomen');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(50) DEFAULT NULL,
  `short_code` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `is_deleted` varchar(10) NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Azerbaijan', 'az', 'az', 'no', 'no', '2019-11-20 11:23:12', '0000-00-00'),
(2, 'Albanian', 'sq', 'al', 'no', 'no', '2019-11-20 11:42:42', '0000-00-00'),
(3, 'Amharic', 'am', 'am', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(4, 'English', 'en', 'us', 'no', 'no', '2019-11-20 11:38:50', '0000-00-00'),
(5, 'Arabic', 'ar', 'sa', 'no', 'no', '2019-11-20 11:47:28', '0000-00-00'),
(7, 'Afrikaans', 'af', 'af', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(8, 'Basque', 'eu', 'es', 'no', 'no', '2019-11-20 11:54:10', '0000-00-00'),
(11, 'Bengali', 'bn', 'in', 'no', 'no', '2019-11-20 11:41:53', '0000-00-00'),
(13, 'Bosnian', 'bs', 'bs', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(14, 'Welsh', 'cy', 'cy', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(15, 'Hungarian', 'hu', 'hu', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(16, 'Vietnamese', 'vi', 'vi', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(17, 'Haitian', 'ht', 'ht', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(18, 'Galician', 'gl', 'gl', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(19, 'Dutch', 'nl', 'nl', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(21, 'Greek', 'el', 'gr', 'no', 'no', '2019-11-20 12:12:08', '0000-00-00'),
(22, 'Georgian', 'ka', 'ge', 'no', 'no', '2019-11-20 12:11:40', '0000-00-00'),
(23, 'Gujarati', 'gu', 'in', 'no', 'no', '2019-11-20 11:39:16', '0000-00-00'),
(24, 'Danish', 'da', 'dk', 'no', 'no', '2019-11-20 12:03:25', '0000-00-00'),
(25, 'Hebrew', 'he', 'il', 'no', 'no', '2019-11-20 12:13:50', '0000-00-00'),
(26, 'Yiddish', 'yi', 'il', 'no', 'no', '2019-11-20 12:25:33', '0000-00-00'),
(27, 'Indonesian', 'id', 'id', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(28, 'Irish', 'ga', 'ga', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(29, 'Italian', 'it', 'it', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(30, 'Icelandic', 'is', 'is', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(31, 'Spanish', 'es', 'es', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(33, 'Kannada', 'kn', 'kn', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(34, 'Catalan', 'ca', 'ca', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(36, 'Chinese', 'zh', 'cn', 'no', 'no', '2019-11-20 12:01:48', '0000-00-00'),
(37, 'Korean', 'ko', 'kr', 'no', 'no', '2019-11-20 12:19:09', '0000-00-00'),
(38, 'Xhosa', 'xh', 'ls', 'no', 'no', '2019-11-20 12:24:39', '0000-00-00'),
(39, 'Latin', 'la', 'la', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(40, 'Latvian', 'lv', 'lv', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(41, 'Lithuanian', 'lt', 'lt', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(43, 'Malagasy', 'mg', 'mg', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(44, 'Malay', 'ms', 'ms', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(45, 'Malayalam', 'ml', 'ml', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(46, 'Maltese', 'mt', 'mt', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(47, 'Macedonian', 'mk', 'mk', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(48, 'Maori', 'mi', 'nz', 'no', 'no', '2019-11-20 12:20:27', '0000-00-00'),
(49, 'Marathi', 'mr', 'in', 'no', 'no', '2019-11-20 11:39:51', '0000-00-00'),
(51, 'Mongolian', 'mn', 'mn', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(52, 'German', 'de', 'de', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(53, 'Nepali', 'ne', 'ne', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(54, 'Norwegian', 'no', 'no', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(55, 'Punjabi', 'pa', 'in', 'no', 'no', '2019-11-20 11:40:16', '0000-00-00'),
(57, 'Persian', 'fa', 'ir', 'no', 'no', '2019-11-20 12:21:17', '0000-00-00'),
(59, 'Portuguese', 'pt', 'pt', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(60, 'Romanian', 'ro', 'ro', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(61, 'Russian', 'ru', 'ru', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(62, 'Cebuano', 'ceb', 'ph', 'no', 'no', '2019-11-20 11:59:12', '0000-00-00'),
(64, 'Sinhala', 'si', 'si', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(65, 'Slovakian', 'sk', 'sk', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(66, 'Slovenian', 'sl', 'sl', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(67, 'Swahili', 'sw', 'ke', 'no', 'no', '2019-11-20 12:21:57', '0000-00-00'),
(68, 'Sundanese', 'su', 'sd', 'no', 'no', '2019-12-03 11:06:57', '0000-00-00'),
(70, 'Thai', 'th', 'th', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(71, 'Tagalog', 'tl', 'tl', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(72, 'Tamil', 'ta', 'in', 'no', 'no', '2019-11-20 11:40:53', '0000-00-00'),
(74, 'Telugu', 'te', 'in', 'no', 'no', '2019-11-20 11:41:15', '0000-00-00'),
(75, 'Turkish', 'tr', 'tr', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(77, 'Uzbek', 'uz', 'uz', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(79, 'Urdu', 'ur', 'pk', 'no', 'no', '2019-11-20 12:23:57', '0000-00-00'),
(80, 'Finnish', 'fi', 'fi', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(81, 'French', 'fr', 'fr', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(82, 'Hindi', 'hi', 'in', 'no', 'no', '2019-11-20 11:36:34', '0000-00-00'),
(84, 'Czech', 'cs', 'cz', 'no', 'no', '2019-11-20 12:02:36', '0000-00-00'),
(85, 'Swedish', 'sv', 'sv', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(86, 'Scottish', 'gd', 'gd', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(87, 'Estonian', 'et', 'et', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(88, 'Esperanto', 'eo', 'br', 'no', 'no', '2019-11-21 04:49:18', '0000-00-00'),
(89, 'Javanese', 'jv', 'id', 'no', 'no', '2019-11-20 12:18:29', '0000-00-00'),
(90, 'Japanese', 'ja', 'jp', 'no', 'no', '2019-11-20 12:14:39', '0000-00-00'),
(91, 'Polish', 'pl', 'pl', 'yes', 'no', '2020-04-05 14:09:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `type`, `is_active`) VALUES
(1, 'Annual Leave', 'yes'),
(2, 'Casual Leave', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_bad_stock`
--

CREATE TABLE `medicine_bad_stock` (
  `id` int(11) NOT NULL,
  `pharmacy_id` int(11) NOT NULL,
  `outward_date` date NOT NULL,
  `expiry_date` varchar(200) NOT NULL,
  `batch_no` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_batch_details`
--

CREATE TABLE `medicine_batch_details` (
  `id` int(11) NOT NULL,
  `supplier_bill_basic_id` varchar(100) NOT NULL,
  `medicine_category_id` varchar(200) NOT NULL,
  `pharmacy_id` int(100) NOT NULL,
  `inward_date` datetime NOT NULL,
  `expiry_date` varchar(100) DEFAULT NULL,
  `expiry_date_format` date NOT NULL,
  `batch_no` varchar(100) NOT NULL,
  `packing_qty` varchar(100) NOT NULL,
  `purchase_rate_packing` varchar(100) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `mrp` varchar(11) DEFAULT NULL,
  `purchase_price` varchar(200) NOT NULL,
  `sale_rate` varchar(11) DEFAULT NULL,
  `batch_amount` decimal(10,2) NOT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `available_quantity` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicine_batch_details`
--

INSERT INTO `medicine_batch_details` (`id`, `supplier_bill_basic_id`, `medicine_category_id`, `pharmacy_id`, `inward_date`, `expiry_date`, `expiry_date_format`, `batch_no`, `packing_qty`, `purchase_rate_packing`, `quantity`, `mrp`, `purchase_price`, `sale_rate`, `batch_amount`, `amount`, `available_quantity`, `created_at`) VALUES
(1, '1', '1', 1, '2021-08-28 16:30:00', 'Aug/2022', '2022-08-01', '5621', '1', '', '10', '80', '80', '100', '0.00', '800', '0', '2021-08-29 11:31:21'),
(2, '2', '1', 1, '2021-08-31 12:43:00', 'Dec/2022', '2022-12-01', '1111', '1', '', '50', '100', '90', '100', '0.00', '4500', '34', '2021-08-31 07:51:44'),
(3, '2', '1', 2, '2021-08-31 12:43:00', 'Jul/2022', '2022-07-01', '1236', '1', '', '50', '20', '15', '20', '0.00', '750', '30', '2021-08-31 07:51:44'),
(4, '2', '1', 3, '2021-08-31 12:43:00', 'Dec/2021', '2021-12-01', '1254', '1', '', '100', '25', '20', '25', '0.00', '2000', '100', '2021-08-31 07:51:44'),
(5, '2', '1', 4, '2021-08-31 12:43:00', 'Oct/2021', '2021-10-01', '6312', '1', '', '50', '30', '25', '30', '0.00', '1250', '50', '2021-08-31 07:51:44'),
(6, '2', '1', 5, '2021-08-31 12:43:00', 'Nov/2021', '2021-12-01', '6321', '1', '', '40', '26', '20', '26', '0.00', '800', '40', '2021-08-31 07:51:44'),
(7, '2', '1', 6, '2021-08-31 12:43:00', 'Nov/2021', '2021-12-01', '5216', '1', '', '50', '25', '20', '25', '0.00', '1000', '50', '2021-08-31 07:51:44'),
(8, '2', '1', 7, '2021-08-31 12:43:00', 'Nov/2021', '2021-12-01', '5624', '1', '', '100', '50', '40', '50', '0.00', '4000', '100', '2021-08-31 07:51:44'),
(9, '2', '1', 8, '2021-08-31 12:43:00', 'Aug/2021', '2021-08-01', '5612', '1', '', '50', '60', '50', '60', '0.00', '2500', '50', '2021-08-31 07:51:44'),
(10, '2', '1', 9, '2021-08-31 12:43:00', 'Dec/2021', '2021-12-01', '56485', '1', '', '100', '20', '15', '20', '0.00', '1500', '100', '2021-08-31 07:51:44'),
(11, '2', '1', 10, '2021-08-31 12:43:00', 'Nov/2021', '2021-12-01', '5648', '1', '', '80', '35', '30', '35', '0.00', '2400', '80', '2021-08-31 07:51:44'),
(12, '2', '1', 11, '2021-08-31 12:43:00', 'Dec/2021', '2021-12-01', '8979', '1', '', '100', '40', '35', '40', '0.00', '3500', '100', '2021-08-31 07:51:44'),
(13, '3', '1', 1, '2021-12-14 12:38:00', 'Feb/2021', '2021-02-01', '34242', '10', '', '2', '20', '20', '25', '0.00', '40', '2', '2021-12-15 07:34:57'),
(14, '4', '1', 1, '2022-02-07 20:06:00', 'Dec/2022', '2022-12-01', '1111', '1', '', '10', '80', '70', '85', '0.00', '700', '10', '2022-02-08 15:07:15'),
(15, '4', '1', 2, '2022-02-07 20:06:00', 'Nov/2022', '2022-11-01', '2222', '1', '', '20', '175', '150', '180', '0.00', '3000', '19', '2022-02-08 15:07:15'),
(16, '5', '1', 1127, '2022-02-22 01:16:00', 'Dec/2024', '2024-12-01', '11111', '30', '', '20', '150', '90', '150', '0.00', '1800', '20', '2022-02-21 20:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category`
--

CREATE TABLE `medicine_category` (
  `id` int(11) NOT NULL,
  `medicine_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicine_category`
--

INSERT INTO `medicine_category` (`id`, `medicine_category`) VALUES
(1, 'Medicine'),
(2, 'Surgical ');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_dosage`
--

CREATE TABLE `medicine_dosage` (
  `id` int(11) NOT NULL,
  `medicine_category_id` int(11) NOT NULL,
  `dosage_form` varchar(100) NOT NULL,
  `dosage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicine_dosage`
--

INSERT INTO `medicine_dosage` (`id`, `medicine_category_id`, `dosage_form`, `dosage`) VALUES
(1, 1, '', '1-0-1'),
(2, 1, '', '1-1-1'),
(3, 1, '', '2-0-2'),
(4, 1, '', '2-2-2'),
(5, 1, '', '1-0-0'),
(6, 1, '', '0-0-1');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `file` varchar(200) NOT NULL,
  `group_list` text DEFAULT NULL,
  `user_list` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notification_roles`
--

CREATE TABLE `notification_roles` (
  `id` int(11) NOT NULL,
  `send_notification_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notification_setting`
--

CREATE TABLE `notification_setting` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` int(11) DEFAULT 0,
  `is_sms` int(11) DEFAULT 0,
  `is_mobileapp` int(11) NOT NULL,
  `is_notification` int(11) NOT NULL,
  `display_notification` int(11) NOT NULL,
  `display_sms` int(11) NOT NULL,
  `template` longtext NOT NULL,
  `subject` text NOT NULL,
  `variables` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification_setting`
--

INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_mobileapp`, `is_notification`, `display_notification`, `display_sms`, `template`, `subject`, `variables`, `created_at`) VALUES
(1, 'opd_patient_registration', 1, 1, 0, 0, 1, 1, 'Dear {{patient_name}} your OPD Registration is successful at Hospital Name with Patient Id  {{patient_unique_id}} and OPD No  {{opd_no}}', 'OPD Patient', '{{patient_name}} {{mobileno}} {{email}}  {{dob}} {{gender}}  {{patient_unique_id}}    {{opd_no}}', '2022-02-28 20:09:50'),
(2, 'ipd_patient_registration', 1, 0, 0, 0, 1, 1, 'Dear {{patient_name}} your IPD Registration is successful at Hospital Name with Patient Id  {{patient_unique_id}} and IPD No {{ipd_no}}', 'IPD Patient', '{{patient_name}} {{mobileno}} {{email}}  {{dob}} {{gender}}  {{patient_unique_id}}   {{ipd_no}} ', '2020-11-10 06:59:59'),
(3, 'ipd_patient_discharged', 1, 0, 0, 0, 1, 1, 'IPD Patient {{patient_name}} is now discharged from Hospital Name Total Charges: {{currency_symbol}} {{charge_amount}}  Total payment: {{currency_symbol}} {{paid_amount}} Your net payable bill amount was {{currency_symbol}} {{net_amount}}', 'IPD Discharged Patient', '{{patient_name}} {{mobileno}} {{email}} {{dob}} {{gender}} {{patient_unique_id}} {{currency_symbol}} {{charge_amount}} {{paid_amount}} {{net_amount}}', '2020-11-10 06:59:59'),
(4, 'opd_patient_revisit', 1, 1, 0, 0, 1, 1, 'Dear {{patient_name}} your OPD Registration is successful at Hospital Name with Patient Id  {{patient_unique_id}} and OPD No {{opd_no}}\r\n\r\n{{patient_name}} {{mobileno}} {{email}} {{dob}} {{gender}} {{patient_unique_id}} {{opd_no}}', 'OPD Patient Revisit', '{{patient_name}} {{mobileno}} {{email}}  {{dob}} {{gender}}  {{patient_unique_id}} {{opd_no}} ', '2021-08-31 10:22:45'),
(5, 'login_credential', 1, 1, 0, 0, 0, 1, 'Hello {{display_name}} your login details for Url: {{url}} Username:  {{username}} Password: {{password}} {{email}}', 'Login Patient', '{{display_name}}    {{url}} {{username}} {{password}} {{email}}', '2021-08-31 10:22:45'),
(6, 'appointment_approved', 1, 1, 0, 0, 1, 1, 'Dear {{patient_name}} your appointment with {{staff_name}} {{staff_surname}} is confirmed on {{date}} with appointment no: {{appointment_no}}', 'Appointment Approved', '{{patient_name}} {{mobileno}} {{email}}   {{gender}}    {{staff_name}}\r\n{{staff_surname}}  {{date}} {{appointment_no}}', '2021-08-31 10:22:45'),
(7, 'live_meeting', 1, 1, 0, 0, 0, 1, 'Dear staff, your live meeting {{title}} has been scheduled on {{date}} for the duration of {{duration}} minute, please do not share the link to any body.\r\n\r\n{{title}} {{date}} {{duration}} {{employee_id}} {{department}} {{designation}} {{name}} {{contact_no}} {{email}}', 'Live Meeting', '{{title}} {{date}} {{duration}} {{employee_id}} {{department}} {{designation}} {{name}} {{contact_no}} {{email}}', '2021-08-31 10:22:45'),
(8, 'live_consult', 1, 1, 0, 0, 1, 1, 'Dear patient, your live consultation {{title}} has been scheduled on {{date}} for the duration of {{duration}} minute, please do not share the link to any body.\r\n\r\n{{title}} {{date}} {{duration}}', 'Live Consultation', '{{title}} {{date}} {{duration}}', '2021-08-31 10:22:45'),
(9, 'opd_patient_discharged', 1, 1, 0, 0, 1, 1, 'OPD No {{opd_no}}  {{patient_name}} is now discharged from Hospital Name Your net payable bill amount was {{currency_symbol}}  \r\n {{billing_amount}}\r\n\r\n\r\n{{patient_name}} {{mobileno}} {{email}} {{dob}} {{gender}} {{patient_unique_id}} {{opd_no}} {{currency_symbol}} {{billing_amount}}', 'OPD Discharged Patient', '{{patient_name}} {{mobileno}} {{email}} {{dob}} {{gender}} {{patient_unique_id}} {{opd_no}}{{currency_symbol}} {{billing_amount}}', '2021-08-31 10:22:45'),
(10, 'forgot_password', 1, 0, 0, 0, 0, 0, 'Dear  {{display_name}} , Recently a request was submitted to reset password for your account. If you didn\'t make the request, just ignore this email. Otherwise you can reset your password using this link <a href=\'{{resetpasslink}}\'>Click here to reset your password</a>, if you\'re having trouble clicking the password reset button, copy and paste the URL below into your web browser. {{resetpasslink}} <br> Regards,  <br>\r\n{{site_url}}', 'Password Update Request', '{{display_name}}  {{email}}  {{resetpasslink} {{site_url}}', '2020-11-07 12:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `opd_billing`
--

CREATE TABLE `opd_billing` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `opd_id` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `other_charge` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `tax` decimal(15,2) NOT NULL,
  `gross_total` decimal(15,2) NOT NULL,
  `net_amount` decimal(15,2) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL,
  `generated_by` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opd_details`
--

CREATE TABLE `opd_details` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `opd_no` varchar(100) NOT NULL,
  `appointment_date` datetime NOT NULL,
  `case_type` varchar(200) NOT NULL,
  `casualty` varchar(200) NOT NULL,
  `symptoms` text DEFAULT NULL,
  `bp` varchar(200) NOT NULL,
  `spo2` varchar(200) NOT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `pulse` varchar(200) NOT NULL,
  `temperature` varchar(200) NOT NULL,
  `respiration` varchar(200) NOT NULL,
  `known_allergies` varchar(200) NOT NULL,
  `note_remark` varchar(225) DEFAULT NULL,
  `refference` varchar(100) NOT NULL,
  `cons_doctor` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `tax` decimal(15,2) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `header_note` varchar(200) NOT NULL,
  `footer_note` varchar(200) NOT NULL,
  `generated_by` int(11) NOT NULL,
  `discharged` varchar(200) NOT NULL,
  `live_consult` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opd_details`
--

INSERT INTO `opd_details` (`id`, `patient_id`, `opd_no`, `appointment_date`, `case_type`, `casualty`, `symptoms`, `bp`, `spo2`, `height`, `weight`, `pulse`, `temperature`, `respiration`, `known_allergies`, `note_remark`, `refference`, `cons_doctor`, `amount`, `tax`, `payment_mode`, `header_note`, `footer_note`, `generated_by`, `discharged`, `live_consult`) VALUES
(1, 2, 'OPDN1', '2021-08-29 16:03:00', 'High Temperature ', 'No', '', '', '', '6', '75', '', '101', '', '', '', '', 2, '2000.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(2, 3, 'OPDN2', '2021-08-29 17:29:00', '', 'No', '', '', '', '5.5', '60', '', '100', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(3, 4, 'OPDN3', '2021-08-31 14:28:00', '', 'No', '', '', '', '5.6', '56', '', '99', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(4, 3, 'OPDN4', '2021-08-31 14:36:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(5, 5, 'OPDN5', '2021-08-31 12:53:00', '', 'No', '', '', '', '5.9', '80', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(6, 6, 'OPDN6', '2021-08-31 15:24:00', '', 'No', '', '', '', '5.4', '54', '', '100', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(7, 6, 'OPDN7', '2021-09-04 15:18:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 2, '500.00', '0.00', 'Cash', '', '', 6, 'no', 'No'),
(8, 6, 'OPDN8', '2021-09-04 15:18:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 2, '500.00', '0.00', 'Cash', '', '', 6, 'no', 'No'),
(9, 8, 'OPDN9', '2021-10-30 15:56:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 2, '500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(10, 9, 'OPDN10', '2021-10-30 16:11:00', '', 'Yes', '', '', '', '', '', '', '', '', '', '', '', 3, '1000.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(11, 5, 'OPDN11', '2021-10-30 16:31:00', '', 'No', '', '', '', '5.9', '80', '', '', '', 'Dust Allergy', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(12, 10, 'OPDN12', '2021-10-30 17:10:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 3, '1000.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(13, 11, 'OPDN13', '2021-10-30 19:14:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 3, '1000.00', '0.00', 'Cash', '<p>dfsh jfkgdsjf</p><p>dsa fds</p>', '<p>Next Visit after 5 days</p>', 1, 'no', 'No'),
(14, 13, 'OPDN14', '2021-11-14 10:40:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 2, '2000.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(15, 14, 'OPDN15', '2021-11-14 10:48:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 7, '1000.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(16, 6, 'OPDN16', '2021-08-31 15:24:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 6, 'no', 'No'),
(17, 6, 'OPDN17', '2021-08-31 15:24:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 6, 'no', 'No'),
(18, 6, 'OPDN18', '2021-08-31 15:24:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 6, 'no', 'No'),
(19, 14, 'OPDN19', '2022-01-16 18:02:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 2, '1000.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(20, 14, 'OPDN20', '2022-01-16 18:06:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 3, '500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(21, 14, 'OPDN21', '2022-01-16 18:06:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 3, '500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(22, 12, 'OPDN22', '2022-01-16 18:09:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 7, '300.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(23, 12, 'OPDN23', '2022-01-18 18:11:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 3, '200.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(24, 15, 'OPDN24', '2022-01-20 10:23:00', '', 'No', '', '120/80', '', '5.9', '75', '', '98', '', '', '', '', 2, '2000.00', '0.00', 'Cash', '', '', 6, 'no', 'No'),
(25, 16, 'OPDN25', '2022-01-20 10:30:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 7, '2000.00', '0.00', 'Cash', '', '', 6, 'no', 'No'),
(26, 17, 'OPDN26', '2022-02-05 13:41:00', 'allergy', 'No', '', '', '', '5.9', '70', '', '98', '', '', '', '', 2, '2000.00', '0.00', 'Cash', '', '<p>next visit after 15 days</p>', 6, 'no', 'No'),
(27, 18, 'OPDN27', '2022-03-11 20:19:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 2, '200.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(28, 19, 'OPDN28', '2022-02-07 22:40:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '1000.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(29, 20, 'OPDN29', '2022-02-08 09:16:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 2, '2000.00', '0.00', 'Cash', '', '', 6, 'no', 'No'),
(30, 21, 'OPDN30', '2022-02-07 09:18:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 3, '2000.00', '0.00', 'Cash', '', '', 6, 'no', 'No'),
(31, 22, 'OPDN31', '2022-02-08 09:27:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '1800.00', '0.00', 'Cash', '', '', 6, 'no', 'No'),
(32, 23, 'OPDN32', '2022-02-08 20:25:00', '', 'No', '', '100-170', '', '5.6', '65', '200', '98', '20', '', '', '', 3, '2000.00', '0.00', 'Cash', '', '', 6, 'no', 'Yes'),
(33, 24, 'OPDN33', '2022-02-14 15:18:00', '', 'No', '', '120/80', '', '', '88', '', '100', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(34, 23, 'OPDN34', '2022-02-14 15:21:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(35, 24, 'OPDN35', '2022-02-14 15:46:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(36, 25, 'OPDN36', '2022-02-14 19:20:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(37, 26, 'OPDN37', '2022-02-19 16:13:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 2, '1000.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(38, 27, 'OPDN38', '2022-02-19 16:30:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '1000.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(39, 27, 'OPDN39', '2022-02-19 16:30:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '1000.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(40, 27, 'OPDN40', '2022-02-19 16:30:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '1000.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(41, 28, 'OPDN41', '2022-02-19 16:59:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(42, 29, 'OPDN42', '2022-02-19 17:16:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2000.00', '0.00', 'Cash', '', '', 1, 'no', 'Yes'),
(43, 29, 'OPDN43', '2022-02-19 17:16:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2000.00', '0.00', 'Cash', '', '', 1, 'no', 'Yes'),
(44, 29, 'OPDN44', '2022-02-19 17:25:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(45, 29, 'OPDN45', '2022-02-20 19:11:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 2, '90.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(46, 29, 'OPDN46', '2022-02-20 19:11:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 2, '90.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(47, 29, 'OPDN47', '2022-02-20 19:11:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 2, '90.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(48, 29, 'OPDN48', '2022-02-21 11:16:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 2, '90.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(49, 25, 'OPDN49', '2022-02-21 11:17:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 7, '90.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(50, 29, 'OPDN50', '2022-02-21 21:09:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 7, '90.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(51, 26, 'OPDN51', '2022-02-21 21:12:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 3, '90.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(52, 30, 'OPDN52', '2022-02-21 22:05:00', '', 'No', '', '', '', '', '', '', '', '', '', '', 'Dr. Imran', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(53, 31, 'OPDN53', '2022-02-24 09:55:00', 'fever', 'No', 'fever with body aches', '80/120', '', '5.8', '70', '70', '99', '80', '', '', '', 2, '1000.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(54, 31, 'OPDN54', '2022-02-24 09:55:00', 'fever', 'No', 'fever with body aches', '80/120', '', '5.8', '70', '70', '99', '80', '', '', '', 2, '1000.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(55, 33, 'OPDN55', '2022-02-22 17:08:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(56, 34, 'OPDN56', '2022-02-23 22:11:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(57, 5, 'OPDN57', '2022-02-24 20:26:00', '', 'No', '', '', '', '5.9', '80', '', '', '', 'Dust Allergy', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(58, 36, 'OPDN58', '2022-02-25 00:20:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(59, 37, 'OPDN59', '2022-02-25 00:23:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(60, 38, 'OPDN60', '2022-02-25 00:29:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(61, 38, 'OPDN61', '2022-02-25 00:29:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(62, 39, 'OPDN62', '2022-02-25 00:47:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(63, 1, 'OPDN63', '2022-02-27 17:16:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 3, '0.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(64, 1, 'OPDN64', '2022-02-27 17:16:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 3, '0.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(65, 1, 'OPDN65', '2022-02-27 17:16:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 3, '0.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(66, 1, 'OPDN66', '2022-02-27 17:16:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 3, '0.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(67, 1, 'OPDN67', '2022-02-27 17:16:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 3, '0.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(68, 1, 'OPDN68', '2022-02-27 17:16:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 3, '0.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(69, 43, 'OPDN69', '2022-02-26 19:03:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(70, 44, 'OPDN70', '2022-02-26 19:19:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(71, 45, 'OPDN71', '2022-02-26 19:21:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(72, 46, 'OPDN72', '2022-02-21 20:49:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(73, 46, 'OPDN73', '2022-02-21 20:49:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(74, 46, 'OPDN74', '2022-03-07 21:01:00', '', 'No', '', '', '', '50', '', '', '', '', '', '', '', 2, '5000.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(75, 47, 'OPDN75', '2022-02-26 21:03:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(76, 48, 'OPDN76', '2022-02-26 21:03:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(77, 58, 'OPDN77', '2022-02-28 23:20:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '1000.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(78, 59, 'OPDN78', '2022-03-01 00:19:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(79, 63, 'OPDN79', '2022-03-09 11:01:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 3, '500.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(80, 63, 'OPDN80', '2022-03-02 11:22:00', '', 'No', '', '20', '10', '20', '20', '', '', '', '', '', '', 2, '10.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(81, 63, 'OPDN81', '2022-03-02 11:22:00', '', 'No', '', '20', '10', '20', '20', '', '', '', '', '', '', 2, '10.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(82, 64, 'OPDN82', '2022-03-02 15:42:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 3, '300.00', '0.00', 'Cash', '', '', 1, 'no', 'No'),
(83, 66, 'OPDN83', '2022-03-06 00:07:00', '', 'No', '', '', '', '', '', '', '', '', '', '', '', 4, '2500.00', '0.00', 'Cash', '', '', 1, 'no', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `opd_patient_charges`
--

CREATE TABLE `opd_patient_charges` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `patient_id` int(11) NOT NULL,
  `opd_id` int(11) NOT NULL,
  `charge_id` int(11) NOT NULL,
  `org_charge_id` int(11) NOT NULL,
  `apply_charge` decimal(15,2) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opd_payment`
--

CREATE TABLE `opd_payment` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `opd_id` int(11) NOT NULL,
  `paid_amount` decimal(15,2) NOT NULL,
  `balance_amount` decimal(15,2) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `note` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `document` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opd_payment`
--

INSERT INTO `opd_payment` (`id`, `patient_id`, `opd_id`, `paid_amount`, `balance_amount`, `total_amount`, `payment_mode`, `note`, `date`, `document`) VALUES
(1, 13, 14, '2000.00', '-2000.00', '0.00', 'Cash', '', '2021-11-14', '');

-- --------------------------------------------------------

--
-- Table structure for table `operation_theatre`
--

CREATE TABLE `operation_theatre` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(200) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `customer_type` varchar(50) DEFAULT NULL,
  `charge_id` varchar(11) DEFAULT NULL,
  `operation_name` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `operation_type` varchar(100) DEFAULT NULL,
  `consultant_doctor` varchar(100) DEFAULT NULL,
  `ass_consultant_1` varchar(50) DEFAULT NULL,
  `ass_consultant_2` varchar(50) DEFAULT NULL,
  `anesthetist` varchar(50) DEFAULT NULL,
  `anaethesia_type` varchar(50) DEFAULT NULL,
  `ot_technician` varchar(100) DEFAULT NULL,
  `ot_assistant` varchar(100) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `height` varchar(200) NOT NULL,
  `pulse` varchar(200) NOT NULL,
  `temperature` varchar(200) NOT NULL,
  `respiration` varchar(200) NOT NULL,
  `weight` varchar(200) NOT NULL,
  `bp` varchar(200) NOT NULL,
  `symptoms` text DEFAULT NULL,
  `apply_charge` decimal(15,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `generated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `operation_theatre`
--

INSERT INTO `operation_theatre` (`id`, `bill_no`, `patient_id`, `customer_type`, `charge_id`, `operation_name`, `date`, `operation_type`, `consultant_doctor`, `ass_consultant_1`, `ass_consultant_2`, `anesthetist`, `anaethesia_type`, `ot_technician`, `ot_assistant`, `result`, `remark`, `height`, `pulse`, `temperature`, `respiration`, `weight`, `bp`, `symptoms`, `apply_charge`, `created_at`, `generated_by`) VALUES
(1, '1', 3, NULL, '1', 'Appendix', '2021-08-31', '', '4', '', '', '', '', 'Kamran', 'Bilal', NULL, '', '5.5', '', '100', '', '60', '', '', '10000.00', '2021-08-30 06:14:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE `organisation` (
  `id` int(11) NOT NULL,
  `organisation_name` varchar(200) NOT NULL,
  `code` varchar(50) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `contact_person_name` varchar(200) NOT NULL,
  `contact_person_phone` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organisation`
--

INSERT INTO `organisation` (`id`, `organisation_name`, `code`, `contact_no`, `address`, `contact_person_name`, `contact_person_phone`) VALUES
(1, 'Ali', '001', '03174923348', 'Islamabad, Pakistan', '', ''),
(2, 'Sehat Card', '002', '03156235654', 'Murre Road Rawalpindi', 'Adil', '03334654645'),
(3, 'Jubilee', '666', '0237427542', '', 'Jamil', '02647242647823');

-- --------------------------------------------------------

--
-- Table structure for table `organisations_charges`
--

CREATE TABLE `organisations_charges` (
  `id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `charge_type` varchar(50) NOT NULL,
  `charge_id` int(11) NOT NULL,
  `org_charge` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organisations_charges`
--

INSERT INTO `organisations_charges` (`id`, `org_id`, `charge_type`, `charge_id`, `org_charge`) VALUES
(1, 1, 'Investigations', 4, '500'),
(2, 1, 'Orphan', 5, ''),
(3, 2, 'COVID19', 6, '500'),
(4, 1, 'COVID19', 6, '200'),
(5, 3, 'Investigations', 7, '700'),
(6, 2, 'Investigations', 7, '800'),
(7, 1, 'Investigations', 7, '600');

-- --------------------------------------------------------

--
-- Table structure for table `ot_consultant_register`
--

CREATE TABLE `ot_consultant_register` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `ins_date` date NOT NULL,
  `ins_time` time NOT NULL,
  `instruction` varchar(200) NOT NULL,
  `cons_doctor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pathology`
--

CREATE TABLE `pathology` (
  `id` int(11) NOT NULL,
  `test_name` varchar(100) DEFAULT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `test_type` varchar(100) DEFAULT NULL,
  `pathology_category_id` varchar(11) NOT NULL,
  `pathology_parameter_id` varchar(100) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `sub_category` varchar(50) NOT NULL,
  `report_days` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `charge_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pathology`
--

INSERT INTO `pathology` (`id`, `test_name`, `short_name`, `test_type`, `pathology_category_id`, `pathology_parameter_id`, `unit`, `sub_category`, `report_days`, `method`, `charge_id`, `created_at`) VALUES
(1, 'Blood CP', 'CP', 'Blood', '1', '', '', '', '', '', 4, '2022-01-20 15:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `pathology_category`
--

CREATE TABLE `pathology_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pathology_category`
--

INSERT INTO `pathology_category` (`id`, `category_name`) VALUES
(1, 'cat Normal Test'),
(2, 'cat COVID 19'),
(3, 'Typhoid');

-- --------------------------------------------------------

--
-- Table structure for table `pathology_parameter`
--

CREATE TABLE `pathology_parameter` (
  `id` int(11) NOT NULL,
  `parameter_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `test_value` varchar(100) CHARACTER SET latin1 NOT NULL,
  `reference_range` varchar(100) CHARACTER SET latin1 NOT NULL,
  `gender` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pathology_parameter`
--

INSERT INTO `pathology_parameter` (`id`, `parameter_name`, `test_value`, `reference_range`, `gender`, `unit`, `description`, `created_at`) VALUES
(1, 'Blood CP', '', '200-500', '', '1', '', '2022-01-20 05:46:59'),
(2, 'COVID19', '', 'POSITIVE/NEGATIVE', '', '3', 'desc ', '2022-02-22 11:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `pathology_parameterdetails`
--

CREATE TABLE `pathology_parameterdetails` (
  `id` int(11) NOT NULL,
  `pathology_id` int(11) NOT NULL,
  `parameter_id` int(11) NOT NULL,
  `created_id` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pathology_report_id` int(11) NOT NULL,
  `pathology_report_value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pathology_parameterdetails`
--

INSERT INTO `pathology_parameterdetails` (`id`, `pathology_id`, `parameter_id`, `created_id`, `pathology_report_id`, `pathology_report_value`) VALUES
(1, 1, 1, '2022-01-20 15:01:39', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `pathology_report`
--

CREATE TABLE `pathology_report` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(200) NOT NULL,
  `pathology_id` int(11) NOT NULL,
  `patient_id` varchar(30) DEFAULT NULL,
  `customer_type` varchar(50) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `consultant_doctor` varchar(10) NOT NULL,
  `reporting_date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pathology_report` varchar(255) DEFAULT NULL,
  `apply_charge` decimal(15,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `generated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pathology_report`
--

INSERT INTO `pathology_report` (`id`, `bill_no`, `pathology_id`, `patient_id`, `customer_type`, `patient_name`, `consultant_doctor`, `reporting_date`, `description`, `pathology_report`, `apply_charge`, `created_at`, `generated_by`) VALUES
(1, '1', 1, '16', NULL, NULL, '2', '2022-01-20', '', '', '500.00', '2022-01-20 15:03:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pathology_report_parameterdetails`
--

CREATE TABLE `pathology_report_parameterdetails` (
  `id` int(11) NOT NULL,
  `pathology_report_id` int(11) NOT NULL,
  `parameter_id` int(11) NOT NULL,
  `pathology_report_value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pathology_report_parameterdetails`
--

INSERT INTO `pathology_report_parameterdetails` (`id`, `pathology_report_id`, `parameter_id`, `pathology_report_value`) VALUES
(1, 1, 1, '150');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `patient_unique_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `admission_date` varchar(100) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `age` varchar(10) NOT NULL,
  `month` varchar(200) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `marital_status` varchar(100) NOT NULL,
  `blood_group` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_address` text DEFAULT NULL,
  `guardian_email` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `discharged` varchar(100) NOT NULL,
  `patient_type` varchar(200) NOT NULL,
  `credit_limit` varchar(50) DEFAULT NULL,
  `organisation` varchar(100) NOT NULL,
  `known_allergies` varchar(200) NOT NULL,
  `old_patient` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `disable_at` date NOT NULL,
  `note` varchar(200) NOT NULL,
  `is_ipd` varchar(200) NOT NULL,
  `app_key` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `patient_unique_id`, `lang_id`, `admission_date`, `patient_name`, `age`, `month`, `image`, `mobileno`, `email`, `dob`, `gender`, `marital_status`, `blood_group`, `address`, `guardian_name`, `guardian_phone`, `guardian_address`, `guardian_email`, `is_active`, `discharged`, `patient_type`, `credit_limit`, `organisation`, `known_allergies`, `old_patient`, `created_at`, `disable_at`, `note`, `is_ipd`, `app_key`) VALUES
(1, 1001, 0, NULL, 'Muhammad Bilal', '30', '3', 'uploads/patient_images/1.jpg', '031798976554', '', '1990-11-22', 'Male', 'Single', 'B+', '', 'Muhammad Adil', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-26 12:17:27', '0000-00-00', '', '', ''),
(2, 1002, 0, NULL, 'Ikram Ullah', '30', '6', 'uploads/patient_images/2.jpg', '03174923348', 'ikram@gmail.com', '1991-02-28', 'Male', 'Single', 'B+', '', 'Jabbar Khan', NULL, NULL, '', 'yes', 'yes', '', NULL, '', '', 'No', '2021-08-30 11:34:35', '0000-00-00', '', 'yes', ''),
(3, 1003, 0, NULL, 'Kalsoom', '20', '4', 'uploads/patient_images/no_image.png', '', '', '2000-12-22', 'Female', 'Single', 'A+', '', 'Jamil', NULL, NULL, '', 'yes', 'yes', 'OT', NULL, '', 'Dust Allergy,', 'No', '2021-08-30 11:44:04', '0000-00-00', 'TB since 2012, complete course ', 'yes', ''),
(4, 1004, 0, NULL, 'Sumra', '21', '0', 'uploads/patient_images/no_image.png', '03115386956', 'sumrakhan95@gmail.com', '2000-08-18', 'Female', 'Single', 'B+', '', 'Khan Afsar', NULL, NULL, '', 'yes', 'yes', '', NULL, '', '', 'No', '2021-08-30 12:09:17', '0000-00-00', '', 'yes', ''),
(5, 1005, 0, NULL, 'Adil Jameel', '22', '1', 'uploads/patient_images/no_image.png', '03174923348', 'engr.ali007@outlook.com', '1999-07-08', 'Male', 'Married', 'B+', 'Islamabad, Pakistan', 'Jameel Khan', NULL, NULL, '', 'yes', 'no', '', NULL, '', 'Dust Allergy', 'No', '2021-08-31 07:53:38', '0000-00-00', '', '', ''),
(6, 1006, 0, NULL, 'Nauman', '29', '4', 'uploads/patient_images/no_image.png', '+923165122511', 'safinoman66@gmail.com', '1992-04-02', 'Male', 'Single', 'B+', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2021-08-31 10:27:52', '0000-00-00', '', '', ''),
(7, 1007, 0, NULL, 'maqsood', '', '', 'uploads/patient_images/no_image.png', '03009716671', '', '0000-00-00', 'Male', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2021-09-04 10:02:57', '0000-00-00', 'abc', '', ''),
(8, 1008, 0, NULL, 'Saleem', '35', '', 'uploads/patient_images/no_image.png', '031654564665', 'saleem@gmail.com', '1970-01-01', 'Male', 'Married', 'B+', 'Jinnah Avenue', 'Waqar', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2021-10-30 10:57:19', '0000-00-00', '', '', ''),
(9, 1009, 0, NULL, 'Waseem', '27', '4', 'uploads/patient_images/no_image.png', '0321654656', '', '1994-06-14', 'Male', 'Married', 'B+', 'Jinnah Avenue', 'Najeeb', NULL, NULL, '', 'yes', 'no', '', NULL, '1', '', 'No', '2021-10-30 11:11:38', '0000-00-00', '', '', ''),
(10, 1010, 0, NULL, 'Kaleem', '26', '3', 'uploads/patient_images/no_image.png', '0154546465', '', '1995-07-12', 'Male', 'Married', 'B+', 'Jinnah Avenue', 'Naseer', NULL, NULL, '', 'yes', 'yes', '', NULL, '', '', 'No', '2022-02-05 17:49:39', '0000-00-00', '', 'yes', ''),
(11, 1011, 0, NULL, 'Basit', '13', '0', 'uploads/patient_images/no_image.png', '032165465', '', '2008-10-22', 'Male', 'Single', 'B+', '', 'Khan', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2021-10-30 14:14:58', '0000-00-00', '', '', ''),
(12, 1012, 0, NULL, 'Akram', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-01-16 15:46:28', '0000-00-00', '', '', ''),
(13, 1013, 0, NULL, 'Zeshan', '25', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', 'Male', 'Married', 'B+', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2021-11-14 05:41:20', '0000-00-00', '', '', ''),
(14, 1014, 0, NULL, 'Javed', '30', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', 'Male', 'Married', 'B+', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-01-16 15:43:26', '0000-00-00', '', 'yes', ''),
(15, 1015, 0, NULL, 'Saleem Khan', '22', '1', 'uploads/patient_images/no_image.png', '0315648797', 'saleem@gmail.com', '1999-02-16', 'Male', 'Single', 'A+', 'G-10, Islamabad', 'Wajid Ali', NULL, NULL, '', 'yes', 'no', '', NULL, '1', 'Dust Allergy ', 'No', '2022-01-20 05:24:04', '0000-00-00', '', '', ''),
(16, 1016, 0, NULL, 'Bilal', '11', '11', 'uploads/patient_images/no_image.png', '0315489787', '', '2010-12-16', 'Male', 'Single', 'B+', 'Islamabad', 'Qasim', NULL, NULL, '', 'yes', 'no', '', NULL, '1', '', 'No', '2022-02-24 05:57:41', '0000-00-00', '', 'yes', ''),
(17, 1017, 0, NULL, 'Noman', '25', '5', 'uploads/patient_images/no_image.png', '0321548489', '', '1996-07-18', 'Male', 'Single', 'B+', '', 'Adnan', NULL, NULL, '', 'yes', 'no', '', NULL, '', 'dust allergy', 'No', '2022-02-03 08:42:33', '0000-00-00', '', '', ''),
(18, 1018, 0, NULL, 'yameen', '', '', 'uploads/patient_images/no_image.png', '123123123', '', '0000-00-00', 'Male', 'Married', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-04 15:19:30', '0000-00-00', '', '', ''),
(19, 1019, 0, NULL, 'Yaqoob', '12', '5', 'uploads/patient_images/no_image.png', '', '', '2009-07-09', 'Male', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-05 17:40:28', '0000-00-00', '', '', ''),
(20, 1020, 0, NULL, 'Jalal Ahmed', '22', '0', 'uploads/patient_images/no_image.png', '', '', '2000-02-01', 'Male', 'Married', 'AB+', '', 'Waqas', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-07 04:16:57', '0000-00-00', '', '', ''),
(21, 1021, 0, NULL, 'wajahat', '21', '1', 'uploads/patient_images/no_image.png', '', '', '2000-03-02', 'Male', 'Married', 'O+', '', 'ikram', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-07 04:19:06', '0000-00-00', '', '', ''),
(22, 1022, 0, NULL, 'Jhangir', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-07 04:28:23', '0000-00-00', '', '', ''),
(23, 1023, 0, NULL, 'Shumaila Imran', '21', '0', 'uploads/patient_images/23.jpg', '0315897984', '', '2000-02-16', 'Female', 'Married', 'B+', 'G-10 Markaz Islamabad', 'Imran Khan', NULL, NULL, '', 'yes', 'no', '', NULL, '', 'Dust Allergy', 'No', '2022-02-08 15:25:41', '0000-00-00', '', '', ''),
(24, 1024, 0, NULL, 'Saleem', '23', '1', 'uploads/patient_images/no_image.png', '', '', '1999-01-07', 'Male', 'Married', 'O+', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-14 10:19:18', '0000-00-00', '', '', ''),
(25, 1025, 0, NULL, 'yasmeen', '18', '3', 'uploads/patient_images/no_image.png', '', '', '2003-05-04', 'Female', 'Single', 'A+', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-14 14:20:47', '0000-00-00', '', '', ''),
(26, 1026, 0, NULL, 'Faizan', '32', '0', 'uploads/patient_images/no_image.png', '03335042703', '', '1989-02-22', 'Male', 'Married', 'O+', '', 'Ali', NULL, NULL, '', 'yes', 'yes', '', NULL, '', '', 'No', '2022-02-23 17:31:07', '0000-00-00', '', 'yes', ''),
(27, 1027, 0, NULL, 'Hassan', '23', '1', 'uploads/patient_images/no_image.png', '', '', '1999-01-04', 'Male', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-19 11:31:07', '0000-00-00', '', '', ''),
(28, 1028, 0, NULL, 'asdf adsfasd', '', '', 'uploads/patient_images/no_image.png', '03000237778', '', '0000-00-00', '', '', '', '51 SOLWAY ST WEST', '', NULL, NULL, '', 'yes', 'yes', '', NULL, '', '', 'No', '2022-02-24 05:56:45', '0000-00-00', '', 'yes', ''),
(29, 1029, 0, NULL, 'Owais Maqsood', '35', '', 'uploads/patient_images/no_image.png', '+923000237778', 'awaisnic@yahoo.com', '0000-00-00', 'Male', '', '', 'Madina town', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-20 14:12:04', '0000-00-00', '', 'yes', ''),
(30, 1030, 0, NULL, 'Muhammad Ibrahim', '26', '1', 'uploads/patient_images/no_image.png', '03332654654', 'ibrahim@delta.com', '1995-03-09', 'Male', 'Married', 'B+', 'Blue Area', 'Abdullah', NULL, NULL, '', 'yes', 'no', '', NULL, '2', 'Dust Allergy', 'No', '2022-02-21 17:05:37', '0000-00-00', 'Old Astma', '', ''),
(31, 1031, 0, NULL, 'asad ali', '32', '1', 'uploads/patient_images/no_image.png', '05550000000', 'abc@gmail.com', '1990-01-01', 'Male', 'Single', 'B+', 'sector abc isb', 'ali ahmad', NULL, NULL, '', 'yes', 'no', '', NULL, '2', '', 'No', '2022-02-21 20:06:00', '0000-00-00', '', '', ''),
(32, 1032, 0, NULL, 'jamil', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-22 11:03:13', '0000-00-00', '', '', ''),
(33, 1033, 0, NULL, 'Alishan', '23', '0', 'uploads/patient_images/no_image.png', '', '', '1999-02-02', 'Male', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '2', '', 'No', '2022-02-23 16:15:42', '0000-00-00', '', '', ''),
(34, 1034, 0, NULL, 'Saleem', '23', '10', 'uploads/patient_images/no_image.png', '', '', '1998-12-28', 'Male', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-23 17:12:36', '0000-00-00', '', '', ''),
(35, 1035, 0, NULL, 'Bilal', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-24 13:19:56', '0000-00-00', '', '', ''),
(36, 1036, 0, NULL, 'Umair', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-24 19:20:22', '0000-00-00', '', '', ''),
(37, 1037, 0, NULL, 'Umar', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-24 19:25:13', '0000-00-00', '', '', ''),
(38, 1038, 0, NULL, 'Jamal', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-24 19:29:24', '0000-00-00', '', '', ''),
(39, 1039, 0, NULL, 'haroon', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-24 19:47:37', '0000-00-00', '', '', ''),
(40, 1040, 0, NULL, 'Haris', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-25 14:30:36', '0000-00-00', '', '', ''),
(41, 1041, 0, NULL, 'Raheel', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-25 14:59:31', '0000-00-00', '', '', ''),
(42, 1042, 0, NULL, 'Tahir', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-25 15:09:52', '0000-00-00', '', '', ''),
(43, 1043, 0, NULL, 'Rizwan', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-26 14:05:25', '0000-00-00', '', '', ''),
(44, 1044, 0, NULL, 'Yaseen', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-26 14:19:17', '0000-00-00', '', '', ''),
(45, 1045, 0, NULL, 'Toqeer', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-26 14:21:50', '0000-00-00', '', '', ''),
(46, 1046, 0, NULL, 'Yasmeen', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-26 15:49:18', '0000-00-00', '', '', ''),
(47, 1047, 0, NULL, 'Jasim', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-26 16:03:06', '0000-00-00', '', '', ''),
(48, 1048, 0, NULL, 'Haris', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-26 16:07:02', '0000-00-00', '', '', ''),
(49, 1049, 0, NULL, 'uneed', '', '', 'uploads/patient_images/no_image.png', '00923335702766', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-26 16:18:00', '0000-00-00', '', '', ''),
(50, 1050, 0, NULL, 'kkk', '', '', 'uploads/patient_images/no_image.png', '00923335702766', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-26 16:19:07', '0000-00-00', '', '', ''),
(51, 1051, 0, NULL, 'hhhh', '', '', 'uploads/patient_images/no_image.png', '00923335702766', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-26 16:39:43', '0000-00-00', '', '', ''),
(52, 1052, 0, NULL, 'jjj', '', '', 'uploads/patient_images/no_image.png', '00923335702766', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-26 16:44:46', '0000-00-00', '', '', ''),
(53, 1053, 0, NULL, 'fff', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-26 17:05:36', '0000-00-00', '', '', ''),
(54, 1054, 0, NULL, 'abdullah', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-26 17:17:14', '0000-00-00', '', '', ''),
(55, 1055, 0, NULL, 'jjjj', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-26 17:20:38', '0000-00-00', '', '', ''),
(56, 1056, 0, NULL, 'yyttyyty', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-26 17:21:56', '0000-00-00', '', '', ''),
(57, 1057, 0, NULL, 'Sufyan Naveed', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', 'I8 Markaz', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-26 18:38:15', '0000-00-00', '', '', ''),
(58, 1058, 0, NULL, 'Sufyan Naveed', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', 'I8 Markaz', '', NULL, NULL, '', 'yes', 'no', '', NULL, '2', '', 'No', '2022-02-28 18:21:08', '0000-00-00', '', '', ''),
(59, 1059, 0, NULL, 'Abdul kareem', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-02-28 19:19:43', '0000-00-00', '', '', ''),
(60, 1060, 0, NULL, 'mobin', '', '', 'uploads/patient_images/no_image.png', '00923335702766', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-28 20:08:51', '0000-00-00', '', '', ''),
(61, 1061, 0, NULL, 'mmm', '', '', 'uploads/patient_images/no_image.png', '00923335702766', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-28 20:10:15', '0000-00-00', '', '', ''),
(62, 1062, 0, NULL, 'jjjyy', '', '', 'uploads/patient_images/no_image.png', '+923335702766', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-02-28 20:12:39', '0000-00-00', '', '', ''),
(63, 1063, 0, NULL, 'Sufyan Naveed', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', 'I8 Markaz', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-03-01 06:02:09', '0000-00-00', '', '', ''),
(64, 1064, 0, NULL, 'Zafir', '25', '', 'uploads/patient_images/no_image.png', '03345056135', '', '0000-00-00', 'Male', '', 'O+', 'Village dhok ser tehsil pindi gheb district attock', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-03-02 10:43:47', '0000-00-00', '', '', ''),
(65, 1065, 0, NULL, 'Mohammad Nabeel', '35', '', 'uploads/patient_images/no_image.png', '03005934314', 'nabeel.links@gmail.com', '0000-00-00', 'Male', '', '', 'Peshawar', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', '', '2022-03-02 15:54:26', '0000-00-00', '', '', ''),
(66, 1066, 0, NULL, 'Jalil', '', '', 'uploads/patient_images/no_image.png', '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'No', '2022-03-05 19:07:09', '0000-00-00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `patient_charges`
--

CREATE TABLE `patient_charges` (
  `id` int(11) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `ipd_id` int(11) NOT NULL,
  `charge_id` int(11) DEFAULT NULL,
  `org_charge_id` int(11) DEFAULT NULL,
  `apply_charge` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient_charges`
--

INSERT INTO `patient_charges` (`id`, `date`, `patient_id`, `ipd_id`, `charge_id`, `org_charge_id`, `apply_charge`, `created_at`) VALUES
(1, '2021-08-30', 2, 2, 1, 0, '10000', '2021-08-30 00:00:00'),
(2, '2021-08-28', 3, 1, 1, 0, '10000', '2021-08-30 00:00:00'),
(3, '2021-08-27', 3, 1, 3, 0, '5000', '2021-08-30 00:00:00'),
(4, '2021-08-30', 4, 3, 2, 0, '1000', '2021-08-30 00:00:00'),
(5, '2021-08-30', 4, 3, 1, 0, '10000', '2021-08-30 00:00:00'),
(6, '2022-02-05', 10, 6, 4, 0, '500', '2022-02-05 00:00:00'),
(7, '2022-02-07', 16, 5, 4, 1, '2000', '2022-02-07 00:00:00'),
(8, '2022-02-07', 16, 5, 5, 2, '500', '2022-02-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `patient_timeline`
--

CREATE TABLE `patient_timeline` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `ipd_id` int(11) NOT NULL,
  `paid_amount` decimal(15,2) NOT NULL,
  `balance_amount` decimal(15,2) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `note` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `document` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `patient_id`, `ipd_id`, `paid_amount`, `balance_amount`, `total_amount`, `payment_mode`, `note`, `date`, `document`) VALUES
(1, 2, 2, '15000.00', '-5000.00', '10000.00', 'Cash', '', '2021-08-30', ''),
(2, 3, 1, '15000.00', '0.00', '15000.00', 'Cash', '', '2021-08-30', ''),
(3, 4, 3, '5000.00', '-4000.00', '1000.00', 'Cash', '', '2021-08-30', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(200) NOT NULL,
  `api_username` varchar(200) DEFAULT NULL,
  `api_secret_key` varchar(200) NOT NULL,
  `salt` varchar(200) NOT NULL,
  `api_publishable_key` varchar(200) NOT NULL,
  `paytm_website` varchar(255) NOT NULL,
  `paytm_industrytype` varchar(255) NOT NULL,
  `api_password` varchar(200) DEFAULT NULL,
  `api_signature` varchar(200) DEFAULT NULL,
  `api_email` varchar(200) DEFAULT NULL,
  `paypal_demo` varchar(100) NOT NULL,
  `account_no` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `payment_type`, `api_username`, `api_secret_key`, `salt`, `api_publishable_key`, `paytm_website`, `paytm_industrytype`, `api_password`, `api_signature`, `api_email`, `paypal_demo`, `account_no`, `is_active`, `created_at`) VALUES
(1, 'pesapal', NULL, '', '', '', '', '', NULL, NULL, NULL, '', '', 'no', '2020-11-04 23:20:40'),
(2, 'ipayafrica', NULL, '', '', '', '', '', NULL, NULL, NULL, '', '', 'no', '2020-11-04 23:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `payslip_allowance`
--

CREATE TABLE `payslip_allowance` (
  `id` int(11) NOT NULL,
  `payslip_id` int(11) NOT NULL,
  `allowance_type` varchar(200) NOT NULL,
  `amount` float NOT NULL,
  `staff_id` int(11) NOT NULL,
  `cal_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permission_category`
--

CREATE TABLE `permission_category` (
  `id` int(11) NOT NULL,
  `perm_group_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) DEFAULT NULL,
  `enable_view` int(11) DEFAULT 0,
  `enable_add` int(11) DEFAULT 0,
  `enable_edit` int(11) DEFAULT 0,
  `enable_delete` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_category`
--

INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES
(9, 3, 'Income', 'income', 1, 1, 1, 1, '2018-06-22 10:23:21'),
(10, 3, 'Income Head', 'income_head', 1, 1, 1, 1, '2018-06-22 10:22:44'),
(12, 4, 'Expense', 'expense', 1, 1, 1, 1, '2018-06-22 10:24:06'),
(13, 4, 'Expense Head', 'expense_head', 1, 1, 1, 1, '2018-06-22 10:23:47'),
(27, 8, 'Upload Content', 'upload_content', 1, 1, 0, 1, '2018-06-22 10:33:19'),
(31, 10, 'Issue Item', 'issue_item', 1, 1, 0, 1, '2018-12-17 09:55:14'),
(32, 10, 'Item Stock', 'item_stock', 1, 1, 1, 1, '2018-06-22 10:35:17'),
(33, 10, 'Item', 'item', 1, 1, 1, 1, '2018-06-22 10:35:40'),
(34, 10, 'Store', 'store', 1, 1, 1, 1, '2018-06-22 10:36:02'),
(35, 10, 'Supplier', 'supplier', 1, 1, 1, 1, '2018-06-22 10:36:25'),
(43, 13, 'Notice Board', 'notice_board', 1, 1, 1, 1, '2018-06-22 10:41:17'),
(44, 13, 'Email / SMS', 'email_sms', 1, 0, 0, 0, '2018-06-22 10:40:54'),
(48, 14, 'OPD Report', 'opd_report', 1, 0, 0, 0, '2018-12-18 08:59:18'),
(53, 15, 'Languages', 'languages', 0, 1, 0, 0, '2018-06-22 10:43:18'),
(54, 15, 'General Setting', 'general_setting', 1, 0, 1, 0, '2018-07-05 09:08:35'),
(56, 15, 'Notification Setting', 'notification_setting', 1, 0, 1, 0, '2018-07-05 09:08:41'),
(57, 15, 'SMS Setting', 'sms_setting', 1, 0, 1, 0, '2018-07-05 09:08:47'),
(58, 15, 'Email Setting', 'email_setting', 1, 0, 1, 0, '2018-07-05 09:08:51'),
(59, 15, 'Front CMS Setting', 'front_cms_setting', 1, 0, 1, 0, '2018-07-05 09:08:55'),
(60, 15, 'Payment Methods', 'payment_methods', 1, 0, 1, 0, '2018-07-05 09:08:59'),
(61, 16, 'Menus', 'menus', 1, 1, 0, 1, '2018-07-09 03:50:06'),
(62, 16, 'Media Manager', 'media_manager', 1, 1, 0, 1, '2018-07-09 03:50:26'),
(63, 16, 'Banner Images', 'banner_images', 1, 1, 0, 1, '2018-06-22 10:46:02'),
(64, 16, 'Pages', 'pages', 1, 1, 1, 1, '2018-06-22 10:46:21'),
(65, 16, 'Gallery', 'gallery', 1, 1, 1, 1, '2018-06-22 10:47:02'),
(66, 16, 'Event', 'event', 1, 1, 1, 1, '2018-06-22 10:47:20'),
(67, 16, 'News', 'notice', 1, 1, 1, 1, '2018-07-03 08:39:34'),
(80, 17, 'Visitor Book', 'visitor_book', 1, 1, 1, 1, '2018-06-22 10:48:58'),
(81, 17, 'Phone Call Log', 'phone_call_log', 1, 1, 1, 1, '2018-06-22 10:50:57'),
(82, 17, 'Postal Dispatch', 'postal_dispatch', 1, 1, 1, 1, '2018-06-22 10:50:21'),
(83, 17, 'Postal Receive', 'postal_receive', 1, 1, 1, 1, '2018-06-22 10:50:04'),
(84, 17, 'Complain', 'complain', 1, 1, 1, 1, '2018-12-19 09:11:37'),
(85, 17, 'Setup Front Office', 'setup_front_office', 1, 1, 1, 1, '2018-11-15 00:49:58'),
(86, 18, 'Staff', 'staff', 1, 1, 1, 1, '2018-06-22 10:53:31'),
(87, 18, 'Disable Staff', 'disable_staff', 1, 0, 0, 0, '2018-06-22 10:53:12'),
(88, 18, 'Staff Attendance', 'staff_attendance', 1, 1, 1, 0, '2018-06-22 10:53:10'),
(89, 18, 'Staff Attendance Report', 'staff_attendance_report', 1, 0, 0, 0, '2018-06-22 10:52:54'),
(90, 18, 'Staff Payroll', 'staff_payroll', 1, 1, 0, 1, '2018-06-22 10:52:51'),
(91, 18, 'Payroll Report', 'payroll_report', 1, 0, 0, 0, '2018-06-22 10:52:34'),
(102, 21, 'Calendar To Do List', 'calendar_to_do_list', 1, 1, 1, 1, '2018-06-22 10:54:41'),
(104, 10, 'Item Category', 'item_category', 1, 1, 1, 1, '2018-06-22 10:34:33'),
(108, 18, ' Approve Leave Request', 'approve_leave_request', 1, 1, 1, 1, '2018-07-02 10:17:41'),
(109, 18, 'Apply Leave', 'apply_leave', 1, 1, 0, 1, '2020-08-25 01:48:58'),
(110, 18, 'Leave Types ', 'leave_types', 1, 1, 1, 1, '2018-07-02 10:17:56'),
(111, 18, 'Department', 'department', 1, 1, 1, 1, '2018-06-26 03:57:07'),
(112, 18, 'Designation', 'designation', 1, 1, 1, 1, '2018-06-26 03:57:07'),
(118, 22, 'Staff Role Count Widget', 'staff_role_count_widget', 1, 0, 0, 0, '2018-07-03 07:13:35'),
(126, 15, 'User Status', 'user_status', 1, 0, 0, 0, '2018-07-03 08:42:29'),
(127, 18, 'Can See Other Users Profile', 'can_see_other_users_profile', 1, 0, 0, 0, '2018-07-03 08:42:29'),
(129, 18, 'Staff Timeline', 'staff_timeline', 0, 1, 0, 1, '2018-07-05 08:08:52'),
(130, 15, 'Backup', 'backup', 1, 1, 0, 1, '2018-07-09 04:17:17'),
(131, 15, 'Restore', 'restore', 1, 0, 0, 0, '2018-07-09 04:17:17'),
(132, 23, 'OPD Patient', 'opd_patient', 1, 1, 1, 1, '2018-12-20 09:37:26'),
(134, 23, 'Prescription', 'prescription', 1, 1, 1, 1, '2018-10-11 01:28:26'),
(135, 23, 'Revisit', 'revisit', 1, 1, 1, 1, '2018-10-11 01:28:26'),
(136, 23, 'OPD Diagnosis', 'opd diagnosis', 1, 1, 1, 1, '2018-10-11 06:46:59'),
(137, 23, 'OPD Timeline', 'opd timeline', 1, 1, 1, 1, '2018-10-11 06:47:22'),
(138, 24, 'IPD Patients', 'ipd_patient', 1, 1, 1, 1, '2018-10-11 07:14:55'),
(139, 24, 'Discharged Patients', 'discharged patients', 1, 1, 1, 1, '2018-10-11 01:28:26'),
(140, 24, 'Consultant Register', 'consultant register', 1, 1, 1, 1, '2018-10-11 01:28:26'),
(141, 24, 'IPD Diagnosis', 'ipd diagnosis', 1, 1, 1, 1, '2018-10-11 06:49:18'),
(142, 24, 'IPD Timeline', 'ipd timeline', 1, 1, 1, 1, '2018-10-11 06:49:42'),
(143, 24, 'Charges', 'charges', 1, 1, 1, 1, '2018-10-11 01:28:26'),
(144, 24, 'Payment', 'payment', 1, 1, 1, 1, '2018-10-11 01:28:26'),
(145, 24, 'Bill', 'bill', 1, 1, 1, 1, '2018-10-11 01:28:26'),
(146, 25, 'Medicine', 'medicine', 1, 1, 1, 1, '2018-10-11 01:28:26'),
(147, 25, 'Add Medicine Stock', 'add_medicine_stock', 1, 1, 1, 1, '2018-12-21 10:49:20'),
(148, 25, 'Pharmacy Bill', 'pharmacy bill', 1, 1, 1, 1, '2018-10-11 01:28:26'),
(149, 26, 'Pathology Test', 'pathology test', 1, 1, 1, 1, '2018-12-22 08:46:42'),
(150, 26, 'Add Patient & Test Report', 'add_patho_patient_test_report', 1, 1, 1, 1, '2019-10-18 07:05:57'),
(152, 27, 'Radiology Test', 'radiology test', 1, 1, 1, 1, '2018-10-11 01:28:26'),
(153, 27, 'Add Patient & Test Report', 'add_radio_patient_test_report', 1, 1, 1, 1, '2020-08-25 00:13:27'),
(155, 22, 'IPD Income Widget', 'ipd_income_widget', 1, 0, 0, 0, '2018-12-20 09:08:05'),
(156, 22, 'OPD Income Widget', 'opd_income_widget', 1, 0, 0, 0, '2018-12-20 09:08:15'),
(157, 22, 'Pharmacy Income Widget', 'pharmacy_income_widget', 1, 0, 0, 0, '2018-12-20 09:08:25'),
(158, 22, 'Pathology Income Widget', 'pathology_income_widget', 1, 0, 0, 0, '2018-12-20 09:08:37'),
(159, 22, 'Radiology Income Widget', 'radiology_income_widget', 1, 0, 0, 0, '2018-12-20 09:08:49'),
(160, 22, 'OT Income Widget', 'ot_income_widget', 1, 0, 0, 0, '2018-12-20 09:09:02'),
(161, 22, 'Blood Bank Income Widget', 'blood_bank_income_widget', 1, 0, 0, 0, '2018-12-20 09:09:13'),
(162, 22, 'Ambulance Income Widget', 'ambulance_income_widget', 1, 0, 0, 0, '2018-12-20 09:09:25'),
(163, 28, 'OT Patient', 'ot_patient', 1, 1, 1, 1, '2018-10-27 03:35:57'),
(164, 28, 'OT Consultant Instruction', 'ot_consultant_instruction', 1, 1, 1, 1, '2018-10-27 03:36:19'),
(165, 29, 'Ambulance Call', 'ambulance_call', 1, 1, 1, 1, '2018-10-27 03:37:51'),
(166, 29, 'Ambulance', 'ambulance', 1, 1, 1, 1, '2018-10-27 03:37:59'),
(167, 30, 'Blood Bank Status', 'blood_bank_status', 1, 1, 1, 1, '2018-10-27 04:20:09'),
(168, 30, 'Blood Issue', 'blood_issue', 1, 1, 1, 1, '2018-10-27 04:20:15'),
(169, 30, 'Blood Donor', 'blood_donor', 1, 1, 1, 1, '2018-10-27 04:20:19'),
(170, 25, 'Medicine Category', 'medicine_category', 1, 1, 1, 1, '2018-10-25 06:10:24'),
(171, 27, 'Radiology Category', 'radiology category', 1, 1, 1, 1, '2018-12-22 09:03:20'),
(173, 31, 'Organisation', 'organisation', 1, 1, 1, 1, '2018-10-25 06:10:24'),
(174, 31, 'Charges', 'tpa_charges', 1, 1, 1, 1, '2018-12-22 10:06:57'),
(175, 26, 'Pathology Category', 'pathology_category', 1, 1, 1, 1, '2018-10-25 06:10:24'),
(176, 32, 'Charges', 'hospital_charges', 1, 1, 1, 1, '2018-12-22 10:08:26'),
(178, 14, 'IPD Report', 'ipd_report', 1, 0, 0, 0, '2018-12-12 10:09:24'),
(179, 14, 'Pharmacy Bill Report', 'pharmacy_bill_report', 1, 0, 0, 0, '2018-12-12 10:09:24'),
(180, 14, 'Pathology Patient Report', 'pathology_patient_report', 1, 0, 0, 0, '2018-12-12 10:09:24'),
(181, 14, 'Radiology Patient Report', 'radiology_patient_report', 1, 0, 0, 0, '2018-12-12 10:09:24'),
(182, 14, 'OT Report', 'ot_report', 1, 0, 0, 0, '2019-03-08 06:56:54'),
(183, 14, 'Blood Donor Report', 'blood_donor_report', 1, 0, 0, 0, '2019-03-08 06:56:54'),
(184, 14, 'Payroll Month Report', 'payroll_month_report', 1, 0, 0, 0, '2019-03-08 06:57:25'),
(185, 14, 'Payroll Report', 'payroll_report', 1, 0, 0, 0, '2019-03-08 06:57:35'),
(186, 14, 'Staff Attendance Report', 'staff_attendance_report', 1, 0, 0, 0, '2019-03-08 07:03:28'),
(187, 14, 'User Log', 'user_log', 1, 0, 0, 0, '2018-12-12 10:09:24'),
(188, 14, 'Patient Login Credential', 'patient_login_credential', 1, 0, 0, 0, '2018-12-12 10:09:24'),
(189, 14, 'Email / SMS Log', 'email_sms_log', 1, 0, 0, 0, '2018-12-12 10:09:24'),
(190, 22, 'Yearly Income & Expense Chart', 'yearly_income_expense_chart', 1, 0, 0, 0, '2018-12-12 10:22:05'),
(191, 22, 'Monthly Income & Expense Chart', 'monthly_income_expense_chart', 1, 0, 0, 0, '2018-12-12 10:25:14'),
(192, 23, 'OPD Prescription Print Header Footer ', 'opd_prescription_print_header_footer', 1, 1, 1, 1, '2018-12-12 10:31:07'),
(193, 24, 'Revert Generated Bill', 'revert_generated_bill', 1, 0, 0, 0, '2018-12-12 10:34:02'),
(194, 24, 'Calculate Bill', 'calculate_bill', 1, 0, 0, 0, '2018-12-12 10:35:30'),
(195, 24, 'Generate Bill & Discharge Patient', 'generate_bill_discharge_patient', 1, 0, 0, 0, '2018-12-21 09:26:00'),
(196, 24, 'Bed', 'bed', 1, 1, 1, 1, '2018-12-12 10:46:01'),
(197, 24, 'IPD Prescription Print Header Footer', 'ipd_prescription_print_header_footer', 1, 1, 1, 1, '2018-12-12 10:39:42'),
(198, 24, 'Bed Status', 'bed_status', 1, 0, 0, 0, '2018-12-12 10:39:42'),
(200, 25, 'Medicine Bad Stock', 'medicine_bad_stock', 1, 1, 0, 1, '2018-12-18 01:12:46'),
(201, 25, 'Pharmacy Bill print Header Footer', 'pharmacy_bill_print_header_footer', 1, 1, 1, 1, '2018-12-12 11:06:47'),
(202, 30, 'Donate Blood', 'donate_blood', 1, 1, 0, 1, '2018-12-12 11:17:10'),
(203, 32, 'Charge Category', 'charge_category', 1, 1, 1, 1, '2018-12-12 11:19:38'),
(204, 17, 'Appointment', 'appointment', 1, 1, 1, 1, '2018-12-18 11:52:53'),
(205, 17, 'Appointment Approve', 'appointment_approve', 1, 0, 0, 0, '2018-12-18 11:55:58'),
(206, 14, 'TPA Report', 'tpa_report', 1, 0, 0, 0, '2019-03-08 06:49:25'),
(207, 14, 'Ambulance Report', 'ambulance_report', 1, 0, 0, 0, '2019-03-08 06:49:41'),
(208, 14, 'Discharge Patient Report', 'discharge_patient_report', 1, 0, 0, 0, '2019-03-08 06:49:55'),
(209, 14, 'Appointment Report', 'appointment_report', 1, 0, 0, 0, '2019-03-08 06:50:10'),
(210, 14, 'Transaction Report', 'transaction_report', 1, 0, 0, 0, '2019-03-08 06:57:35'),
(211, 14, 'Blood Issue Report', 'blood_issue_report', 1, 0, 0, 0, '2019-03-08 06:57:35'),
(212, 14, 'Income Report', 'income_report', 1, 0, 0, 0, '2019-03-08 06:57:35'),
(213, 14, 'Expense Report', 'expense_report', 1, 0, 0, 0, '2019-03-08 06:57:35'),
(214, 34, 'Birth Record', 'birth_record', 1, 1, 1, 1, '2018-06-22 10:36:02'),
(215, 34, 'Death Record', 'death_record', 1, 1, 1, 1, '2018-06-22 10:36:02'),
(216, 17, 'Move Patient in OPD', 'move_patient_in_opd', 1, 0, 0, 0, '2019-09-23 04:44:41'),
(217, 17, 'Move Patient in IPD', 'move_patient_in_ipd', 1, 0, 0, 0, '2018-12-18 11:55:58'),
(218, 23, 'Move Patient in IPD', 'opd_move _patient_in_ipd', 1, 0, 0, 0, '2019-09-23 04:49:42'),
(219, 23, 'Manual Prescription', 'manual_prescription', 1, 0, 0, 0, '2019-09-23 04:52:06'),
(220, 24, 'Prescription ', 'ipd_prescription', 1, 1, 1, 1, '2019-09-24 00:59:27'),
(221, 23, 'Charges', 'opd_charges', 1, 1, 1, 1, '2019-09-23 04:58:03'),
(222, 23, 'Payment', 'opd_payment', 1, 1, 1, 1, '2019-09-24 00:44:29'),
(223, 23, 'Bill', 'opd_bill', 1, 1, 1, 1, '2019-09-23 04:59:37'),
(224, 25, 'Import Medicine', 'import_medicine', 1, 0, 0, 0, '2019-09-23 05:03:31'),
(225, 25, 'Medicine Purchase', 'medicine_purchase', 1, 1, 1, 1, '2019-09-23 05:05:53'),
(226, 25, 'Medicine Supplier', 'medicine_supplier', 1, 1, 1, 1, '2019-09-23 05:09:36'),
(227, 25, 'Medicine Dosage', 'medicine_dosage', 1, 1, 1, 1, '2019-09-23 05:17:16'),
(228, 32, 'Doctor OPD Charges', 'doctor_opd_charges', 1, 1, 1, 1, '2019-09-23 05:20:26'),
(236, 36, 'Patient', 'patient', 1, 1, 1, 1, '2019-09-23 06:25:35'),
(237, 36, 'Enabled/Disabled', 'enabled_disabled', 1, 0, 0, 0, '2019-09-23 06:25:35'),
(238, 22, 'Notification Center', 'notification_center', 1, 0, 0, 0, '2019-09-24 03:48:33'),
(239, 36, 'Import', 'patient_import', 1, 0, 0, 0, '2019-10-04 01:20:26'),
(240, 34, 'Birth Print Header Footer', 'birth_print_header_footer', 1, 1, 1, 1, '2019-10-04 02:44:01'),
(241, 34, 'Custom Fields', 'birth_death_customfields', 1, 1, 1, 1, '2019-10-04 01:23:55'),
(242, 34, 'Death Print Header Footer', 'death_print_header_footer', 1, 1, 1, 1, '2019-10-04 02:43:56'),
(243, 26, 'Print Header Footer', 'pathology_print_header_footer', 1, 1, 1, 1, '2019-10-04 01:36:15'),
(244, 27, 'Print Header Footer', 'radiology_print_header_footer', 1, 1, 1, 1, '2019-10-04 01:40:01'),
(245, 28, 'Print Header Footer', 'ot_print_header_footer', 1, 1, 1, 1, '2019-10-04 01:41:15'),
(246, 30, 'Print Header Footer', 'bloodbank_print_header_footer', 1, 1, 1, 1, '2019-10-04 02:47:17'),
(247, 29, 'Print Header Footer', 'ambulance_print_header_footer', 1, 1, 1, 1, '2019-10-04 01:45:03'),
(248, 24, 'IPD Bill Print Header Footer', 'ipd_bill_print_header_footer', 1, 1, 1, 1, '2019-10-04 02:13:28'),
(249, 18, 'Print Payslip Header Footer', 'print_payslip_header_footer', 1, 1, 1, 1, '2019-10-04 02:31:33'),
(250, 14, 'Income Group Report', 'income_group_report', 1, 0, 0, 0, '2020-08-12 05:52:52'),
(251, 14, 'Expense Group Report', 'expense_group_report', 1, 0, 0, 0, '2019-10-04 04:15:56'),
(253, 14, 'Inventory Stock Report', 'inventory_stock_report', 1, 0, 0, 0, '2019-10-04 05:20:31'),
(254, 14, 'Inventory Item Report', 'add_item_report', 1, 0, 0, 0, '2019-10-04 05:23:22'),
(255, 14, 'Inventory Issue Report', 'issue_inventory_report', 1, 0, 0, 0, '2019-10-04 05:24:40'),
(256, 14, 'Expiry Medicine Report', 'expiry_medicine_report', 1, 0, 0, 0, '2019-10-04 06:00:11'),
(257, 26, 'Pathology Bill', 'pathology bill', 1, 1, 1, 1, '2018-12-22 08:46:42'),
(258, 14, 'Birth Report', 'birth_report', 1, 0, 0, 0, '2019-10-14 03:12:35'),
(259, 14, 'Death Report', 'death_report', 1, 0, 0, 0, '2019-10-14 03:13:56'),
(260, 26, 'Pathology Unit', 'pathology_unit', 1, 1, 1, 1, '2020-07-22 01:13:49'),
(261, 27, 'Radiology Unit', 'radiology_unit', 1, 1, 1, 1, '2020-07-22 01:14:47'),
(262, 27, 'Radiology Parameter', 'radiology_parameter', 1, 1, 1, 1, '2020-07-22 01:20:28'),
(263, 26, 'Pathology Parameter', 'pathology_parameter', 1, 1, 1, 1, '2020-07-22 01:20:28'),
(264, 32, 'Charge Type', 'charge_type', 1, 1, 0, 1, '2020-07-22 04:09:44'),
(265, 14, 'OPD Balance Report', 'opd_balance_report', 1, 0, 0, 0, '2020-07-28 02:03:34'),
(266, 14, 'IPD Balance Report', 'ipd_balance_report', 1, 0, 0, 0, '2020-07-28 02:03:34'),
(267, 36, 'Symptoms Type', 'symptoms_type', 1, 1, 1, 1, '2020-08-04 07:24:49'),
(268, 24, 'Discharged Summary', 'discharged_summary', 0, 0, 1, 0, '2020-08-12 02:10:43'),
(269, 37, 'Live Consultation', 'live_consultation', 1, 1, 0, 1, '2020-08-13 06:19:27'),
(270, 37, 'Live Meeting', 'live_meeting', 1, 1, 0, 1, '2020-08-13 06:19:27'),
(271, 37, 'Live Consultation Report', 'live_consultation_report', 1, 0, 0, 0, '2020-08-13 06:21:25'),
(272, 37, 'Live Meeting Report', 'live_meeting_report', 1, 0, 0, 0, '2020-08-13 06:21:25'),
(273, 37, 'Setting', 'setting', 1, 0, 1, 0, '2020-08-13 07:03:28'),
(274, 15, 'Language Switcher', 'language_switcher', 1, 0, 0, 0, '2020-08-21 04:48:53'),
(275, 26, 'Pathology Print Bill', 'pathology_print_bill', 1, 0, 0, 0, '2020-08-25 00:16:11'),
(276, 27, 'Radiology Print Bill', 'radiology_print_bill', 1, 0, 0, 0, '2020-08-25 00:15:24'),
(277, 26, 'Pathology Print Report', 'pathology_print_report', 1, 0, 0, 0, '2020-08-25 00:16:11'),
(278, 27, 'Radiology Print Report', 'radiology_print_report', 1, 0, 0, 0, '2020-08-25 00:15:24'),
(279, 36, 'Symptoms Head', 'symptoms_head', 1, 1, 1, 1, '2020-08-25 04:24:29'),
(280, 18, 'Specialist', 'specialist', 1, 1, 1, 1, '2019-10-03 21:01:33'),
(281, 22, 'General Income Widget', 'general_income_widget', 1, 0, 0, 0, '2018-12-20 03:38:05'),
(282, 22, 'Expenses Widget', 'expenses_widget', 1, 0, 0, 0, '2018-12-20 03:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `permission_group`
--

CREATE TABLE `permission_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `is_active` int(11) DEFAULT 0,
  `system` int(11) NOT NULL,
  `sort_order` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_group`
--

INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES
(3, 'Income', 'income', 1, 0, '9.00', '2018-12-23 16:26:51'),
(4, 'Expense', 'expense', 1, 0, '10.00', '2018-12-18 10:20:47'),
(8, 'Download Center', 'download_center', 1, 0, '15.00', '2018-12-18 10:23:12'),
(10, 'Inventory', 'inventory', 1, 0, '16.00', '2018-12-18 10:23:27'),
(13, 'Messaging', 'communicate', 1, 0, '14.00', '2018-12-18 10:22:54'),
(14, 'Reports', 'reports', 1, 1, '19.00', '2018-12-18 10:24:41'),
(15, 'System Settings', 'system_settings', 1, 1, '18.00', '2018-12-18 10:24:23'),
(16, 'Front CMS', 'front_cms', 1, 0, '17.00', '2018-12-18 10:23:47'),
(17, 'Front Office', 'front_office', 1, 0, '12.00', '2018-12-18 10:21:58'),
(18, 'Human Resource', 'human_resource', 1, 1, '13.00', '2018-12-18 10:22:37'),
(21, 'Calendar To Do List', 'calendar_to_do_list', 1, 0, '22.00', '2019-10-04 07:26:23'),
(22, 'Dashboard and Widgets', 'dashboard_and_widgets', 1, 1, '20.00', '2018-12-18 10:24:51'),
(23, 'OPD', 'OPD', 1, 0, '1.00', '2019-11-01 12:36:37'),
(24, 'IPD', 'IPD', 1, 0, '2.00', '2019-10-30 13:05:10'),
(25, 'Pharmacy', 'pharmacy', 1, 0, '3.00', '2018-12-18 10:02:51'),
(26, 'Pathology', 'pathology', 1, 0, '4.00', '2018-12-18 10:02:56'),
(27, 'Radiology', 'radiology', 1, 0, '5.00', '2018-12-18 10:03:00'),
(28, 'Operation Theatre', 'operation_theatre', 1, 0, '6.00', '2018-12-18 10:03:05'),
(29, 'Ambulance', 'ambulance', 1, 0, '11.00', '2018-12-18 10:20:57'),
(30, 'Blood Bank', 'blood_bank', 1, 0, '7.00', '2018-12-18 10:19:14'),
(31, 'TPA Management', 'tpa_management', 1, 0, '8.00', '2018-12-18 10:19:39'),
(32, 'Hospital Charges', 'hospital_charges', 1, 1, '10.10', '2019-03-10 07:08:22'),
(34, 'Birth Death Record', 'birth_death_report', 1, 0, '12.00', '2019-10-04 07:18:39'),
(36, 'Patient', 'patient', 1, 0, '21.00', '2019-10-04 07:26:19'),
(37, 'Zoom Live Consultation', 'zoom_live_meeting', 1, 0, '7.01', '2022-02-19 17:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `id` int(11) NOT NULL,
  `medicine_name` varchar(200) DEFAULT NULL,
  `medicine_category_id` varchar(50) NOT NULL,
  `medicine_image` varchar(200) NOT NULL,
  `medicine_company` varchar(100) DEFAULT NULL,
  `medicine_composition` varchar(100) DEFAULT NULL,
  `medicine_group` varchar(100) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `min_level` varchar(50) DEFAULT NULL,
  `reorder_level` varchar(50) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `unit_packing` varchar(50) DEFAULT NULL,
  `supplier` varchar(50) DEFAULT NULL,
  `vat_ac` varchar(50) DEFAULT NULL,
  `note` varchar(200) NOT NULL,
  `is_active` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`id`, `medicine_name`, `medicine_category_id`, `medicine_image`, `medicine_company`, `medicine_composition`, `medicine_group`, `unit`, `min_level`, `reorder_level`, `vat`, `unit_packing`, `supplier`, `vat_ac`, `note`, `is_active`, `created_at`) VALUES
(1, 'Syp Panadol 100ml', '1', 'uploads/medicine_images/1.jpg', 'ABC', 'XYZ', 'Medicine ', 'Pcs', '100', '200', '', '1', NULL, '17%', '', '', '2021-08-29 11:27:28'),
(2, 'Beflam Tablet 75mg', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(3, 'Cefiget Tablet 200 Mg Lmp', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(4, 'Analin 10 Mg Injection 1 Ampoule', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(5, 'Entamizole-DS 500mg', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(6, 'Velosef 250mg Capsule', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(7, 'Voren 50mg', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(8, 'Ponstan Forte 500mg', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(9, 'Peditral O.R.S Orange Flavor Sachet', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(10, 'Flagyl Tablet 400mg', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(11, 'Risek Sachet 40mg', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(12, 'Ruling 20mg Capsule', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(13, 'Valium Tablet 10Mg Lmp', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(14, 'O.R.S Orange Flavour P-10', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(15, 'Duphalac Syrup 120ml', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(16, 'Panadol-CF Tablet', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(17, 'Panadol Extra Tablet P-02', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:32'),
(18, 'Synflex Tablet 550mg', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:33'),
(19, 'Icon Capsules 100 Mg', '1', '', '', '', 'Medicine ', 'pcs', '20', '50', '', '1', NULL, NULL, '', 'yes', '2021-08-31 07:42:33'),
(20, 'DEEP FREEZE SPRAY', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(21, 'DEEP HEAT SPRAY', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(22, 'DIAGESIC EXTRA TABS 325+37.5MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(23, 'BD ULTRAFINE INSULIN SYRINGE 1X10S PACKET', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(24, 'DISPOSABLE FACE MASK FULL PACK 50S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(25, 'FREESTYLE OPTIUM STRIPS 50S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(26, 'HERNIA BELT', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(27, 'SLIM LINE BELT', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(28, 'STETHOSCOPE MASTER', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(29, 'TRANSFUSION SET JMS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(30, 'URINE BAG ADULT LIFE MED', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(31, 'WRIST SPLINT', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(32, 'ACCU CHEK ACTIVE MACHINE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(33, 'ACCU CHEK ACTIVE STRIPS 50S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(34, 'ACCU CHEK GUIDE MACHINE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(35, 'ACCU CHEK GUIDE STRIPS 50S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(36, 'ACCU CHEK INSTANT MACHINE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(37, 'ACCU CHEK INSTANT STRIPS 50S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(38, 'ACCU CHEK PERFORMA STRIPS 100S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(39, 'ACCU CHEK PERFORMA STRIPS 25S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(40, 'ACCU CHEK PERFORMA STRIPS 50S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(41, 'ADAPTOR FOR CERTEZA DIGITAL BP MONITOR', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(42, 'AIR CUSHION WITH PUMP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(43, 'AIR HUMIDIFIER CERTEZA HF507', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(44, 'AIR MATTRESS ATOM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(45, 'ATENORM 100MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(46, 'ATENORM 50MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(47, 'BP SET ANEROID BELEVIA', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(48, 'BP SET DIGITAL CERTEZA BM-407', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(49, 'BP SET DIGITAL MAXON', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(50, 'BP SET DIGITAL MEDICARE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(51, 'BP SET MERCURY YUWELL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(52, 'CORN CAPS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(53, 'DIGITAL BATHROOM SCALE CERTEZA PS-812', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(54, 'DIGITAL THERMOMETER CERTEZA FT-707', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(55, 'DIGITAL THERMOMETER ORDINARY', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(56, 'EAR PLUG PAIR', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(57, 'HAND GRIP PAIR', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(58, 'HEATING PAD ELECTRIC', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(59, 'HIVATE NASAL 60 SPARYS 50MCG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(60, 'HOT AND COLD PACK', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(61, 'HYGROMETER', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(62, 'IV CANNULA 20G BBRAUN', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(63, 'IV CANNULA 22G BBRAUN', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(64, 'IV CANNULA 24G BBRAUN', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(65, 'LANCING DEVICE MEDICARE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(66, 'NEBULIZER MACHINE ATOM SILVER', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(67, 'NEBULIZER MACHINE CERTEZA NB-607', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(68, 'NEBULIZER MACHINE COMPRESSOR', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(69, 'NEBULIZER MASK', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(70, 'NOVOTEPH  40 CAPSUL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:01'),
(71, 'OXYGEN MASK', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(72, 'PHYSIOTHERAPY BALL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(73, 'POLYTEARS 0.3%', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(74, 'PULSE OXIMETER', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(75, 'SPACER WITH MASK', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(76, 'STEAM INHALER CERTEZA SI-515', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(77, 'TORNIQUET', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(78, 'URIN BAG SMAL SIZE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(79, 'ZOLID PLUS 15/850MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(80, '2SUM - 2G  ING 1S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(81, '2SUM-1G ING   1S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(82, 'A2A 50 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(83, 'ABACUS SUSP 40MG/5ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(84, 'ABOCAL 500 mg Tabs efr 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(85, 'AC D3 5MG/ML INJ 1S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(86, 'ACABEL 8 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(87, 'ACCU CHEK INSTANT NEW MACHINE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(88, 'ACEFYL 125 MG/5ML SYRUP 125ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(89, 'ACEFYL COUGH 45 MG/5ML SYRUP 125ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(90, 'ACEFYL COUGH 45 mg/5ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(91, 'ACENAC  SR  CAP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(92, 'ACENAC 100 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(93, 'ACNE AID Soap 65g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(94, 'ACNES CREAMY WASH 50MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(95, 'ACNES SCAR CARE GEL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(96, 'ACTIDIL 1.25 mg/5ml Elixir 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(97, 'ACTIFIED DM  COUGH  SYRUP 90ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(98, 'ACTIFIED P ELIXIR 90ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(99, 'ACTIFIED-P-COLD TAB 400S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(100, 'ACTIM 2.5 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(101, 'ACTIM 5 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(102, 'ACTIWEL  TAB 30AS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(103, 'ACTRAPID  PENFILL Inj 5x3ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(104, 'ACTRAPID HM 100 IU/ml Inj Vialx10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(105, 'ACYLEX 200 mg Tabs 5x5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(106, 'ACYLEX 200 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(107, 'ACYLEX 400 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(108, 'ACYLEX 5 %w/w Oint 5g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(109, 'ADAPCO 0.1 %w/w Cream 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(110, 'ADAPCO 0.1 %w/w Gel 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(111, 'ADAPCO FORT GEL 15GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(112, 'ADFOLIC 300MG 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(113, 'ADFOLIC 600MG OD 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(114, 'ADICOS 32 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(115, 'ADMIT 50/500 TAB 2X7', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(116, 'ADMIT-50/1000 TAB 2X7', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(117, 'ADOXA Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(118, 'ADVACORT OINTMENT 5GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(119, 'ADVANT 16 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(120, 'ADVANT 8 mg Tabs 2x7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(121, 'ADVANTAN 0.1 %w/w Oint 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(122, 'ADVANTAN FATTY 0.1 %w/w Oint 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(123, 'ADVANTEC 16 mg Tabs 28s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(124, 'AGNAR TAB 400+90MCG+500MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(125, 'AIRTAL 100 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(126, 'ALDACTONE 100 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(127, 'ALDACTONE-A 25 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(128, 'ALDOMET Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(129, 'ALERGOCIT 5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(130, 'ALP 0.25MG TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(131, 'ALP 0.5 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(132, 'ALPHAGAN 2 mg/ml Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(133, 'AM- TELSAN 5/80', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(134, 'AM-TELSAN 10/80', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(135, 'AM-TELSAN 5+40 MG TABS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(136, 'AMARYL   M S.R  2MG /500 TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(137, 'AMARYL  4MG TAB 3X10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(138, 'AMARYL 1 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(139, 'AMARYL 2 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(140, 'AMARYL 3 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(141, 'AMARYL M S R 1/500', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(142, 'AMARYL M.S.R 1MG /500MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(143, 'AMCLAV 156.25 MG/5ML SUSP 60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(144, 'AMCLAV 1G TABS 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(145, 'AMCLAV 312.50 MG/5ML SUSP 60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(146, 'AMCLAV 375 MG TABS 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(147, 'AMCLAV 625 MG TABS 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(148, 'AMCLAV PLUS 457 MG/5ML SUSP 70ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(149, 'AMGY Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(150, 'AMGYDEX 0.1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(151, 'AMGYDEX 0.1 %w/w Eye Oint 3.5g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(152, 'AMODIP 10 MG TABS 3*10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(153, 'AMODIP 5 MG TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(154, 'AMODIP PLUS 5 MG +12.5MG 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(155, 'AMODIP-V PLUS 10/160/12.5 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(156, 'AMODIP-V PLUS 5/160/12.5 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(157, 'AMODIP-V TAB 5/160MG 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(158, 'AMODIP-V TAB 5/80MG 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(159, 'AMODIP-V TAB. 10/160MG 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(160, 'AMODIP-V TAB. 5/80MG 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(161, 'AMOXI CLAVE 1000 MG TABS 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(162, 'AMOXI CLAVE 312 MG/5ML SUSP 60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(163, 'AMOXI CLAVE 375 MG TABS 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(164, 'AMOXI CLAVE 625 MG TABS 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(165, 'AMOXIL 125 mg/5ml Susp 90ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(166, 'AMOXIL 250 mg/5ml Susp 90ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(167, 'AMOXIL 500 mg Caps 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(168, 'AMPICLOX 125 mg/5ml Syrup 90ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(169, 'AMPICLOX 250 mg Caps 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(170, 'AMPICLOX CAP 500MG  10X10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(171, 'AMPLUS 250 mg Inj Vial', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(172, 'AMPLUS 500 MG INJ VIAL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(173, 'ANAFORTAN PLUS TAB 3X10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(174, 'ANAGROW HAIR SERUM 50ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(175, 'ANAGROW SHAMPOO', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(176, 'ANAPAZ DROPS 10ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(177, 'ANGISED 0.5 mg Tabs SL 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(178, 'ANPRA 0.25 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(179, 'ANPRA 0.5 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(180, 'ANSAID 100 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(181, 'ANTIAL 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(182, 'ANTIAL 5 mg/5ml Syrup 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(183, 'APOCLOX  500MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(184, 'APTIZOLE  40MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(185, 'APTIZYME  SYP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(186, 'ARBI-D 150/12.5 MG TABS 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(187, 'ARBI-D 300/12.5 MG TABS 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(188, 'ARBI-D 300/25 MG TABS 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(189, 'ARCALION Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(190, 'ARIA 1 mg/5ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(191, 'ARINAC 100 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(192, 'ARINAC FORTE 400 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(193, 'ARINAC PLAIN TABS 10X10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(194, 'ARNIL 50 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(195, 'AROZINE 0 Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(196, 'ARTEM  DS  PLUS TAB 40/240 1X8', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(197, 'ARTEM DS PLUS 80+480 MG TABS 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(198, 'ARTEM PLUS 15 MG/5ML SUSP 30ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(199, 'ARTEM PLUS 40+240 MG TABS 8S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(200, 'ARTHEGET  DS  40/240MG  TAB  8S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(201, 'ARTHEGET 40/240 MG TABS 8S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(202, 'ARTHEGET EZ 80/480 MG TABS 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(203, 'ARTIFEN 50 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(204, 'ARTINIL-K 50MG TAB  20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(205, 'ASCARD 150 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(206, 'ASCARD 75 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(207, 'ASCARD PLUS 75 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(208, 'ASTHOTIFEN 1 mg/5ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(209, 'ATARAX 10 mg Tabs 50s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(210, 'ATCAM 8MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(211, 'ATEM NEBULISER 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(212, 'ATIZA 5 MG TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(213, 'ATORVA 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(214, 'ATORVA 20 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(215, 'AUGMENTIN 156 MG/5ML SUSP 90ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(216, 'AUGMENTIN 1G TABS 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(217, 'AUGMENTIN 375 MG TABS 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(218, 'AUGMENTIN 625MG TABS 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(219, 'AUGMENTIN BD 400 mg/5ml Syrup 35ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(220, 'AUGMENTIN BD 400 mg/5ml Syrup 70ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(221, 'AUGMENTIN DS 312MG/5ML SUSP 90ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(222, 'AVAMYS NASAL SPRAY. 27.5 mg Spray 120 DOSES INHALER', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(223, 'AVELOX 400 mg Tabs 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(224, 'AVENTRIAX 500 mg Inj-IV Vial', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(225, 'AVIL 25 mg Tabs 5x50s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(226, 'AVIL SYRUP 90ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(227, 'AVODART 0.5 mg Caps 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(228, 'AVOREK 50 MG TABS 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(229, 'AVSAR 10/160 MG TABS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(230, 'AVSAR 160/10 MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(231, 'AVSAR 5/160MG TABS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(232, 'AVSAR 5/80 MG TABS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(233, 'AZIT 250 mg Caps 6s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(234, 'AZITMA  250 MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(235, 'AZITMA 500MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(236, 'AZITMA SUP  15ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(237, 'AZM 250 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(238, 'AZOMAX 200 mg/5ml Susp 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(239, 'AZOMAX 250 mg Caps 12s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(240, 'AZOMAX 500 mg Tabs 6s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(241, 'BABYNOL 1 mg/5ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(242, 'BACLIN 10 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(243, 'BACTROBAN 2 %w/w Oint 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(244, 'BAMIFIX 600 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(245, 'BARILOL 2.5 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(246, 'BARILOL 5 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(247, 'BARINEP 0.1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(248, 'BAYDAL 10 MG TABS 10X10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(249, 'BECEFOL 750 mg Tabs 25s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(250, 'BEFLAM 75 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(251, 'BEKSON FORTE 250 mcg/actu Inhaler 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(252, 'BELLADERMA PLASTER 1S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(253, 'BENZIRIN 0.15 %w/v Mouth Wash 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(254, 'BENZIRIN C 0.15 %w/v Mouth Wash 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(255, 'BENZOL  50ML SPRAY', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(256, 'BERDI  SACHET 174 MG CRANBERRY 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(257, 'BETABAR 0.5 %W/V EYE DROPS 5ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(258, 'BETADERM CREAM 15MG  15MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(259, 'BETADERM LOTION  60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(260, 'BETADERM N CREAM 15MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(261, 'BETADERM N OINT 15GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(262, 'BETADERM OINT 15GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(263, 'BETADERM-NM 0.1 %w/w Cream 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(264, 'BETASALIC LOTION  20ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(265, 'BETASALIC OINTMENT 15GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(266, 'BETNELAN 0.5 mg Tabs 500s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(267, 'BETNESOL DROPS 7.5ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(268, 'BETNESOL TAB 100S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(269, 'BETNESOL-N 0.1 %w/v E and E Drops 7.5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(270, 'BETNOVATE 0.1 %w/v Lotion 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(271, 'BETNOVATE-N 0.1 %W/W OINT 20G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(272, 'BETNOVATE-N 0.1 %w/w Cream 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(273, 'BETOPTIC S 0.25 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(274, 'BIFLOR SACHET 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(275, 'BIO GROW SYP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(276, 'BIOMOUSSE  Gel 200ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(277, 'BIONIC 150 mg Tabs 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(278, 'BIOTIN PLUS 2500MCG 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(279, 'BIOTIN PLUS 2500MCG 60S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(280, 'BISLERI 0 Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(281, 'BISLERI S IV 1X5 AMP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(282, 'BISLERI TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(283, 'BISMOL 265 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(284, 'BISMOL 88 mg/5ml Susp 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(285, 'BLACKMORES COD LIVER OIL 1000MG 80S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(286, 'BLACKMORES COQ10 75MG 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(287, 'BLACKMORES FISH OIL 1000-60S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(288, 'BLACKMORES I-FOLIC 150S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(289, 'BLACKMORES MEN\'S PERFORMANCE MULTI 50S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(290, 'BLACKMORES OMEGA DAILY', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(291, 'BLEPHAMIDE 0.12 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(292, 'BLINK FRESH 1.4 %w/v Eye Drops 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(293, 'BLOKIUM 50 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(294, 'BLOKIUM-DIU 50 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(295, 'BLOTNIL  SYRUP120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(296, 'BOFALGAN 1 g/100ml Inf 100mlx1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(297, 'BON-ONE 0.5 MCG TABS 100S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(298, 'BONMIN  830MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(299, 'BONMIN 400 IU/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(300, 'BONNISAN  120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(301, 'BREAVENT 200 mcg Rota Caps 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(302, 'BREEKY 200 mcg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(303, 'BREVOXYL 4 %w/w Cream 40g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(304, 'BREXIN 20 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(305, 'BRITANYL 0.3 mg/ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(306, 'BRITANYL 2.5 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(307, 'BRONCHILATE 2 mg/5ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(308, 'BRONKAL  SYP 60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(309, 'BRONOCHOL 25 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(310, 'BROPHYL 125 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(311, 'BROPHYL D 45 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(312, 'BROTIN 2.5 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(313, 'BROXOL 32 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(314, 'BROXOL-DM 6.25 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(315, 'BRUFEN 10 %w/w Cream 30g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(316, 'BRUFEN 100 mg/5ml Susp 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(317, 'BRUFEN 200 MG TABS 100S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(318, 'BRUFEN 200 mg/5ml Susp 90ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(319, 'BRUFEN 400 mg Tabs 25x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(320, 'BRYSK 20 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(321, 'BUSCOPAN PLUS 10 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(322, 'BUSRON  TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(323, 'BYSCARD  10MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(324, 'BYSCARD 2.5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(325, 'BYSCARD 5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(326, 'BYVAS TAB 2.5MG 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(327, 'CAC-1000 PLUS LEMON 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(328, 'CAC-1000 PLUS ORANGE 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(329, 'CAC-1000 PLUS ORANGE 500 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(330, 'CAFLAM 50 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(331, 'CAL ONE -D 830MG TAB 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(332, 'CAL-ONE-D  120ML  SYRUP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(333, 'CALAMOX 1.2 G INJ VIAL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(334, 'CALAMOX 125 MG/5ML SUSP  35ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(335, 'CALAMOX 156 MG/5ML SUSP 60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(336, 'CALAMOX 1G TABS 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(337, 'CALAMOX 312 MG/5ML SUSP 60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(338, 'CALAMOX 625 MG TABS 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(339, 'CALAMOX DROPS 62.5MG 20ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(340, 'CALAMOX DUO 400 mg/5ml Susp 35ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(341, 'CALAMOX DUO 400 mg/5ml Susp 70ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(342, 'CALAN 240 mg Caps SR 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(343, 'CALAN 40 mg Tabs 50s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(344, 'CALAN 80 mg Tabs 50s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(345, 'CALCEE-500 SACHET ORANGE 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(346, 'CALFER-D  SYP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(347, 'CALFER-D TAB 30AS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(348, 'CALIBIN 0.25 mcg Caps 10x3s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(349, 'CALPOL   SUSPENSION', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(350, 'CALPOL  PLUS TAB  200S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(351, 'CALPOL PLAIN 120 MG/5ML SUSP 100ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(352, 'CALPOL-6 PLUS 250 mg/5ml Susp 90ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(353, 'CAMFLEX TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(354, 'CANDERAL SWEETNER TABLETS 100S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(355, 'CANDERAL SWEETNER TABLETS 200S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(356, 'CANESTEN TOPICAL 1 %w/w Cream 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(357, 'CANESTEN VAGINAL 10 %w/w Vag Cream 5g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(358, 'CANESTEN VAGINAL 100 mg Vag Tabs 6s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(359, 'CANESTEN VAGINAL 500 mg Vag Tabs 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(360, 'CAPCIDOL  LOTION  20ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(361, 'CAPCIDOL CREM 25GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(362, 'CAPOTEN 25 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(363, 'CAPRIL 25 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(364, 'CAPRIL TAB. 12.5MG 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(365, 'CARA 20 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(366, 'CARBEX 100 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(367, 'CARBEX 250 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(368, 'CARBEX PLUS 100 mg/5ml Syrup 120', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(369, 'CARDIOLITE 50 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(370, 'CARDIOLITE PLUS 50 MG TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(371, 'CARDNIT 2.6 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(372, 'CARDNIT 6.4 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(373, 'CARICEF 100 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(374, 'CARICEF 400 mg Caps 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(375, 'CARIPEPTIC SYRUP 120ML 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(376, 'CARMINA PLUS 120 TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(377, 'CARSEL 25MG TAB 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(378, 'CARSEL 50MG TAB 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(379, 'CARSEL PLUS 100 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(380, 'CARSEL PLUS 50 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(381, 'CARVEDA 12.5 MG TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(382, 'CARVEDA 25 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(383, 'CARVEDA 6.25 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(384, 'CASTER OIL MICKO 30ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(385, 'CEBAC 2 G INJ 1S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(386, 'CEBOSH 100 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(387, 'CEBOSH 200 mg/5ml Susp DS 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(388, 'CEBOSH 400 mg Caps 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(389, 'CECLOR 125 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(390, 'CECLOR 250 mg Caps 6x2s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(391, 'CECLOR 250 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(392, 'CECLOR 50 mg/ml Drops 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(393, 'CECLOR 500 mg Caps 6x2s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(394, 'CECLOR MR 375 MG TABS 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(395, 'CECON 100 mg/ml Drops 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(396, 'CECON 500 mg Tabs Chewable 40s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(397, 'CEF OD  100 MG/5ML SUS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(398, 'CEF OD DS 200MG SYURP 30ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(399, 'CEFALOR 125 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(400, 'CEFALOR 250 mg Caps 6x2s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(401, 'CEFALOR 50 mg/ml Drops 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(402, 'CEFAMEZIN 500 mg Inj Vial', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(403, 'CEFIGET  DS  200MG 5ML SYRP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(404, 'CEFIGET 100 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(405, 'CEFIGET 200 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(406, 'CEFIGET 400 mg Caps 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(407, 'CEFIM 100 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(408, 'CEFIM 400 mg Caps 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(409, 'CEFIM DS 200 MG/5ML SUSP 30ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(410, 'CEFPROX  200MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(411, 'CEFPROX 100 MG/5ML SUSP 50ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(412, 'CEFPROX 100 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02');
INSERT INTO `pharmacy` (`id`, `medicine_name`, `medicine_category_id`, `medicine_image`, `medicine_company`, `medicine_composition`, `medicine_group`, `unit`, `min_level`, `reorder_level`, `vat`, `unit_packing`, `supplier`, `vat_ac`, `note`, `is_active`, `created_at`) VALUES
(413, 'CEFPROX 40 mg/5ml Susp 50ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(414, 'CEFSPAN 100 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(415, 'CEFSPAN 200 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(416, 'CEFSPAN 400 mg Caps 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(417, 'CELBEXX 100 mg Caps 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:02'),
(418, 'CELBEXX 200 mg Caps 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(419, 'CEPOREX 125 MG/5ML SUSP 90ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(420, 'CEPOREX 250 MG/5ML SUSP 90ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(421, 'CEPOREX 250 mg Caps 12s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(422, 'CEPOREX 500 mg Caps 12s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(423, 'CESTONIL PLUS 5.25 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(424, 'CHEER UP 10MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(425, 'CHEWCAL 100 IU Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(426, 'CHYMORAL FORTE 0 Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(427, 'CICATRIN 0.2 %w/w Powder 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(428, 'CIDINE 1 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(429, 'CILOXAN 0.3 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(430, 'CIPESTA 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(431, 'CIPOCAINE 0.3 %w/v Ear Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(432, 'CIPOTIC 0.3 %w/v Ear Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(433, 'CIPOTIC-D 0.3 %w/v Ear Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(434, 'CIPRALEX Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(435, 'CIPROXIN 250 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(436, 'CIPROXIN 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(437, 'CIPVAL 250 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(438, 'CIPVAL 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(439, 'CITANEW 10 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(440, 'CITANEW 20 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(441, 'CITANEW 5 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(442, 'CITANEW ORAL DROPS 30ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(443, 'CITOLIN 0 Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(444, 'CITOLIN 500 mg Tabs 10`s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(445, 'CITOLIN 500 mg/5ml Syrup 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(446, 'CITRALKA 1.315 g/5ml Liquid 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(447, 'CITRALKA LIQUID 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(448, 'CITRO SODA SACHET 5GX20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(449, 'CLAFORAN  INJECTION 0.5MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(450, 'CLAFORAN 1 g Inj Vial', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(451, 'CLAFORAN INJECTION 0.25G 0X1', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(452, 'CLARITEK 125 mg/5ml Drops 25ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(453, 'CLARITEK 125 mg/5ml Susp 50ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(454, 'CLARITEK 250 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(455, 'CLARITEK 250 mg/5ml Susp 70ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(456, 'CLARITEK 500 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(457, 'CLARITEK GRANULES 125MG/5 MI', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(458, 'CLARITEK XL 500 mg Tabs 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(459, 'CLARITHRO 125 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(460, 'CLENIL 250 mcg/actu Inhaler 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(461, 'CLENIL AEROSOL 800 MCG/ACTU AEROSOL 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(462, 'CLEXANE 40 mg Inj 0.4mlx2s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(463, 'CLEXANE 60 mg Inj 0.6mlx2s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(464, 'CLEXANE 80 mg Inj 0.8mlx2s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(465, 'CLINAGEL 1 %w/w Gel 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(466, 'CLINICA 0.2 %w/v Mouth Wash 150ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(467, 'CLINICA 0.2 %w/w Paste 100g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(468, 'CLOBEDERM-NN 15G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(469, 'CLOBEVATE 0.05 %W/W CREAM 20G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(470, 'CLOBEVATE 0.05 %W/W OINT 20G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(471, 'CLOMFRANIL 10 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(472, 'CLOMID 50 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(473, 'CLOTRIMAZOLE 1 %w/v Soln 20ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(474, 'CLOZOX H 1 %w/w Cream 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(475, 'CLYCIN-T 10 mg/ml Lotion 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(476, 'CO APROVEL  300.12.5 MG  .TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(477, 'CO APROVEL 150MG12.5.TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(478, 'CO PLAVIX  75/75MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(479, 'CO-BENZ TABLETS 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(480, 'CO-DIOVAN  80/12.5 MG TABS 28S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(481, 'CO-DIOVAN 160/12.5 MG TABS 28S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(482, 'CO-DORZAL 2 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(483, 'CO-EXTOR  10+160+12.5', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(484, 'CO-EXTOR  5+160+25 TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(485, 'CO-EXTOR 5+160+12.5', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(486, 'CO-EZIDAY 12.5 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(487, 'CO-OLESTA  40MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(488, 'CO-OLESTA  AM  40 +5+25TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(489, 'CO-OLESTA 20MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(490, 'CO-OLESTA AM  40 10+25 TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(491, 'CO-OLESTA AM 20  +5+12.5TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(492, 'COBOLMIN 500 mcg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(493, 'COFCOL 1 mg/15ml Elixir 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(494, 'COFERB LOZENGES 56S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(495, 'COFREST 30 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(496, 'COLDENE 6.25 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(497, 'COLDENE 6.5 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(498, 'COLDENE 60ML SYRUP 60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(499, 'COLIBID  Drops 7.5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(500, 'COLIC 60ML SYRUP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(501, 'COLIC DROPS 20ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(502, 'COLOFAC 135 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(503, 'COMBINOL D  SYP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(504, 'COMBINOL E SYP  120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(505, 'COMBINOL H JUNIOR 60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(506, 'COMBINOL JUNIOR 60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(507, 'COMBIVAIR 200 mcg Rota Caps 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(508, 'COMBIVAIR 400 mcg Rota Caps 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(509, 'CONAZ CREAM 10MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(510, 'CONAZ LOTION  60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(511, 'CONCOR 10 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(512, 'CONCOR 2.5 mg Tabs 1x14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(513, 'CONCOR 5 mg Tabs 1x14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(514, 'CONTIMYCIN 100 mg Caps 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(515, 'CONTOUR 20MG CAP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(516, 'CONTOUR 40 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(517, 'CONZYME 10MG TAB 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(518, 'CORALAN 5MG 56S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(519, 'CORALAN 7.5 MG 56S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(520, 'CORDARONE 200 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(521, 'CORE  24 TAB   30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(522, 'COREX-D 4 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(523, 'COREX-D 4 mg/5ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(524, 'CORTISPORIN 400 IU/g Eye Oint 3g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(525, 'COSOPT 2 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(526, 'COTASMI  40MG TABLIT  14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(527, 'COTASMI  80MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(528, 'COTTON ROLL 100G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(529, 'COTTON ROLL 200G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(530, 'COVA -H-80/12.5MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(531, 'COVA-H- 160/12.5MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(532, 'COVAM  5/160 MD TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(533, 'COVAM 5/80MG 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(534, 'COVERSAM  4MG/5MG TAB 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(535, 'COVERSAM  8MG/5MG TAB 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(536, 'COVERSAM 8MG/10MG TAB10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(537, 'COVERSYL 2 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(538, 'COVERSYL 4 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(539, 'COVERSYL 8 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(540, 'COVERSYL PLUS 4+1.25 MG TABS 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(541, 'CRAFILM 1 g/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(542, 'CRANMAX PRO SACHET 10 POUCHES', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(543, 'CRANZO  SACHETS  EXTRA  10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(544, 'CREMAFFIN 3.5 ml/5ml Emul 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(545, 'CRESTAT 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(546, 'CRESTAT 5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(547, 'CUF-G- SYP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(548, 'CUREZOLE CREAM 15GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(549, 'CURINE 0.01 %w/v Eye Drops 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(550, 'CUTIVATE 0.05 %w/w Cream 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(551, 'CYCIN 250 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(552, 'CYCIN 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(553, 'CYCLO EYE DROP 0.05 . 1S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(554, 'CYMBALTA 30 MG  CAPSUL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(555, 'CYMBALTA 60 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(556, 'CYROCIN 250 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(557, 'CYROCIN 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(558, 'CYSTONE   SYRUP  100 ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(559, 'CYSTONE  TAB  60S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(560, 'CYTOPAN 75 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(561, 'D TRES  INJ', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(562, 'DAFLON TAB 500MG 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(563, 'DAIBOLD  4MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(564, 'DAKTARIN 2 %w/w Cream 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(565, 'DAKTARIN 2 %w/w Gel 20g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(566, 'DALACIN-C 300 mg Caps 16s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(567, 'DAN D 50000 IU CAP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(568, 'DAN D 5MG 1 ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(569, 'DANZEN  DS TAB 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(570, 'DANZEN 5 mg Tabs 2x 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(571, 'DANZOL 100 mg Caps 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(572, 'DANZOL 200 mg Caps 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(573, 'DAONIL 5 mg Tabs 2x30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(574, 'DAPA 10MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(575, 'DAPA MET XR 5+1000MG 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(576, 'DAPA MET-XR 10+1000MG 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(577, 'DE-CALC 500 IU Tabs 1x50s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(578, 'DEBRIDAT 100 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(579, 'DEBRIDAT 200 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(580, 'DEBRIDAT 24 mg/5ml Susp 120 ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(581, 'DELTACARTIL ENTERIC COATED 5 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(582, 'DELTACORTRIL 5 mg Tabs 1000s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(583, 'DEPO MEDROL 40 mg Inj 1ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(584, 'DEPO MEDROL 80MG 2ML INJ', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(585, 'DEPRICAP 20 mg Caps 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(586, 'DERMA SMOOTH LOTION 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(587, 'DERMOVATE 0.05 %W/W CREAM 20G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(588, 'DERMOVATE 0.05 %W/W OINT 20G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(589, 'DERMOVATE-NN 0.5 %W/W OINT 20G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(590, 'DESLAVID TAB 5MG 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(591, 'DESORA 0.5 mg/5ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(592, 'DESORA 5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(593, 'DESTINA 5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(594, 'DETRUSITOL 2 mg Tabs 28s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(595, 'DEXAMETHASONE INJ 1ML SEARLE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(596, 'DEXATOB 0.1 %w/v Ear Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(597, 'DEXIMOX 0.1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(598, 'DEXTOP  30MG CAPSULE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(599, 'DEXTOP  60MG  CAPSUL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(600, 'DEXXOO 30MG CAP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(601, 'DEXXOO 60MG CAP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(602, 'DIABETRON 80 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(603, 'DIABOLD 2 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(604, 'DIABOLD 3 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(605, 'DIAGESIC-P 70 mg Caps SR 3X10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(606, 'DIAMICRON 80 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(607, 'DIAMICRON-MR 30 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(608, 'DIAMPA 10MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(609, 'DIAMPA-M 12.5/1000MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(610, 'DIAMPA-M 12.5/850MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(611, 'DIAMPA-M 5+1000 MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(612, 'DIAMPA-M 5+500MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(613, 'DIAMPA-M 5+850MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(614, 'DIAMPA-M-12.5/500MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(615, 'DIANE-35 2 mg Tabs 21s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(616, 'DIASAR 10/160 TAB 2X7', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(617, 'DIASAR 5/160  TAB 2X7', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(618, 'DIASAR 5/80 TAB  2X7', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(619, 'DIAZINC  60ML SYRUP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(620, 'DICE  G TAB  30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(621, 'DICLOMAC 50 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(622, 'DICLORAN 1.16 %w/w Gel 20g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(623, 'DICLORAN 50 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(624, 'DICLORAN DISPERLET 100 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(625, 'DIGAS COLIC DROP 20ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(626, 'DIGAS TAB CLASSIC 120S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(627, 'DIGESTINE CAP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(628, 'DIJEX MP CARMINATIVE 215 mg/5ml Susp 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(629, 'DIJEX MP MIXED FRUIT 215 mg/5ml Susp 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(630, 'DIOVAN 160 MG TABS 28S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(631, 'DIOVAN 80 mg Tabs 28s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(632, 'DIROGEST 10 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(633, 'DISPRIN 300 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(634, 'DISPRIN 300 mg Tabs 600s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(635, 'DISPRIN-CV 100 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(636, 'DISTAL WATER', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(637, 'DISTALGESIC TAB 1X10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(638, 'DIU-TANSIN 12.5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(639, 'DIUZA 25 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(640, 'DOLGINA 30MG CAP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(641, 'DOLGINA 60 MG CAP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(642, 'DOLTEE TEETHING 0 Drops 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(643, 'DORMICUM 7.5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(644, 'DOSIK 1.5 mg Tabs 5x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(645, 'DOWFEN 2.5 %w/w Gel 25g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(646, 'DOWVIGIL 200MG TABS 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(647, 'DOXIUM 500 mg Caps 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(648, 'DR KOFF COUGH SYRUP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(649, 'DR KOFF LOZENG C F [H-L] POP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(650, 'DR KOFF SPRAY 25ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(651, 'DRATE 70 mg Tabs 4s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(652, 'DRATE PLUS D 0 Tabs 4s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(653, 'DROPS INDROP  -D-400IU  10ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(654, 'DULAN 20 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(655, 'DULAN 60 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(656, 'DUODART 500 mcg Caps 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(657, 'DUOFILM 16.7 %w/v Liquid 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(658, 'DUPHALAC 3.35 g/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(659, 'DUPHASTON 10 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(660, 'DURAGESIC PLAIN TABS 100S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(661, 'DURICEF 100 mg/ml Drops 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(662, 'DURICEF 125 MG/5ML SUSP 90ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(663, 'DURICEF 250 MG/5ML SUSP 90ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(664, 'DURICEF 500 mg Caps 12s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(665, 'DUZALTA 30 MG CAPS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(666, 'DUZALTA 60 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(667, 'DX3  200000 S/GEL CAP 1S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(668, 'DX3 5MG/ML INJ 5S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(669, 'E-CLAR 125 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(670, 'E-CLAR 250MG SYP 5ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(671, 'E-CLAR DROPS 25ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(672, 'E-CLAR DS 500MG 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(673, 'E-CLAR XL 500MG TAB 5S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(674, 'EBAGET -D- 10GM  TAB 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(675, 'EBAGET -D20  TAB 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(676, 'EBIXA 10 mg Tabs 56s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(677, 'ECASIL 600 mg Tabs 12s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(678, 'ECOTEC  10S SACHET', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(679, 'EFEXOR 75 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(680, 'EMERGENCY PILLS 0.75MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(681, 'EMKIT-DS 1.5 mg Tabs 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(682, 'EMPAA  12.5MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(683, 'EMPAA 10MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(684, 'EMPAA 25MG  TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(685, 'EMPAA M XR TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(686, 'ENFLOR 250 mg/sachet Powder 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(687, 'ENIER 16 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(688, 'ENIER 8 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(689, 'ENO LEMON SACHET 12S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(690, 'ENO ORANGE 5G SACHET 12S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(691, 'ENOXABID 400 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(692, 'ENSURE CHOCOLATE  Powder 400g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(693, 'ENSURE PLUS  LIQUID 250ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(694, 'ENSURE STRAWBERRY  Powder 400g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(695, 'ENSURE VANILLA  Powder 400g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(696, 'ENTAMIZOLE 125 mg/5ml Susp 90ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(697, 'ENTAMIZOLE DS 500 MG TABS 15S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(698, 'ENTEROGERMINA 2B ORAL SUSP 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(699, 'ENVEPE 10 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(700, 'ENZICLOR 0.15 %w/v Mouth Wash 150ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(701, 'ENZICLOR 1 %w/w Gel 30g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(702, 'EPITIZE PLUS SYP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(703, 'EPIVAL 250 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(704, 'EPIVAL 250 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(705, 'EPIVAL 500 MG TABS 10X10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(706, 'EPIVAL-CR 500 mg Tabs 5x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(707, 'EPLAZYME SYP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(708, 'EPTI SYRUP  120 ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(709, 'ERYTHROCIN 200 mg Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(710, 'ERYTHROCIN 250 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(711, 'ERYTHROCIN 500 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(712, 'ESKEM  20MG TAB 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(713, 'ESKEM 40 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(714, 'ESOPASE 20 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(715, 'ESOPASE 40 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(716, 'ESOPEP 20 mg Caps 2x7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(717, 'ESOPEP 40 mg Caps 2x7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(718, 'ESOPEP 40 mg Inj 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(719, 'ESPRA 20 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(720, 'ESPRA 40 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(721, 'ESSO-20 20 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(722, 'ESSO-40 40 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(723, 'ESSO-40 40 mg Inj-IV 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(724, 'ESTAR 10 MG TABS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(725, 'ESTAR 5MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(726, 'ESTRANOR 2 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(727, 'EVION 400 mg Caps 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:03'),
(728, 'EVION 600 mg Caps 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(729, 'EVOKALM 100 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(730, 'EVOKALM 25 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(731, 'EVOPRIDE 1 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(732, 'EVOPRIDE 2 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(733, 'EVOPRIDE 3 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(734, 'EVOPRIDE 4 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(735, 'EVOPRIDE PLUS 1/500 MG TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(736, 'EVOPRIDE PLUS 2/500 MG TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(737, 'EXFORGE 10/160 MG TABS 28S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(738, 'EXFORGE 5/160 MG TABS 28S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(739, 'EXFORGE 5/80 MG TABS 28S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(740, 'EXFORGE HCT 10/160/12.5 MG TABS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(741, 'EXFORGE HCT 5/160/12.5 MG TABS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(742, 'EXOCIN 0.3 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(743, 'EXTOR  5/160  MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(744, 'EXTOR  5/80 MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(745, 'EXTOR 10/160 TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(746, 'EXTRA C TAB 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(747, 'EYELUB 0.3 % Eye Drops 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(748, 'EYFEM 0.1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(749, 'EYFEM-N 0.1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(750, 'EZ  COLIC7.5ML DROPS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(751, 'EZIDAY 100 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(752, 'EZIDAY 25 mg Tabs 1x20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(753, 'EZIDAY 50 mg Tabs 1x20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(754, 'EZIDAY-DUO 5/100MG TAB 20', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(755, 'EZIDAY-DUO 5/50MG TAB 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(756, 'EZILAX SYP 60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(757, 'EZILAX TAB 30', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(758, 'EZITA 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(759, 'EZIUM 20 mg Caps 2x7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(760, 'EZIUM 40 mg Caps 2x7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(761, 'EZOMOL 40 mg Caps 2x7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(762, 'FAAST 20 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(763, 'FAAST 40 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(764, 'FAAST+(PLUS) 20 MG CAPS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(765, 'FAAST+(PLUS) 40 MG CAPS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(766, 'FAMILA-28 0.03 mg Tabs 3x28s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(767, 'FAMOPSIN 20 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(768, 'FAMOPSIN 40 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(769, 'FAMOT 10 mg/5ml Susp 60 ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(770, 'FAMOT-20 20 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(771, 'FAMOT-40 40 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(772, 'FANSIDAR 25 mg Tabs 150s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(773, 'FANSIDAR 25 mg/5ml Susp 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(774, 'FASTUM  GEL  50GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(775, 'FEBROL 250 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(776, 'FEFOL VIT SPANSULE CAPS 56S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(777, 'FELDENE 0.5 %w/w Gel 25g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(778, 'FELDENE 20 mg Tabs 40s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(779, 'FEME TABLET', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(780, 'FEMICON 0.1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(781, 'FEMIROZ 10 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(782, 'FENOGET 200 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(783, 'FENOGET 67 mg Caps 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(784, 'FEROSOFT  SYRUP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(785, 'FEROSOFT 50 mg/ml Drops 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(786, 'FEROSOFT FA  TABS 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(787, 'FEROSOFT-S 20 mg/ml Inj 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(788, 'FERRICURE 50 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(789, 'FERRICURE CAP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(790, 'FEXET 120 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(791, 'FEXET 120 mg Tabs 2x5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(792, 'FEXET 180 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(793, 'FEXET 60 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(794, 'FEXET D 60 mg Tabs 10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(795, 'FIBO  Sachet 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(796, 'FIBO JAR', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(797, 'FIBO SYRUP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(798, 'FIXITIL 100 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(799, 'FIXITIL 400 mg Caps 1x5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(800, 'FIXITIL DS SYP 30ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(801, 'FIXOMULL STRETCH 10CMX10M', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(802, 'FIXVAL 200 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(803, 'FLAGYL 200 mg/5ml Susp 90ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(804, 'FLAGYL 400 mg Tabs 20x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(805, 'FLAGYL 500 mg/100ml Inf 100 ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(806, 'FLEXERIL  SYP  DS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(807, 'FLEXERIL 100 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(808, 'FLEXERIL 400 mg Caps 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(809, 'FLEXIN 250 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(810, 'FLEXIN 500 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(811, 'FLIXONASE 0.05 %w/w Nasal Spray 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(812, 'FLOGOCID 500 mg/g Cream 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(813, 'FLOGOCID 500 mg/g Oint 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(814, 'FLOSURE 0.4 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(815, 'FLUANXOL 20 mg/ml Inj SR 2ml x1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(816, 'FLUEZE 6.25 mg/5ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(817, 'FLUEZE 6.5 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(818, 'FLUEZE SACH 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(819, 'FLUX 20 MG CAPS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(820, 'FLYTRO 0.01 %w/w Cream 15gm', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(821, 'FML 0.1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(822, 'FML FORTE 0.25 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(823, 'FML-NEO 0.1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(824, 'FOCIN 500 mg Caps 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(825, 'FOCIN 500 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(826, 'FOLIC ACID 5 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(827, 'FOLITAB 5 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04');
INSERT INTO `pharmacy` (`id`, `medicine_name`, `medicine_category_id`, `medicine_image`, `medicine_company`, `medicine_composition`, `medicine_group`, `unit`, `min_level`, `reorder_level`, `vat`, `unit_packing`, `supplier`, `vat_ac`, `note`, `is_active`, `created_at`) VALUES
(828, 'FORMIGET  200/6 MCG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(829, 'FORMIGET  400/12 MCG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(830, 'FORO-B12 125 mcg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(831, 'FORTIDE  INHALER', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(832, 'FORTUM 1 g Inj 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(833, 'FORTUM 250 mg Inj 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(834, 'FORTUM 500 mg Inj 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(835, 'FREEHALE 10 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(836, 'FREEHALE 4 mg Sachet 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(837, 'FREEHALE 5 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(838, 'FRESH EYES 0.12 %w/v Eye Drops 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(839, 'FROBEN 100 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(840, 'FROBEN 50 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(841, 'FUCICORT 0.1 %w/w Cream 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(842, 'FUCIDIN 250 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(843, 'FUCIDIN CREAM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(844, 'FUCIDIN H  CREAM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(845, 'FUCIDIN OINTMENT', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(846, 'FUDIC 2 %w/w Cream 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(847, 'FUDIC 2 %w/w Oint 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(848, 'FUDIC H 2 %w/w Cream 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(849, 'FUNGONE 150 mg Caps 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(850, 'FUSIDERM 2 %w/w Cream 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(851, 'FUSIDERM 2 %w/w Oint 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(852, 'FUSIDERM-H 2 %w/w Cream 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(853, 'FUSIL  2 %W/W CREAM 5G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(854, 'FUSIL 2 %W/W CREAM 15G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(855, 'FUSIL-B 0.1 %w/w Cream 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(856, 'FUSIL-HC 2 %w/w Cream 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(857, 'GABICA 100 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(858, 'GABICA 150 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(859, 'GABICA 300 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(860, 'GABICA 50 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(861, 'GABICA 75 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(862, 'GABIX 100 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(863, 'GABIX 300 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(864, 'GALLET 0.1 %w/w Cream 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(865, 'GALVUS MET 50/850MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(866, 'GALVUSMET 50/1000MG TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(867, 'GALVUSMET 50/500 MG TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(868, 'GANATON 50 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(869, 'GANATON OD 150 MG TABS 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(870, 'GAVISCON ADVANCE 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(871, 'GAVISCON LIQUID 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(872, 'GEMPID 600 mg Caps 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(873, 'GEN-CIPRO 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(874, 'GEN-LEVO 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(875, 'GEN-M 15 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(876, 'GEN-M 20 mg Tabs 2x8s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(877, 'GEN-M 80 mg Tabs 6s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(878, 'GEN-M DS 30 MG/5ML DRY SUSP 30ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(879, 'GENTHRO 250MG TAB 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(880, 'GENTHRO 500MG TAB 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(881, 'GENTICYN 0.3 %w/v Eye Drops 7.5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(882, 'GENTICYN-HC 0.3 %w/v E and E Drops 7.5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(883, 'GESTO TABLET QARSHI 100S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(884, 'GESTOFIL LIQUID 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(885, 'GETFORMIN 1 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(886, 'GETFORMIN 2 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(887, 'GETRYL 1 MG TABS 2X10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(888, 'GETRYL 2 MG TABS 2X10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(889, 'GETRYL 3 MG TABS 2X10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(890, 'GETRYL 4 MG TABS 2X10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(891, 'GHUTTI HAMDARD', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(892, 'GINBAX 120MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(893, 'GINGKO FOCUS TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(894, 'GLOBAL COLIC  DROPS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(895, 'GLOBAL S  DAILY ONE TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(896, 'GLOBOCID SYP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(897, 'GLORAL  FORTE TAB 1X10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(898, 'GLORAL 35 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(899, 'GLORID 50 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(900, 'GLUCERNA SR  Powder 400g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(901, 'GLUCOFACTOR 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(902, 'GLUCOPHAGE 1 g Tabs 5x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(903, 'GLUCOPHAGE 250 mg Tabs 50s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(904, 'GLUCOPHAGE 500 mg Tabs 5x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(905, 'GLUCOPHAGE 850 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(906, 'GLUCOPHAGE XR 750 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(907, 'GLUCOVANCE 1.25 mg Tabs 2x15s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(908, 'GLUCOVANCE 2.5 mg Tabs 2x15s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(909, 'GLUCOVANCE 5 mg Tabs 2x15s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(910, 'GLYCERINE 100 %W/V LIQUID 100G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(911, 'GLYCERINE PURE 100 %w/v Liquid 150g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(912, 'GLYCERINE PURE 100 %w/v Liquid 25g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(913, 'GLYCERINE SUPPOSITORIES ADULT Suppositories 12s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(914, 'GLYCERINE SUPPOSITORIES PAEDS 0 Suppositories 12s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(915, 'GLYVISOL 570 mg/15ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(916, 'GONADIL-F 40 mg Caps 4x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(917, 'GOURIC 40 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(918, 'GOURIC 80 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(919, 'GRASIL 100 mg Inj 2ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(920, 'GRASIL 500 mg Inj 2ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(921, 'GRAT 320 mg Tabs 7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(922, 'GRAVIBINAN 5 mg/ml Inj 1ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(923, 'GRAVIBINAN 5 mg/ml Inj 2ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(924, 'GRAVINATE 12.5 mg/4ml Liquid 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(925, 'GRAVINATE 50 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(926, 'GRAVINATE 50 mg/ml Inj 1mlx25s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(927, 'GRIPE WATER 0 0 Mixture 150ml Glass', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(928, 'GRIPE WATER 0 0 Mixture 150ml Plastic', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(929, 'GTN FORTE 25GM SUMMIT', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(930, 'GTN OINTMENT BAKSON', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(931, 'GTN OINTMENT SUMMIT', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(932, 'GUTCARE SACHET', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(933, 'GVIA -M- 50/500MG TAB. 2*7', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(934, 'GVIA-M-50/1000MG 2*5S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(935, 'GYNAECOSID 0.3 mg Tabs 2s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(936, 'GYNO DAKTARIN 2 %w/w Vag Cream 20g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(937, 'HADENSA COMFORT OINT', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(938, 'HADENSA FORTE 0.1 %w/v Oint 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(939, 'HAIR MAX 2 %w/v Soln 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(940, 'HAIR MAX PLUS 5 %w/v Soln 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(941, 'HAIRFIN 1 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(942, 'HAPPY LIFE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(943, 'HEALIT 500 IU/g Oint 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(944, 'HEAMOCARE  PLUS TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(945, 'HEAMOCARE 0 Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(946, 'HEPA MERZ 300 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(947, 'HEPA MERZ 500 mg/5ml Inj-IV 1x5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(948, 'HEPTOCAM 16 mg Caps 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(949, 'HEPTOCAM 16 mg/5ml Susp 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(950, 'HEPTOCAM 16 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(951, 'HERBESSER 180 mg Caps SR 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(952, 'HERBESSER 30 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(953, 'HERBESSER 60 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(954, 'HERBESSER 90 mg Caps SR 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(955, 'HI LACTA CAPS 500MG 60S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(956, 'HI-PARADENT T/P 75GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(957, 'HI-SALZ 16 %w/w Tooth Paste 100g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(958, 'HICAP M TAB 60S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(959, 'HIDRASEC 100MG CAPS  10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(960, 'HIDRASEC 30MG SACHET 16S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(961, 'HIGH-C 1000 500 mg Sachet 10 sachets', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(962, 'HIGH-C PLUS 100 mg Sachet 10 sachets', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(963, 'HILGAS SYRUP 120 ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(964, 'HILIN 100 MG CAPS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(965, 'HILIN 150 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(966, 'HILIN 50 MG CAPS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(967, 'HILIN 75 MG CAPS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(968, 'HINUBON 50-PLUS 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(969, 'HISTAZOLIN 4 %w/v Eye Drops 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(970, 'HITOP 25 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(971, 'HITOP 50 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(972, 'HIVATE 0.1 % W/W CREAM 10GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(973, 'HIVATE 0.1 W/V LOTION 30 ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(974, 'HIVATE 50 mcg Nasal Spray 20ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(975, 'HUMULIN 70/30 MIX 30 % Inj 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(976, 'HUMULIN 70/30 MIX 30 % Inj 5 cartridgesx3ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(977, 'HUMULIN-N (NPH) 100 IU/ml Inj 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(978, 'HUMULIN-R 100 IU/ml Inj 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(979, 'HY-CORTISONE 100 mg Inj 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(980, 'HYDERQUIN 4 %w/w Cream 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(981, 'HYDERQUIN PLUS 0.01 g Cream 15gm', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(982, 'HYDRALAZINE 20 mg Inj 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(983, 'HYDROGEN PER OXIDE 6 %v/v Soln 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(984, 'HYDROPHIL 10 %W/V LOTION 180ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(985, 'HYDROZOLE 1 %w/w Cream 20g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(986, 'HYDRYLLIN 32 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(987, 'HYDRYLLIN-DM 6.25 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(988, 'HYLIXIA  COUGH  20ML DROP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(989, 'HYLIXIA  SYRUP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(990, 'HYLOSAN 0 Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(991, 'IBANDRO 150 mg Tabs 1x1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(992, 'IBERET FOLIC-500 GRADUMET 500 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(993, 'ICON 100 mg Caps 4s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(994, 'IMATET 40 IU/0.5ml Inj 0.5mlx10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(995, 'IMDUR 60 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(996, 'IMODIUM 2 mg Caps 6x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(997, 'IMUTEC  SACHET', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(998, 'INDERAL 10 mg Tabs 50s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(999, 'INDROP-D 5 mg/ml Inj 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(1000, 'INFLAMATIX 100 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(1001, 'INFLUVAC  TETRA', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(1002, 'INHIBITOL 30 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(1003, 'INOFOLIC SACHET PLAIN 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(1004, 'INOSITA PLUS XR 100/1000MG 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(1005, 'INSPRA 10 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(1006, 'INSUGET 70/30 70 IU Inj 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(1007, 'INSUGET N 100 IU Inj 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(1008, 'INSUGET R 100 IU Inj 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(1009, 'INTIG D 0 mg Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:04'),
(1010, 'INTIG D 0 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1011, 'INTIG-D  SUSP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1012, 'IPNEB NEBULIZER SOLN 20ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1013, 'IPRIDE 50 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1014, 'IPRIDE SR 150 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1015, 'ISMO 20 20 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1016, 'ISOTIN 0.05 %w/w Gel 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1017, 'ITAGLIP  PLUS  50/500MG 2X7S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1018, 'ITAGLIP 50/850MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1019, 'ITP 50 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1020, 'IVATAB 5MG TAB 28S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1021, 'IVERMITE TAB  1X10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1022, 'IVF-C 5000 IU Inj 1+1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1023, 'IVF-M 150 IU Inj 1+1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1024, 'IVF-M 75 IU Inj 1+1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1025, 'JARDIN 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1026, 'JARDIN-D TAB 10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1027, 'JETEPAR 150 mg Caps 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1028, 'JETEPAR 200 mg/5ml Syrup 112ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1029, 'JEZETA  10/10MG  TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1030, 'JEZETA 10/20MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1031, 'JOINTIN-D  TAB  30', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1032, 'JOINTIN-D TAB 60S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1033, 'JONTILET SACHETS  10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1034, 'JOSHANDA QARSHI HONEY-', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1035, 'JOSHANDA QARSHI PLAIN', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1036, 'JOSHANDA SUGAR FREE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1037, 'JOVIT 400 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1038, 'JUVIA -M-PLUS - 50+500MG TB 10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1039, 'JUVIA M PLUS 50=1000MG TAB 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1040, 'KANADEX 0.5 MG TABS 100S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1041, 'KANADEX-N 0.1 %w/w Cream 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1042, 'KEFLEX 100 mg/ml Drops 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1043, 'KEFLEX 125 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1044, 'KEFLEX 250 mg Caps 12s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1045, 'KEFLEX 250 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1046, 'KEFLEX 500 mg Caps 12s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1047, 'KENACOMB 25 %W/W CREAM 20G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1048, 'KENALOG IN ORABASE 0.1 %W/W OINT 10G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1049, 'KESTINE 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1050, 'KESTINE 20 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1051, 'KESTINE 5 mg/5ml Syrup 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1052, 'KETOWIN 2 %w/v Lotion 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1053, 'KETRESS 40 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1054, 'KINZ 10 mg/ml Inj 1ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1055, 'KLARICID 125 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1056, 'KLARICID 125 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1057, 'KLARICID 250 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1058, 'KLARICID 250 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1059, 'KLARICID 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1060, 'KLARICID-I.V 500 mg Inf Vial', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1061, 'KLARICID-XL 500 mg Tabs 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1062, 'KLEEN ENEMA 19.2 g/120ml Enema 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1063, 'KLINT 400 mg Tabs 150s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1064, 'KOLAC 0.4 mg Susp 120 ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1065, 'KROTAM  325+37.5MG  TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1066, 'LABETALOL HCL 50MG INJ', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1067, 'LACRILUBE 0.5 %w/w Eye Oint 3.5g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1068, 'LAL SHARBAT 240ML SYP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1069, 'LALAP 100 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1070, 'LALAP 50 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1071, 'LAMICTAL 100 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1072, 'LAMICTAL 25 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1073, 'LAMICTAL 50 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1074, 'LAMISIL 1 %w/w Cream 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1075, 'LAMISIL 125 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1076, 'LAMISIL 250 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1077, 'LAMNET 100 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1078, 'LAMNET 25 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1079, 'LAMNET 50 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1080, 'LANOXIN 250 mcg Tabs 25s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1081, 'LANTUS 100 IU/ml Inj 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1082, 'LANTUS SOLOSTAR 100 IU/ml Inj 5 Vialx3 ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1083, 'LASIX 10 mg/ml Inj 2mlx50s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1084, 'LASIX 20 mg Tabs 2x50s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1085, 'LASIX 40 mg Tabs 2x50s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1086, 'LASORIDE  TABLET  3X10 3X10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1087, 'LAXOBERON 5 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1088, 'LAXOBERON LIQUID  12ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1089, 'LAZMA 0.01 %w/w Cream 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1090, 'LEDERPLEX 2 mg/4ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1091, 'LEFANOR 20 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1092, 'LEFLOX 250 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1093, 'LEFLOX 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1094, 'LEPRIDE 50 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1095, 'LEPRIDE TAB  25MG 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1096, 'LERACE 250 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1097, 'LERACE 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1098, 'LERACE ORAL SOLUTION 30ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1099, 'LERACE-XR 500 MG TABS 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1100, 'LERADIP 10 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1101, 'LEVOPRAID 50 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1102, 'LEVOPRIDE 25 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1103, 'LEVOXIN 250 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1104, 'LEVOXIN 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1105, 'LEXOTANIL 3 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1106, 'LIBRAX 5 MG DRAGEES 50S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1107, 'LICE-O-NIL  20GRM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1108, 'LIDOSPORIN 50 mg/ml Ear Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1109, 'LILAC 3.35 g/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1110, 'LINKUS  COUGH SYRUP 90ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1111, 'LINKUS  SYRUP  SUGAR FREE 90ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1112, 'LIPIGET 10 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1113, 'LIPIGET 20 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1114, 'LIPIGET 40 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1115, 'LIPIGET EZ 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1116, 'LIPIGET EZ 10/20 MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1117, 'LIPIREX 20 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1118, 'LIPITOR 20 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1119, 'LIQUID PARAFFIN 100 %w/v Liquid 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1120, 'LIV.52 DS TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1121, 'LIV.52 SYRUP 100ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1122, 'LIV.52 TAB 100', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1123, 'LIVLIV CAP 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1124, 'LONACORT 40 mg/ml Inj 1ml Amp', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1125, 'LOPHOS 169 MG TABS 100S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1126, 'LOPRIN 150 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1127, 'LOPRIN 75 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1128, 'LORIN-NSA 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1129, 'LORIN-NSA 5 mg/5ml Syrup 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1130, 'LOSANTA 25 MG TABS 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1131, 'LOSANTA 50 MG TABS 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1132, 'LOSANTA DIU 12.5 MG TABS 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1133, 'LOSEC 20 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1134, 'LOTRIX 1 %w/w Lotion 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1135, 'LOTRIX 5 %w/w Cream 30g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1136, 'LOWPLAT 75 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1137, 'LOWPLAT PLUS 150 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1138, 'LOWPLAT PLUS 75 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1139, 'LUMARK 250 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1140, 'LUMARK 500 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1141, 'LYSOVIT 75 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1142, 'LYTA 20 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1143, 'LYTA 30 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1144, 'MAC-F -PLUS TAB 20', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1145, 'MAC-F TAB 30TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1146, 'MAC-F-SYP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1147, 'MACLIFE SPACER FOR  AEROSOL.', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1148, 'MACROBAC 250 mg Caps 6s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1149, 'MACROBAC 500 TABS 6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1150, 'MACROBAC SUSP. 200MG/5ML 15ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1151, 'MACROMYD  250MG CAP 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1152, 'MAGNETT  DS  SUSP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1153, 'MAGNETT 100 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1154, 'MAGNETT 400 mg Caps 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1155, 'MALTOFER  SYRUP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1156, 'MALTOFER 50 mg/ml Drops 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1157, 'MALTOFER FOL 0.35 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1158, 'MANACID FORTE 400 mg/5ml Susp 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1159, 'MASACOL 400 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1160, 'MAX HAIR DRY DAMAGE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1161, 'MAXDIF FACE WASH  100ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1162, 'MAXFLOW 0.4 mg Caps 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1163, 'MAXIDEX 0.1 %w/v Eye Drops 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1164, 'MAXIMA 100 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1165, 'MAXIMA 400 mg Caps 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1166, 'MAXIT 50 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1167, 'MAXIT 75 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1168, 'MAXOLON 10 mg Tabs 20x5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1169, 'MAXOLON 5 mg/5ml Syrup 50ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1170, 'MAXOLON 5 mg/ml Inj 10sx2ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1171, 'MAXZOOM (HAIR GROWTH) 60S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1172, 'MEBEVER MR 200 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1173, 'MECOVIS  TAB 500MG  10X10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1174, 'MEDICS INHALER 1GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1175, 'MEDIGESIC 35/450MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1176, 'MEDIGESIC FORTE 30 mg Tabs 20x5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1177, 'MEGAMOX EYE DROPS 5ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1178, 'MELATONIN 3MG 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1179, 'MEPRESOR 100 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1180, 'MEPRESOR 200 mg Tabs SR 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1181, 'MEROL 25 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1182, 'MEROL 50 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1183, 'METEOSPASMYL 0 Caps 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1184, 'METHACHLOR 1 %w/w Eye Oint 3g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1185, 'METHYCOBAL 500 mcg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1186, 'METODINE 325 mg Tabs 60s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1187, 'METODINE DF 500 mg Tabs 15s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1188, 'METOMIDE 5 mg/5ml Syrup 50ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1189, 'METROZINE 200 mg/5ml Susp 90ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1190, 'METROZINE 400 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1191, 'MICRONEMA 90 %v/v Enema 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1192, 'MICRONEMA 90 %v/v Enema 20ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1193, 'MIGRIL 100 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1194, 'MINICOL 40 mg/ml Drops 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1195, 'MINIRIN 0.1 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1196, 'MIONEX 400 mg Tabs 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1197, 'MISAR  10MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1198, 'MISAR 40 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1199, 'MISAR-AM        40/ 5 MG TABS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1200, 'MISAR-AM       40/ 10 MG TABS 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1201, 'MITS 15 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1202, 'MITS 7.5 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1203, 'MIURA 5 mg Inj 1ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1204, 'MIXTARD HM 30 %w/v Inj 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1205, 'MIXTARD PENFIL 1X3ML 100I.U', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1206, 'MMS NASAL SPRAY 6ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1207, 'MOBICAL TABLET 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1208, 'MODURETIC 5 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1209, 'MOFEST 400 mg Tabs 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1210, 'MOKSI 400 mg Tabs 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1211, 'MOLOX 400 mg Tabs 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1212, 'MONITOR 10 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1213, 'MONITOR 2.5 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1214, 'MONITOR 5 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1215, 'MONOKAST  10MG  TAB  14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1216, 'MONTAIR 10 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1217, 'MONTIGET 10 mg Tabs 2x7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1218, 'MONTIGET 5 mg Tabs 2x7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1219, 'MONTIKA 10 MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1220, 'MONTIKA 5 mg Tabs Chewable 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1221, 'MONTIT 10 MG TABS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1222, 'MONUROL 3 g Powder 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1223, 'MOOR 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1224, 'MOOR 4MG SACHET', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1225, 'MOOR 5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1226, 'MORCET 10 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1227, 'MORCET 5MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1228, 'MOSEGOR 0.25 mg/5ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1229, 'MOSEGOR 0.5 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1230, 'MOTILIUM  V  TAB  10MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1231, 'MOTILIUM 10 mg Tabs 10x5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1232, 'MOTILIUM SUSP 120 ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1233, 'MOTIVAL 0.5+10MG TABS 100S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1234, 'MOTROL 25 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1235, 'MOTROL 50 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1236, 'MOVAX 2 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1237, 'MOVAX 4 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1238, 'MOVCOL 46.6 mg Sachet 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1239, 'MOXIBACT 400 mg Tabs 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05');
INSERT INTO `pharmacy` (`id`, `medicine_name`, `medicine_category_id`, `medicine_image`, `medicine_company`, `medicine_composition`, `medicine_group`, `unit`, `min_level`, `reorder_level`, `vat`, `unit_packing`, `supplier`, `vat_ac`, `note`, `is_active`, `created_at`) VALUES
(1240, 'MOXIGAN 0.5 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1241, 'MOXIGET 400 mg Tabs 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1242, 'MUCAINE SYRUP 120 ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1243, 'MUCOLATOR 200 mg/sachet Granules 3gx30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1244, 'MULTIBIONTA 100 mg Caps 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1245, 'MULTIBIONTA 50 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1246, 'MULTIBIONTA 500 mg/10ml Inf 10mlx5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1247, 'MULTIBIONTA-M 100 mg Caps 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1248, 'MULTIFACTOR TAB 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1249, 'MUSCORIL 4 mg Caps 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1250, 'MUSIDIN 2 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1251, 'MUSIDIN 4 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1252, 'MYCITRACIN PLUS 500 IU/g Oint 14g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1253, 'MYCONIL 100000 IU/ml Drops 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1254, 'MYFOL DROPS 15ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1255, 'MYFOL TABLETS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1256, 'MYONAL 50 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1257, 'MYTEKA 10 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1258, 'MYTEKA 4 mg/Sachet Granules 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1259, 'MYTEKA 5 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1260, 'MYTIL 500 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1261, 'NAFCIN 250 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1262, 'NAFCIN 500 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1263, 'NASACORT AQ NASAL SPRY', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1264, 'NASARIN 55 mcg/actu Nasal Spray 17.5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1265, 'NATRILIX 1.5 mg Tabs SR 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1266, 'NAUNEHAL GRIPE WATER HAMDARD', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1267, 'NAUNEHAL NAPPY CREAM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1268, 'NAVIDOXINE 25 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1269, 'NEBIL  2.5MG 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1270, 'NEBIL 5 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1271, 'NEBRA 0.3 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1272, 'NEBRA 0.3 %w/w Eye Oint 5g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1273, 'NEEGE  20MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1274, 'NEEGE 40 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1275, 'NEMOROID CREAM 25GM HAMDARD', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1276, 'NEO-ANTIAL 0.5 mg/ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1277, 'NEO-K 500 mg Tabs SR 25s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1278, 'NEO-MERCAZOLE 5 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1279, 'NEO-SEDIL 2.5 mg/5ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1280, 'NEODIPAR 500 mg Tabs 5x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1281, 'NEODIPAR 850 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1282, 'NEOGAB 100 MG CAPS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1283, 'NEOGAB 300 MG CAPS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1284, 'NEOMERCAZOLE  TAB  5MG  100S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1285, 'NEOPROX 250 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1286, 'NEOPROX 500 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1287, 'NEPANAC 0.1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1288, 'NERVIN 0.25 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:05'),
(1289, 'NERVIN 0.5 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1290, 'NERVON 500 mcg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1291, 'NEUPRED 0 LIQUID 15ML/5ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1292, 'NEUROBION 1000 mcg/3ml Inj 3mlx25s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1293, 'NEUROBION 200 mcg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1294, 'NEUROMAX    1000MCG TAB  20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1295, 'NEUROMET 500 mcg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1296, 'NEUROMET 500MG 10X1ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1297, 'NEVANAC 0.1% EYE SUSP 5ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1298, 'NEWDAY 10/160MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1299, 'NEWDAY 5/160MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1300, 'NEWDAY 5/80MG TAB 14', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1301, 'NEXUM 20 mg Caps 2x7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1302, 'NEXUM 40 mg Caps 2x7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1303, 'NEZKIL 400 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1304, 'NEZKIL 600 mg Tabs 2x5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1305, 'NICORIL 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1306, 'NICOTRIM PAED 200 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1307, 'NIFLAM 0.15 %w/v Mouth Wash 150ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1308, 'NILSTAT ORAL DROP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1309, 'NIMS 100 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1310, 'NISE 100 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1311, 'NITRIL SPRAY 200 DOSES', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1312, 'NITROMINT RETARD 2.6 mg Tabs 6x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1313, 'NITROMINT RETARD 6.5 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1314, 'NIZORAL 2 %w/w Cream 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1315, 'NO SPA 40MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1316, 'NO SPA INJ 40MG25X2ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1317, 'NO. SPA FORT TAB 3X10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1318, 'NOCLOT 75 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1319, 'NORMISAR 20 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1320, 'NORMISAR 40 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1321, 'NOROXIN 400 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1322, 'NORSALINE-P 0 Nasal Drops 30 ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1323, 'NORVASC 10 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1324, 'NORVASC 5 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1325, 'NOVIDAT 125 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1326, 'NOVIDAT 200 mg/100ml Inf 100ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1327, 'NOVIDAT 250 MG/5ML SUSP 5ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1328, 'NOVIDAT 250 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1329, 'NOVIDAT 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1330, 'NOVOFINE 31G 6MM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1331, 'NOVOMIX 30 Inj 3mlx5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1332, 'NOVORAPID FLEXPEN 100 IU Inj 3ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1333, 'NOVOTEPH 20 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1334, 'NT-TOX 100 MG/5ML SUSP 60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1335, 'NT-TOX 500 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1336, 'NUBEROL  FORTE 650 MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1337, 'NUBEROL 35 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1338, 'NUTRITION-12 50 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1339, 'NUTRITION-6 350 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1340, 'OAD  WOMEN  TAB 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1341, 'OCLONAC 0.1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1342, 'OCUFEN 0.03 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1343, 'OFYLIN  SYP 60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1344, 'OFYLIN 400 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1345, 'OGATE 0.1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1346, 'OGATE FORTE  EYE 1S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1347, 'OGREL 75 MG TABS 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1348, 'OGREL PLUS 81+75 MG TABS 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1349, 'OLANZIA 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1350, 'OLANZIA 5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1351, 'OLESTA  AM  10/20 TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1352, 'OLESTA  AM  5/20 TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1353, 'OLESTA 20 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1354, 'OMEZOL 10 mg Caps 2x7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1355, 'OMEZOL 20 mg Caps 2x7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1356, 'OMEZONATE 40 mg Sachet 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1357, 'OMOD TAB 30 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1358, 'ONE ALPHA 0.2 mcg/ml Drops 20ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1359, 'ONE ALPHA 0.5 mcg Caps 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1360, 'ONITA 2 g Sachet 7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1361, 'ONSET 8 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1362, 'OPT-D CAPSULE 200000 IU CAP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1363, 'OPTI VISION TABS 60S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1364, 'OPTILETS-M 200 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1365, 'OPTRA HFA 20 mcg Inhaler 200 doses', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1366, 'ORELOX 100 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1367, 'ORELOX SUSP  50ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1368, 'ORGLU  80 MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1369, 'ORIBRO 100 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1370, 'ORINASE 1 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1371, 'ORINASE 2 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1372, 'ORINASE 3 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1373, 'ORINASE 4 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1374, 'ORINASE MET 1 1 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1375, 'ORINASE MET 2 2 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1376, 'ORLIFIT 120 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1377, 'ORPASE 100 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1378, 'ORPASE 200 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1379, 'ORPASE 400 mg Caps 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1380, 'ORSLIM 120 mg Caps 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1381, 'ORVA 20 MG TABS 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1382, 'OSAM D 400 IU Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1383, 'OSMOLAR BANANA 0 Powder 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1384, 'OSNATE D 0 Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1385, 'OSPAMOX 1 g Tabs 12s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1386, 'OSPOR SUSP 10*5ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1387, 'OSSOBON D 0 Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1388, 'OSTEGEM  TAB 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1389, 'OSTIBON 0.5 mcg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1390, 'OTOSPORIN 1 %w/v Ear Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1391, 'OXAQUIN 400 mg Tabs 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1392, 'OXCYM DR 30 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1393, 'OXCYM DR 60 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1394, 'OXIDIL 1 g Inj-IV Vial', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1395, 'OXIDIL 250 mg Inj Vial', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1396, 'OXOFERIN SOLUTION 50ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1397, 'OXYCROM 2 %w/v Nasal Spray 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1398, 'OXYCROM-P 4 %w/v Nasal Spray 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1399, 'PACIFIC JACK JILL  120 ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1400, 'PACIFIC MIXTURE 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1401, 'PAEDICARE BANANA 0 Soln 500ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1402, 'PAEDICARE LEMON 0 Soln 500ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1403, 'PANADOL  CF  DAY  CAPLETS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1404, 'PANADOL 500 mg Tabs 200s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1405, 'PANADOL 60 mg/5ml Drops 20ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1406, 'PANADOL EXTEND 665MG TAB 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1407, 'PANADOL EXTRA 65 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1408, 'PANADOL FORTE 250 MG/5ML SUSP 90ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1409, 'PANADOL SUSP PLAIN 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1410, 'PANADOL-CF 4 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1411, 'PANIZOX 20 MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1412, 'PANTRA   PLUS  TRAMADOL=PARACTAMO 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1413, 'PARAXYL 20 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1414, 'PARAXYL CR 12.5 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1415, 'PARIDOPA 100/25/200MG 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1416, 'PARIDOPA 50/12.5/200MG 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1417, 'PASMOLEX DROPS 20ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1418, 'PASMOLEX SYRUP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1419, 'PEDIASURE COMPLETE CHOCOLATE  Powder 400g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1420, 'PEDIASURE STRAWBERRY POWDER 400 G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1421, 'PEDIASURE VANILLA  Powder 400g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1422, 'PEDITRAL 20 g Sachet 30g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1423, 'PEDITRAL BANANA 10 g/500ml Oral Soln 500ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1424, 'PEDITRAL ORANGE 10 g/500ml Oral Soln 500ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1425, 'PEDROL 120 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1426, 'PEDROL 60 mg/5ml Drops 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1427, 'PEGALIN 150 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1428, 'PEGALIN 75 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1429, 'PELTON 1 mg/ml Susp 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1430, 'PELTON 10 mg Tabs 5x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1431, 'PELTON-C 10 mg Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1432, 'PELTON-C TAB 100S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1433, 'PELTON-V  TAB 10X10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1434, 'PELTON-V 1 mg/ml Susp 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1435, 'PENRO 1 g Inj 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1436, 'PENRO 500MG INJ 1S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1437, 'PENTOXOL-M 0.5 MG TABS 10X10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1438, 'PERFECT ANKLE SUPPORT L-M-XL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1439, 'PERFECT ARM SLING ADULT/INFANT', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1440, 'PERFECT ELBOW SUPPORT', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1441, 'PERFECT GRIP B-C-D-F-G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1442, 'PERFECT HARD COLLAR-XL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1443, 'PERFECT KNEE SUPPORT M-L-XL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1444, 'PERFECT KNEE SUPPORT XXL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1445, 'PERFECT LUMBO SACRAL SUPPORT L-XL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1446, 'PERFECT PALM SUPPORT L-M-S-X-XL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1447, 'PERFECT SLIM BELT L-XL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1448, 'PERFECT SLIM BELT XXL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1449, 'PERFECT SOFT COLLAR L-M', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1450, 'PERFECT TENNIS ELBOW L-M-XL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1451, 'PERFECT WRIST WRAP L-M-XL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1452, 'PERSCH 1 mg Tabs 3x6s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1453, 'PERSCH 2 mg Tabs 2x6s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1454, 'PHENERGAN 25 mg/5ml Elixir 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1455, 'PHLOGENZYM TAB 4X10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1456, 'PHUSILAN   H- CREAM 15GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1457, 'PHYTUS COUGH SYRUP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1458, 'PIOZER G 30/2', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1459, 'PIOZER G 30/4', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1460, 'PIOZER PLUS 15/500', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1461, 'PIOZER PLUS 15/850', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1462, 'PIRITON 4 mg Tabs 1000s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1463, 'PIRITON EXPECTORANT 125 mg/5ml Linctus 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1464, 'PK MERZ 100 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1465, 'PLASENZYM TAB 3X10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1466, 'PLASIL WITH ENZYME 0 Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1467, 'PLAVIX 75 mg Tabs 28s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1468, 'PLIVIL 0 Inj 100x2 ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1469, 'POLYBION FORTE 3 mcg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1470, 'POLYFAX 500 IU/g Eye Oint 6g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1471, 'POLYFAX 500 IU/g Oint 20g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1472, 'POLYFAX PLUS 500 IU/G OINT 20G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1473, 'POLYGYNAX 0 Caps 6s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1474, 'POLYMALT 0 Syrup 120 ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1475, 'POLYMALT 0 Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1476, 'PONSTAN 250 mg Tabs 600s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1477, 'PONSTAN FORTE 500 mg Tabs 200s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1478, 'PRED FORTE 1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1479, 'PRED+ 1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1480, 'PREDNISOLONE 5 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1481, 'PREDNISYNTH 0.5 %w/v Eye Drops 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1482, 'PREGNOVIT TAB 60', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1483, 'PREGY 50 MG  CAP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1484, 'PREGY 75  MG CAP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1485, 'PRELIN 150 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1486, 'PRELIN 50 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1487, 'PRELIN 75 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1488, 'PRELOFT 100 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1489, 'PRELOFT 50 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1490, 'PRELOX 100 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1491, 'PRELOX 40 mg/5ml Susp 50ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1492, 'PRIMOLUT N 5 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1493, 'PRODENT 1 %w/v Mouth Wash 150ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1494, 'PRODENT 5 %w/w Paste 100g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1495, 'PROGREL 75 MG TABS 30', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1496, 'PROGREL AP 75 MG TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1497, 'PROLIFEN 50 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1498, 'PROSOTEC 200 mcg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1499, 'PROSPAN SYP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1500, 'PROSTREAT 0.4 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1501, 'PROTHIADEN 25 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1502, 'PROTHIADEN 75 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1503, 'PROTOLE  40MG INJ  1S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1504, 'PROTOLE 20 mg Caps jarx14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1505, 'PROTOLE 40 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1506, 'PROVATE 0.05 %W/V LOTION 30ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1507, 'PROVATE 0.05 %W/W CREAM 15G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1508, 'PROVATE 0.05 %W/W OINT 15G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1509, 'PROVATE-G 0.05 %W/W CREAM 15G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1510, 'PROVATE-G 0.05 %W/W OINT 15G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1511, 'PROZAC 20 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1512, 'PRULAX 120ML SYRP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1513, 'PULMONAT  SYRUP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1514, 'PULMONOL 25 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1515, 'PURPAL 40 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1516, 'PYODINE 0.5 %w/w Gel 20g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1517, 'PYODINE 10 %w/v Soln 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1518, 'PYTEX 20MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1519, 'Q-PLEX  120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1520, 'Q-PLEX  Z  120 ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1521, 'QALSIUM-D ORANGE TABS 40S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1522, 'QALSIUM-D STRAWBERRY TABS 40S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1523, 'QAZZO 10MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1524, 'QUENCH 1 %w/w Cream 15g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1525, 'QUIBRON-T/SR 300 mg Tabs SR 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1526, 'QUSEL 100MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1527, 'QUSEL 25 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1528, 'QUSEL XR 200 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1529, 'RABECID 20 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1530, 'RABOSH 20 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1531, 'RACEDO  10MG SACHA', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1532, 'RAMA-D 50 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1533, 'RAMA-D-PLUS TAB 1X10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1534, 'RAMIPACE 10 mg Tabs 28s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1535, 'RAMIPACE 2.5 mg Tabs 28s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1536, 'RAMIPACE 5 mg Tabs 28s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1537, 'RANZOL XR 500 MG TABS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1538, 'RASHNIL 0.1 %w/w Cream 20g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1539, 'RAST 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1540, 'RAST 20 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1541, 'RAST 5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1542, 'RAZODEX  30MG CAPS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1543, 'RAZODEX  60MG CAPS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:06'),
(1544, 'REGNUM  MEN  30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1545, 'REGNUM 50 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1546, 'REGROW 2 %w/v Soln 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1547, 'REGROW 5 %w/v Soln 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1548, 'REIN 50 mg Caps 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1549, 'REJUVA  TAB  500MG 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1550, 'RELISPA 40 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1551, 'RELISPA FORTE 80 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1552, 'RELTUS EXPECTORANT 100 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1553, 'RELTUS-DM 2 MG/5ML SYRUP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1554, 'REMAC TAB 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1555, 'REMETHAN 50 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1556, 'REMETHAN-R 100 mg Tabs SR 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1557, 'RENAVEL 400 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1558, 'RENITEC 10 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1559, 'RENITEC 5 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1560, 'REPLAT SYRUP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1561, 'REQUIP 1 mg Tabs 21s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1562, 'REQUIP 2 mg Tabs 21s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1563, 'RESPRO 200 mg Tabs SR 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1564, 'REVITALE MULTI TABS 45S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1565, 'REVITALE-B 0.15 mg Tabs 45s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1566, 'REVOLIZER DEVICE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1567, 'RHINOSONE-P 5 mg/ml Nasal Spray 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1568, 'RIFAXA 200 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1569, 'RIFAXA 550MG TAB 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1570, 'RIGIX  ORAL SOLUTION 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1571, 'RIGIX 10 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1572, 'RIMONA  CAP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1573, 'RIMONA SACHET', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1574, 'RINO CLENIL 100 mcg/actu Nasal Spray 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1575, 'RISEK 20 mg Caps 2x7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1576, 'RISEK 40 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1577, 'RISEK 40 mg Inf 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1578, 'RISEK INSTA 20 mg Sachet 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1579, 'RISEK INSTA 40 mg Sachet 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1580, 'RISP 1 mg Tabs 3x6s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1581, 'RISP 2 mg Tabs 2x6s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1582, 'RISP ORAL SOLUTION 30ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1583, 'RITHMO 125 mg/5ml Drops 25ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1584, 'RITHMO 125 mg/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1585, 'RITHMO 250 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1586, 'RITHMO 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1587, 'RIVOTRIL 0.25 %w/v Drops 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1588, 'RIVOTRIL 0.5 mg Tabs 50s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1589, 'RIVOTRIL 2 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1590, 'RIZE 20 mg Caps 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1591, 'RIZE 20 mg/5ml Liquid 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1592, 'RIZE PLUS 10MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1593, 'RIZE PLUS 20MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1594, 'RIZE PLUS 5MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1595, 'ROCEPHIN 1 g Inj-IV 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1596, 'ROCEPHIN 500 mg Inj-IV 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1597, 'ROLIP -EZE  5MG/10MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1598, 'ROLIP 20 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1599, 'ROLIP 5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1600, 'ROLIP-EZE 10MG/10MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1601, 'ROLIP-EZE 20MG/10MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1602, 'RONDEC C 0 Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1603, 'ROSUVAX 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1604, 'ROSUVAX 20 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1605, 'ROTAFLO DEVICE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1606, 'ROTEC 50 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1607, 'ROTEC 75 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1608, 'ROVA 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1609, 'ROVA 5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1610, 'ROVISTA 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1611, 'ROVISTA 20 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1612, 'ROVISTA 5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1613, 'RULING 20 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1614, 'RULING 40MG CAPS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1615, 'RULING PLUS 40 mg Sachet 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1616, 'RUMOL  CREAM 50GMS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1617, 'S.T MOM  TAB  200MG -10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1618, 'SACUVIA 100MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1619, 'SACUVIA 50MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1620, 'SAFI HAMDARD', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1621, 'SAKOON 3 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1622, 'SALAZODINE 500 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1623, 'SALBO HFA 100 MDI', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1624, 'SALINASE 0.65 %w/v Nasal Drops 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1625, 'SALMICORT 125 mg Inhaler 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1626, 'SALTRA  25+250 INHALERS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1627, 'SAMBRO 3MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1628, 'SANGOBION 0.2 mg Caps 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1629, 'SANGOBION 300 mcg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1630, 'SANI MINI PACK', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1631, 'SANIPLAST 4 IN 1 PACK', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1632, 'SANITIZER SPRAY 100ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1633, 'SAVESTO 100MG TAB 49/51MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1634, 'SAVESTO 50MG TAB 24/26MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1635, 'SCABION 10 %w/w Cream 20g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1636, 'SEBESTA 10MG TAB  10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1637, 'SECNIDAL FORTE 1 g Tabs 2s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1638, 'SECURE 0 0 Paste 90g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1639, 'SECURE 0.05 %w/v Mouth Wash 200ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1640, 'SEJRIL 2 MG TAB  10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1641, 'SEJRIL 4MG  TAB = 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1642, 'SELANZ 30 mg Caps SR 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1643, 'SELSUN 2.5 %w/v Shampoo 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1644, 'SENALAX TAB 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1645, 'SENSE-T 10 %w/w Paste 100g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1646, 'SEPIDYL  7.1 GEL  15GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1647, 'SEPTRAN 200 mg/5ml Susp 50ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1648, 'SEPTRAN 400 mg Tabs 40x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1649, 'SEPTRAN DS 400 mg/5ml Susp 50 ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1650, 'SEPTRAN DS 800 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07');
INSERT INTO `pharmacy` (`id`, `medicine_name`, `medicine_category_id`, `medicine_image`, `medicine_company`, `medicine_composition`, `medicine_group`, `unit`, `min_level`, `reorder_level`, `vat`, `unit_packing`, `supplier`, `vat_ac`, `note`, `is_active`, `created_at`) VALUES
(1651, 'SERADEP 10 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1652, 'SERADEP 5 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1653, 'SERC 16 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1654, 'SERC 24 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1655, 'SERC 8 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1656, 'SERENACE  AMPOULE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1657, 'SERENACE 5 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1658, 'SERETIDE EVOHALER 125 mcg/actu Inhaler 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1659, 'SERETIDE EVOHALER 250 mcg/actu Inhaler 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1660, 'SEROFT 50 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1661, 'SEROXAT 20 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1662, 'SEROXAT CR 12.5 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1663, 'SEROXAT CR 25 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1664, 'SERT 100 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1665, 'SERT 50 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1666, 'SGINDROP-D1S CAPS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1667, 'SGLNDROP D CAPS 10000 CAP 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1668, 'SHARBAT FAULAD 240ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1669, 'SHINE- D-INJ -1S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1670, 'SIBELIUM 5 mg Caps 2 x6s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1671, 'SILLIVER 105 mg/5ml Susp 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1672, 'SILLIVER 200 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1673, 'SIMBRINZA EYE DROPS 5ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1674, 'SINEMET 25/250MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1675, 'SINEMET EXTRA 25 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1676, 'SIROLINE 30 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1677, 'SITAGLU  MET  50/500 TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1678, 'SITAGLU MET 50/1000', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1679, 'SITAGLU MET 50/850', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1680, 'SITAGLU MET XR 50/1000TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1681, 'SITAGLU MET XR 50/500MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1682, 'SITAGLUE MET XR 100/1000 MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1683, 'SIVAB 5MG TABS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1684, 'SIVAB 7.5MG TABS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1685, 'SKILAX 5 mg Tabs 60s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1686, 'SKILAX 7.5 mg/ml Drops 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1687, 'SKIN A 0.05 %w/w Cream 10gm', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1688, 'SKINOREN 20 %w/w Cream 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1689, 'SLEEPWELL CAPS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1690, 'SMECTA 3 g/sachet Powder 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1691, 'SOFTEAL 0.3 %w/v Eye Drops 10 ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1692, 'SOFTIN 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1693, 'SOFTIN 5 mg/5ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1694, 'SOFTIN-F 120 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1695, 'SOFTIN-F 60 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1696, 'SOFTIN-OD TAB 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1697, 'SOFTIN-P  MG TABS 1X10SS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1698, 'SOFVASC  V  10/160MG TAB.14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1699, 'SOFVASC 10 MG TABS 1X30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1700, 'SOFVASC 5 MG TABS 1X30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1701, 'SOFVASC V  5/160MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1702, 'SOLARIS SC*45ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1703, 'SOLIFEN 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1704, 'SOLIFEN 5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1705, 'SOLO -BAR -75MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1706, 'SOLOPHAR  ORAL SPRAY 50ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1707, 'SOLU CORTEF 100 mg Inj Vial', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1708, 'SOLU MEDROL 1 g Inj Vial', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1709, 'SOMOGEL 33 %w/w Gel 20g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1710, 'SOPRAL 2.5 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1711, 'SOPRAL 5 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1712, 'SPADIX 80 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1713, 'SPASFON 40 mg Inj 4mlx6s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1714, 'SPASFON 80 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1715, 'SPASLER-NEO 135 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1716, 'SPASLER-P 5 mg/5ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1717, 'SPASMODINE DROPS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1718, 'SPASMODINE SP 100ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1719, 'SPASRID 40 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1720, 'SPIROMIDE 20 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1721, 'SPIROMIDE-40 40 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1722, 'STAT A 10 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1723, 'STAT A 20 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1724, 'STEMETIL 5 mg Tabs 20x15s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1725, 'STERIDEX 0.1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1726, 'STERON 15 mg/5ml Syrup 60 ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1727, 'STIEPROX 1.5 %v/v Liquid 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1728, 'STIEPROXAL 1.5 %w/v Liquid 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1729, 'STREPSILS COMFORT H/L 0 0 Lozenges 15x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1730, 'STREPSILS COMFORT HERBAL 0 0 Lozenges 150s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1731, 'STUGERON 25 mg Tabs 10x5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1732, 'STUGERON FORTE 75 mg Caps 2x6s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1733, 'SUALIN LOZENGES-16X6S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1734, 'SUDORI HAMDARD', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1735, 'SUDORI HAMDARD SUGAR FREE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1736, 'SULPHAKREAM  N  CREM 80GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1737, 'SULPHAPRED 0.25 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1738, 'SULVORID 25 MG TABS 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1739, 'SULVORID 50 MG TABS 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1740, 'SUN BLOCK NORMAL SKIN 60+ 20G', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1741, 'SUPRAVIT-M TAB 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1742, 'SURBEX-T 500 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1743, 'SURBEX-Z TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1744, 'SURFI TABLETS 250S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1745, 'SUSTAC 2.6 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1746, 'SUSTAC 6.4 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1747, 'SYNALAR  30GM CREAM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1748, 'SYNALAR  30GM CREAM 30MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1749, 'SYNALAR 30GM OINTMENT 30GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1750, 'SYNALAR-C CREAM 15GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1751, 'SYNALAR-C OINT. 15GM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1752, 'SYNFLEX 550 MG TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1753, 'SYNGAB 100 mg Caps 2x7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1754, 'SYNGAB 50 mg Caps 2x7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1755, 'SYNGAB 75MG CAPSULE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1756, 'SYNIGAN 2 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1757, 'SYSTANE 0 Drops 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1758, 'T-DAY 2.5 MG/5ML SYRUP 90ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1759, 'T-DAY 5 MG TABS 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1760, 'TAGIPMET 50/1000MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1761, 'TAGIPMET 50/500MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1762, 'TAIVOR 3 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1763, 'TAMSOL-D 0.4 MG  CAP 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1764, 'TAMSOLIN 0.4 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1765, 'TANAKAN 40 mg Tabs 2x15s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1766, 'TANSIN 50 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1767, 'TANZO 4.5 g Inj Vial', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1768, 'TARISIN 0.025 %w/v Nasal Spray 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1769, 'TASMI  20MG  TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1770, 'TASMI 40 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1771, 'TEARS FORTE 0.1 %w/v Eye Drops 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1772, 'TEARS NATURAL II 0.1 %w/v Eye Drops 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1773, 'TEARS PLUS 1.4 %w/v Eye Drops 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1774, 'TEGRAL 100 mg/5ml Susp 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:07'),
(1775, 'TEGRAL 200 mg Tabs 5x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1776, 'TELFAST 180 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1777, 'TELFAST 60 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1778, 'TELFAST-D 60 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1779, 'TELFEX 120 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1780, 'TELSARTA 20 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1781, 'TELSARTA 40 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1782, 'TELSARTA 80 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1783, 'TELSARTA A 10/40MG TAB 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1784, 'TELSARTA A 10/80MG TAB10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1785, 'TELSARTA A 5/40 MG TAB14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1786, 'TELSARTA A 5/80 MG TAB14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1787, 'TELSARTA-D 40/12.5MG TAB14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1788, 'TELSARTA-D 80/12.5TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1789, 'TEMPRAMINE 1 mg/5ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1790, 'TEMPRAMINE 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1791, 'TEMPRO    0.4MG  TAB 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1792, 'TENORET-50 50 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1793, 'TENORMIN 100 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1794, 'TENORMIN 25 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1795, 'TENORMIN 50 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1796, 'TEPRIDE 50 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1797, 'TERBIDERM 1 %w/w Cream 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1798, 'TERBIDERM TOPICAL  SOLTION 20ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1799, 'TERBISAN 125 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1800, 'TERBISIL 125 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1801, 'TERBISIL 30ML SPRAY', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1802, 'TERBISIL LOTION 20ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1803, 'TERCICA 0 Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1804, 'TERCICA 400 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1805, 'TERNELIN 2 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1806, 'TERNELIN 4 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1807, 'TESPRAL 50 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1808, 'TESPRAL OD 150 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1809, 'TEXCOL EX 45 mg/5ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1810, 'THERAGRAN ULTRA  Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1811, 'THERAGRAN-H 100 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1812, 'THERAGRAN-M 120 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1813, 'THIOLAX 4 MG CAPS 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1814, 'THYRONORM TAB 50MCG 100S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1815, 'THYROXINE 50 mcg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1816, 'TICOVATE 50 mcg/actu Nasal Spray 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1817, 'TIOCARDIS AM 40MG 5MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1818, 'TIOCARDIS AM TAB 80MG 5MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1819, 'TIOVAIR ROTACAPS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1820, 'TITAN 1 g Inj Vial', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1821, 'TITAN 500 mg Inj Vial', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1822, 'TIXYLIX  COUGH LINTUS 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1823, 'TOBRADEX 0.1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1824, 'TOBRADEX 0.1 %w/w Eye Oint 3.5g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1825, 'TOBREX 0.3 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1826, 'TOBREX 0.3 %w/w Eye Oint 3.5g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1827, 'TOFRANIL 25 mg Tabs 20x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1828, 'TONOFLEX P TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1829, 'TOOT SIAH SYP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1830, 'TOOT SIAH SYP 60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1831, 'TORADOL 10 mg/ml Inj 1ml x5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1832, 'TRAMAL 100 mg Tabs SR 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1833, 'TRAMAL 50 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1834, 'TRAMAL 50 mg/ml Inj 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1835, 'TRAMAL PLUS 325 mg Tabs 2x5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1836, 'TRANSAMIN 250 mg Caps 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1837, 'TRANSAMIN 500 mg Caps 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1838, 'TRANSAMIN 500 mg/5ml Inj 10 Amp', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1839, 'TRAVATAN 40 mg Expc 2.5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1840, 'TRAVOCORT 0.1 %w/w Cream 10g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1841, 'TREATAN 4 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1842, 'TREATAN 8 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1843, 'TREATAN D TABS 2X14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1844, 'TRES-ORIX FORTE 150 mg/5ml Syrup 120 ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1845, 'TREVIAMET  50  1000MG 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1846, 'TREVIAMET 50  500MG 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1847, 'TREVIAMET 50/850MG 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1848, 'TREVIAMET XR 50+500MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1849, 'TREVIAMET XR 50/1000MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1850, 'TREVIAMET XR100+1000MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1851, 'TRI CARDIN 250MG CAP', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1852, 'TRI-HEMIC 600 600 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1853, 'TRIBULUS CAPS 60S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1854, 'TRIFORGE  10/160/25 TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1855, 'TRIFORGE 10/160/12.50 TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1856, 'TRIFORGE 10/320/25 TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1857, 'TRIFORGE 5/160/25 TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1858, 'TRIMETABOL 0 Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1859, 'TRISIL 250 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1860, 'TRITACE 10 mg Tabs 28s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1861, 'TRITACE 2.5 mg Tabs 28s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1862, 'TRITACE 5 mg Tabs 28s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1863, 'TRYPTANOL 25 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1864, 'TUMY FIX  20ML DROPS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1865, 'U-VEIL FORTE 0 Cream 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1866, 'UFRIM 10 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1867, 'ULCENIL 10 mg/5ml Susp 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1868, 'ULSANIC 1 g Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1869, 'ULSANIC 1 g/5ml Susp 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1870, 'ULSANIC 500 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1871, 'UNIFYLINE 0 Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1872, 'UNIFYLINE 400 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1873, 'URODONAL 225 mg Granules 90g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1874, 'URSO 250 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1875, 'VADIL 12.5 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1876, 'VADIL 3.125 MG TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1877, 'VADIL 6.25 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1878, 'VALIUM 10 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1879, 'VALIUM 5 mg/ml Inj 5s amp', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1880, 'VALTEC 160 MG TABS 28S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1881, 'VALTEC 40 MG TABS 28S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1882, 'VALTEC 80 MG TABS 28S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1883, 'VALTEC AM 10/160 MG TABS 28S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1884, 'VALTEC AM 5/160 MG TABS 28S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1885, 'VALTEC AM 5/80 MG TABS 28S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1886, 'VAPTOR 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1887, 'VASCLEAR 20 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1888, 'VASTAREL-MR 35 MG TABS 20S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1889, 'VELAX 37.5 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1890, 'VELAX XR 75 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1891, 'VELOSEF 125 mg/5ml Susp 90ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1892, 'VELOSEF 250 mg Caps 12s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1893, 'VELOSEF 250 mg/5ml Susp 90ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1894, 'VELOSEF 500 mg Caps 12s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1895, 'VENOFER IRON 100MG 5X5ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1896, 'VENTEK  SACHET  28S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1897, 'VENTEK 10 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1898, 'VENTEK 5 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1899, 'VENTOLIN 100 mcg/actu Inhaler 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1900, 'VENTOLIN 2 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1901, 'VENTOLIN 4 mg Tabs 120s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1902, 'VENTOLIN EXPECTORANT 1 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1903, 'VENTOLIN SOLUTION 5MA 20ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1904, 'VERMOX 100 mg Tabs 6x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1905, 'VERMOX 100 mg/5ml Susp 30ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1906, 'VERMOX 500 mg Tabs 12s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1907, 'VIBRAMYCIN 100 mg Caps 120s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1908, 'VIDAYLIN DROPS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1909, 'VIDAYLIN SYRUP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1910, 'VIDAYLIN-T 60 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1911, 'VIGAMOX 0.5 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1912, 'VILDOMET 50/1000MG TABS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1913, 'VILDOMET 50/500 TABS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1914, 'VILDOMET 50/850MG TABS 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1915, 'VILGET-M-50/1000MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1916, 'VIOPHOS-B 23 mg/5ml Syrup 120ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1917, 'VITA 6 50 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1918, 'VITAMAX ONE A DAY MULTI 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1919, 'VITAMAX ONE A DAY MULTI 60S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1920, 'VITAMAX WOMEN ONE A DAY MULTI 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1921, 'VITAMAX WOMEN ONE A DAY MULTI 60S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1922, 'VITAMOM TAB 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1923, 'VITRUM 0 Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1924, 'VOLTRAL 100 mg Tabs SR 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1925, 'VOLTRAL 50 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1926, 'VOLTRAL EMULGEL 1 %w/w Gel 20g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1927, 'VOLTRAL EMULGEL 1 %w/w Gel 50g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1928, 'VOREN 25 mg/ml Inj 3mlx10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1929, 'VOREN 50 mg Caps 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1930, 'VOREN 50 mg Tabs 100s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1931, 'VOREN-SR 100 mg Tabs 30’s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1932, 'WARFIN 5 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1933, 'WILGESIC 35 mg Tabs 10x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1934, 'WILGESIC FORTE TAB 10X10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1935, 'WINSTOR 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1936, 'WINSTOR 20 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1937, 'WINTOGENO 0.11 %w/w Balm 50g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1938, 'X-PLENDED 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1939, 'X-PLENDED 20 MG TAB 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1940, 'X-PLENDED 5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1941, 'XAAR 50 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1942, 'XAAR 75 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1943, 'XADINE 120 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1944, 'XADINE 180 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1945, 'XALATAN 50 mcg/ml Eye Drops 2.5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1946, 'XALTIDE 50 mcg/actu Inhaler 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1947, 'XANAX 0.5 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1948, 'XATRAL 5 mg Tabs SR 2x14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1949, 'XAVOR 50 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1950, 'XAVOR-DIU 12.5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1951, 'XCEPT  15MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1952, 'XCEPT 10MG TAB 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1953, 'XCEPT 20MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1954, 'XEFACTA 400 mg Tabs 5s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1955, 'XENGLU  MET 5/1000MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1956, 'XENGLU MET 12.5/500MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1957, 'XENGLU MET 5/1000', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1958, 'XENGLU MET 5/850MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1959, 'XENGLU MET XR  5MG+1000MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1960, 'XENGLU MET XR 10MG+1000MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1961, 'XENGLU MET XR 12.5MG+1000MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1962, 'XENGLU MET XR 25MG+1000MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1963, 'XENGLU-MET 12.5/1000MG TAB 14S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1964, 'XENGLUMET  12.5/850MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1965, 'XEPAT 0.1 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1966, 'XEPAT FORT 0.2 %w/v Eye Drops 5ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1967, 'XETICAM  500 MG  TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1968, 'XIKA RAPID 8 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1969, 'XINOXY 0.5 %w/w Eye Oint 3g', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1970, 'XOBIX 15 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1971, 'XOBIX 7.5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1972, 'XOVAT 10 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1973, 'XOVAT 20 mg Tabs 1x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1974, 'XTRACT   M   CAP  BOTTLE  30', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1975, 'XYLOAID JELLY', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1976, 'XYNOSINE 0.1 %w/v Nasal Spray 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1977, 'XYNOSINE C.F 0.05 %w/v Nasal Drops 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1978, 'XYZAL 5 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1979, 'YAZ  3MG TAB 28S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1980, 'YES 2 ZINC SUSP 60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1981, 'YORKER 1 g Inj Vial', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1982, 'YORKER 250 mg Inj Vial', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1983, 'YORKER 500 mg Inj Vial', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1984, 'ZAFNOL 50 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1985, 'ZATOFEN 1 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1986, 'ZATOFEN 1 mg/5ml Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1987, 'ZAUXIT 20 mg Caps 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1988, 'ZAVGET 10 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1989, 'ZAVGET 5MG TAB', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1990, 'ZECEF 250 mg Tabs 1x14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1991, 'ZEEGAP 100 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1992, 'ZEEGAP 150 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1993, 'ZEEGAP 50 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1994, 'ZEEGAP 75 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1995, 'ZEESPA 135 mg Tabs 3x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1996, 'ZEEST TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1997, 'ZEEST-MV  Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1998, 'ZENTEL 200 mg Tabs 2s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(1999, 'ZENTEL 200 mg/5ml Susp 10ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(2000, 'ZESTRIL 10 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(2001, 'ZESTRIL 5 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(2002, 'ZETAB-PLUS 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(2003, 'ZETRO 200 mg/5ml Susp 15ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(2004, 'ZETRO 250 mg Caps 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(2005, 'ZETRO 500 mg Tabs 1x3s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(2006, 'ZEZOT 500 mg Inj 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:08'),
(2007, 'ZEZOT 500 mg Tabs 6s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2008, 'ZINACEF 1.5 g Inj 1s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2009, 'ZINACEF 250 mg Tabs 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2010, 'ZINCAT OD 0 Syrup 60ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2011, 'ZJAN SWEETNER 100S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2012, 'ZJAN SWEETNER 200S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2013, 'ZODIP 5 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2014, 'ZOLBI 20 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2015, 'ZOLBI 40 mg Caps 14s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2016, 'ZOLID PLUS 500 mg Tabs 28s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2017, 'ZOLOFT 100 MG TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2018, 'ZOLOFT 50 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2019, 'ZOLP 10 mg Tabs 2x10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2020, 'ZOLREST 600 mg Tabs 2x6s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2021, 'ZOLREST 600MG INF 300ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2022, 'ZOPENT 20MG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2023, 'ZOPENT 40 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2024, 'ZORDIN 0 Syrup 60 ml', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2025, 'ZORDIN 10 mg Tabs 10s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2026, 'ZUCAL  D  TAB  30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2027, 'ZULTRACET 325 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2028, 'ZURIG 40 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2029, 'ZURIG 80 mg Tabs 20s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2030, 'ZYLORIC 100 mg Tabs 50s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2031, 'ZYLORIC 300 mg Tabs 30s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2032, 'ZYPREXA 5 mg Tabs 7s', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2033, 'ZYRTEC 10 MG TABS 30S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2034, '10CC DISPOSABLE SYRINGE BM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2035, '3CC AUTO DISABLE SYRINGE SHIFA', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2036, '5CC AUTO DISABLE SYRINGE SHIFA', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2037, 'ANKLE BRACE MANA', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2038, 'BELLADONA PARAGON PLASTER', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2039, 'CALAMINE LOTION 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2040, 'COFERB DROPS 20ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2041, 'COFERB PLUS SYP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2042, 'COFERB SYP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2043, 'COLOREST DROPS 30ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2044, 'CRAN MAX SACHET 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2045, 'CRANMAX AQUA SYP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2046, 'CREPE BANDAGE 4 INCH', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2047, 'CREPE BANDAGE 6INCH', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2048, 'DIGNITY SHEET', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2049, 'EASY GLUCO METER MACHINE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2050, 'EXAMINATION GLOVES 100S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2051, 'FACE MASK 10S', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2052, 'FACE MASK SINGLE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2053, 'HARD COLLAR', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2054, 'HOT SHAPER BELT', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2055, 'INSULIN SYRINGE BBRAUN', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2056, 'INSULIN SYRINGE NIPRO', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2057, 'IV SET', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2058, 'KNEE BRACE BLUE BIRD', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2059, 'KNEE BRACE MANA', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2060, 'LUMBO SACRAL SUPPORT', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2061, 'MASK KN95', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2062, 'METHYLATED SPIRIT', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09');
INSERT INTO `pharmacy` (`id`, `medicine_name`, `medicine_category_id`, `medicine_image`, `medicine_company`, `medicine_composition`, `medicine_group`, `unit`, `min_level`, `reorder_level`, `vat`, `unit_packing`, `supplier`, `vat_ac`, `note`, `is_active`, `created_at`) VALUES
(2063, 'NORMAL SALINE 500ML MEDISOL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2064, 'OLCUF PLUS SYP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2065, 'OLCUF SYP 120ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2066, 'PLADEX 5% 100ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2067, 'PLASALINE  0.9% 100ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2068, 'POLYSLING LARGE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2069, 'POLYSLING SMALL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2070, 'PRESSURE GRIP PERFECT', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2071, 'PROMED GAUZE 10X10CM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2072, 'PROMED GAUZE 15X15CM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2073, 'RINGER LACTATE 500ML MEDISOL', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2074, 'ROLL BANDAGE 4INCH', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2075, 'SOFT COLLAR', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2076, 'STOCKINGS TED ANTI EMBOLISM', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2077, 'SURGI GAUZE 10X10', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2078, 'SURGICAL GLOVES 7.5', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2079, 'SURGICAL GLOVES 8', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2080, 'TAPE NITTO', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2081, 'THERMOMETER MERCURY', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2082, 'TONGUE DEPRESSOR WOODEN', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2083, 'VAPORUN SERNE', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2084, 'VICKS VAPORUB GSK', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2085, 'DE-LICE SHAMPOO 60ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2086, 'HAIR MAX SHAMPOO BLUE 200ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2087, 'HAIR MAX SHAMPOO GREEN 200ML', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2088, 'FOSTER INHALER 200/6MCG', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09'),
(2089, 'DMAX DROPS', '1', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 'yes', '2022-02-08 14:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_bill_basic`
--

CREATE TABLE `pharmacy_bill_basic` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `patient_id` varchar(200) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_type` varchar(50) DEFAULT NULL,
  `doctor_name` varchar(50) DEFAULT NULL,
  `file` varchar(200) NOT NULL,
  `opd_ipd_no` varchar(50) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `discount` decimal(15,2) NOT NULL,
  `tax` decimal(15,2) NOT NULL,
  `net_amount` decimal(15,2) NOT NULL,
  `note` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `generated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pharmacy_bill_basic`
--

INSERT INTO `pharmacy_bill_basic` (`id`, `bill_no`, `date`, `patient_id`, `customer_name`, `customer_type`, `doctor_name`, `file`, `opd_ipd_no`, `total`, `discount`, `tax`, `net_amount`, `note`, `created_at`, `generated_by`) VALUES
(1, '1', '2021-08-29 11:31:00', '2', NULL, NULL, 'Javed Khan', '', NULL, '100.00', '0.00', '0.00', '100.00', 'Next Visit on 30-09-2021', '2021-08-29 11:32:28', 1),
(2, '2', '2021-08-29 11:34:00', '1', 'Muhammad Bilal', NULL, 'Javed Khan', '', NULL, '270.00', '0.00', '0.00', '270.00', '', '2021-08-29 11:34:56', 1),
(3, '3', '2021-08-29 12:31:00', '3', 'Kalsoom', NULL, 'Ali Yousafzi', '', NULL, '190.00', '0.00', '0.00', '190.00', '', '2021-08-29 12:32:17', 1),
(4, '4', '2021-08-30 07:09:00', '1', 'Muhammad Bilal', NULL, 'Javed Khan', '', NULL, '200.00', '0.00', '0.00', '200.00', '', '2021-08-30 07:10:13', 5),
(5, '5', '2021-08-30 09:42:00', '3', 'Kalsoom', NULL, 'Ali Yousafzi', '', NULL, '100.00', '0.00', '0.00', '100.00', '', '2021-08-30 09:43:02', 5),
(6, '6', '1970-01-01 00:00:00', '7', 'maqsood', NULL, '', '', NULL, '0.00', '0.00', '0.00', '0.00', '', '2021-09-04 10:13:25', 6),
(7, '7', '1970-01-01 00:00:00', '7', 'maqsood', NULL, '', '', NULL, '0.00', '0.00', '0.00', '0.00', '', '2021-09-04 10:16:41', 6),
(8, '8', '2022-02-03 07:22:00', '16', 'Bilal', NULL, 'Javed Khan', '', NULL, '200.00', '200.00', '0.00', '0.00', 'blood pressure 102/80\r\nalergic to perfumes', '2022-02-03 07:25:14', 6),
(9, '9', '2022-02-08 15:07:00', '7', 'maqsood', NULL, '', '', NULL, '380.00', '0.00', '0.00', '380.00', '', '2022-02-08 15:09:35', 6),
(10, '10', '2022-02-28 17:07:00', '55', 'jjjj', NULL, 'Ali Yousafzi', '', NULL, '1000.00', '0.00', '0.00', '1000.00', '', '2022-02-28 17:08:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_bill_detail`
--

CREATE TABLE `pharmacy_bill_detail` (
  `id` int(11) NOT NULL,
  `pharmacy_bill_basic_id` varchar(50) NOT NULL,
  `medicine_category_id` int(11) NOT NULL,
  `medicine_name` varchar(200) NOT NULL,
  `expire_date` varchar(100) NOT NULL,
  `batch_no` varchar(200) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `sale_price` decimal(15,2) NOT NULL,
  `amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pharmacy_bill_detail`
--

INSERT INTO `pharmacy_bill_detail` (`id`, `pharmacy_bill_basic_id`, `medicine_category_id`, `medicine_name`, `expire_date`, `batch_no`, `quantity`, `sale_price`, `amount`) VALUES
(1, '1', 1, '1', 'Dec/2022', '1111', '1', '100.00', '100.00'),
(2, '2', 1, '1', 'Aug/2022', '5621', '3', '90.00', '270.00'),
(3, '3', 1, '1', 'Aug/2022', '5621', '2', '95.00', '190.00'),
(4, '4', 1, '1', 'Aug/2022', '5621', '2', '100.00', '200.00'),
(5, '5', 1, '1', 'Aug/2022', '5621', '1', '100.00', '100.00'),
(6, '6', 1, '1', 'Dec/2022', '1111', '1', '100.00', '100.00'),
(7, '7', 1, '2', 'Jul/2022', '1236', '20', '20.00', '400.00'),
(8, '8', 1, '1', 'Dec/2022', '1111', '2', '100.00', '200.00'),
(9, '9', 1, '1', 'Dec/2022', '1111', '2', '100.00', '200.00'),
(10, '9', 1, '2', 'Nov/2022', '2222', '1', '180.00', '180.00'),
(11, '10', 1, '1', 'Dec/2022', '1111', '10', '100.00', '1000.00');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `opd_id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `medicine_category_id` int(11) NOT NULL,
  `medicine` varchar(200) NOT NULL,
  `dosage` varchar(200) NOT NULL,
  `instruction` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `opd_id`, `visit_id`, `medicine_category_id`, `medicine`, `dosage`, `instruction`) VALUES
(1, 1, 0, 1, 'Syp Panadol 100ml', 'Panadol Syp 120ml', 'Before Meal'),
(2, 2, 0, 1, 'Syp Panadol 100ml', '2-0-2', 'after meal'),
(3, 4, 0, 1, 'Syp Panadol 100ml', '2-0-2', 'after meal'),
(4, 5, 0, 1, 'Syp Panadol 100ml', '1-1-1', 'After Meal'),
(5, 5, 0, 1, 'Beflam Tablet 75mg', '1-0-1', 'After Meal'),
(6, 5, 0, 1, 'Cefiget Tablet 200 Mg Lmp', '1-0-1', 'After Meal'),
(7, 5, 0, 1, 'Analin 10 Mg Injection 1 Ampoule', '1-0-0', 'Before Breakfast'),
(8, 5, 0, 1, 'Velosef 250mg Capsule', '1-0-1', 'After Meal'),
(9, 6, 0, 1, 'Syp Panadol 100ml', '1-0-1', 'after meal'),
(10, 6, 0, 1, 'Cefiget Tablet 200 Mg Lmp', '1-1-1', 'before meal'),
(11, 10, 0, 1, 'Syp Panadol 100ml', '1-0-1', 'After Meal'),
(12, 10, 0, 1, 'Beflam Tablet 75mg', '2-0-2', 'After Meal'),
(13, 10, 0, 1, 'Analin 10 Mg Injection 1 Ampoule', '1-1-1', 'After Meal'),
(14, 12, 0, 1, 'Syp Panadol 100ml', '1-0-1', 'After Meal'),
(15, 12, 0, 1, 'Cefiget Tablet 200 Mg Lmp', '1-0-0', 'Before Meal'),
(16, 12, 0, 1, 'Analin 10 Mg Injection 1 Ampoule', '1-1-1', 'After Meal'),
(17, 13, 0, 1, 'Syp Panadol 100ml', '1-0-1', 'After Meal'),
(18, 13, 0, 1, 'Beflam Tablet 75mg', '1-0-0', 'Before MEal'),
(19, 13, 0, 1, 'Analin 10 Mg Injection 1 Ampoule', '2-2-2', 'After Meal'),
(20, 14, 0, 1, 'Syp Panadol 100ml', '1-0-1', 'After meal'),
(21, 14, 0, 1, 'Beflam Tablet 75mg', '1-1-1', 'Before meal'),
(22, 11, 0, 1, 'Syp Panadol 100ml', '1-0-1', ''),
(23, 11, 0, 1, 'Cefiget Tablet 200 Mg Lmp', '1-1-1', ''),
(24, 26, 0, 1, 'Syp Panadol 100ml', '1-0-1', 'After meal'),
(25, 26, 0, 1, 'Beflam Tablet 75mg', '1-0-0', 'before meal'),
(26, 26, 0, 1, 'Analin 10 Mg Injection 1 Ampoule', '1-1-1', 'before meal'),
(27, 30, 0, 1, 'PANADOL SUSP PLAIN 120ML', '1-0-1', 'After Meal'),
(28, 30, 0, 1, 'Beflam Tablet 75mg', '1-0-0', 'Before meal'),
(29, 30, 0, 1, 'SPASMODINE SP 100ML', '2-0-2', 'After Meal'),
(30, 55, 0, 1, 'Syp Panadol 100ml', '', 'after meal'),
(31, 56, 0, 1, 'Syp Panadol 100ml', '1-1-1', 'after meal'),
(32, 57, 0, 1, 'Syp Panadol 100ml', '1-0-1', '');

-- --------------------------------------------------------

--
-- Table structure for table `print_setting`
--

CREATE TABLE `print_setting` (
  `id` int(11) NOT NULL,
  `print_header` varchar(300) NOT NULL,
  `print_footer` varchar(200) NOT NULL,
  `setting_for` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `print_setting`
--

INSERT INTO `print_setting` (`id`, `print_header`, `print_footer`, `setting_for`, `is_active`) VALUES
(2, 'uploads/printing/2.jpg', '', 'opdpre', 'yes'),
(3, 'uploads/printing/3.jpg', '', 'opd', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `radio`
--

CREATE TABLE `radio` (
  `id` int(11) NOT NULL,
  `test_name` varchar(100) DEFAULT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `test_type` varchar(100) DEFAULT NULL,
  `radiology_category_id` varchar(11) NOT NULL,
  `radiology_parameter_id` varchar(100) NOT NULL,
  `sub_category` varchar(50) NOT NULL,
  `report_days` varchar(50) NOT NULL,
  `charge_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radio`
--

INSERT INTO `radio` (`id`, `test_name`, `short_name`, `test_type`, `radiology_category_id`, `radiology_parameter_id`, `sub_category`, `report_days`, `charge_id`, `created_at`) VALUES
(1, 'Abdomen Ultrasound', 'ABU', 'Scanning', '1', '', '', '', 4, '2022-02-23 18:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `radiology_parameter`
--

CREATE TABLE `radiology_parameter` (
  `id` int(11) NOT NULL,
  `parameter_name` varchar(100) NOT NULL,
  `test_value` varchar(100) NOT NULL,
  `reference_range` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radiology_parameter`
--

INSERT INTO `radiology_parameter` (`id`, `parameter_name`, `test_value`, `reference_range`, `gender`, `unit`, `description`, `created_at`) VALUES
(1, 'Liver', '', '', '', '4', '', '2022-02-23 18:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `radiology_parameterdetails`
--

CREATE TABLE `radiology_parameterdetails` (
  `id` int(11) NOT NULL,
  `radiology_id` varchar(100) NOT NULL,
  `parameter_id` varchar(100) NOT NULL,
  `created_id` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `radiology_report_id` int(11) NOT NULL,
  `radiology_report_value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radiology_parameterdetails`
--

INSERT INTO `radiology_parameterdetails` (`id`, `radiology_id`, `parameter_id`, `created_id`, `radiology_report_id`, `radiology_report_value`) VALUES
(1, '1', '1', '2022-02-23 18:40:16', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `radiology_report`
--

CREATE TABLE `radiology_report` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(200) NOT NULL,
  `radiology_id` int(11) NOT NULL,
  `patient_id` varchar(11) DEFAULT NULL,
  `customer_type` varchar(50) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `consultant_doctor` varchar(10) NOT NULL,
  `reporting_date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `radiology_report` varchar(255) DEFAULT NULL,
  `apply_charge` decimal(15,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `generated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radiology_report`
--

INSERT INTO `radiology_report` (`id`, `bill_no`, `radiology_id`, `patient_id`, `customer_type`, `patient_name`, `consultant_doctor`, `reporting_date`, `description`, `radiology_report`, `apply_charge`, `created_at`, `generated_by`) VALUES
(1, '1', 1, '34', NULL, NULL, '4', '2022-02-24', 'Liver Scan shows normal in size and shape\r\n', NULL, '500.00', '2022-02-23 18:40:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `radiology_report_parameterdetails`
--

CREATE TABLE `radiology_report_parameterdetails` (
  `id` int(11) NOT NULL,
  `radiology_report_id` int(11) NOT NULL,
  `parameter_id` int(11) NOT NULL,
  `radiology_report_value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radiology_report_parameterdetails`
--

INSERT INTO `radiology_report_parameterdetails` (`id`, `radiology_report_id`, `parameter_id`, `radiology_report_value`) VALUES
(1, 1, 1, 'Liver Scan shows normal in size and shape');

-- --------------------------------------------------------

--
-- Table structure for table `read_notification`
--

CREATE TABLE `read_notification` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `read_systemnotification`
--

CREATE TABLE `read_systemnotification` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `is_active` varchar(200) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `read_systemnotification`
--

INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES
(1, 2, 1, 'no', '2021-08-29 11:06:10'),
(2, 8, 4, 'no', '2021-08-29 12:11:06'),
(3, 167, 1, 'no', '2022-01-20 06:01:25'),
(4, 167, 1, 'no', '2022-01-20 06:01:30'),
(5, 34, 6, 'no', '2022-02-03 07:38:40'),
(6, 195, 6, 'no', '2022-02-08 15:16:32'),
(7, 311, 1, 'no', '2022-02-24 08:23:12'),
(8, 278, 1, 'no', '2022-02-24 13:23:42'),
(9, 324, 1, 'no', '2022-02-24 13:23:44'),
(10, 321, 1, 'no', '2022-02-24 13:23:45'),
(11, 317, 1, 'no', '2022-02-24 13:23:46'),
(12, 314, 1, 'no', '2022-02-24 13:23:48'),
(13, 305, 1, 'no', '2022-02-24 13:23:48'),
(14, 308, 1, 'no', '2022-02-24 13:23:49'),
(15, 302, 1, 'no', '2022-02-24 13:23:50'),
(16, 299, 1, 'no', '2022-02-24 13:23:51'),
(17, 296, 1, 'no', '2022-02-24 13:23:53'),
(18, 293, 1, 'no', '2022-02-24 13:23:53'),
(19, 290, 1, 'no', '2022-02-24 13:23:54'),
(20, 287, 1, 'no', '2022-02-24 13:23:54'),
(21, 284, 1, 'no', '2022-02-24 13:23:55'),
(22, 281, 1, 'no', '2022-02-24 13:23:55'),
(23, 347, 1, 'no', '2022-02-24 19:37:19'),
(24, 370, 1, 'no', '2022-03-04 13:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `is_superadmin` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`) VALUES
(1, 'Admin', NULL, 0, 1, 0, '2018-12-25 11:49:43'),
(2, 'Accountant', NULL, 0, 1, 0, '2018-12-25 11:49:38'),
(3, 'Doctor', NULL, 0, 1, 0, '2018-07-21 10:37:36'),
(4, 'Pharmacist', NULL, 0, 1, 0, '2018-07-21 10:38:26'),
(5, 'Pathologist', NULL, 0, 1, 0, '2018-12-25 11:49:59'),
(6, 'Radiologist', NULL, 0, 1, 0, '2018-12-25 11:50:27'),
(7, 'Super Admin', NULL, 0, 1, 1, '2018-12-25 11:52:24'),
(8, 'Receptionist', NULL, 0, 1, 0, '2018-12-25 11:50:22'),
(9, 'Display Only', NULL, 0, 0, 0, '2022-02-22 11:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `perm_cat_id` int(11) DEFAULT NULL,
  `can_view` int(11) DEFAULT NULL,
  `can_add` int(11) DEFAULT NULL,
  `can_edit` int(11) DEFAULT NULL,
  `can_delete` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES
(1, 1, 132, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(3, 1, 134, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(4, 1, 135, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(5, 1, 136, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(6, 1, 137, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(7, 1, 192, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(8, 1, 138, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(9, 1, 139, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(10, 1, 140, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(11, 1, 141, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(12, 1, 142, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(13, 1, 143, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(14, 1, 144, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(15, 1, 145, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(16, 1, 193, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(17, 1, 194, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(18, 1, 195, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(19, 1, 196, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(20, 1, 197, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(21, 1, 198, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(22, 1, 146, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(23, 1, 147, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(24, 1, 148, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(25, 1, 170, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(26, 1, 200, 1, 1, 0, 1, '2019-03-09 11:56:01'),
(27, 1, 201, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(28, 1, 149, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(29, 1, 150, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(30, 1, 175, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(31, 1, 152, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(32, 1, 153, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(33, 1, 171, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(34, 1, 163, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(35, 1, 164, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(36, 1, 167, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(37, 1, 168, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(38, 1, 169, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(39, 1, 202, 1, 1, 0, 1, '2019-03-09 11:56:01'),
(40, 1, 173, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(41, 1, 174, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(42, 1, 9, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(43, 1, 10, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(45, 1, 176, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(46, 1, 203, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(47, 1, 12, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(48, 1, 13, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(49, 1, 14, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(50, 1, 165, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(51, 1, 166, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(52, 1, 80, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(53, 1, 81, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(54, 1, 82, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(55, 1, 83, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(56, 1, 84, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(57, 1, 85, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(58, 1, 204, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(59, 1, 205, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(60, 1, 86, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(61, 1, 87, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(63, 1, 89, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(64, 1, 90, 1, 1, 0, 1, '2019-03-09 11:56:01'),
(65, 1, 91, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(66, 1, 108, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(67, 1, 109, 1, 1, 0, 1, '2020-08-25 01:48:35'),
(68, 1, 110, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(69, 1, 111, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(70, 1, 112, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(72, 1, 129, 0, 1, 0, 1, '2019-03-09 11:56:01'),
(73, 1, 43, 1, 1, 1, 1, '2020-08-28 07:04:54'),
(74, 1, 44, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(75, 1, 46, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(76, 1, 27, 1, 1, 0, 1, '2019-03-09 11:56:01'),
(77, 1, 31, 1, 1, 0, 1, '2019-03-09 11:56:01'),
(78, 1, 32, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(79, 1, 33, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(80, 1, 34, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(81, 1, 35, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(82, 1, 104, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(83, 1, 61, 1, 1, 0, 1, '2019-03-09 11:56:01'),
(85, 1, 63, 1, 1, 0, 1, '2020-08-28 07:04:54'),
(86, 1, 64, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(87, 1, 65, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(88, 1, 66, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(89, 1, 67, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(92, 1, 56, 1, 0, 1, 0, '2019-03-09 11:56:01'),
(93, 1, 57, 1, 0, 1, 0, '2019-03-09 11:56:01'),
(94, 1, 58, 1, 0, 1, 0, '2019-03-09 11:56:01'),
(95, 1, 59, 1, 0, 1, 0, '2019-03-09 11:56:01'),
(96, 1, 60, 1, 0, 1, 0, '2019-03-09 11:56:01'),
(97, 1, 126, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(98, 1, 130, 1, 1, 0, 1, '2019-03-09 11:56:01'),
(99, 1, 131, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(100, 1, 48, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(101, 1, 178, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(102, 1, 179, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(103, 1, 180, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(104, 1, 181, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(105, 1, 182, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(106, 1, 183, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(107, 1, 184, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(108, 1, 185, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(109, 1, 186, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(110, 1, 187, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(111, 1, 188, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(112, 1, 189, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(113, 1, 206, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(114, 1, 207, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(115, 1, 208, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(116, 1, 209, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(117, 1, 210, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(118, 1, 211, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(119, 1, 212, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(120, 1, 213, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(121, 1, 118, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(122, 1, 155, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(123, 1, 156, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(124, 1, 157, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(125, 1, 158, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(126, 1, 159, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(127, 1, 160, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(128, 1, 161, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(129, 1, 162, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(130, 1, 190, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(131, 1, 191, 1, 0, 0, 0, '2019-03-09 11:56:01'),
(132, 1, 102, 1, 1, 1, 1, '2019-03-09 11:56:01'),
(133, 2, 132, 1, 1, 1, 0, '2019-03-09 12:13:21'),
(134, 2, 135, 1, 1, 1, 0, '2019-03-09 12:13:21'),
(135, 2, 138, 1, 1, 1, 0, '2019-03-09 12:13:21'),
(136, 2, 139, 1, 1, 1, 0, '2019-03-09 12:13:21'),
(137, 2, 143, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(138, 2, 144, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(139, 2, 145, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(140, 2, 193, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(141, 2, 194, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(142, 2, 195, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(143, 2, 196, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(144, 2, 198, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(145, 2, 148, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(146, 2, 149, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(147, 2, 150, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(148, 2, 152, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(149, 2, 153, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(150, 2, 163, 1, 1, 1, 0, '2019-03-09 12:13:21'),
(151, 2, 167, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(152, 2, 168, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(153, 2, 173, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(154, 2, 174, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(155, 2, 9, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(156, 2, 10, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(158, 2, 176, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(159, 2, 203, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(160, 2, 12, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(161, 2, 13, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(162, 2, 14, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(163, 2, 165, 1, 1, 1, 0, '2019-03-09 12:13:21'),
(164, 2, 166, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(165, 2, 204, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(166, 2, 205, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(167, 2, 86, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(168, 2, 87, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(169, 2, 88, 1, 1, 1, 0, '2019-03-09 12:13:21'),
(170, 2, 89, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(171, 2, 90, 1, 1, 0, 1, '2019-03-09 12:13:21'),
(172, 2, 91, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(173, 2, 108, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(174, 2, 109, 1, 1, 0, 1, '2020-08-25 01:48:35'),
(175, 2, 110, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(176, 2, 111, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(177, 2, 112, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(178, 2, 127, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(179, 2, 129, 0, 1, 0, 1, '2019-03-09 12:13:21'),
(180, 2, 43, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(181, 2, 44, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(182, 2, 46, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(183, 2, 27, 1, 1, 0, 1, '2019-03-09 12:13:21'),
(184, 2, 31, 1, 1, 0, 1, '2019-03-09 12:13:21'),
(185, 2, 32, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(186, 2, 33, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(187, 2, 34, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(188, 2, 35, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(189, 2, 104, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(190, 2, 48, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(191, 2, 178, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(192, 2, 179, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(193, 2, 180, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(194, 2, 181, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(195, 2, 182, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(196, 2, 184, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(197, 2, 185, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(198, 2, 186, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(199, 2, 188, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(200, 2, 189, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(201, 2, 206, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(202, 2, 207, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(203, 2, 208, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(204, 2, 209, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(205, 2, 210, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(206, 2, 211, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(207, 2, 212, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(208, 2, 213, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(209, 2, 118, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(210, 2, 155, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(211, 2, 156, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(212, 2, 157, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(213, 2, 158, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(214, 2, 159, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(215, 2, 160, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(216, 2, 161, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(217, 2, 162, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(218, 2, 190, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(219, 2, 191, 1, 0, 0, 0, '2019-03-09 12:13:21'),
(220, 2, 102, 1, 1, 1, 1, '2019-03-09 12:13:21'),
(221, 3, 132, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(222, 3, 134, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(223, 3, 135, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(224, 3, 136, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(225, 3, 137, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(226, 3, 138, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(227, 3, 139, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(228, 3, 140, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(229, 3, 141, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(230, 3, 142, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(231, 3, 143, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(232, 3, 144, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(233, 3, 145, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(234, 3, 194, 1, 0, 0, 0, '2019-03-10 01:47:01'),
(235, 3, 198, 1, 0, 0, 0, '2019-03-10 01:47:01'),
(236, 3, 163, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(237, 3, 164, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(238, 3, 167, 1, 0, 0, 0, '2019-03-10 01:47:01'),
(239, 3, 166, 1, 0, 0, 0, '2019-10-12 06:32:53'),
(240, 3, 204, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(241, 3, 205, 1, 0, 0, 0, '2019-03-10 01:47:01'),
(242, 3, 86, 1, 0, 0, 0, '2019-03-10 01:47:01'),
(243, 3, 109, 1, 1, 0, 1, '2020-08-25 01:48:35'),
(244, 3, 127, 1, 0, 0, 0, '2019-03-10 01:47:01'),
(245, 3, 43, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(246, 3, 44, 1, 0, 0, 0, '2019-03-10 01:47:01'),
(248, 3, 27, 1, 1, 0, 1, '2019-03-10 01:47:01'),
(249, 3, 48, 1, 0, 0, 0, '2019-03-10 01:47:01'),
(250, 3, 178, 1, 0, 0, 0, '2019-03-10 01:47:01'),
(251, 3, 182, 1, 0, 0, 0, '2019-03-10 01:47:01'),
(253, 3, 208, 1, 0, 0, 0, '2019-03-10 01:47:01'),
(254, 3, 209, 1, 0, 0, 0, '2019-03-10 01:47:01'),
(255, 3, 118, 1, 0, 0, 0, '2019-03-10 01:47:01'),
(256, 3, 155, 1, 0, 0, 0, '2019-03-10 01:47:01'),
(257, 3, 156, 1, 0, 0, 0, '2019-03-10 01:47:01'),
(262, 3, 102, 1, 1, 1, 1, '2019-03-10 01:47:01'),
(277, 5, 149, 1, 1, 1, 1, '2019-03-10 01:53:30'),
(278, 5, 150, 1, 1, 1, 1, '2019-03-10 01:53:30'),
(279, 5, 175, 1, 1, 1, 1, '2019-03-10 01:53:30'),
(280, 5, 86, 1, 0, 0, 0, '2019-03-10 01:53:30'),
(281, 5, 109, 1, 1, 0, 1, '2020-08-25 01:48:35'),
(282, 5, 43, 1, 1, 1, 1, '2019-03-10 01:53:30'),
(283, 5, 44, 1, 0, 0, 0, '2019-03-10 01:53:30'),
(285, 5, 27, 1, 1, 0, 1, '2019-03-10 01:53:30'),
(286, 5, 180, 1, 0, 0, 0, '2019-03-10 01:53:30'),
(288, 5, 158, 1, 0, 0, 0, '2019-03-10 01:53:30'),
(289, 5, 102, 1, 1, 1, 1, '2019-03-10 01:53:30'),
(290, 6, 152, 1, 1, 1, 1, '2019-03-10 02:01:58'),
(291, 6, 153, 1, 1, 1, 1, '2019-03-10 02:01:58'),
(292, 6, 171, 1, 1, 1, 1, '2019-03-10 02:01:58'),
(293, 6, 86, 1, 0, 0, 0, '2019-03-10 02:01:58'),
(294, 6, 109, 1, 1, 0, 1, '2020-08-25 01:48:35'),
(295, 6, 181, 1, 0, 0, 0, '2019-03-10 02:01:58'),
(297, 6, 118, 1, 0, 0, 0, '2019-03-10 02:01:58'),
(298, 6, 159, 1, 0, 0, 0, '2019-03-10 02:01:58'),
(299, 6, 102, 1, 1, 1, 1, '2019-03-10 02:01:58'),
(300, 8, 132, 1, 1, 1, 1, '2019-03-10 02:08:46'),
(306, 8, 81, 1, 1, 1, 1, '2019-03-10 02:08:46'),
(492, 8, 236, 1, 1, 1, 0, '2019-10-12 07:10:43'),
(493, 8, 146, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(495, 8, 138, 1, 1, 1, 1, '2019-10-04 01:05:20'),
(496, 8, 139, 1, 1, 1, 1, '2019-10-04 01:05:49'),
(500, 8, 143, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(501, 8, 144, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(502, 8, 145, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(504, 8, 194, 1, 0, 0, 0, '2019-10-04 01:06:51'),
(506, 8, 196, 1, 0, 1, 1, '2019-10-12 07:46:52'),
(508, 8, 198, 1, 0, 0, 0, '2019-10-04 01:06:51'),
(511, 8, 148, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(516, 8, 225, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(540, 3, 245, 1, 1, 1, 1, '2019-10-12 06:32:53'),
(580, 2, 221, 1, 1, 1, 1, '2019-10-12 06:26:04'),
(581, 2, 222, 1, 1, 1, 1, '2019-10-12 06:26:04'),
(582, 2, 223, 1, 1, 1, 1, '2019-10-12 06:26:04'),
(583, 2, 225, 1, 0, 0, 0, '2019-10-12 06:26:04'),
(584, 2, 216, 1, 0, 0, 0, '2019-10-12 06:26:04'),
(585, 2, 217, 1, 0, 0, 0, '2019-10-12 06:26:04'),
(587, 2, 249, 1, 1, 1, 1, '2019-10-12 06:26:04'),
(588, 2, 250, 1, 0, 0, 0, '2019-10-12 06:26:04'),
(589, 2, 251, 1, 0, 0, 0, '2019-10-12 06:26:04'),
(590, 2, 253, 1, 0, 0, 0, '2019-10-12 06:26:04'),
(591, 2, 254, 1, 0, 0, 0, '2019-10-12 06:26:04'),
(592, 2, 255, 1, 0, 0, 0, '2019-10-12 06:26:04'),
(593, 2, 256, 1, 0, 0, 0, '2019-10-12 06:26:04'),
(594, 2, 238, 1, 0, 0, 0, '2019-10-12 06:26:04'),
(595, 2, 236, 1, 1, 1, 0, '2019-10-12 06:26:04'),
(596, 2, 237, 1, 0, 0, 0, '2019-10-12 06:26:04'),
(597, 3, 192, 1, 1, 1, 1, '2019-10-12 06:32:53'),
(598, 3, 218, 1, 0, 0, 0, '2019-10-12 06:32:53'),
(599, 3, 219, 1, 0, 0, 0, '2019-10-12 06:32:53'),
(600, 3, 221, 1, 1, 1, 1, '2019-10-12 06:32:53'),
(601, 3, 222, 1, 1, 1, 1, '2019-10-12 06:32:53'),
(602, 3, 223, 1, 1, 1, 1, '2019-10-12 06:32:53'),
(603, 3, 193, 1, 0, 0, 0, '2019-10-12 06:32:53'),
(604, 3, 195, 1, 0, 0, 0, '2019-10-12 06:32:53'),
(605, 3, 196, 1, 1, 1, 1, '2019-10-12 06:32:53'),
(606, 3, 197, 1, 1, 1, 1, '2019-10-12 06:32:53'),
(607, 3, 220, 1, 1, 1, 1, '2019-10-12 06:32:53'),
(608, 3, 248, 1, 1, 1, 1, '2019-10-12 06:32:53'),
(609, 3, 146, 1, 0, 0, 0, '2019-10-12 06:32:53'),
(610, 3, 149, 1, 0, 0, 0, '2019-10-12 06:32:53'),
(611, 3, 152, 1, 0, 0, 0, '2019-10-12 06:32:53'),
(612, 3, 173, 1, 0, 0, 0, '2019-10-12 06:32:53'),
(613, 3, 174, 1, 0, 0, 0, '2019-10-12 06:32:53'),
(614, 3, 176, 1, 0, 0, 0, '2019-10-12 06:32:53'),
(615, 3, 228, 1, 0, 0, 0, '2019-10-12 06:32:53'),
(616, 3, 165, 1, 0, 0, 0, '2019-10-12 06:32:53'),
(617, 3, 214, 1, 1, 1, 1, '2019-10-12 06:32:53'),
(618, 3, 215, 1, 1, 1, 1, '2019-10-12 06:32:53'),
(619, 3, 216, 1, 0, 0, 0, '2019-10-12 06:32:53'),
(620, 3, 217, 1, 0, 0, 0, '2019-10-12 06:32:53'),
(621, 3, 236, 1, 1, 1, 1, '2019-10-12 06:32:53'),
(623, 5, 243, 1, 1, 1, 1, '2019-10-12 06:54:41'),
(624, 5, 236, 1, 0, 0, 0, '2019-10-12 06:54:41'),
(625, 6, 43, 1, 1, 1, 1, '2019-10-12 07:00:16'),
(626, 6, 44, 1, 0, 0, 0, '2019-10-12 07:00:16'),
(627, 6, 27, 1, 1, 0, 1, '2019-10-12 07:00:16'),
(628, 6, 236, 1, 0, 0, 0, '2019-10-12 07:00:16'),
(629, 8, 135, 1, 1, 1, 1, '2019-10-12 07:10:43'),
(630, 8, 218, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(631, 8, 219, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(632, 8, 221, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(633, 8, 222, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(634, 8, 223, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(635, 8, 149, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(636, 8, 152, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(637, 8, 163, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(638, 8, 167, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(639, 8, 173, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(640, 8, 174, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(641, 8, 176, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(642, 8, 228, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(643, 8, 165, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(644, 8, 166, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(645, 8, 214, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(646, 8, 215, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(647, 8, 82, 1, 1, 1, 1, '2019-10-12 07:10:43'),
(648, 8, 83, 1, 1, 1, 1, '2019-10-12 07:10:43'),
(649, 8, 84, 1, 1, 1, 1, '2019-10-12 07:10:43'),
(650, 8, 85, 1, 1, 1, 1, '2019-10-12 07:10:43'),
(651, 8, 204, 1, 1, 1, 1, '2019-10-12 07:10:43'),
(652, 8, 205, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(653, 8, 216, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(654, 8, 217, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(655, 8, 109, 1, 1, 0, 1, '2020-08-25 01:48:35'),
(656, 8, 43, 1, 1, 1, 1, '2019-10-12 07:10:43'),
(657, 8, 44, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(658, 8, 27, 1, 1, 0, 1, '2019-10-12 07:10:43'),
(659, 8, 31, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(660, 8, 32, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(661, 8, 33, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(662, 8, 48, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(663, 8, 178, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(664, 8, 180, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(665, 8, 181, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(666, 8, 186, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(667, 8, 207, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(668, 8, 208, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(669, 8, 209, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(670, 8, 253, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(671, 8, 254, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(672, 8, 255, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(673, 8, 118, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(674, 8, 238, 1, 0, 0, 0, '2019-10-12 07:10:43'),
(675, 8, 102, 1, 1, 1, 1, '2019-10-12 07:10:43'),
(676, 5, 176, 1, 0, 0, 0, '2019-10-12 07:40:30'),
(677, 6, 176, 1, 0, 0, 0, '2019-10-12 07:42:51'),
(678, 8, 86, 1, 0, 0, 0, '2019-10-12 07:46:52'),
(679, 8, 182, 1, 0, 0, 0, '2019-10-12 07:46:52'),
(680, 2, 147, 1, 0, 0, 0, '2019-10-14 04:04:51'),
(681, 2, 200, 1, 0, 0, 0, '2019-10-14 04:04:51'),
(682, 2, 164, 1, 0, 0, 0, '2019-10-14 04:06:36'),
(683, 2, 146, 1, 0, 0, 0, '2019-10-14 04:09:47'),
(684, 1, 218, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(685, 1, 219, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(686, 1, 221, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(687, 1, 222, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(688, 1, 223, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(689, 1, 220, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(690, 1, 248, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(691, 1, 224, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(692, 1, 225, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(693, 1, 226, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(694, 1, 227, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(695, 1, 243, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(696, 1, 257, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(697, 1, 244, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(698, 1, 245, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(699, 1, 246, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(700, 1, 252, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(701, 1, 228, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(702, 1, 247, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(703, 1, 214, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(704, 1, 215, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(705, 1, 240, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(706, 1, 241, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(707, 1, 242, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(708, 1, 216, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(709, 1, 217, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(711, 1, 249, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(712, 1, 250, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(713, 1, 251, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(714, 1, 253, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(715, 1, 254, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(716, 1, 255, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(717, 1, 256, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(718, 1, 258, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(719, 1, 259, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(720, 1, 238, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(721, 1, 236, 1, 1, 1, 1, '2019-10-15 00:48:33'),
(722, 1, 237, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(723, 1, 239, 1, 0, 0, 0, '2019-10-15 00:48:33'),
(724, 3, 226, 1, 0, 0, 0, '2019-10-18 05:03:53'),
(727, 3, 238, 1, 0, 0, 0, '2019-11-01 00:10:24'),
(958, 1, 268, 0, 0, 1, 0, '2020-08-12 02:11:09'),
(963, 1, 267, 1, 1, 1, 1, '2020-08-12 02:37:31'),
(1077, 3, 270, 1, 1, 0, 1, '2020-08-14 01:53:14'),
(1087, 1, 269, 1, 1, 0, 1, '2020-08-21 01:58:52'),
(1088, 1, 270, 1, 1, 0, 1, '2020-08-21 01:58:52'),
(1089, 1, 271, 1, 0, 0, 0, '2020-08-21 01:58:52'),
(1090, 1, 272, 1, 0, 0, 0, '2020-08-21 01:58:52'),
(1091, 1, 273, 1, 0, 1, 0, '2020-08-21 01:58:52'),
(1093, 3, 274, 1, 0, 0, 0, '2020-08-21 04:51:39'),
(1094, 1, 274, 1, 0, 0, 0, '2020-08-21 04:53:41'),
(1120, 4, 197, 1, 1, 1, 1, '2020-08-23 02:35:15'),
(1125, 4, 146, 1, 1, 1, 1, '2020-08-23 02:47:35'),
(1126, 4, 147, 1, 1, 1, 1, '2020-08-28 08:26:27'),
(1128, 4, 170, 1, 1, 1, 1, '2020-08-23 02:48:26'),
(1129, 4, 200, 1, 1, 0, 1, '2020-08-23 02:49:17'),
(1130, 4, 201, 1, 1, 1, 1, '2020-08-23 02:50:51'),
(1131, 4, 224, 1, 0, 0, 0, '2020-08-23 02:51:00'),
(1132, 4, 225, 1, 1, 1, 1, '2020-08-23 02:52:02'),
(1133, 4, 226, 1, 1, 1, 1, '2020-08-23 02:52:56'),
(1134, 4, 227, 1, 1, 1, 1, '2020-08-23 02:53:36'),
(1138, 4, 243, 1, 0, 0, 0, '2020-08-28 08:26:27'),
(1145, 4, 244, 1, 0, 0, 0, '2020-08-28 08:26:27'),
(1150, 4, 245, 1, 0, 0, 0, '2020-08-28 08:26:27'),
(1160, 4, 252, 1, 0, 0, 0, '2020-08-23 03:24:46'),
(1163, 4, 14, 1, 0, 0, 0, '2020-08-23 03:27:14'),
(1164, 4, 176, 1, 0, 0, 0, '2020-08-28 08:26:27'),
(1165, 4, 203, 1, 0, 0, 0, '2020-08-28 08:26:27'),
(1166, 4, 228, 1, 0, 0, 0, '2020-08-28 08:26:27'),
(1171, 4, 247, 1, 0, 0, 0, '2020-08-28 08:26:27'),
(1184, 4, 214, 1, 0, 0, 0, '2020-08-28 08:26:27'),
(1185, 4, 215, 1, 0, 0, 0, '2020-08-28 08:26:27'),
(1186, 4, 240, 1, 0, 0, 0, '2020-08-28 08:26:27'),
(1187, 4, 241, 1, 1, 1, 1, '2020-08-23 03:48:55'),
(1188, 4, 242, 1, 1, 1, 1, '2020-08-23 03:49:50'),
(1204, 4, 249, 1, 1, 1, 1, '2020-08-23 04:10:21'),
(1205, 4, 43, 1, 1, 1, 1, '2020-08-28 08:26:27'),
(1208, 4, 27, 1, 1, 0, 1, '2020-08-23 04:13:31'),
(1230, 4, 179, 1, 0, 0, 0, '2020-08-23 04:31:41'),
(1254, 4, 256, 1, 0, 0, 0, '2020-08-23 04:40:36'),
(1269, 4, 274, 1, 0, 0, 0, '2020-08-23 04:46:38'),
(1270, 4, 118, 1, 0, 0, 0, '2020-08-23 04:46:51'),
(1271, 4, 155, 1, 0, 0, 0, '2020-08-23 04:47:34'),
(1272, 4, 156, 1, 0, 0, 0, '2020-08-23 04:47:49'),
(1273, 4, 157, 1, 0, 0, 0, '2020-08-23 04:47:59'),
(1274, 4, 158, 1, 0, 0, 0, '2020-08-23 04:48:10'),
(1275, 4, 159, 1, 0, 0, 0, '2020-08-23 04:48:20'),
(1276, 4, 160, 1, 0, 0, 0, '2020-08-23 04:48:30'),
(1277, 4, 161, 1, 0, 0, 0, '2020-08-23 04:48:39'),
(1278, 4, 162, 1, 0, 0, 0, '2020-08-23 04:48:48'),
(1279, 4, 190, 1, 0, 0, 0, '2020-08-23 04:48:59'),
(1280, 4, 191, 1, 0, 0, 0, '2020-08-23 04:49:10'),
(1281, 4, 238, 1, 0, 0, 0, '2020-08-23 04:49:20'),
(1282, 4, 236, 1, 0, 0, 0, '2020-08-28 08:26:27'),
(1287, 4, 102, 1, 1, 1, 1, '2020-08-23 04:53:17'),
(1291, 4, 148, 1, 1, 1, 1, '2020-08-25 05:12:23'),
(1295, 1, 88, 1, 1, 1, 0, '2020-08-25 01:27:16'),
(1304, 4, 44, 1, 0, 0, 0, '2020-08-25 05:51:16'),
(1314, 4, 109, 1, 1, 0, 1, '2020-08-25 23:41:03'),
(1316, 1, 279, 1, 1, 1, 1, '2020-08-26 01:33:11'),
(1320, 1, 260, 1, 1, 1, 1, '2020-08-28 07:04:54'),
(1321, 1, 263, 1, 1, 1, 1, '2020-08-28 07:04:54'),
(1322, 1, 275, 1, 0, 0, 0, '2020-08-28 07:04:54'),
(1323, 1, 277, 1, 0, 0, 0, '2020-08-28 07:04:54'),
(1324, 1, 261, 1, 1, 1, 1, '2020-08-28 07:04:54'),
(1325, 1, 262, 1, 1, 1, 1, '2020-08-28 07:04:54'),
(1326, 1, 276, 1, 0, 0, 0, '2020-08-28 07:04:54'),
(1327, 1, 278, 1, 0, 0, 0, '2020-08-28 07:04:54'),
(1328, 1, 264, 1, 1, 0, 1, '2020-08-28 07:04:54'),
(1329, 1, 127, 1, 0, 0, 0, '2020-08-28 07:04:54'),
(1330, 1, 62, 1, 1, 0, 1, '2020-08-28 07:04:54'),
(1331, 1, 265, 1, 0, 0, 0, '2020-08-28 07:04:54'),
(1332, 1, 266, 1, 0, 0, 0, '2020-08-28 07:04:54'),
(1333, 2, 275, 1, 0, 0, 0, '2020-08-28 22:11:55'),
(1334, 2, 276, 1, 0, 0, 0, '2020-08-28 22:11:55'),
(1335, 2, 266, 1, 0, 0, 0, '2020-08-28 22:11:55'),
(1336, 2, 274, 1, 0, 0, 0, '2020-08-28 22:11:55'),
(1337, 3, 268, 0, 0, 1, 0, '2020-08-28 22:25:27'),
(1338, 3, 279, 1, 0, 0, 0, '2020-08-28 22:25:27'),
(1339, 4, 86, 1, 0, 0, 0, '2020-08-28 22:33:24'),
(1340, 5, 275, 1, 0, 0, 0, '2020-08-28 22:40:17'),
(1341, 5, 277, 1, 0, 0, 0, '2020-08-28 22:40:17'),
(1342, 5, 270, 1, 0, 0, 0, '2020-08-28 22:40:17'),
(1343, 2, 270, 1, 0, 0, 0, '2020-08-28 22:40:54'),
(1344, 3, 269, 1, 1, 0, 1, '2020-08-28 22:42:09'),
(1345, 4, 270, 1, 0, 0, 0, '2020-08-28 22:42:29'),
(1346, 6, 261, 1, 1, 1, 1, '2020-08-28 22:48:58'),
(1347, 6, 262, 1, 1, 1, 1, '2020-08-28 22:48:58'),
(1348, 6, 276, 1, 0, 0, 0, '2020-08-28 22:48:58'),
(1349, 6, 278, 1, 0, 0, 0, '2020-08-28 22:48:58'),
(1350, 6, 270, 1, 0, 0, 0, '2020-08-28 22:48:58'),
(1351, 5, 260, 1, 1, 1, 1, '2020-08-28 22:51:14'),
(1352, 5, 263, 1, 1, 1, 1, '2020-08-28 22:51:14'),
(1353, 8, 147, 1, 0, 0, 0, '2020-08-28 23:01:41'),
(1354, 8, 200, 1, 0, 0, 0, '2020-08-28 23:01:41'),
(1355, 8, 164, 1, 0, 0, 0, '2020-08-28 23:01:41'),
(1356, 8, 80, 1, 1, 1, 1, '2020-08-28 23:01:41'),
(1357, 8, 270, 1, 0, 0, 0, '2020-08-28 23:01:41'),
(1358, 6, 244, 1, 1, 1, 1, '2020-08-28 23:12:16'),
(1359, 1, 53, 0, 1, 0, 0, '2021-08-30 07:34:22'),
(1361, 9, 204, 1, 0, 0, 0, '2022-02-22 11:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `sch_settings`
--

CREATE TABLE `sch_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `start_month` varchar(100) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `languages` varchar(255) NOT NULL DEFAULT '["4"]',
  `dise_code` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) NOT NULL,
  `time_format` varchar(20) DEFAULT '24-hour',
  `currency` varchar(50) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `is_rtl` varchar(10) DEFAULT 'disabled',
  `timezone` varchar(30) DEFAULT 'UTC',
  `image` varchar(100) DEFAULT NULL,
  `mini_logo` varchar(200) NOT NULL,
  `theme` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `credit_limit` varchar(255) DEFAULT NULL,
  `opd_record_month` varchar(50) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cron_secret_key` varchar(100) NOT NULL,
  `doctor_restriction` varchar(100) NOT NULL,
  `superadmin_restriction` varchar(200) NOT NULL,
  `mobile_api_url` varchar(200) NOT NULL,
  `app_primary_color_code` varchar(50) NOT NULL,
  `app_secondary_color_code` varchar(50) NOT NULL,
  `app_logo` varchar(200) NOT NULL,
  `zoom_api_key` varchar(200) NOT NULL,
  `zoom_api_secret` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sch_settings`
--

INSERT INTO `sch_settings` (`id`, `name`, `email`, `phone`, `address`, `start_month`, `session_id`, `lang_id`, `languages`, `dise_code`, `date_format`, `time_format`, `currency`, `currency_symbol`, `is_rtl`, `timezone`, `image`, `mini_logo`, `theme`, `credit_limit`, `opd_record_month`, `is_active`, `created_at`, `cron_secret_key`, `doctor_restriction`, `superadmin_restriction`, `mobile_api_url`, `app_primary_color_code`, `app_secondary_color_code`, `app_logo`, `zoom_api_key`, `zoom_api_secret`) VALUES
(0, 'Ali Medical Centre', 'fwh@fwt.com', '051-6456574', 'F-8 Markaz, Islamabad', '', NULL, 4, '[\"4\",\"5\"]', '001', 'd-m-Y', '12-hour', 'PGK', 'PKR', 'disabled', 'UTC', '0.JPG', '0mini_logo.png', 'blue.jpg', '20000', '1', 'no', '2022-01-05 18:07:20', '', 'disabled', 'enabled', '', '', '', '0app_logo.JPG', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `send_notification`
--

CREATE TABLE `send_notification` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` text DEFAULT NULL,
  `visible_staff` varchar(10) NOT NULL DEFAULT 'no',
  `visible_patient` varchar(10) NOT NULL DEFAULT 'no',
  `created_by` varchar(60) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sms_config`
--

CREATE TABLE `sms_config` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `api_id` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `senderid` varchar(100) NOT NULL,
  `contact` text DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_config`
--

INSERT INTO `sms_config` (`id`, `type`, `name`, `api_id`, `authkey`, `senderid`, `contact`, `username`, `url`, `password`, `is_active`, `created_at`) VALUES
(1, 'custom', 'https://sendpk.com/api/sms.php?api_key=923335702766-772f1c4a-b54b-43f9-ad28-430bfdf9de74&sender=Bran', '', '', '', NULL, NULL, NULL, NULL, 'disabled', '2022-02-28 20:08:29'),
(2, 'twilio', '', 'AC9192319fd2992d41c6b1deb0dec52d3e', '', '', '(269) 520-7827', NULL, NULL, '5e172b4c742bba4d85254f21f94f9d10', 'enabled', '2022-02-28 20:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE `source` (
  `id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `id` int(11) NOT NULL,
  `specialist_name` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`id`, `specialist_name`, `is_active`) VALUES
(1, 'Medical Specialist ', 'yes'),
(2, 'ENT Specialist ', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(200) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `department` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `specialist` varchar(200) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `work_exp` varchar(200) NOT NULL,
  `specialization` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `emergency_contact_no` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `marital_status` varchar(100) NOT NULL,
  `date_of_joining` date NOT NULL,
  `date_of_leaving` date NOT NULL,
  `local_address` varchar(300) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `account_title` varchar(200) NOT NULL,
  `bank_account_no` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `ifsc_code` varchar(200) NOT NULL,
  `bank_branch` varchar(100) NOT NULL,
  `payscale` varchar(200) NOT NULL,
  `basic_salary` varchar(200) NOT NULL,
  `commission` int(11) NOT NULL DEFAULT 0,
  `epf_no` varchar(200) NOT NULL,
  `contract_type` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `joining_letter` varchar(200) NOT NULL,
  `resignation_letter` varchar(200) NOT NULL,
  `other_document_name` varchar(200) NOT NULL,
  `other_document_file` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `zoom_api_key` varchar(100) NOT NULL,
  `zoom_api_secret` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `department`, `designation`, `specialist`, `qualification`, `work_exp`, `specialization`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `blood_group`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `commission`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `zoom_api_key`, `zoom_api_secret`) VALUES
(1, '9001', 0, '', '', '', '', '', '', 'Super Admin', '', '', '', '', '', 'admin@admin.com', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '', '', '', '$2y$10$VU6LnrZflt.KK4JST0Gw5ewQpiPvOsqVEALL1GUEFodNuW8P2b4ES', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', ''),
(2, 'FWT001', 0, '1', '1', '1', '', '', '', 'Javed', 'Khan', 'Jhangir Khan', 'Amna', '031646546', '', 'dr.javed@gmail.com', '1990-12-20', 'Married', '2021-02-17', '0000-00-00', '', '', '', '2.jpg', '$2y$10$.//08JHUbpiRrelvqK4oE.Clc0LayH0KFwTAabHaandyRgI9j0t7O', 'Male', 'B+', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', '', ''),
(3, 'FWT002', 0, '2', '4', '1', '', '', '', 'Lubna', 'Hameed', '', '', '', '', 'lubna@gmail.com', '1992-04-23', 'Single', '0000-00-00', '0000-00-00', '', '', '', '3.jpg', '$2y$10$jamp0gxK5D8sHrm7B5HU2uhhsXc5zKikYz4OL5l1Qi9.LrhYaNrWq', 'Female', 'A+', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', ''),
(4, 'FWT003', 0, '1', '4', '1', '', '', '', 'Ali', 'Yousafzi', '', '', '', '', 'engr.ali007@outlook.com', '1990-02-20', '', '1970-01-01', '0000-00-00', '', '', '', '4.jpg', '$2y$10$ZhaRMPHChWEs74ozYAnVte3Iked16/cSPOrHoi7bcSkTiIixNLVjq', 'Male', '', '', '', '', '', '', '', '100000', 0, '', 'permanent', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', '', ''),
(5, 'FWT005', 0, 'select', 'select', 'select', '', '', '', 'Bilal', '', '', '', '', '', 'ali.yousafzai@381solutions.com', '2000-11-16', '', '0000-00-00', '0000-00-00', '', '', '', '', '$2y$10$kvMtGj9v9J6XhxnO.ZDru.UxqPG2rt3//p/dD7eVB27kmxfduPHAC', 'Male', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', ''),
(6, 'FWT006', 0, 'select', 'select', 'select', '', '', '', 'Kashif', 'Khan', '', '', '', '', 'delta.comm777@gmail.com', '2000-12-27', '', '0000-00-00', '0000-00-00', '', '', '', '', '$2y$10$fJY/77hrvP755ow2C5sgQelZwooPvMfDV8UlJ2s9d6KM2cbMFDej6', 'Male', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', ''),
(7, 'FWT007', 0, '1', '1', '1', '', '', '', 'Jihangir Khan', '', '', '', '', '', 'bk121406@gmail.com', '2000-12-29', '', '1970-01-01', '0000-00-00', '', '', '', '', '$2y$10$dv1SZvsp3WDd02X7wSnJEuKMs6fDTe8XliQM7NrFDbvhPElPWm/ly', 'Male', '', '', '', '', '', '', '', '50000', 0, '', 'permanent', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', '', ''),
(8, '11', 0, 'select', 'select', 'select', '', '', '', 'mobin', '', '', '', '', '', 'mobeensatti@gmail.com', '2021-02-02', '', '0000-00-00', '0000-00-00', '', '', '', '', '$2y$10$M9NvToSX00Q6ln5egRJUJu05zLnh1h0S0yw6rkoHQCTZX5ashShXy', 'Male', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', ''),
(9, '33', 0, 'select', 'select', 'select', '', '', '', 'smartclick', '', '', '', '', '', 'Smartclicksolutionofficial@gmail.com', '2006-06-06', '', '0000-00-00', '0000-00-00', '', '', '', '', '$2y$10$GaGE352sz6D6NhMxkGBYJewRntDJe1G9BRPLxqS2li9zYSL9xnJh6', 'Male', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', ''),
(10, '55', 0, 'select', 'select', 'select', '', '', '', 'Iqra', '', '', '', '', '', 'golasattii@gmail.com', '1995-06-13', '', '0000-00-00', '0000-00-00', '', '', '', '', '$2y$10$ZwjWoACbU4mGju9wZF6hJu5YYRprNNZUH5jpdyOjFzsq4yhdq1Qf2', 'Female', '', '', '', '', '', '', '', '30000', 0, '', 'permanent', '1st', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', ''),
(11, '44', 0, 'select', '4', '1', '', '', '', 'Ahmed', 'Ashraf', '', '', '', '', 'golasattiii@gmail.com', '1999-01-04', '', '1970-01-01', '0000-00-00', '', '', '', '', '$2y$10$3bBQq2MO7OIgFWtIb1t6a.RBWITtXsNHzlpkd6IlYUOVzOLjUk9nK', 'Male', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', '', ''),
(12, '888', 0, 'select', 'select', 'select', '', '', '', 'display', '', '', '', '', '', 'dis@yopmail.com', '2022-06-14', '', '0000-00-00', '0000-00-00', '', '', '', '', '$2y$10$OALZdRqRwI9Pf5tPlpGRLOWAbQk1YJmybsW2yJpxoMrwrguAqEp6C', 'Male', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', ''),
(13, '10', 0, 'select', 'select', 'select', '', '', '', 'Nabeel', '', '', '', '', '', 'nabeel@yopmail.com', '1999-01-03', '', '0000-00-00', '0000-00-00', '', '', '', '', '$2y$10$l30x2D/eFonNX.emoii/.umKD/V57/EJAWpVDAFZleKFCdcmTWhNW', 'Male', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', ''),
(14, 'FWT009', 0, '1', '1', '1', '', '', '', 'Sufyan', 'Naveed', 'Naveed', 'Test', '000000000000', '000000000000', 'sufyannaveed28@gmail.com', '2022-03-10', 'Married', '2022-03-02', '0000-00-00', 'Test\r\nTest', 'Test\r\nTest', '', '', '$2y$10$/6kTrkVJlTA.s7j7iE27oevvybicQacQq0VmhBpwamka38VQAcDTq', 'Male', 'A+', '', '', '', '', '', '', '30000', 3, '6666', 'permanent', 'Morning', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `staff_attendance_type_id` int(11) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_attendance`
--

INSERT INTO `staff_attendance` (`id`, `date`, `staff_id`, `staff_attendance_type_id`, `remark`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '2021-08-29', 2, 1, '', 0, '0000-00-00 00:00:00', 0),
(2, '2021-08-29', 3, 1, '', 0, '0000-00-00 00:00:00', 0),
(3, '2022-02-03', 2, 1, '', 0, '0000-00-00 00:00:00', 0),
(4, '2022-02-03', 3, 1, '', 0, '0000-00-00 00:00:00', 0),
(5, '2022-02-03', 4, 1, '', 0, '0000-00-00 00:00:00', 0),
(6, '2022-02-03', 5, 1, '', 0, '0000-00-00 00:00:00', 0),
(7, '2022-02-03', 6, 1, '', 0, '0000-00-00 00:00:00', 0),
(8, '2022-02-03', 7, 1, '', 0, '0000-00-00 00:00:00', 0),
(9, '2022-02-03', 8, 1, '', 0, '0000-00-00 00:00:00', 0),
(10, '2022-02-03', 9, 1, '', 0, '0000-00-00 00:00:00', 0),
(11, '2022-02-03', 10, 3, '', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance_type`
--

CREATE TABLE `staff_attendance_type` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `key_value` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_attendance_type`
--

INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`) VALUES
(1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', '0000-00-00 00:00:00'),
(2, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '0000-00-00 00:00:00'),
(3, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '0000-00-00 00:00:00'),
(4, 'Half Day', '<b class=\"text text-warning\">F</b>', 'yes', '2018-05-07 01:56:16'),
(5, 'Holiday', 'H', 'yes', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `staff_designation`
--

CREATE TABLE `staff_designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_designation`
--

INSERT INTO `staff_designation` (`id`, `designation`, `is_active`) VALUES
(1, 'Medical Officer', 'yes'),
(2, 'MBBS', 'yes'),
(3, 'Eye Specialist ', 'yes'),
(4, 'Medical Specialist ', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_details`
--

CREATE TABLE `staff_leave_details` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `alloted_leave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_leave_details`
--

INSERT INTO `staff_leave_details` (`id`, `staff_id`, `leave_type_id`, `alloted_leave`) VALUES
(1, 2, 1, ''),
(2, 2, 2, ''),
(3, 3, 1, ''),
(4, 3, 2, ''),
(5, 4, 1, ''),
(6, 4, 2, ''),
(7, 5, 1, ''),
(8, 5, 2, ''),
(9, 6, 1, ''),
(10, 6, 2, ''),
(11, 7, 1, ''),
(12, 7, 2, ''),
(13, 8, 1, ''),
(14, 8, 2, ''),
(15, 9, 1, ''),
(16, 9, 2, ''),
(17, 10, 1, ''),
(18, 10, 2, ''),
(19, 11, 1, ''),
(20, 11, 2, ''),
(21, 12, 1, ''),
(22, 12, 2, ''),
(23, 13, 1, ''),
(24, 13, 2, ''),
(25, 14, 1, ''),
(26, 14, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_request`
--

CREATE TABLE `staff_leave_request` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_days` int(11) NOT NULL,
  `employee_remark` varchar(200) NOT NULL,
  `admin_remark` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `applied_by` varchar(200) NOT NULL,
  `document_file` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_payroll`
--

CREATE TABLE `staff_payroll` (
  `id` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `pay_scale` varchar(200) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `is_active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_payslip`
--

CREATE TABLE `staff_payslip` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `basic` float NOT NULL,
  `total_allowance` float NOT NULL,
  `total_deduction` float NOT NULL,
  `leave_deduction` int(11) NOT NULL,
  `tax` decimal(15,2) NOT NULL,
  `net_salary` float NOT NULL,
  `status` varchar(100) NOT NULL,
  `month` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `payment_date` date NOT NULL,
  `remark` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_roles`
--

CREATE TABLE `staff_roles` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_roles`
--

INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`) VALUES
(1, 7, 1, 0, '2021-08-29 09:59:15'),
(2, 3, 2, 0, '2021-08-29 11:00:06'),
(3, 3, 3, 0, '2021-08-29 11:38:59'),
(4, 3, 4, 0, '2021-08-29 11:52:15'),
(5, 4, 5, 0, '2021-08-30 06:50:23'),
(6, 1, 6, 0, '2021-08-30 07:07:11'),
(7, 3, 7, 0, '2021-08-31 07:57:58'),
(8, 1, 8, 0, '2022-02-02 17:54:00'),
(9, 1, 9, 0, '2022-02-02 17:57:58'),
(10, 8, 10, 0, '2022-02-03 06:47:11'),
(11, 3, 11, 0, '2022-02-17 12:45:16'),
(12, 9, 12, 0, '2022-02-22 11:26:13'),
(13, 4, 13, 0, '2022-02-28 17:05:58'),
(14, 3, 14, 0, '2022-03-06 18:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `staff_timeline`
--

CREATE TABLE `staff_timeline` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(300) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_timeline`
--

INSERT INTO `staff_timeline` (`id`, `staff_id`, `title`, `timeline_date`, `description`, `document`, `status`, `date`) VALUES
(1, 1, 'My first timeline', '2022-02-03', '', '', 'yes', '2022-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_bill_basic`
--

CREATE TABLE `supplier_bill_basic` (
  `id` int(11) NOT NULL,
  `purchase_no` varchar(200) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `date` varchar(200) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `total` varchar(200) NOT NULL,
  `tax` varchar(200) NOT NULL,
  `discount` varchar(200) NOT NULL,
  `net_amount` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_bill_basic`
--

INSERT INTO `supplier_bill_basic` (`id`, `purchase_no`, `invoice_no`, `date`, `supplier_id`, `supplier_name`, `file`, `total`, `tax`, `discount`, `net_amount`, `note`, `created_at`) VALUES
(1, '1', '89897', '2021-08-28 16:30:00', 1, 'Ali', '', '800.00', '0', '0', '800.00', '', '2021-08-29 11:31:21'),
(2, '2', '666', '2021-08-31 12:43:00', 1, 'Ali', '', '24200.00', '0', '0', '24200.00', '', '2021-08-31 07:51:44'),
(3, '3', '', '2021-12-14 12:38:00', 1, 'Ali', '', '40.00', '0.98', '0.80', '40.18', '', '2021-12-15 07:34:57'),
(4, '4', '7777', '2022-02-07 20:06:00', 1, 'Ali', '', '3700.00', '370.00', '0', '4070.00', '', '2022-02-08 15:07:15'),
(5, '5', '121', '2022-02-22 01:16:00', 1, 'Ali', '', '1800.00', '0', '0', '1800.00', '', '2022-02-21 20:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_bill_detail`
--

CREATE TABLE `supplier_bill_detail` (
  `id` int(11) NOT NULL,
  `supplier_bill_basic_id` varchar(200) NOT NULL,
  `medicine_category_id` varchar(200) NOT NULL,
  `medicine_name` varchar(200) NOT NULL,
  `expire_date` varchar(100) NOT NULL,
  `batch_no` varchar(200) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `purchase_price` varchar(200) NOT NULL,
  `mrp` varchar(200) NOT NULL,
  `sale_price` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_category`
--

CREATE TABLE `supplier_category` (
  `id` int(11) NOT NULL,
  `supplier_category` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `supplier_person` varchar(200) NOT NULL,
  `supplier_person_contact` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_category`
--

INSERT INTO `supplier_category` (`id`, `supplier_category`, `contact`, `supplier_person`, `supplier_person_contact`, `address`) VALUES
(1, 'Hamza Medicine Company', '0345697878', 'Ali', '0465465456', '');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `id` int(11) NOT NULL,
  `symptoms_title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `symptoms_classification`
--

CREATE TABLE `symptoms_classification` (
  `id` int(11) NOT NULL,
  `symptoms_type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_notification`
--

CREATE TABLE `system_notification` (
  `id` int(11) NOT NULL,
  `notification_title` varchar(200) NOT NULL,
  `notification_type` varchar(200) NOT NULL,
  `notification_desc` varchar(200) NOT NULL,
  `notification_for` varchar(200) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `is_active` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_notification`
--

INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES
(1, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN1</a>', 'Patient', 2, '2021-08-29 16:03:00', 'yes'),
(2, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/2/1\'>OPDN1</a>', 'Super Admin', 0, '2021-08-29 16:03:00', 'yes'),
(3, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/2/1\'>OPDN1</a>', 'Doctor', 2, '2021-08-29 16:03:00', 'yes'),
(4, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN1</a>', 'Patient', 2, '2021-08-29 12:05:58', 'yes'),
(5, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/2/1\'>OPDN1</a>', 'Super Admin', 0, '2021-08-29 12:05:58', 'yes'),
(6, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/2/1\'>OPDN1</a>', 'Doctor', 2, '2021-08-29 12:05:58', 'yes'),
(7, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/2/1\'>OPDN1</a>', 'Doctor', 3, '2021-08-29 12:05:58', 'yes'),
(8, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/2/1\'>OPDN1</a>', 'Doctor', 4, '2021-08-29 12:05:58', 'yes'),
(9, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/2/1\'>OPDN1</a>', 'Doctor', 2, '2021-08-29 12:05:58', 'yes'),
(10, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN2</a>', 'Patient', 3, '2021-08-29 17:29:00', 'yes'),
(11, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/3/2\'>OPDN2</a>', 'Super Admin', 0, '2021-08-29 17:29:00', 'yes'),
(12, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/3/2\'>OPDN2</a>', 'Doctor', 4, '2021-08-29 17:29:00', 'yes'),
(13, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN2</a>', 'Patient', 3, '2021-08-29 12:30:52', 'yes'),
(14, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/3/2\'>OPDN2</a>', 'Super Admin', 0, '2021-08-29 12:30:52', 'yes'),
(15, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/3/2\'>OPDN2</a>', 'Super Admin', 1, '2021-08-29 12:30:52', 'yes'),
(16, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/3/2\'>OPDN2</a>', 'Doctor', 4, '2021-08-29 12:30:52', 'yes'),
(17, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/ipdprofile\'>IPDN1</a>', 'Patient', 3, '2021-08-30 10:55:00', 'yes'),
(18, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/3/1\'>IPDN1</a>', 'Super Admin', 0, '2021-08-30 10:55:00', 'yes'),
(19, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/3/1\'>IPDN1</a>', 'Doctor', 2, '2021-08-30 10:55:00', 'yes'),
(20, 'notification_operation_theatre_visit_created', 'ot', 'OT Visit has been created for <a href=\'patient/dashboard/otsearch\' onclick=\'<onchngfun>\'>Kalsoom</a>', 'Patient', 3, '2021-08-30 06:14:38', 'yes'),
(21, 'notification_operation_theatre_visit_created', 'ot', 'OT Visit has been created for <a href=\'admin/systemnotification/moveotpatient/1/3\' onclick=\'<onchngfun>\'>Kalsoom</a>', 'Super Admin', 0, '2021-08-30 06:14:38', 'yes'),
(22, 'notification_operation_theatre_visit_created', 'ot', 'OT Visit has been created for <a href=\'admin/systemnotification/moveotpatient/1/3\' onclick=\'<onchngfun>\'>Kalsoom</a>', 'Doctor', 4, '2021-08-30 06:14:38', 'yes'),
(23, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/appointment\'>Sumra</a>', 'Patient', 0, '2021-08-31 14:28:00', 'yes'),
(24, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'admin/systemnotification/moveappointment/1\'>Sumra</a>', 'Super Admin', 0, '2021-08-31 14:28:00', 'yes'),
(25, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'admin/systemnotification/moveappointment/1\'>Sumra</a>', 'Doctor', 4, '2021-08-31 14:28:00', 'yes'),
(26, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN3</a>', 'Patient', 4, '2021-08-31 14:28:00', 'yes'),
(27, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/4/3\'>OPDN3</a>', 'Super Admin', 0, '2021-08-31 14:28:00', 'yes'),
(28, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/4/3\'>OPDN3</a>', 'Doctor', 4, '2021-08-31 14:28:00', 'yes'),
(29, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN4</a>', 'Patient', 3, '2021-08-31 14:36:00', 'yes'),
(30, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/3/4\'>OPDN4</a>', 'Super Admin', 0, '2021-08-31 14:36:00', 'yes'),
(31, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/3/4\'>OPDN4</a>', 'Doctor', 4, '2021-08-31 14:36:00', 'yes'),
(32, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN4</a>', 'Patient', 3, '2021-08-30 09:41:03', 'yes'),
(33, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/3/4\'>OPDN4</a>', 'Super Admin', 0, '2021-08-30 09:41:03', 'yes'),
(34, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/3/4\'>OPDN4</a>', 'Admin', 6, '2021-08-30 09:41:03', 'yes'),
(35, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/3/4\'>OPDN4</a>', 'Pharmacist', 5, '2021-08-30 09:41:03', 'yes'),
(36, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/3/4\'>OPDN4</a>', 'Doctor', 4, '2021-08-30 09:41:03', 'yes'),
(37, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/ipdprofile\'>IPDN2</a>', 'Patient', 2, '2021-08-29 16:03:00', 'yes'),
(38, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/2/2\'>IPDN2</a>', 'Super Admin', 0, '2021-08-29 16:03:00', 'yes'),
(39, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/2/2\'>IPDN2</a>', 'Doctor', 2, '2021-08-29 16:03:00', 'yes'),
(40, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/systemnotifications/moveipdpresnotification/2/1\'>IPDN2</a>', 'Patient', 2, '2021-08-30 11:31:30', 'yes'),
(41, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/2/2/1\'>IPDN2</a>', 'Super Admin', 0, '2021-08-30 11:31:30', 'yes'),
(42, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/2/2/1\'>IPDN2</a>', 'Super Admin', 1, '2021-08-30 11:31:30', 'yes'),
(43, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/2/2/1\'>IPDN2</a>', 'Doctor', 2, '2021-08-30 11:31:30', 'yes'),
(44, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/systemnotifications/moveipdpresnotification/1/2\'>IPDN1</a>', 'Patient', 3, '2021-08-30 11:38:05', 'yes'),
(45, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/3/1/2\'>IPDN1</a>', 'Super Admin', 0, '2021-08-30 11:38:05', 'yes'),
(46, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/3/1/2\'>IPDN1</a>', 'Doctor', 2, '2021-08-30 11:38:05', 'yes'),
(47, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/3/1/2\'>IPDN1</a>', 'Doctor', 3, '2021-08-30 11:38:05', 'yes'),
(48, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/3/1/2\'>IPDN1</a>', 'Doctor', 4, '2021-08-30 11:38:05', 'yes'),
(49, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/3/1/2\'>IPDN1</a>', 'Super Admin', 1, '2021-08-30 11:38:05', 'yes'),
(50, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/3/1/2\'>IPDN1</a>', 'Doctor', 2, '2021-08-30 11:38:05', 'yes'),
(51, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/ipdprofile\'>IPDN3</a>', 'Patient', 4, '2021-08-31 14:28:00', 'yes'),
(52, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/4/3\'>IPDN3</a>', 'Super Admin', 0, '2021-08-31 14:28:00', 'yes'),
(53, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/4/3\'>IPDN3</a>', 'Doctor', 4, '2021-08-31 14:28:00', 'yes'),
(54, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN5</a>', 'Patient', 5, '2021-08-31 12:53:00', 'yes'),
(55, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/5/5\'>OPDN5</a>', 'Super Admin', 0, '2021-08-31 12:53:00', 'yes'),
(56, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/5/5\'>OPDN5</a>', 'Doctor', 4, '2021-08-31 12:53:00', 'yes'),
(57, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN5</a>', 'Patient', 5, '2021-08-31 10:12:07', 'yes'),
(58, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/5\'>OPDN5</a>', 'Super Admin', 0, '2021-08-31 10:12:07', 'yes'),
(59, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/5\'>OPDN5</a>', 'Doctor', 2, '2021-08-31 10:12:07', 'yes'),
(60, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/5\'>OPDN5</a>', 'Doctor', 3, '2021-08-31 10:12:07', 'yes'),
(61, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/5\'>OPDN5</a>', 'Doctor', 4, '2021-08-31 10:12:07', 'yes'),
(62, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/5\'>OPDN5</a>', 'Doctor', 7, '2021-08-31 10:12:07', 'yes'),
(63, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/5\'>OPDN5</a>', 'Pharmacist', 5, '2021-08-31 10:12:07', 'yes'),
(64, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/5\'>OPDN5</a>', 'Doctor', 4, '2021-08-31 10:12:07', 'yes'),
(65, 'Appointment Created', 'appointment', 'Appointment has been created for <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/appointment\'>Nauman</a>', 'Patient', 0, '2021-08-31 15:24:00', 'yes'),
(66, 'Appointment Created', 'appointment', 'Appointment has been created for <a href=\'admin/systemnotification/moveappointment/2\'>Nauman</a>', 'Super Admin', 0, '2021-08-31 15:24:00', 'yes'),
(67, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/appointment\'>Nauman</a>', 'Patient', 0, '2021-08-31 15:24:00', 'yes'),
(68, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveappointment/2\'>Nauman</a>', 'Super Admin', 0, '2021-08-31 15:24:00', 'yes'),
(69, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveappointment/2\'>Nauman</a>', 'Doctor', 4, '2021-08-31 15:24:00', 'yes'),
(70, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN6</a>', 'Patient', 6, '2021-08-31 15:24:00', 'yes'),
(71, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/6/6\'>OPDN6</a>', 'Super Admin', 0, '2021-08-31 15:24:00', 'yes'),
(72, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/6/6\'>OPDN6</a>', 'Doctor', 4, '2021-08-31 15:24:00', 'yes'),
(73, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN6</a>', 'Patient', 6, '2021-08-31 10:29:07', 'yes'),
(74, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/6/6\'>OPDN6</a>', 'Super Admin', 0, '2021-08-31 10:29:07', 'yes'),
(75, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/6/6\'>OPDN6</a>', 'Super Admin', 1, '2021-08-31 10:29:07', 'yes'),
(76, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/6/6\'>OPDN6</a>', 'Doctor', 4, '2021-08-31 10:29:07', 'yes'),
(77, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN7</a>', 'Patient', 6, '2021-09-04 15:18:00', 'yes'),
(78, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/6/7\'>OPDN7</a>', 'Super Admin', 0, '2021-09-04 15:18:00', 'yes'),
(79, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/6/7\'>OPDN7</a>', 'Doctor', 2, '2021-09-04 15:18:00', 'yes'),
(80, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN8</a>', 'Patient', 6, '2021-09-04 15:18:00', 'yes'),
(81, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/6/8\'>OPDN8</a>', 'Super Admin', 0, '2021-09-04 15:18:00', 'yes'),
(82, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/6/8\'>OPDN8</a>', 'Doctor', 2, '2021-09-04 15:18:00', 'yes'),
(83, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN9</a>', 'Patient', 8, '2021-10-30 15:56:00', 'yes'),
(84, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/8/9\'>OPDN9</a>', 'Super Admin', 0, '2021-10-30 15:56:00', 'yes'),
(85, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/8/9\'>OPDN9</a>', 'Doctor', 2, '2021-10-30 15:56:00', 'yes'),
(86, 'Appointment Created', 'appointment', 'Appointment has been created for <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/appointment\'>Nazir</a>', 'Patient', 0, '2021-10-30 16:02:00', 'yes'),
(87, 'Appointment Created', 'appointment', 'Appointment has been created for <a href=\'admin/systemnotification/moveappointment/3\'>Nazir</a>', 'Super Admin', 0, '2021-10-30 16:02:00', 'yes'),
(88, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN10</a>', 'Patient', 9, '2021-10-30 16:11:00', 'yes'),
(89, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/9/10\'>OPDN10</a>', 'Super Admin', 0, '2021-10-30 16:11:00', 'yes'),
(90, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/9/10\'>OPDN10</a>', 'Doctor', 3, '2021-10-30 16:11:00', 'yes'),
(91, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN10</a>', 'Patient', 9, '2021-10-30 11:16:29', 'yes'),
(92, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/9/10\'>OPDN10</a>', 'Super Admin', 0, '2021-10-30 11:16:29', 'yes'),
(93, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/9/10\'>OPDN10</a>', 'Super Admin', 1, '2021-10-30 11:16:29', 'yes'),
(94, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/9/10\'>OPDN10</a>', 'Doctor', 3, '2021-10-30 11:16:29', 'yes'),
(95, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN11</a>', 'Patient', 5, '2021-10-30 16:31:00', 'yes'),
(96, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/5/11\'>OPDN11</a>', 'Super Admin', 0, '2021-10-30 16:31:00', 'yes'),
(97, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/5/11\'>OPDN11</a>', 'Doctor', 4, '2021-10-30 16:31:00', 'yes'),
(98, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN12</a>', 'Patient', 10, '2021-10-30 17:10:00', 'yes'),
(99, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/10/12\'>OPDN12</a>', 'Super Admin', 0, '2021-10-30 17:10:00', 'yes'),
(100, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/10/12\'>OPDN12</a>', 'Doctor', 3, '2021-10-30 17:10:00', 'yes'),
(101, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN12</a>', 'Patient', 10, '2021-10-30 12:13:23', 'yes'),
(102, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/10/12\'>OPDN12</a>', 'Super Admin', 0, '2021-10-30 12:13:23', 'yes'),
(103, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/10/12\'>OPDN12</a>', 'Super Admin', 1, '2021-10-30 12:13:23', 'yes'),
(104, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/10/12\'>OPDN12</a>', 'Doctor', 3, '2021-10-30 12:13:23', 'yes'),
(105, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN13</a>', 'Patient', 11, '2021-10-30 19:14:00', 'yes'),
(106, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/11/13\'>OPDN13</a>', 'Super Admin', 0, '2021-10-30 19:14:00', 'yes'),
(107, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/11/13\'>OPDN13</a>', 'Doctor', 3, '2021-10-30 19:14:00', 'yes'),
(108, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN13</a>', 'Patient', 11, '2021-10-30 14:18:00', 'yes'),
(109, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/11/13\'>OPDN13</a>', 'Super Admin', 0, '2021-10-30 14:18:00', 'yes'),
(110, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/11/13\'>OPDN13</a>', 'Super Admin', 1, '2021-10-30 14:18:00', 'yes'),
(111, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/11/13\'>OPDN13</a>', 'Doctor', 3, '2021-10-30 14:18:00', 'yes'),
(112, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN14</a>', 'Patient', 13, '2021-11-14 10:40:00', 'yes'),
(113, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/13/14\'>OPDN14</a>', 'Super Admin', 0, '2021-11-14 10:40:00', 'yes'),
(114, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/13/14\'>OPDN14</a>', 'Doctor', 2, '2021-11-14 10:40:00', 'yes'),
(115, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN14</a>', 'Patient', 13, '2021-11-14 05:45:11', 'yes'),
(116, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/13/14\'>OPDN14</a>', 'Super Admin', 0, '2021-11-14 05:45:11', 'yes'),
(117, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/13/14\'>OPDN14</a>', 'Super Admin', 1, '2021-11-14 05:45:11', 'yes'),
(118, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/13/14\'>OPDN14</a>', 'Doctor', 2, '2021-11-14 05:45:11', 'yes'),
(119, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN15</a>', 'Patient', 14, '2021-11-14 10:48:00', 'yes'),
(120, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/14/15\'>OPDN15</a>', 'Super Admin', 0, '2021-11-14 10:48:00', 'yes'),
(121, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/14/15\'>OPDN15</a>', 'Doctor', 7, '2021-11-14 10:48:00', 'yes'),
(122, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/ipdprofile\'>IPDN4</a>', 'Patient', 14, '2021-11-14 10:55:00', 'yes'),
(123, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/14/4\'>IPDN4</a>', 'Super Admin', 0, '2021-11-14 10:55:00', 'yes'),
(124, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/14/4\'>IPDN4</a>', 'Doctor', 2, '2021-11-14 10:55:00', 'yes'),
(125, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN16</a>', 'Patient', 6, '2021-08-31 15:24:00', 'yes'),
(126, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/6/16\'>OPDN16</a>', 'Super Admin', 0, '2021-08-31 15:24:00', 'yes'),
(127, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/6/16\'>OPDN16</a>', 'Doctor', 4, '2021-08-31 15:24:00', 'yes'),
(128, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN17</a>', 'Patient', 6, '2021-08-31 15:24:00', 'yes'),
(129, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/6/17\'>OPDN17</a>', 'Super Admin', 0, '2021-08-31 15:24:00', 'yes'),
(130, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/6/17\'>OPDN17</a>', 'Doctor', 4, '2021-08-31 15:24:00', 'yes'),
(131, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN18</a>', 'Patient', 6, '2021-08-31 15:24:00', 'yes'),
(132, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/6/18\'>OPDN18</a>', 'Super Admin', 0, '2021-08-31 15:24:00', 'yes'),
(133, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/6/18\'>OPDN18</a>', 'Doctor', 4, '2021-08-31 15:24:00', 'yes'),
(134, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN11</a>', 'Patient', 5, '2021-12-13 07:00:04', 'yes'),
(135, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/11\'>OPDN11</a>', 'Super Admin', 0, '2021-12-13 07:00:04', 'yes'),
(136, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/11\'>OPDN11</a>', 'Admin', 6, '2021-12-13 07:00:04', 'yes'),
(137, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/11\'>OPDN11</a>', 'Doctor', 2, '2021-12-13 07:00:04', 'yes'),
(138, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/11\'>OPDN11</a>', 'Doctor', 3, '2021-12-13 07:00:04', 'yes'),
(139, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/11\'>OPDN11</a>', 'Doctor', 4, '2021-12-13 07:00:04', 'yes'),
(140, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/11\'>OPDN11</a>', 'Doctor', 7, '2021-12-13 07:00:04', 'yes'),
(141, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/11\'>OPDN11</a>', 'Doctor', 4, '2021-12-13 07:00:04', 'yes'),
(142, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN19</a>', 'Patient', 14, '2022-01-16 18:02:00', 'yes'),
(143, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/14/19\'>OPDN19</a>', 'Super Admin', 0, '2022-01-16 18:02:00', 'yes'),
(144, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/14/19\'>OPDN19</a>', 'Doctor', 2, '2022-01-16 18:02:00', 'yes'),
(145, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN20</a>', 'Patient', 14, '2022-01-16 18:06:00', 'yes'),
(146, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/14/20\'>OPDN20</a>', 'Super Admin', 0, '2022-01-16 18:06:00', 'yes'),
(147, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/14/20\'>OPDN20</a>', 'Doctor', 3, '2022-01-16 18:06:00', 'yes'),
(148, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN21</a>', 'Patient', 14, '2022-01-16 18:06:00', 'yes'),
(149, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/14/21\'>OPDN21</a>', 'Super Admin', 0, '2022-01-16 18:06:00', 'yes'),
(150, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/14/21\'>OPDN21</a>', 'Doctor', 3, '2022-01-16 18:06:00', 'yes'),
(151, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN22</a>', 'Patient', 12, '2022-01-16 18:09:00', 'yes'),
(152, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/12/22\'>OPDN22</a>', 'Super Admin', 0, '2022-01-16 18:09:00', 'yes'),
(153, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/12/22\'>OPDN22</a>', 'Doctor', 7, '2022-01-16 18:09:00', 'yes'),
(154, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN23</a>', 'Patient', 12, '2022-01-18 18:11:00', 'yes'),
(155, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/12/23\'>OPDN23</a>', 'Super Admin', 0, '2022-01-18 18:11:00', 'yes'),
(156, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/12/23\'>OPDN23</a>', 'Doctor', 3, '2022-01-18 18:11:00', 'yes'),
(157, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN24</a>', 'Patient', 15, '2022-01-20 10:23:00', 'yes'),
(158, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/15/24\'>OPDN24</a>', 'Super Admin', 0, '2022-01-20 10:23:00', 'yes'),
(159, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/15/24\'>OPDN24</a>', 'Doctor', 2, '2022-01-20 10:23:00', 'yes'),
(160, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN25</a>', 'Patient', 16, '2022-01-20 10:30:00', 'yes'),
(161, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/16/25\'>OPDN25</a>', 'Super Admin', 0, '2022-01-20 10:30:00', 'yes'),
(162, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/16/25\'>OPDN25</a>', 'Doctor', 7, '2022-01-20 10:30:00', 'yes'),
(163, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/ipdprofile\'>IPDN5</a>', 'Patient', 16, '2022-01-20 10:30:00', 'yes'),
(164, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/16/5\'>IPDN5</a>', 'Super Admin', 0, '2022-01-20 10:30:00', 'yes'),
(165, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/16/5\'>IPDN5</a>', 'Doctor', 7, '2022-01-20 10:30:00', 'yes'),
(166, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/ipdprofile\'>IPDN6</a>', 'Patient', 10, '2021-10-30 17:10:00', 'yes'),
(167, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/10/6\'>IPDN6</a>', 'Super Admin', 0, '2021-10-30 17:10:00', 'yes'),
(168, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/10/6\'>IPDN6</a>', 'Doctor', 3, '2021-10-30 17:10:00', 'yes'),
(169, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN26</a>', 'Patient', 17, '2022-02-05 13:41:00', 'yes'),
(170, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/17/26\'>OPDN26</a>', 'Super Admin', 0, '2022-02-05 13:41:00', 'yes'),
(171, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/17/26\'>OPDN26</a>', 'Doctor', 2, '2022-02-05 13:41:00', 'yes'),
(172, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN26</a>', 'Patient', 17, '2022-02-03 08:47:08', 'yes'),
(173, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/17/26\'>OPDN26</a>', 'Super Admin', 0, '2022-02-03 08:47:08', 'yes'),
(174, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/17/26\'>OPDN26</a>', 'Admin', 6, '2022-02-03 08:47:08', 'yes'),
(175, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/17/26\'>OPDN26</a>', 'Admin', 8, '2022-02-03 08:47:08', 'yes'),
(176, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/17/26\'>OPDN26</a>', 'Admin', 9, '2022-02-03 08:47:08', 'yes'),
(177, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/17/26\'>OPDN26</a>', 'Doctor', 2, '2022-02-03 08:47:08', 'yes'),
(178, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN27</a>', 'Patient', 18, '2022-03-11 20:19:00', 'yes'),
(179, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/18/27\'>OPDN27</a>', 'Super Admin', 0, '2022-03-11 20:19:00', 'yes'),
(180, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/18/27\'>OPDN27</a>', 'Doctor', 2, '2022-03-11 20:19:00', 'yes'),
(181, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN28</a>', 'Patient', 19, '2022-02-07 22:40:00', 'yes'),
(182, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/19/28\'>OPDN28</a>', 'Super Admin', 0, '2022-02-07 22:40:00', 'yes'),
(183, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/19/28\'>OPDN28</a>', 'Doctor', 4, '2022-02-07 22:40:00', 'yes'),
(184, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN29</a>', 'Patient', 20, '2022-02-08 09:16:00', 'yes'),
(185, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/20/29\'>OPDN29</a>', 'Super Admin', 0, '2022-02-08 09:16:00', 'yes'),
(186, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/20/29\'>OPDN29</a>', 'Doctor', 2, '2022-02-08 09:16:00', 'yes'),
(187, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN30</a>', 'Patient', 21, '2022-02-07 09:18:00', 'yes'),
(188, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/21/30\'>OPDN30</a>', 'Super Admin', 0, '2022-02-07 09:18:00', 'yes'),
(189, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/21/30\'>OPDN30</a>', 'Doctor', 3, '2022-02-07 09:18:00', 'yes'),
(190, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN31</a>', 'Patient', 22, '2022-02-08 09:27:00', 'yes'),
(191, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/22/31\'>OPDN31</a>', 'Super Admin', 0, '2022-02-08 09:27:00', 'yes'),
(192, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/22/31\'>OPDN31</a>', 'Doctor', 4, '2022-02-08 09:27:00', 'yes'),
(193, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN30</a>', 'Patient', 21, '2022-02-08 14:59:30', 'yes'),
(194, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/21/30\'>OPDN30</a>', 'Super Admin', 0, '2022-02-08 14:59:30', 'yes'),
(195, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/21/30\'>OPDN30</a>', 'Admin', 6, '2022-02-08 14:59:30', 'yes'),
(196, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/21/30\'>OPDN30</a>', 'Admin', 8, '2022-02-08 14:59:30', 'yes'),
(197, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/21/30\'>OPDN30</a>', 'Admin', 9, '2022-02-08 14:59:30', 'yes'),
(198, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/21/30\'>OPDN30</a>', 'Doctor', 3, '2022-02-08 14:59:30', 'yes'),
(199, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN32</a>', 'Patient', 23, '2022-02-08 20:25:00', 'yes'),
(200, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/23/32\'>OPDN32</a>', 'Super Admin', 0, '2022-02-08 20:25:00', 'yes'),
(201, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/23/32\'>OPDN32</a>', 'Doctor', 3, '2022-02-08 20:25:00', 'yes'),
(202, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN33</a>', 'Patient', 24, '2022-02-14 15:18:00', 'yes'),
(203, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/24/33\'>OPDN33</a>', 'Super Admin', 0, '2022-02-14 15:18:00', 'yes'),
(204, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/24/33\'>OPDN33</a>', 'Doctor', 4, '2022-02-14 15:18:00', 'yes'),
(205, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN34</a>', 'Patient', 23, '2022-02-14 15:21:00', 'yes'),
(206, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/23/34\'>OPDN34</a>', 'Super Admin', 0, '2022-02-14 15:21:00', 'yes'),
(207, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/23/34\'>OPDN34</a>', 'Doctor', 4, '2022-02-14 15:21:00', 'yes'),
(208, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN35</a>', 'Patient', 24, '2022-02-14 15:46:00', 'yes'),
(209, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/24/35\'>OPDN35</a>', 'Super Admin', 0, '2022-02-14 15:46:00', 'yes'),
(210, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/24/35\'>OPDN35</a>', 'Doctor', 4, '2022-02-14 15:46:00', 'yes'),
(211, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN36</a>', 'Patient', 25, '2022-02-14 19:20:00', 'yes'),
(212, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/25/36\'>OPDN36</a>', 'Super Admin', 0, '2022-02-14 19:20:00', 'yes'),
(213, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/25/36\'>OPDN36</a>', 'Doctor', 4, '2022-02-14 19:20:00', 'yes'),
(214, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/appointment\'>Adil Jameel</a>', 'Patient', 5, '2022-02-25 17:38:00', 'yes'),
(215, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveappointment/4\'>Adil Jameel</a>', 'Super Admin', 0, '2022-02-25 17:38:00', 'yes'),
(216, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveappointment/4\'>Adil Jameel</a>', 'Doctor', 4, '2022-02-25 17:38:00', 'yes'),
(217, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/appointment\'>Adil Jameel</a>', 'Patient', 5, '2022-02-26 17:56:00', 'yes'),
(218, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveappointment/5\'>Adil Jameel</a>', 'Super Admin', 0, '2022-02-26 17:56:00', 'yes'),
(219, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveappointment/5\'>Adil Jameel</a>', 'Doctor', 11, '2022-02-26 17:56:00', 'yes'),
(220, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/appointment\'>Humman</a>', 'Patient', 4, '2022-02-19 10:43:00', 'yes'),
(221, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'admin/systemnotification/moveappointment/6\'>Humman</a>', 'Super Admin', 0, '2022-02-19 10:43:00', 'yes'),
(222, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'admin/systemnotification/moveappointment/6\'>Humman</a>', 'Doctor', 3, '2022-02-19 10:43:00', 'yes'),
(223, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN37</a>', 'Patient', 26, '2022-02-19 16:13:00', 'yes'),
(224, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/26/37\'>OPDN37</a>', 'Super Admin', 0, '2022-02-19 16:13:00', 'yes'),
(225, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/26/37\'>OPDN37</a>', 'Doctor', 2, '2022-02-19 16:13:00', 'yes'),
(226, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/ipdprofile\'>IPDN7</a>', 'Patient', 26, '2022-02-19 16:16:00', 'yes'),
(227, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/26/7\'>IPDN7</a>', 'Super Admin', 0, '2022-02-19 16:16:00', 'yes'),
(228, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/26/7\'>IPDN7</a>', 'Doctor', 2, '2022-02-19 16:16:00', 'yes'),
(229, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN38</a>', 'Patient', 27, '2022-02-19 16:30:00', 'yes'),
(230, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/27/38\'>OPDN38</a>', 'Super Admin', 0, '2022-02-19 16:30:00', 'yes'),
(231, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/27/38\'>OPDN38</a>', 'Doctor', 4, '2022-02-19 16:30:00', 'yes'),
(232, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN39</a>', 'Patient', 27, '2022-02-19 16:30:00', 'yes'),
(233, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/27/39\'>OPDN39</a>', 'Super Admin', 0, '2022-02-19 16:30:00', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES
(234, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/27/39\'>OPDN39</a>', 'Doctor', 4, '2022-02-19 16:30:00', 'yes'),
(235, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN40</a>', 'Patient', 27, '2022-02-19 16:30:00', 'yes'),
(236, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/27/40\'>OPDN40</a>', 'Super Admin', 0, '2022-02-19 16:30:00', 'yes'),
(237, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/27/40\'>OPDN40</a>', 'Doctor', 4, '2022-02-19 16:30:00', 'yes'),
(238, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN41</a>', 'Patient', 28, '2022-02-19 16:59:00', 'yes'),
(239, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/28/41\'>OPDN41</a>', 'Super Admin', 0, '2022-02-19 16:59:00', 'yes'),
(240, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/28/41\'>OPDN41</a>', 'Doctor', 4, '2022-02-19 16:59:00', 'yes'),
(241, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/ipdprofile\'>IPDN8</a>', 'Patient', 28, '2022-02-19 17:05:00', 'yes'),
(242, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/28/8\'>IPDN8</a>', 'Super Admin', 0, '2022-02-19 17:05:00', 'yes'),
(243, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/28/8\'>IPDN8</a>', 'Doctor', 4, '2022-02-19 17:05:00', 'yes'),
(244, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN42</a>', 'Patient', 29, '2022-02-19 17:16:00', 'yes'),
(245, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/42\'>OPDN42</a>', 'Super Admin', 0, '2022-02-19 17:16:00', 'yes'),
(246, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/42\'>OPDN42</a>', 'Doctor', 4, '2022-02-19 17:16:00', 'yes'),
(247, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN43</a>', 'Patient', 29, '2022-02-19 17:16:00', 'yes'),
(248, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/43\'>OPDN43</a>', 'Super Admin', 0, '2022-02-19 17:16:00', 'yes'),
(249, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/43\'>OPDN43</a>', 'Doctor', 4, '2022-02-19 17:16:00', 'yes'),
(250, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/ipdprofile\'>IPDN9</a>', 'Patient', 29, '2022-02-19 17:17:00', 'yes'),
(251, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/29/9\'>IPDN9</a>', 'Super Admin', 0, '2022-02-19 17:17:00', 'yes'),
(252, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdnotification/29/9\'>IPDN9</a>', 'Doctor', 4, '2022-02-19 17:17:00', 'yes'),
(253, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/systemnotifications/moveipdpresnotification/9/3\'>IPDN9</a>', 'Patient', 29, '2022-02-19 12:19:29', 'yes'),
(254, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Super Admin', 0, '2022-02-19 12:19:29', 'yes'),
(255, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Doctor', 2, '2022-02-19 12:19:29', 'yes'),
(256, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Doctor', 3, '2022-02-19 12:19:29', 'yes'),
(257, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Doctor', 4, '2022-02-19 12:19:29', 'yes'),
(258, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Doctor', 7, '2022-02-19 12:19:29', 'yes'),
(259, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Doctor', 11, '2022-02-19 12:19:29', 'yes'),
(260, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Super Admin', 1, '2022-02-19 12:19:29', 'yes'),
(261, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Doctor', 4, '2022-02-19 12:19:29', 'yes'),
(262, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/systemnotifications/moveipdpresnotification/9/3\'>IPDN9</a>', 'Patient', 29, '2022-02-19 12:19:29', 'yes'),
(263, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Super Admin', 0, '2022-02-19 12:19:29', 'yes'),
(264, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Doctor', 2, '2022-02-19 12:19:29', 'yes'),
(265, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Doctor', 3, '2022-02-19 12:19:29', 'yes'),
(266, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Doctor', 4, '2022-02-19 12:19:29', 'yes'),
(267, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Doctor', 7, '2022-02-19 12:19:29', 'yes'),
(268, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Doctor', 11, '2022-02-19 12:19:29', 'yes'),
(269, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Super Admin', 1, '2022-02-19 12:19:29', 'yes'),
(270, 'IPD Prescription Created', 'ipd', 'IPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveipdpresnotification/29/9/3\'>IPDN9</a>', 'Doctor', 4, '2022-02-19 12:19:29', 'yes'),
(271, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN44</a>', 'Patient', 29, '2022-02-19 17:25:00', 'yes'),
(272, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/44\'>OPDN44</a>', 'Super Admin', 0, '2022-02-19 17:25:00', 'yes'),
(273, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/44\'>OPDN44</a>', 'Doctor', 4, '2022-02-19 17:25:00', 'yes'),
(274, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/appointment\'>Nazir</a>', 'Patient', 0, '2021-10-30 16:02:00', 'yes'),
(275, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveappointment/3\'>Nazir</a>', 'Super Admin', 0, '2021-10-30 16:02:00', 'yes'),
(276, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveappointment/3\'>Nazir</a>', 'Doctor', 4, '2021-10-30 16:02:00', 'yes'),
(277, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/appointment\'>osama</a>', 'Patient', 0, '2022-02-19 20:32:00', 'yes'),
(278, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'admin/systemnotification/moveappointment/7\'>osama</a>', 'Super Admin', 0, '2022-02-19 20:32:00', 'yes'),
(279, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'admin/systemnotification/moveappointment/7\'>osama</a>', 'Doctor', 2, '2022-02-19 20:32:00', 'yes'),
(280, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN45</a>', 'Patient', 29, '2022-02-20 19:11:00', 'yes'),
(281, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/45\'>OPDN45</a>', 'Super Admin', 0, '2022-02-20 19:11:00', 'yes'),
(282, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/45\'>OPDN45</a>', 'Doctor', 2, '2022-02-20 19:11:00', 'yes'),
(283, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN46</a>', 'Patient', 29, '2022-02-20 19:11:00', 'yes'),
(284, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/46\'>OPDN46</a>', 'Super Admin', 0, '2022-02-20 19:11:00', 'yes'),
(285, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/46\'>OPDN46</a>', 'Doctor', 2, '2022-02-20 19:11:00', 'yes'),
(286, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN47</a>', 'Patient', 29, '2022-02-20 19:11:00', 'yes'),
(287, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/47\'>OPDN47</a>', 'Super Admin', 0, '2022-02-20 19:11:00', 'yes'),
(288, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/47\'>OPDN47</a>', 'Doctor', 2, '2022-02-20 19:11:00', 'yes'),
(289, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN48</a>', 'Patient', 29, '2022-02-21 11:16:00', 'yes'),
(290, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/48\'>OPDN48</a>', 'Super Admin', 0, '2022-02-21 11:16:00', 'yes'),
(291, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/48\'>OPDN48</a>', 'Doctor', 2, '2022-02-21 11:16:00', 'yes'),
(292, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN49</a>', 'Patient', 25, '2022-02-21 11:17:00', 'yes'),
(293, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/25/49\'>OPDN49</a>', 'Super Admin', 0, '2022-02-21 11:17:00', 'yes'),
(294, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/25/49\'>OPDN49</a>', 'Doctor', 7, '2022-02-21 11:17:00', 'yes'),
(295, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN50</a>', 'Patient', 29, '2022-02-21 21:09:00', 'yes'),
(296, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/50\'>OPDN50</a>', 'Super Admin', 0, '2022-02-21 21:09:00', 'yes'),
(297, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/29/50\'>OPDN50</a>', 'Doctor', 7, '2022-02-21 21:09:00', 'yes'),
(298, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN51</a>', 'Patient', 26, '2022-02-21 21:12:00', 'yes'),
(299, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/26/51\'>OPDN51</a>', 'Super Admin', 0, '2022-02-21 21:12:00', 'yes'),
(300, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/26/51\'>OPDN51</a>', 'Doctor', 3, '2022-02-21 21:12:00', 'yes'),
(301, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN52</a>', 'Patient', 30, '2022-02-21 22:05:00', 'yes'),
(302, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/30/52\'>OPDN52</a>', 'Super Admin', 0, '2022-02-21 22:05:00', 'yes'),
(303, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/30/52\'>OPDN52</a>', 'Doctor', 4, '2022-02-21 22:05:00', 'yes'),
(304, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/appointment\'>jhon</a>', 'Patient', 0, '2022-02-24 00:02:00', 'yes'),
(305, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'admin/systemnotification/moveappointment/8\'>jhon</a>', 'Super Admin', 0, '2022-02-24 00:02:00', 'yes'),
(306, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'admin/systemnotification/moveappointment/8\'>jhon</a>', 'Doctor', 2, '2022-02-24 00:02:00', 'yes'),
(307, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN53</a>', 'Patient', 31, '2022-02-24 09:55:00', 'yes'),
(308, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/31/53\'>OPDN53</a>', 'Super Admin', 0, '2022-02-24 09:55:00', 'yes'),
(309, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/31/53\'>OPDN53</a>', 'Doctor', 2, '2022-02-24 09:55:00', 'yes'),
(310, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN54</a>', 'Patient', 31, '2022-02-24 09:55:00', 'yes'),
(311, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/31/54\'>OPDN54</a>', 'Super Admin', 0, '2022-02-24 09:55:00', 'yes'),
(312, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/31/54\'>OPDN54</a>', 'Doctor', 2, '2022-02-24 09:55:00', 'yes'),
(313, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN55</a>', 'Patient', 33, '2022-02-22 17:08:00', 'yes'),
(314, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/33/55\'>OPDN55</a>', 'Super Admin', 0, '2022-02-22 17:08:00', 'yes'),
(315, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/33/55\'>OPDN55</a>', 'Doctor', 4, '2022-02-22 17:08:00', 'yes'),
(316, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN55</a>', 'Patient', 33, '2022-02-23 16:17:31', 'yes'),
(317, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/33/55\'>OPDN55</a>', 'Super Admin', 0, '2022-02-23 16:17:31', 'yes'),
(318, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/33/55\'>OPDN55</a>', 'Super Admin', 1, '2022-02-23 16:17:31', 'yes'),
(319, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/33/55\'>OPDN55</a>', 'Doctor', 4, '2022-02-23 16:17:31', 'yes'),
(320, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN56</a>', 'Patient', 34, '2022-02-23 22:11:00', 'yes'),
(321, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/34/56\'>OPDN56</a>', 'Super Admin', 0, '2022-02-23 22:11:00', 'yes'),
(322, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/34/56\'>OPDN56</a>', 'Doctor', 4, '2022-02-23 22:11:00', 'yes'),
(323, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN56</a>', 'Patient', 34, '2022-02-23 17:16:51', 'yes'),
(324, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/34/56\'>OPDN56</a>', 'Super Admin', 0, '2022-02-23 17:16:51', 'yes'),
(325, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/34/56\'>OPDN56</a>', 'Super Admin', 1, '2022-02-23 17:16:51', 'yes'),
(326, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/34/56\'>OPDN56</a>', 'Doctor', 4, '2022-02-23 17:16:51', 'yes'),
(327, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN57</a>', 'Patient', 5, '2022-02-24 20:26:00', 'yes'),
(328, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/5/57\'>OPDN57</a>', 'Super Admin', 0, '2022-02-24 20:26:00', 'yes'),
(329, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/5/57\'>OPDN57</a>', 'Doctor', 4, '2022-02-24 20:26:00', 'yes'),
(330, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN57</a>', 'Patient', 5, '2022-02-24 15:26:46', 'yes'),
(331, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/57\'>OPDN57</a>', 'Super Admin', 0, '2022-02-24 15:26:46', 'yes'),
(332, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/57\'>OPDN57</a>', 'Super Admin', 1, '2022-02-24 15:26:46', 'yes'),
(333, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/57\'>OPDN57</a>', 'Doctor', 4, '2022-02-24 15:26:46', 'yes'),
(334, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN58</a>', 'Patient', 36, '2022-02-25 00:20:00', 'yes'),
(335, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/36/58\'>OPDN58</a>', 'Super Admin', 0, '2022-02-25 00:20:00', 'yes'),
(336, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/36/58\'>OPDN58</a>', 'Doctor', 4, '2022-02-25 00:20:00', 'yes'),
(337, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN59</a>', 'Patient', 37, '2022-02-25 00:23:00', 'yes'),
(338, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/37/59\'>OPDN59</a>', 'Super Admin', 0, '2022-02-25 00:23:00', 'yes'),
(339, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/37/59\'>OPDN59</a>', 'Doctor', 4, '2022-02-25 00:23:00', 'yes'),
(340, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN60</a>', 'Patient', 38, '2022-02-25 00:29:00', 'yes'),
(341, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/38/60\'>OPDN60</a>', 'Super Admin', 0, '2022-02-25 00:29:00', 'yes'),
(342, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/38/60\'>OPDN60</a>', 'Doctor', 4, '2022-02-25 00:29:00', 'yes'),
(343, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN61</a>', 'Patient', 38, '2022-02-25 00:29:00', 'yes'),
(344, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/38/61\'>OPDN61</a>', 'Super Admin', 0, '2022-02-25 00:29:00', 'yes'),
(345, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/38/61\'>OPDN61</a>', 'Doctor', 4, '2022-02-25 00:29:00', 'yes'),
(346, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN57</a>', 'Patient', 5, '2022-02-24 19:36:57', 'yes'),
(347, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/57\'>OPDN57</a>', 'Super Admin', 0, '2022-02-24 19:36:57', 'yes'),
(348, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/57\'>OPDN57</a>', 'Super Admin', 1, '2022-02-24 19:36:57', 'yes'),
(349, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/5/57\'>OPDN57</a>', 'Doctor', 4, '2022-02-24 19:36:57', 'yes'),
(350, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN55</a>', 'Patient', 33, '2022-02-24 19:40:41', 'yes'),
(351, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/33/55\'>OPDN55</a>', 'Super Admin', 0, '2022-02-24 19:40:41', 'yes'),
(352, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/33/55\'>OPDN55</a>', 'Super Admin', 1, '2022-02-24 19:40:41', 'yes'),
(353, 'OPD Prescription Created', 'opd', 'OPD Prescription has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdpresnotification/33/55\'>OPDN55</a>', 'Doctor', 4, '2022-02-24 19:40:41', 'yes'),
(354, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN62</a>', 'Patient', 39, '2022-02-25 00:47:00', 'yes'),
(355, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/39/62\'>OPDN62</a>', 'Super Admin', 0, '2022-02-25 00:47:00', 'yes'),
(356, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/39/62\'>OPDN62</a>', 'Doctor', 4, '2022-02-25 00:47:00', 'yes'),
(357, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN63</a>', 'Patient', 1, '2022-02-27 17:16:00', 'yes'),
(358, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/1/63\'>OPDN63</a>', 'Super Admin', 0, '2022-02-27 17:16:00', 'yes'),
(359, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/1/63\'>OPDN63</a>', 'Doctor', 3, '2022-02-27 17:16:00', 'yes'),
(360, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN64</a>', 'Patient', 1, '2022-02-27 17:16:00', 'yes'),
(361, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/1/64\'>OPDN64</a>', 'Super Admin', 0, '2022-02-27 17:16:00', 'yes'),
(362, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/1/64\'>OPDN64</a>', 'Doctor', 3, '2022-02-27 17:16:00', 'yes'),
(363, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN65</a>', 'Patient', 1, '2022-02-27 17:16:00', 'yes'),
(364, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/1/65\'>OPDN65</a>', 'Super Admin', 0, '2022-02-27 17:16:00', 'yes'),
(365, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/1/65\'>OPDN65</a>', 'Doctor', 3, '2022-02-27 17:16:00', 'yes'),
(366, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN66</a>', 'Patient', 1, '2022-02-27 17:16:00', 'yes'),
(367, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/1/66\'>OPDN66</a>', 'Super Admin', 0, '2022-02-27 17:16:00', 'yes'),
(368, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/1/66\'>OPDN66</a>', 'Doctor', 3, '2022-02-27 17:16:00', 'yes'),
(369, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN67</a>', 'Patient', 1, '2022-02-27 17:16:00', 'yes'),
(370, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/1/67\'>OPDN67</a>', 'Super Admin', 0, '2022-02-27 17:16:00', 'yes'),
(371, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/1/67\'>OPDN67</a>', 'Doctor', 3, '2022-02-27 17:16:00', 'yes'),
(372, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN68</a>', 'Patient', 1, '2022-02-27 17:16:00', 'yes'),
(373, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/1/68\'>OPDN68</a>', 'Super Admin', 0, '2022-02-27 17:16:00', 'yes'),
(374, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/1/68\'>OPDN68</a>', 'Doctor', 3, '2022-02-27 17:16:00', 'yes'),
(375, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN69</a>', 'Patient', 43, '2022-02-26 19:03:00', 'yes'),
(376, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/43/69\'>OPDN69</a>', 'Super Admin', 0, '2022-02-26 19:03:00', 'yes'),
(377, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/43/69\'>OPDN69</a>', 'Doctor', 4, '2022-02-26 19:03:00', 'yes'),
(378, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN70</a>', 'Patient', 44, '2022-02-26 19:19:00', 'yes'),
(379, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/44/70\'>OPDN70</a>', 'Super Admin', 0, '2022-02-26 19:19:00', 'yes'),
(380, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/44/70\'>OPDN70</a>', 'Doctor', 4, '2022-02-26 19:19:00', 'yes'),
(381, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN71</a>', 'Patient', 45, '2022-02-26 19:21:00', 'yes'),
(382, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/45/71\'>OPDN71</a>', 'Super Admin', 0, '2022-02-26 19:21:00', 'yes'),
(383, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/45/71\'>OPDN71</a>', 'Doctor', 4, '2022-02-26 19:21:00', 'yes'),
(384, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN72</a>', 'Patient', 46, '2022-02-21 20:49:00', 'yes'),
(385, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/46/72\'>OPDN72</a>', 'Super Admin', 0, '2022-02-21 20:49:00', 'yes'),
(386, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/46/72\'>OPDN72</a>', 'Doctor', 4, '2022-02-21 20:49:00', 'yes'),
(387, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN73</a>', 'Patient', 46, '2022-02-21 20:49:00', 'yes'),
(388, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/46/73\'>OPDN73</a>', 'Super Admin', 0, '2022-02-21 20:49:00', 'yes'),
(389, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/46/73\'>OPDN73</a>', 'Doctor', 4, '2022-02-21 20:49:00', 'yes'),
(390, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN74</a>', 'Patient', 46, '2022-03-07 21:01:00', 'yes'),
(391, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/46/74\'>OPDN74</a>', 'Super Admin', 0, '2022-03-07 21:01:00', 'yes'),
(392, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/46/74\'>OPDN74</a>', 'Doctor', 2, '2022-03-07 21:01:00', 'yes'),
(393, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN75</a>', 'Patient', 47, '2022-02-26 21:03:00', 'yes'),
(394, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/47/75\'>OPDN75</a>', 'Super Admin', 0, '2022-02-26 21:03:00', 'yes'),
(395, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/47/75\'>OPDN75</a>', 'Doctor', 4, '2022-02-26 21:03:00', 'yes'),
(396, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN76</a>', 'Patient', 48, '2022-02-26 21:03:00', 'yes'),
(397, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/48/76\'>OPDN76</a>', 'Super Admin', 0, '2022-02-26 21:03:00', 'yes'),
(398, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/48/76\'>OPDN76</a>', 'Doctor', 4, '2022-02-26 21:03:00', 'yes'),
(399, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN77</a>', 'Patient', 58, '2022-02-28 23:20:00', 'yes'),
(400, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/58/77\'>OPDN77</a>', 'Super Admin', 0, '2022-02-28 23:20:00', 'yes'),
(401, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/58/77\'>OPDN77</a>', 'Doctor', 4, '2022-02-28 23:20:00', 'yes'),
(402, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN78</a>', 'Patient', 59, '2022-03-01 00:19:00', 'yes'),
(403, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/59/78\'>OPDN78</a>', 'Super Admin', 0, '2022-03-01 00:19:00', 'yes'),
(404, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/59/78\'>OPDN78</a>', 'Doctor', 4, '2022-03-01 00:19:00', 'yes'),
(405, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN79</a>', 'Patient', 63, '2022-03-09 11:01:00', 'yes'),
(406, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/63/79\'>OPDN79</a>', 'Super Admin', 0, '2022-03-09 11:01:00', 'yes'),
(407, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/63/79\'>OPDN79</a>', 'Doctor', 3, '2022-03-09 11:01:00', 'yes'),
(408, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN80</a>', 'Patient', 63, '2022-03-02 11:22:00', 'yes'),
(409, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/63/80\'>OPDN80</a>', 'Super Admin', 0, '2022-03-02 11:22:00', 'yes'),
(410, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/63/80\'>OPDN80</a>', 'Doctor', 2, '2022-03-02 11:22:00', 'yes'),
(411, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN81</a>', 'Patient', 63, '2022-03-02 11:22:00', 'yes'),
(412, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/63/81\'>OPDN81</a>', 'Super Admin', 0, '2022-03-02 11:22:00', 'yes'),
(413, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/63/81\'>OPDN81</a>', 'Doctor', 2, '2022-03-02 11:22:00', 'yes'),
(414, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN82</a>', 'Patient', 64, '2022-03-02 15:42:00', 'yes'),
(415, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/64/82\'>OPDN82</a>', 'Super Admin', 0, '2022-03-02 15:42:00', 'yes'),
(416, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/64/82\'>OPDN82</a>', 'Doctor', 3, '2022-03-02 15:42:00', 'yes'),
(417, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/patient/dashboard/profile\'>OPDN83</a>', 'Patient', 66, '2022-03-06 00:07:00', 'yes'),
(418, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/66/83\'>OPDN83</a>', 'Super Admin', 0, '2022-03-06 00:07:00', 'yes'),
(419, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://54.226.232.117/hms/hms3.1/admin/systemnotification/moveopdnotification/66/83\'>OPDN83</a>', 'Doctor', 4, '2022-03-06 00:07:00', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `test_type_report`
--

CREATE TABLE `test_type_report` (
  `id` int(11) NOT NULL,
  `radiology_id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `test_name` varchar(100) DEFAULT NULL,
  `reporting_date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `test_report` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tpa_doctorcharges`
--

CREATE TABLE `tpa_doctorcharges` (
  `id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `charge_id` int(11) NOT NULL,
  `org_charge` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tpa_doctorcharges`
--

INSERT INTO `tpa_doctorcharges` (`id`, `org_id`, `charge_id`, `org_charge`) VALUES
(1, 1, 1, ''),
(2, 2, 1, '1000');

-- --------------------------------------------------------

--
-- Table structure for table `tpa_master`
--

CREATE TABLE `tpa_master` (
  `id` int(11) NOT NULL,
  `organisation` varchar(200) NOT NULL,
  `charge_id` int(11) NOT NULL,
  `organisation_charge` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(100) NOT NULL,
  `unit_type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `unit_name`, `unit_type`, `created_at`) VALUES
(1, 'mg', 'patho', '2022-01-20 05:46:02'),
(2, 'False/Tr', 'patho', '2022-02-22 10:58:28'),
(3, 'Positive/Negative', 'patho', '2022-02-22 10:59:11'),
(4, ' .', 'radio', '2022-02-23 18:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES
(1, 'admin@admin.com', 'Super Admin', '::1', 'Chrome 92.0.4515.107, Windows 10', '2021-08-29 09:59:42'),
(2, 'admin@admin.com', 'Super Admin', '43.245.8.113', 'Chrome 91.0.4472.124, Windows 10', '2021-08-29 10:00:33'),
(3, 'admin@admin.com', 'Super Admin', '43.245.8.113', 'Chrome 91.0.4472.124, Windows 10', '2021-08-29 10:27:31'),
(4, 'admin@admin.com', 'Super Admin', '42.201.253.18', 'Chrome 92.0.4515.159, Windows 7', '2021-08-29 10:27:45'),
(5, 'admin@admin.com', 'Super Admin', '42.201.253.18', 'Chrome 92.0.4515.159, Windows 7', '2021-08-29 11:24:15'),
(6, 'admin@admin.com', 'Super Admin', '42.201.253.18', 'Chrome 92.0.4515.159, Windows 7', '2021-08-29 11:39:48'),
(7, 'engr.ali007@outlook.com', 'Doctor', '42.201.253.18', 'Chrome 92.0.4515.159, Windows 7', '2021-08-29 11:54:48'),
(8, 'engr.ali007@outlook.com', 'Doctor', '42.201.253.18', 'Chrome 92.0.4515.159, Windows 7', '2021-08-29 12:02:56'),
(9, 'admin@admin.com', 'Super Admin', '42.201.253.18', 'Chrome 92.0.4515.159, Windows 7', '2021-08-29 12:11:31'),
(10, 'admin@admin.com', 'Super Admin', '203.135.44.27', 'Chrome 91.0.4472.124, Windows 10', '2021-08-29 17:57:52'),
(11, 'admin@admin.com', 'Super Admin', '101.50.108.126', 'Chrome 92.0.4515.159, Windows 10', '2021-08-30 04:46:05'),
(12, 'admin@admin.com', 'Super Admin', '101.50.108.126', 'Chrome 92.0.4515.159, Windows 10', '2021-08-30 06:53:59'),
(13, 'ali.yousafzai@381solutions.com', 'Pharmacist', '101.50.108.126', 'Chrome 92.0.4515.159, Windows 10', '2021-08-30 07:08:30'),
(14, 'delta.comm777@gmail.com', 'Admin', '101.50.108.126', 'Chrome 92.0.4515.159, Windows 10', '2021-08-30 07:18:14'),
(15, 'admin@admin.com', 'Super Admin', '101.50.108.126', 'Chrome 92.0.4515.159, Windows 10', '2021-08-30 07:28:33'),
(16, 'delta.comm777@gmail.com', 'Admin', '101.50.108.126', 'Chrome 92.0.4515.159, Windows 10', '2021-08-30 07:32:24'),
(17, 'admin@admin.com', 'Super Admin', '101.50.108.126', 'Chrome 92.0.4515.159, Windows 10', '2021-08-30 07:32:47'),
(18, 'delta.comm777@gmail.com', 'Admin', '101.50.108.126', 'Chrome 92.0.4515.159, Windows 10', '2021-08-30 07:34:33'),
(19, 'admin@admin.com', 'Super Admin', '101.50.108.126', 'Chrome 92.0.4515.159, Windows 10', '2021-08-30 07:35:21'),
(20, 'admin@admin.com', 'Super Admin', '101.50.108.126', 'Chrome 92.0.4515.159, Windows 10', '2021-08-30 07:41:43'),
(21, 'admin@admin.com', 'Super Admin', '101.50.108.126', 'Chrome 92.0.4515.159, Windows 10', '2021-08-30 07:43:50'),
(22, 'admin@admin.com', 'Super Admin', '101.50.108.126', 'Chrome 92.0.4515.159, Windows 10', '2021-08-30 08:29:42'),
(23, 'delta.comm777@gmail.com', 'Admin', '101.50.108.126', 'Chrome 92.0.4515.159, Windows 10', '2021-08-30 09:38:31'),
(24, 'ali.yousafzai@381solutions.com', 'Pharmacist', '101.50.108.126', 'Chrome 92.0.4515.159, Windows 10', '2021-08-30 09:41:41'),
(25, 'admin@admin.com', 'Super Admin', '101.50.108.126', 'Chrome 92.0.4515.159, Windows 10', '2021-08-30 10:08:55'),
(26, 'admin@admin.com', 'Super Admin', '115.186.169.122', 'Chrome 92.0.4515.159, Windows 10', '2021-08-31 07:31:09'),
(27, 'admin@admin.com', 'Super Admin', '115.186.169.122', 'Chrome 92.0.4515.159, Windows 10', '2021-08-31 07:55:02'),
(28, 'bk121406@gmail.com', 'Doctor', '115.186.169.122', 'Chrome 92.0.4515.159, Windows 10', '2021-08-31 10:09:45'),
(29, 'admin@admin.com', 'Super Admin', '115.186.169.122', 'Chrome 92.0.4515.159, Windows 10', '2021-08-31 10:19:31'),
(30, 'admin@admin.com', 'Super Admin', '115.186.169.122', 'Chrome 92.0.4515.159, Windows 10', '2021-08-31 10:45:44'),
(31, 'admin@admin.com', 'Super Admin', '182.188.220.131', 'Chrome 92.0.4515.159, Windows 10', '2021-09-02 08:13:40'),
(32, 'delta.comm777@gmail.com', 'Admin', '39.33.129.136', 'Chrome 92.0.4515.159, Windows 7', '2021-09-04 10:01:17'),
(33, 'delta.comm777@gmail.com', 'Admin', '101.50.108.85', 'Chrome 93.0.4577.82, Windows 10', '2021-09-17 11:30:33'),
(34, 'delta.comm777@gmail.com', 'Admin', '115.186.141.58', 'Chrome 94.0.4606.54, Windows 10', '2021-09-23 12:31:27'),
(35, 'delta.comm777@gmail.com', 'Admin', '180.178.170.122', 'Chrome 94.0.4606.61, Android', '2021-10-02 11:24:50'),
(36, 'delta.comm777@gmail.com', 'Admin', '39.50.231.79', 'Chrome 93.0.4577.62, Android', '2021-10-02 15:27:35'),
(37, 'admin@admin.com', 'Super Admin', '43.245.9.16', 'Chrome 94.0.4606.61, Windows 10', '2021-10-03 16:28:44'),
(38, 'admin@admin.com', 'Super Admin', '43.245.9.16', 'Chrome 94.0.4606.61, Windows 10', '2021-10-03 16:50:16'),
(39, 'delta.comm777@gmail.com', 'Admin', '101.50.108.99', 'Chrome 94.0.4606.61, Windows 10', '2021-10-05 14:46:49'),
(40, 'admin@admin.com', 'Super Admin', '180.178.170.122', 'Chrome 94.0.4606.71, Windows 7', '2021-10-07 17:31:40'),
(41, 'admin@admin.com', 'Super Admin', '180.178.170.122', 'Chrome 94.0.4606.81, Windows 7', '2021-10-21 15:33:30'),
(42, 'admin@admin.com', 'Super Admin', '43.245.8.113', 'Chrome 94.0.4606.81, Windows 10', '2021-10-24 10:37:16'),
(43, 'admin@admin.com', 'Super Admin', '180.178.170.122', 'Chrome 95.0.4638.69, Windows 7', '2021-10-30 10:49:24'),
(44, 'admin@admin.com', 'Super Admin', '180.178.170.122', 'Chrome 95.0.4638.69, Windows 7', '2021-10-30 11:00:51'),
(45, 'bk121406@gmail.com', 'Doctor', '180.178.170.122', 'Chrome 95.0.4638.69, Windows 7', '2021-10-30 11:04:50'),
(46, 'admin@admin.com', 'Super Admin', '180.178.170.122', 'Chrome 95.0.4638.69, Windows 7', '2021-10-30 11:05:55'),
(47, 'admin@admin.com', 'Super Admin', '180.178.170.122', 'Chrome 95.0.4638.69, Windows 7', '2021-10-30 11:18:51'),
(48, 'admin@admin.com', 'Super Admin', '180.178.170.122', 'Chrome 95.0.4638.69, Windows 7', '2021-11-03 16:43:08'),
(49, 'admin@admin.com', 'Super Admin', '43.245.11.33', 'Chrome 95.0.4638.69, Windows 10', '2021-11-14 05:32:25'),
(50, 'admin@admin.com', 'Super Admin', '43.245.11.33', 'Chrome 95.0.4638.69, Windows 10', '2021-11-14 05:35:33'),
(51, 'admin@admin.com', 'Super Admin', '180.178.170.122', 'Chrome 95.0.4638.69, Windows 7', '2021-11-14 05:37:50'),
(52, 'delta.comm777@gmail.com', 'Admin', '115.186.141.49', 'Chrome 95.0.4638.69, Windows 10', '2021-11-17 10:11:04'),
(53, 'delta.comm777@gmail.com', 'Admin', '180.178.170.122', 'Chrome 94.0.4606.61, Android', '2021-11-19 09:49:41'),
(54, 'delta.comm777@gmail.com', 'Admin', '59.103.26.93', 'Chrome 96.0.4664.45, Windows 10', '2021-11-19 09:54:25'),
(55, 'delta.comm777@gmail.com', 'Admin', '119.160.71.204', 'Safari 604.1, iOS', '2021-11-27 16:12:09'),
(56, 'delta.comm777@gmail.com', 'Admin', '168.235.206.90', 'Chrome 78.0.3904.108, Android', '2021-12-04 17:06:38'),
(57, 'delta.comm777@gmail.com', 'Admin', '168.235.203.221', 'Chrome 78.0.3904.108, Android', '2021-12-04 17:28:32'),
(58, 'delta.comm777@gmail.com', 'Admin', '119.160.56.215', 'Chrome 80.0.3987.99, Android', '2021-12-05 11:51:12'),
(59, 'delta.comm777@gmail.com', 'Admin', '116.206.164.138', 'Opera 82.0.4227.23, Linux', '2021-12-05 17:52:50'),
(60, 'delta.comm777@gmail.com', 'Admin', '116.206.164.138', 'Opera 82.0.4227.23, Linux', '2021-12-05 18:23:13'),
(61, 'delta.comm777@gmail.com', 'Admin', '43.245.9.19', 'Chrome 96.0.4664.93, Windows 10', '2021-12-13 06:55:48'),
(62, 'delta.comm777@gmail.com', 'Admin', '180.178.170.174', 'Chrome 96.0.4664.92, Android', '2021-12-13 06:57:55'),
(63, 'delta.comm777@gmail.com', 'Admin', '103.255.4.243', 'Chrome 96.0.4664.93, Windows 10', '2021-12-14 14:34:22'),
(64, 'delta.comm777@gmail.com', 'Admin', '103.255.4.10', 'Chrome 96.0.4664.93, Windows 10', '2021-12-15 07:31:51'),
(65, 'delta.comm777@gmail.com', 'Admin', '115.186.169.103', 'Chrome 96.0.4664.93, Windows 10', '2021-12-15 12:55:54'),
(66, 'delta.comm777@gmail.com', 'Admin', '115.186.169.103', 'Chrome 96.0.4664.110, Windows 10', '2021-12-16 12:03:38'),
(67, 'admin@admin.com', 'Super Admin', '180.178.170.174', 'Chrome 96.0.4664.104, Android', '2021-12-28 13:20:19'),
(68, 'admin@admin.com', 'Super Admin', '101.50.65.136', 'Safari 604.1, iOS', '2021-12-28 13:28:22'),
(69, 'admin@admin.com', 'Super Admin', '101.50.65.136', 'Chrome 96.0.4664.110, Windows 10', '2021-12-28 14:07:44'),
(70, 'admin@admin.com', 'Super Admin', '101.50.65.136', 'Chrome 96.0.4664.110, Windows 10', '2022-01-05 15:03:04'),
(71, 'admin@admin.com', 'Super Admin', '119.160.67.145', 'Safari 604.1, iOS', '2022-01-05 16:27:04'),
(72, 'admin@admin.com', 'Super Admin', '119.160.67.145', 'Safari 604.1, iOS', '2022-01-05 16:32:00'),
(73, 'admin@admin.com', 'Super Admin', '119.160.67.145', 'Safari 604.1, iOS', '2022-01-05 16:36:07'),
(74, 'admin@admin.com', 'Super Admin', '43.245.9.80', 'Chrome 96.0.4664.110, Windows 10', '2022-01-05 17:42:27'),
(75, 'admin@admin.com', 'Super Admin', '203.135.47.108', 'Chrome 96.0.4664.110, Windows 10', '2022-01-14 05:21:15'),
(76, 'admin@admin.com', 'Super Admin', '203.135.44.95', 'Chrome 97.0.4692.71, Windows 10', '2022-01-16 15:37:12'),
(77, 'delta.comm777@gmail.com', 'Admin', '180.178.170.174', 'Chrome 97.0.4692.71, Windows 10', '2022-01-17 11:28:22'),
(78, 'delta.comm777@gmail.com', 'Admin', '119.157.45.114', 'Chrome 97.0.4692.71, Windows 10', '2022-01-17 11:29:52'),
(79, 'delta.comm777@gmail.com', 'Admin', '180.178.170.174', 'Chrome 97.0.4692.71, Windows 10', '2022-01-17 11:34:09'),
(80, 'delta.comm777@gmail.com', 'Admin', '39.40.144.252', 'Chrome 97.0.4692.71, Windows 10', '2022-01-18 12:37:55'),
(81, 'delta.comm777@gmail.com', 'Admin', '180.178.170.174', 'Chrome 97.0.4692.71, Windows 10', '2022-01-20 05:20:59'),
(82, 'admin@admin.com', 'Super Admin', '43.245.10.59', 'Chrome 97.0.4692.71, Windows 10', '2022-01-20 05:44:00'),
(83, 'delta.comm777@gmail.com', 'Admin', '180.178.170.174', 'Chrome 97.0.4692.71, Windows 10', '2022-01-20 14:48:05'),
(84, 'admin@admin.com', 'Super Admin', '180.178.170.174', 'Chrome 97.0.4692.71, Windows 10', '2022-01-20 14:50:58'),
(85, 'admin@admin.com', 'Super Admin', '203.135.45.17', 'Chrome 97.0.4692.71, Windows 10', '2022-01-20 16:40:14'),
(86, 'admin@admin.com', 'Super Admin', '206.84.146.45', 'Chrome 97.0.4692.71, Windows 10', '2022-01-21 05:56:09'),
(87, 'admin@admin.com', 'Super Admin', '101.50.103.191', 'Chrome 97.0.4692.99, Windows 10', '2022-01-24 10:30:04'),
(88, 'admin@admin.com', 'Super Admin', '101.50.103.191', 'Chrome 97.0.4692.99, Windows 10', '2022-01-24 10:35:22'),
(89, 'admin@admin.com', 'Super Admin', '101.50.103.191', 'Chrome 97.0.4692.99, Windows 10', '2022-01-24 10:39:50'),
(90, 'admin@admin.com', 'Super Admin', '101.50.103.191', 'Chrome 97.0.4692.99, Windows 10', '2022-01-24 10:45:32'),
(91, 'delta.comm777@gmail.com', 'Admin', '103.167.159.133', 'Chrome 97.0.4692.99, Windows 10', '2022-01-25 10:47:03'),
(92, 'admin@admin.com', 'Super Admin', '43.245.9.2', 'Chrome 97.0.4692.99, Windows 10', '2022-01-28 13:30:26'),
(93, 'delta.comm777@gmail.com', 'Admin', '37.111.140.236', 'Chrome 97.0.4692.98, Android', '2022-01-30 07:31:41'),
(94, 'delta.comm777@gmail.com', 'Admin', '203.135.45.15', 'Safari 604.1, iOS', '2022-01-30 07:34:34'),
(95, 'delta.comm777@gmail.com', 'Admin', '103.167.159.136', 'Chrome 97.0.4692.99, Windows 10', '2022-02-02 12:24:52'),
(96, 'delta.comm777@gmail.com', 'Admin', '103.167.159.136', 'Chrome 98.0.4758.82, Windows 10', '2022-02-02 12:34:48'),
(97, 'admin@admin.com', 'Super Admin', '203.135.47.95', 'Chrome 97.0.4692.99, Windows 10', '2022-02-02 16:57:53'),
(98, 'admin@admin.com', 'Super Admin', '203.135.47.95', 'Chrome 97.0.4692.99, Windows 10', '2022-02-02 17:42:08'),
(99, 'mobeensatti@gmail.com', 'Admin', '203.135.47.95', 'Chrome 97.0.4692.99, Windows 10', '2022-02-02 17:55:03'),
(100, 'Smartclicksolutionofficial@gmail.com', 'Admin', '103.167.159.136', 'Chrome 97.0.4692.99, Windows 10', '2022-02-02 18:01:07'),
(101, 'Smartclicksolutionofficial@gmail.com', 'Admin', '103.167.159.136', 'Chrome 97.0.4692.99, Windows 10', '2022-02-02 18:02:41'),
(102, 'admin@admin.com', 'Super Admin', '203.135.47.95', 'Chrome 97.0.4692.99, Windows 10', '2022-02-02 18:07:12'),
(103, 'Smartclicksolutionofficial@gmail.com', 'Admin', '103.167.159.136', 'Chrome 97.0.4692.99, Windows 10', '2022-02-02 20:51:23'),
(104, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 97.0.4692.99, Windows 10', '2022-02-03 06:37:37'),
(105, 'golasattii@gmail.com', 'Receptionist', '115.186.174.175', 'Chrome 97.0.4692.99, Windows 10', '2022-02-03 06:55:24'),
(106, 'delta.comm777@gmail.com', 'Admin', '39.48.105.190', 'Chrome 97.0.4692.99, Windows 8.1', '2022-02-03 07:22:23'),
(107, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 97.0.4692.99, Windows 10', '2022-02-03 07:34:45'),
(108, 'delta.comm777@gmail.com', 'Admin', '103.167.159.136', 'Chrome 97.0.4692.99, Windows 10', '2022-02-03 08:37:30'),
(109, 'admin@admin.com', 'Super Admin', '103.167.159.136', 'Chrome 97.0.4692.99, Windows 10', '2022-02-03 09:15:52'),
(110, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 97.0.4692.99, Windows 10', '2022-02-03 11:10:39'),
(111, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 97.0.4692.99, Windows 10', '2022-02-04 14:07:25'),
(112, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 97.0.4692.99, Windows 10', '2022-02-04 15:18:04'),
(113, 'pat18', 'patient', '115.186.174.175', 'Chrome 97.0.4692.99, Windows 10', '2022-02-04 15:21:16'),
(114, 'admin@admin.com', 'Super Admin', '203.135.47.39', 'Safari 604.1, iOS', '2022-02-04 18:11:11'),
(115, 'admin@admin.com', 'Super Admin', '43.245.9.2', 'Safari 604.1, iOS', '2022-02-05 17:35:13'),
(116, 'delta.comm777@gmail.com', 'Admin', '103.163.239.110', 'Chrome 98.0.4758.81, Windows 10', '2022-02-05 17:46:59'),
(117, 'Smartclicksolutionofficial@gmail.com', 'Admin', '103.167.159.136', 'Chrome 97.0.4692.99, Windows 10', '2022-02-06 12:00:19'),
(118, 'admin@admin.com', 'Super Admin', '43.245.10.85', 'Chrome 97.0.4692.99, Windows 10', '2022-02-06 17:35:02'),
(119, 'delta.comm777@gmail.com', 'Admin', '111.119.188.16', 'Chrome 98.0.4758.81, Windows 10', '2022-02-07 04:11:50'),
(120, 'admin@admin.com', 'Super Admin', '203.135.47.118', 'Chrome 97.0.4692.99, Windows 10', '2022-02-07 06:15:42'),
(121, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 97.0.4692.99, Windows 10', '2022-02-08 14:15:26'),
(122, 'delta.comm777@gmail.com', 'Admin', '103.255.6.101', 'Chrome 98.0.4758.81, Windows 10', '2022-02-08 14:54:28'),
(123, 'admin@admin.com', 'Super Admin', '103.228.158.79', 'Chrome 97.0.4692.99, Windows 10', '2022-02-08 17:18:40'),
(124, 'Smartclicksolutionofficial@gmail.com', 'Admin', '103.167.159.98', 'Chrome 97.0.4692.99, Windows 10', '2022-02-09 13:56:21'),
(125, 'delta.comm777@gmail.com', 'Admin', '103.169.64.110', 'Chrome 98.0.4758.87, Android', '2022-02-12 16:25:51'),
(126, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.82, Windows 10', '2022-02-14 10:03:58'),
(127, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.82, Windows 10', '2022-02-14 13:35:57'),
(128, 'admin@admin.com', 'Super Admin', '43.245.8.117', 'Chrome 98.0.4758.82, Windows 10', '2022-02-15 17:35:56'),
(129, 'admin@admin.com', 'Super Admin', '43.245.8.60', 'Chrome 98.0.4758.82, Windows 10', '2022-02-16 09:25:12'),
(130, 'admin@admin.com', 'Super Admin', '182.186.53.105', 'Chrome 98.0.4758.80, Windows 10', '2022-02-16 09:42:58'),
(131, 'admin@admin.com', 'Super Admin', '119.160.117.65', 'Chrome 98.0.4758.80, Windows 10', '2022-02-17 04:10:57'),
(132, 'admin@admin.com', 'Super Admin', '37.111.140.148', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 10:52:37'),
(133, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 10:52:50'),
(134, 'admin@admin.com', 'Super Admin', '182.186.53.105', 'Chrome 98.0.4758.80, Windows 10', '2022-02-17 11:23:40'),
(135, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 12:23:57'),
(136, 'pat5', 'patient', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 12:37:58'),
(137, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 12:39:00'),
(138, 'golasattiii@gmail.com', 'Doctor', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 12:50:33'),
(139, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 12:53:22'),
(140, 'pat5', 'patient', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 12:53:58'),
(141, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 12:55:07'),
(142, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 12:56:06'),
(143, 'pat5', 'patient', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 12:56:48'),
(144, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 12:57:27'),
(145, 'golasattiii@gmail.com', 'Doctor', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 12:57:55'),
(146, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 13:01:30'),
(147, 'pat5', 'patient', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 13:01:46'),
(148, 'admin@admin.com', 'Super Admin', '203.135.46.171', 'Chrome 98.0.4758.102, Windows 10', '2022-02-17 17:23:54'),
(149, 'admin@admin.com', 'Super Admin', '37.111.141.220', 'Chrome 95.0.4638.69, Windows 7', '2022-02-17 17:29:33'),
(150, 'admin@admin.com', 'Super Admin', '182.186.53.105', 'Chrome 98.0.4758.80, Windows 10', '2022-02-18 05:08:14'),
(151, 'admin@admin.com', 'Super Admin', '111.119.183.55', 'Chrome 98.0.4758.87, Android', '2022-02-18 05:40:26'),
(152, 'Admin@admin.com', 'Super Admin', '182.180.10.79', 'Chrome 98.0.4758.101, Android', '2022-02-19 03:29:50'),
(153, 'admin@admin.com', 'Super Admin', '203.135.47.167', 'Safari 604.1, iOS', '2022-02-19 04:47:30'),
(154, 'admin@admin.com', 'Super Admin', '37.111.140.204', 'Chrome 98.0.4758.102, Windows 10', '2022-02-19 05:00:24'),
(155, 'Admin@admin.com', 'Super Admin', '39.62.173.213', 'Chrome 98.0.4758.101, Android', '2022-02-19 08:04:50'),
(156, 'admin@admin.com', 'Super Admin', '182.176.185.84', 'Chrome 98.0.4758.102, Windows 10', '2022-02-19 08:21:29'),
(157, 'admin@admin.com', 'Super Admin', '110.39.169.85', 'Chrome 98.0.4758.102, Windows 10', '2022-02-19 09:59:54'),
(158, 'admin@admin.com', 'Super Admin', '43.245.11.255', 'Chrome 98.0.4758.102, Windows 10', '2022-02-19 11:29:11'),
(159, 'admin@admin.com', 'Super Admin', '111.119.187.45', 'Chrome 98.0.4758.102, Windows 10', '2022-02-19 11:58:23'),
(160, 'admin@admin.com', 'Super Admin', '110.39.169.85', 'Chrome 98.0.4758.102, Windows 10', '2022-02-19 13:48:59'),
(161, 'admin@admin.com', 'Super Admin', '203.135.45.249', 'Chrome 98.0.4758.102, Windows 10', '2022-02-19 15:44:56'),
(162, 'Admin@admin.com', 'Super Admin', '119.160.69.180', 'Chrome 98.0.4758.101, Android', '2022-02-19 17:52:52'),
(163, 'Admin@admin.com', 'Super Admin', '37.186.41.242', 'Chrome 98.0.4758.101, Android', '2022-02-20 04:44:30'),
(164, 'admin@admin.com', 'Super Admin', '111.119.183.22', 'Chrome 87.0.4280.141, Android', '2022-02-20 08:20:16'),
(165, 'admin@admin.com', 'Super Admin', '182.185.175.33', 'Chrome 98.0.4758.102, Windows 10', '2022-02-20 09:20:55'),
(166, 'admin@admin.com', 'Super Admin', '137.59.220.62', 'Chrome 98.0.4758.102, Windows 10', '2022-02-20 09:31:30'),
(167, 'admin@admin.com', 'Super Admin', '65.0.65.9', 'Chrome 98.0.4758.102, Linux', '2022-02-20 09:32:44'),
(168, 'admin@admin.com', 'Super Admin', '182.185.175.33', 'Chrome 98.0.4758.102, Windows 10', '2022-02-20 14:10:36'),
(169, 'admin@admin.com', 'Super Admin', '43.245.10.14', 'Chrome 98.0.4758.102, Windows 10', '2022-02-20 14:13:41'),
(170, 'admin@admin.com', 'Super Admin', '182.185.175.33', 'Chrome 98.0.4758.102, Windows 10', '2022-02-20 14:24:05'),
(171, 'admin@admin.com', 'Super Admin', '119.152.154.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-21 06:15:34'),
(172, 'admin@admin.com', 'Super Admin', '119.152.154.27', 'Chrome 98.0.4758.102, Windows 10', '2022-02-21 06:17:03'),
(173, 'admin@admin.com', 'Super Admin', '182.185.181.208', 'Chrome 98.0.4758.102, Windows 10', '2022-02-21 16:08:07'),
(174, 'admin@admin.com', 'Super Admin', '182.185.181.208', 'Chrome 98.0.4758.102, Windows 10', '2022-02-21 16:12:25'),
(175, 'Admin@admin.com', 'Super Admin', '43.245.8.141', 'Chrome 98.0.4758.101, Android', '2022-02-21 16:17:07'),
(176, 'admin@admin.com', 'Super Admin', '37.111.140.176', 'Chrome 98.0.4758.102, Windows 10', '2022-02-21 17:00:30'),
(177, 'admin@admin.com', 'Super Admin', '39.37.221.24', 'Chrome 98.0.4758.102, Windows 10', '2022-02-21 18:55:40'),
(178, 'admin@admin.com', 'Super Admin', '110.39.169.85', 'Chrome 98.0.4758.102, Windows 10', '2022-02-22 06:07:55'),
(179, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-22 09:52:37'),
(180, 'admin@admin.com', 'Super Admin', '39.48.10.168', 'Chrome 98.0.4758.102, Windows 10', '2022-02-22 10:36:01'),
(181, 'admin@admin.com', 'Super Admin', '111.119.177.36', 'Chrome 98.0.4758.102, Windows 10', '2022-02-22 10:45:11'),
(182, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-22 11:12:14'),
(183, 'dis@yopmail.com', 'Display Only', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-22 11:26:59'),
(184, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-22 11:27:36'),
(185, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-22 12:33:56'),
(186, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-22 12:38:21'),
(187, 'admin@admin.com', 'Super Admin', '111.119.177.36', 'Chrome 98.0.4758.102, Windows 10', '2022-02-22 14:22:17'),
(188, 'admin@admin.com', 'Super Admin', '110.39.169.85', 'Chrome 98.0.4758.102, Windows 10', '2022-02-23 08:27:01'),
(189, 'admin@admin.com', 'Super Admin', '110.39.169.85', 'Chrome 98.0.4758.102, Windows 10', '2022-02-23 14:30:17'),
(190, 'admin@admin.com', 'Super Admin', '43.245.9.34', 'Chrome 80.0.3987.106, Windows 10', '2022-02-23 16:10:59'),
(191, 'pat33', 'patient', '43.245.9.34', 'Chrome 80.0.3987.106, Windows 10', '2022-02-23 16:34:42'),
(192, 'admin@admin.com', 'Super Admin', '43.245.9.34', 'Chrome 80.0.3987.106, Windows 10', '2022-02-23 17:07:59'),
(193, 'admin@admin.com', 'Super Admin', '110.39.169.85', 'Chrome 98.0.4758.102, Windows 10', '2022-02-24 05:32:26'),
(194, 'admin@admin.com', 'Super Admin', '39.43.22.26', 'Chrome 98.0.4758.102, Windows 10', '2022-02-24 05:58:44'),
(195, 'admin@admin.com', 'Super Admin', '110.39.169.85', 'Chrome 98.0.4758.102, Windows 10', '2022-02-24 08:23:01'),
(196, 'admin@admin.com', 'Super Admin', '182.185.112.252', 'Chrome 98.0.4758.102, Windows 7', '2022-02-24 11:53:33'),
(197, 'admin@admin.com', 'Super Admin', '43.245.11.78', 'Chrome 98.0.4758.102, Windows 10', '2022-02-24 19:19:18'),
(198, 'admin@admin.com', 'Super Admin', '203.135.47.19', 'Chrome 98.0.4758.102, Windows 10', '2022-02-24 19:28:31'),
(199, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-02-25 14:59:11'),
(200, 'admin@admin.com', 'Super Admin', '182.185.25.244', 'Chrome 98.0.4758.102, Windows 7', '2022-02-26 11:26:06'),
(201, 'admin@admin.com', 'Super Admin', '39.40.10.237', 'Chrome 98.0.4758.102, Windows 10', '2022-02-26 13:16:13'),
(202, 'admin@admin.com', 'Super Admin', '39.41.197.127', 'Chrome 98.0.4758.101, Android', '2022-02-26 13:48:22'),
(203, 'admin@admin.com', 'Super Admin', '203.135.46.83', 'Chrome 98.0.4758.102, Windows 10', '2022-02-26 14:03:13'),
(204, 'admin@admin.com', 'Super Admin', '203.135.46.227', 'Chrome 98.0.4758.102, Windows 10', '2022-02-26 14:18:02'),
(205, 'admin@admin.com', 'Super Admin', '203.135.46.25', 'Safari 604.1, iOS', '2022-02-26 14:20:59'),
(206, 'admin@admin.com', 'Super Admin', '39.40.10.237', 'Chrome 98.0.4758.102, Windows 10', '2022-02-26 15:37:45'),
(207, 'admin@admin.com', 'Super Admin', '203.135.46.83', 'Chrome 98.0.4758.102, Windows 10', '2022-02-26 16:17:19'),
(208, 'admin@admin.com', 'Super Admin', '203.135.46.179', 'Chrome 98.0.4758.102, Windows 10', '2022-02-26 16:18:43'),
(209, 'admin@admin.com', 'Super Admin', '203.135.46.179', 'Chrome 98.0.4758.102, Windows 10', '2022-02-26 17:20:21'),
(210, 'admin@admin.com', 'Super Admin', '203.135.46.179', 'Chrome 98.0.4758.102, Windows 10', '2022-02-26 17:20:55'),
(211, 'admin@admin.com', 'Super Admin', '39.35.82.26', 'Chrome 98.0.4758.102, Windows 10', '2022-02-26 18:37:53'),
(212, 'admin@admin.com', 'Super Admin', '43.245.8.109', 'Chrome 98.0.4758.102, Windows 10', '2022-02-28 17:04:24'),
(213, 'nabeel@yopmail.com', 'Pharmacist', '43.245.8.157', 'Chrome 98.0.4758.102, Windows 10', '2022-02-28 17:07:09'),
(214, 'admin@admin.com', 'Super Admin', '39.41.213.78', 'Chrome 98.0.4758.102, Windows 10', '2022-03-01 05:54:19'),
(215, 'admin@admin.com', 'Super Admin', '203.135.47.63', 'Chrome 98.0.4758.102, Windows 10', '2022-03-01 18:21:45'),
(216, 'admin@admin.com', 'Super Admin', '39.33.164.1', 'Chrome 98.0.4758.82, Windows 10', '2022-03-02 15:53:25'),
(217, 'admin@admin.com', 'Super Admin', '203.135.45.197', 'Safari 604.1, iOS', '2022-03-03 05:36:32'),
(218, 'admin@admin.com', 'Super Admin', '119.158.115.120', 'Chrome 98.0.4758.102, Windows 10', '2022-03-03 06:22:45'),
(219, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 98.0.4758.102, Windows 10', '2022-03-04 09:25:23'),
(220, 'admin@admin.com', 'Super Admin', '103.255.7.48', 'Chrome 96.0.4664.45, Android', '2022-03-04 13:37:00'),
(221, 'admin@admin.com', 'Super Admin', '103.255.7.48', 'Chrome 96.0.4664.45, Android', '2022-03-04 16:59:41'),
(222, 'admin@admin.com', 'Super Admin', '203.135.44.94', 'Chrome 98.0.4758.102, Windows 10', '2022-03-05 19:06:09'),
(223, 'admin@admin.com', 'Super Admin', '182.187.11.237', 'Chrome 98.0.4758.102, Windows 10', '2022-03-06 18:12:48'),
(224, 'admin@admin.com', 'Super Admin', '115.186.174.175', 'Chrome 99.0.4844.51, Windows 10', '2022-03-07 09:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `childs` text NOT NULL,
  `role` varchar(30) NOT NULL,
  `verification_code` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`) VALUES
(1, 1, 'pat1', 'v8vl5h', '', 'patient', '', 'yes', '2021-08-29 10:45:03'),
(2, 2, 'pat2', 'rrt7b3', '', 'patient', '', 'yes', '2021-08-29 11:02:50'),
(3, 3, 'pat3', 'kf8wyq', '', 'patient', '', 'yes', '2021-08-29 12:28:52'),
(4, 4, 'pat4', '3t6lr2', '', 'patient', '', 'yes', '2021-08-30 09:34:17'),
(5, 5, 'pat5', '84snig', '', 'patient', '', 'yes', '2021-08-31 07:52:57'),
(6, 6, 'pat6', '501oyf', '', 'patient', '', 'yes', '2021-08-31 10:27:19'),
(7, 7, 'pat7', 'qedb3z', '', 'patient', '', 'yes', '2021-09-04 10:02:56'),
(8, 8, 'pat8', '3v5l87', '', 'patient', '', 'yes', '2021-10-30 10:56:18'),
(9, 9, 'pat9', 'b9w0lk', '', 'patient', '', 'yes', '2021-10-30 11:10:54'),
(10, 10, 'pat10', 'kj2uy2', '', 'patient', '', 'yes', '2021-10-30 12:10:38'),
(11, 11, 'pat11', '179b43', '', 'patient', '', 'yes', '2021-10-30 14:14:33'),
(12, 12, 'pat12', '8qkayb', '', 'patient', '', 'yes', '2021-11-14 05:36:51'),
(13, 13, 'pat13', 'zwq9ut', '', 'patient', '', 'yes', '2021-11-14 05:40:37'),
(14, 14, 'pat14', 'gsmneh', '', 'patient', '', 'yes', '2021-11-14 05:48:10'),
(15, 15, 'pat15', '1tsjsc', '', 'patient', '', 'yes', '2022-01-20 05:22:48'),
(16, 16, 'pat16', 'sajuun', '', 'patient', '', 'yes', '2022-01-20 05:30:03'),
(17, 17, 'pat17', 'pge8bl', '', 'patient', '', 'yes', '2022-02-03 08:40:48'),
(18, 18, 'pat18', 't5qpb7', '', 'patient', '', 'yes', '2022-02-04 15:18:59'),
(19, 19, 'pat19', 'hruxcy', '', 'patient', '', 'yes', '2022-02-05 17:39:25'),
(20, 20, 'pat20', 'zp12qz', '', 'patient', '', 'yes', '2022-02-07 04:16:10'),
(21, 21, 'pat21', 'j90kj6', '', 'patient', '', 'yes', '2022-02-07 04:18:46'),
(22, 22, 'pat22', 'v4cdpg', '', 'patient', '', 'yes', '2022-02-07 04:27:45'),
(23, 23, 'pat23', '0ighc4', '', 'patient', '', 'yes', '2022-02-08 15:21:08'),
(24, 24, 'pat24', 's4pt07', '', 'patient', '', 'yes', '2022-02-14 10:18:39'),
(25, 25, 'pat25', '4lhngm', '', 'patient', '', 'yes', '2022-02-14 14:20:21'),
(26, 26, 'pat26', 'tk55i0', '', 'patient', '', 'yes', '2022-02-19 11:13:51'),
(27, 27, 'pat27', 'zi18et', '', 'patient', '', 'yes', '2022-02-19 11:30:05'),
(28, 28, 'pat28', 'r4x4fj', '', 'patient', '', 'yes', '2022-02-19 12:00:13'),
(29, 29, 'pat29', 'qmq71r', '', 'patient', '', 'yes', '2022-02-19 12:14:52'),
(30, 30, 'pat30', 'fq60vw', '', 'patient', '', 'yes', '2022-02-21 17:04:53'),
(31, 31, 'pat31', 'w0xv8g', '', 'patient', '', 'yes', '2022-02-21 20:05:36'),
(32, 32, 'pat32', 'cnehrb', '', 'patient', '', 'yes', '2022-02-22 11:03:13'),
(33, 33, 'pat33', 'k1usjb', '', 'patient', '', 'yes', '2022-02-23 16:14:57'),
(34, 34, 'pat34', 'wsuas3', '', 'patient', '', 'yes', '2022-02-23 17:10:59'),
(35, 35, 'pat35', 'uzq1us', '', 'patient', '', 'yes', '2022-02-24 13:19:56'),
(36, 36, 'pat36', '7eom1v', '', 'patient', '', 'yes', '2022-02-24 19:20:06'),
(37, 37, 'pat37', 'ku1qgm', '', 'patient', '', 'yes', '2022-02-24 19:23:30'),
(38, 38, 'pat38', 'gxo4op', '', 'patient', '', 'yes', '2022-02-24 19:29:01'),
(39, 39, 'pat39', 'satad2', '', 'patient', '', 'yes', '2022-02-24 19:33:34'),
(40, 40, 'pat40', 'i4zsn4', '', 'patient', '', 'yes', '2022-02-25 14:30:36'),
(41, 41, 'pat41', '2t2udo', '', 'patient', '', 'yes', '2022-02-25 14:59:31'),
(42, 42, 'pat42', '6rtnqg', '', 'patient', '', 'yes', '2022-02-25 15:09:52'),
(43, 43, 'pat43', 'pnu3l8', '', 'patient', '', 'yes', '2022-02-26 14:03:54'),
(44, 44, 'pat44', '90gfqc', '', 'patient', '', 'yes', '2022-02-26 14:18:53'),
(45, 45, 'pat45', 'bbt23g', '', 'patient', '', 'yes', '2022-02-26 14:21:31'),
(46, 46, 'pat46', 'uvs6xx', '', 'patient', '', 'yes', '2022-02-26 15:48:47'),
(47, 47, 'pat47', 'ozqt8k', '', 'patient', '', 'yes', '2022-02-26 16:02:54'),
(48, 48, 'pat48', 'idr8or', '', 'patient', '', 'yes', '2022-02-26 16:06:48'),
(49, 49, 'pat49', 'ph2hzu', '', 'patient', '', 'yes', '2022-02-26 16:18:00'),
(50, 50, 'pat50', 'k0748r', '', 'patient', '', 'yes', '2022-02-26 16:19:07'),
(51, 51, 'pat51', 'w1iism', '', 'patient', '', 'yes', '2022-02-26 16:39:43'),
(52, 52, 'pat52', 'kp0nx0', '', 'patient', '', 'yes', '2022-02-26 16:44:46'),
(53, 53, 'pat53', 'l719bg', '', 'patient', '', 'yes', '2022-02-26 17:05:36'),
(54, 54, 'pat54', 'lrg590', '', 'patient', '', 'yes', '2022-02-26 17:17:14'),
(55, 55, 'pat55', 'w9xc2q', '', 'patient', '', 'yes', '2022-02-26 17:20:38'),
(56, 56, 'pat56', 'kzgwx1', '', 'patient', '', 'yes', '2022-02-26 17:21:56'),
(57, 57, 'pat57', 'ic99jd', '', 'patient', '', 'yes', '2022-02-26 18:38:15'),
(58, 58, 'pat58', '6xw53w', '', 'patient', '', 'yes', '2022-02-26 18:39:08'),
(59, 59, 'pat59', '2ywn36', '', 'patient', '', 'yes', '2022-02-28 19:19:28'),
(60, 60, 'pat60', 'bei82w', '', 'patient', '', 'yes', '2022-02-28 20:08:51'),
(61, 61, 'pat61', 'o9z1t2', '', 'patient', '', 'yes', '2022-02-28 20:10:15'),
(62, 62, 'pat62', 'iw6d2u', '', 'patient', '', 'yes', '2022-02-28 20:12:39'),
(63, 63, 'pat63', 'jojcfn', '', 'patient', '', 'yes', '2022-03-01 05:59:00'),
(64, 64, 'pat64', 'f4nbdo', '', 'patient', '', 'yes', '2022-03-02 10:42:29'),
(65, 65, 'pat65', '4qn8s5', '', 'patient', '', 'yes', '2022-03-02 15:54:26'),
(66, 66, 'pat66', '9bmmbu', '', 'patient', '', 'yes', '2022-03-05 19:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `users_authentication`
--

CREATE TABLE `users_authentication` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `expired_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `manufacture_year` varchar(4) DEFAULT NULL,
  `vehicle_type` varchar(100) NOT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `vehicle_no`, `vehicle_model`, `manufacture_year`, `vehicle_type`, `driver_name`, `driver_licence`, `driver_contact`, `note`, `created_at`) VALUES
(1, 'IDH-007', '2019', '2020', 'Contractual', 'Kashan', 'LTV', '03159876545', '', '2021-08-30 05:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `visitors_book`
--

CREATE TABLE `visitors_book` (
  `id` int(11) NOT NULL,
  `source` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(12) NOT NULL,
  `id_proof` varchar(50) NOT NULL,
  `no_of_pepple` int(11) NOT NULL,
  `date` date NOT NULL,
  `in_time` varchar(20) NOT NULL,
  `out_time` varchar(20) NOT NULL,
  `note` mediumtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visitors_purpose`
--

CREATE TABLE `visitors_purpose` (
  `id` int(11) NOT NULL,
  `visitors_purpose` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visit_details`
--

CREATE TABLE `visit_details` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `opd_id` int(11) NOT NULL,
  `opd_no` varchar(100) NOT NULL,
  `cons_doctor` int(11) NOT NULL,
  `case_type` varchar(200) NOT NULL,
  `appointment_date` datetime NOT NULL,
  `symptoms` varchar(200) NOT NULL,
  `bp` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `pulse` varchar(200) NOT NULL,
  `temperature` varchar(200) NOT NULL,
  `respiration` varchar(200) NOT NULL,
  `known_allergies` varchar(100) NOT NULL,
  `casualty` varchar(200) NOT NULL,
  `refference` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(100) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `tax` decimal(15,2) NOT NULL,
  `note_remark` mediumtext NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `header_note` text NOT NULL,
  `footer_note` text NOT NULL,
  `generated_by` int(11) NOT NULL,
  `discharged` varchar(200) NOT NULL,
  `live_consult` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zoom_settings`
--

CREATE TABLE `zoom_settings` (
  `id` int(11) NOT NULL,
  `zoom_api_key` varchar(200) DEFAULT NULL,
  `zoom_api_secret` varchar(200) DEFAULT NULL,
  `use_doctor_api` int(1) DEFAULT 1,
  `use_zoom_app` int(1) DEFAULT 1,
  `opd_duration` int(11) DEFAULT NULL,
  `ipd_duration` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zoom_settings`
--

INSERT INTO `zoom_settings` (`id`, `zoom_api_key`, `zoom_api_secret`, `use_doctor_api`, `use_zoom_app`, `opd_duration`, `ipd_duration`, `created_at`) VALUES
(1, NULL, NULL, 1, 1, 0, 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulance_call`
--
ALTER TABLE `ambulance_call`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appoint_priority`
--
ALTER TABLE `appoint_priority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_group`
--
ALTER TABLE `bed_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_type`
--
ALTER TABLE `bed_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `birth_report`
--
ALTER TABLE `birth_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_bank_status`
--
ALTER TABLE `blood_bank_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_donor_cycle`
--
ALTER TABLE `blood_donor_cycle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_issue`
--
ALTER TABLE `blood_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charge_categories`
--
ALTER TABLE `charge_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charge_type_master`
--
ALTER TABLE `charge_type_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_type`
--
ALTER TABLE `complaint_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conferences`
--
ALTER TABLE `conferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conferences_history`
--
ALTER TABLE `conferences_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conference_staff`
--
ALTER TABLE `conference_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consultant_register`
--
ALTER TABLE `consultant_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consult_charges`
--
ALTER TABLE `consult_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_for`
--
ALTER TABLE `content_for`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_id` (`custom_field_id`);

--
-- Indexes for table `death_report`
--
ALTER TABLE `death_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discharged_summary`
--
ALTER TABLE `discharged_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discharged_summary_opd`
--
ALTER TABLE `discharged_summary_opd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispatch_receive`
--
ALTER TABLE `dispatch_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_head`
--
ALTER TABLE `expense_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_up`
--
ALTER TABLE `follow_up`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_media_gallery`
--
ALTER TABLE `front_cms_media_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_menus`
--
ALTER TABLE `front_cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_pages`
--
ALTER TABLE `front_cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `front_cms_programs`
--
ALTER TABLE `front_cms_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `front_cms_settings`
--
ALTER TABLE `front_cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_calls`
--
ALTER TABLE `general_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_head`
--
ALTER TABLE `income_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ipd_billing`
--
ALTER TABLE `ipd_billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ipd_details`
--
ALTER TABLE `ipd_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ipd_prescription_basic`
--
ALTER TABLE `ipd_prescription_basic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ipd_prescription_details`
--
ALTER TABLE `ipd_prescription_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_category_id` (`item_category_id`);

--
-- Indexes for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `item_store`
--
ALTER TABLE `item_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_supplier`
--
ALTER TABLE `item_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `medicine_bad_stock`
--
ALTER TABLE `medicine_bad_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_batch_details`
--
ALTER TABLE `medicine_batch_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_category`
--
ALTER TABLE `medicine_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_dosage`
--
ALTER TABLE `medicine_dosage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_roles`
--
ALTER TABLE `notification_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_notification_id` (`send_notification_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `notification_setting`
--
ALTER TABLE `notification_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opd_billing`
--
ALTER TABLE `opd_billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opd_details`
--
ALTER TABLE `opd_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opd_patient_charges`
--
ALTER TABLE `opd_patient_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opd_payment`
--
ALTER TABLE `opd_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation_theatre`
--
ALTER TABLE `operation_theatre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisation`
--
ALTER TABLE `organisation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisations_charges`
--
ALTER TABLE `organisations_charges`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `org_id` (`org_id`) USING BTREE,
  ADD KEY `charge_id` (`charge_id`) USING BTREE;

--
-- Indexes for table `ot_consultant_register`
--
ALTER TABLE `ot_consultant_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pathology`
--
ALTER TABLE `pathology`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pathology_category`
--
ALTER TABLE `pathology_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pathology_parameter`
--
ALTER TABLE `pathology_parameter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pathology_parameterdetails`
--
ALTER TABLE `pathology_parameterdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pathology_report`
--
ALTER TABLE `pathology_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pathology_report_parameterdetails`
--
ALTER TABLE `pathology_report_parameterdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_charges`
--
ALTER TABLE `patient_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_timeline`
--
ALTER TABLE `patient_timeline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_category`
--
ALTER TABLE `permission_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_group`
--
ALTER TABLE `permission_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_bill_basic`
--
ALTER TABLE `pharmacy_bill_basic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_bill_detail`
--
ALTER TABLE `pharmacy_bill_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `print_setting`
--
ALTER TABLE `print_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radio`
--
ALTER TABLE `radio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radiology_parameter`
--
ALTER TABLE `radiology_parameter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radiology_parameterdetails`
--
ALTER TABLE `radiology_parameterdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radiology_report`
--
ALTER TABLE `radiology_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radiology_report_parameterdetails`
--
ALTER TABLE `radiology_report_parameterdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `read_notification`
--
ALTER TABLE `read_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `read_systemnotification`
--
ALTER TABLE `read_systemnotification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sch_settings`
--
ALTER TABLE `sch_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `send_notification`
--
ALTER TABLE `send_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_config`
--
ALTER TABLE `sms_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `source`
--
ALTER TABLE `source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_attendance_type`
--
ALTER TABLE `staff_attendance_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_designation`
--
ALTER TABLE `staff_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_bill_basic`
--
ALTER TABLE `supplier_bill_basic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_bill_detail`
--
ALTER TABLE `supplier_bill_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_category`
--
ALTER TABLE `supplier_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptoms_classification`
--
ALTER TABLE `symptoms_classification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_notification`
--
ALTER TABLE `system_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_type_report`
--
ALTER TABLE `test_type_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tpa_doctorcharges`
--
ALTER TABLE `tpa_doctorcharges`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `org_id` (`org_id`) USING BTREE,
  ADD KEY `charge_id` (`charge_id`) USING BTREE;

--
-- Indexes for table `tpa_master`
--
ALTER TABLE `tpa_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_authentication`
--
ALTER TABLE `users_authentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors_book`
--
ALTER TABLE `visitors_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors_purpose`
--
ALTER TABLE `visitors_purpose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visit_details`
--
ALTER TABLE `visit_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_settings`
--
ALTER TABLE `zoom_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ambulance_call`
--
ALTER TABLE `ambulance_call`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `appoint_priority`
--
ALTER TABLE `appoint_priority`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bed_group`
--
ALTER TABLE `bed_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bed_type`
--
ALTER TABLE `bed_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `birth_report`
--
ALTER TABLE `birth_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blood_bank_status`
--
ALTER TABLE `blood_bank_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blood_donor_cycle`
--
ALTER TABLE `blood_donor_cycle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blood_issue`
--
ALTER TABLE `blood_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `charge_categories`
--
ALTER TABLE `charge_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `charge_type_master`
--
ALTER TABLE `charge_type_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaint_type`
--
ALTER TABLE `complaint_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conferences`
--
ALTER TABLE `conferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conferences_history`
--
ALTER TABLE `conferences_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conference_staff`
--
ALTER TABLE `conference_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consultant_register`
--
ALTER TABLE `consultant_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `consult_charges`
--
ALTER TABLE `consult_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_for`
--
ALTER TABLE `content_for`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `death_report`
--
ALTER TABLE `death_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discharged_summary`
--
ALTER TABLE `discharged_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discharged_summary_opd`
--
ALTER TABLE `discharged_summary_opd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dispatch_receive`
--
ALTER TABLE `dispatch_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_head`
--
ALTER TABLE `expense_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floor`
--
ALTER TABLE `floor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `follow_up`
--
ALTER TABLE `follow_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_media_gallery`
--
ALTER TABLE `front_cms_media_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_menus`
--
ALTER TABLE `front_cms_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `front_cms_pages`
--
ALTER TABLE `front_cms_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_programs`
--
ALTER TABLE `front_cms_programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_settings`
--
ALTER TABLE `front_cms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_calls`
--
ALTER TABLE `general_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `income_head`
--
ALTER TABLE `income_head`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ipd_billing`
--
ALTER TABLE `ipd_billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ipd_details`
--
ALTER TABLE `ipd_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ipd_prescription_basic`
--
ALTER TABLE `ipd_prescription_basic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ipd_prescription_details`
--
ALTER TABLE `ipd_prescription_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_issue`
--
ALTER TABLE `item_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_stock`
--
ALTER TABLE `item_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_store`
--
ALTER TABLE `item_store`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_supplier`
--
ALTER TABLE `item_supplier`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicine_bad_stock`
--
ALTER TABLE `medicine_bad_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_batch_details`
--
ALTER TABLE `medicine_batch_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `medicine_category`
--
ALTER TABLE `medicine_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicine_dosage`
--
ALTER TABLE `medicine_dosage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_roles`
--
ALTER TABLE `notification_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_setting`
--
ALTER TABLE `notification_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `opd_billing`
--
ALTER TABLE `opd_billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opd_details`
--
ALTER TABLE `opd_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `opd_patient_charges`
--
ALTER TABLE `opd_patient_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opd_payment`
--
ALTER TABLE `opd_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `operation_theatre`
--
ALTER TABLE `operation_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `organisation`
--
ALTER TABLE `organisation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `organisations_charges`
--
ALTER TABLE `organisations_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ot_consultant_register`
--
ALTER TABLE `ot_consultant_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pathology`
--
ALTER TABLE `pathology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pathology_category`
--
ALTER TABLE `pathology_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pathology_parameter`
--
ALTER TABLE `pathology_parameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pathology_parameterdetails`
--
ALTER TABLE `pathology_parameterdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pathology_report`
--
ALTER TABLE `pathology_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pathology_report_parameterdetails`
--
ALTER TABLE `pathology_report_parameterdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `patient_charges`
--
ALTER TABLE `patient_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patient_timeline`
--
ALTER TABLE `patient_timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_category`
--
ALTER TABLE `permission_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `permission_group`
--
ALTER TABLE `permission_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2090;

--
-- AUTO_INCREMENT for table `pharmacy_bill_basic`
--
ALTER TABLE `pharmacy_bill_basic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pharmacy_bill_detail`
--
ALTER TABLE `pharmacy_bill_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `print_setting`
--
ALTER TABLE `print_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `radio`
--
ALTER TABLE `radio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `radiology_parameter`
--
ALTER TABLE `radiology_parameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `radiology_parameterdetails`
--
ALTER TABLE `radiology_parameterdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `radiology_report`
--
ALTER TABLE `radiology_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `radiology_report_parameterdetails`
--
ALTER TABLE `radiology_report_parameterdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `read_notification`
--
ALTER TABLE `read_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `read_systemnotification`
--
ALTER TABLE `read_systemnotification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1362;

--
-- AUTO_INCREMENT for table `send_notification`
--
ALTER TABLE `send_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_config`
--
ALTER TABLE `sms_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `source`
--
ALTER TABLE `source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialist`
--
ALTER TABLE `specialist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staff_attendance_type`
--
ALTER TABLE `staff_attendance_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff_designation`
--
ALTER TABLE `staff_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_roles`
--
ALTER TABLE `staff_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier_bill_basic`
--
ALTER TABLE `supplier_bill_basic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplier_bill_detail`
--
ALTER TABLE `supplier_bill_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_category`
--
ALTER TABLE `supplier_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `symptoms_classification`
--
ALTER TABLE `symptoms_classification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_notification`
--
ALTER TABLE `system_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT for table `test_type_report`
--
ALTER TABLE `test_type_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tpa_doctorcharges`
--
ALTER TABLE `tpa_doctorcharges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tpa_master`
--
ALTER TABLE `tpa_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users_authentication`
--
ALTER TABLE `users_authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors_book`
--
ALTER TABLE `visitors_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors_purpose`
--
ALTER TABLE `visitors_purpose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visit_details`
--
ALTER TABLE `visit_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zoom_settings`
--
ALTER TABLE `zoom_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `content_for`
--
ALTER TABLE `content_for`
  ADD CONSTRAINT `content_for_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `content_for_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  ADD CONSTRAINT `front_cms_page_contents_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `front_cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  ADD CONSTRAINT `front_cms_program_photos_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `front_cms_programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_roles`
--
ALTER TABLE `notification_roles`
  ADD CONSTRAINT `notification_roles_ibfk_1` FOREIGN KEY (`send_notification_id`) REFERENCES `send_notification` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notification_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
