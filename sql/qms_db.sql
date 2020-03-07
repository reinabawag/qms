-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2020 at 04:00 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `announcementid` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` varchar(30) NOT NULL,
  `dateposted` varchar(30) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `text` varchar(100) NOT NULL,
  `filename` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `awcci_department`
--

CREATE TABLE `awcci_department` (
  `deptid` int(11) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `position` int(11) NOT NULL,
  `visible` tinyint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awcci_department`
--

INSERT INTO `awcci_department` (`deptid`, `dept_name`, `position`, `visible`) VALUES
(1, 'Internal Audit', 3, 1),
(19, 'Executive Office', 1, 1),
(3, 'Quality Management System', 4, 1),
(4, 'Purchasing', 5, 1),
(5, 'Marketing', 8, 1),
(8, 'PPMC', 9, 1),
(7, 'Sales', 6, 1),
(9, 'PED', 10, 1),
(10, 'QAD', 11, 1),
(11, 'PEMD', 12, 1),
(12, 'General Accounting', 13, 1),
(13, 'Cost Accounting', 14, 1),
(14, 'Credit and Collection', 15, 1),
(15, 'Management Information System', 17, 1),
(16, 'Treasury', 16, 1),
(17, 'Scrap Handling Section', 18, 1),
(18, 'FG Warehouse / Shipping Section', 19, 1),
(20, 'District Office', 7, 0),
(21, 'Human Resources', 2, 1),
(22, 'None', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `awcci_division`
--

CREATE TABLE `awcci_division` (
  `divid` int(11) NOT NULL,
  `div_name` varchar(50) NOT NULL,
  `position` int(11) NOT NULL,
  `visible` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awcci_division`
--

INSERT INTO `awcci_division` (`divid`, `div_name`, `position`, `visible`) VALUES
(51, 'Manufacturing', 3, 1),
(50, 'Sales and Marketing', 2, 1),
(49, 'Finance', 1, 1),
(62, 'Independent', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `documentlevel`
--

CREATE TABLE `documentlevel` (
  `recid` int(10) UNSIGNED NOT NULL,
  `level` varchar(30) NOT NULL,
  `documentdesc` varchar(50) NOT NULL,
  `documenttype` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documentlevel`
--

INSERT INTO `documentlevel` (`recid`, `level`, `documentdesc`, `documenttype`) VALUES
(1, 'Level 4', 'External Forms', 'EF'),
(2, 'Level 1', 'Company Policy', 'CP'),
(3, 'Level 2', 'Procedure Manual', 'PM'),
(4, 'Level 0', 'Internal Memorandum', 'IM'),
(5, 'Level 2', 'Manufacturing Control Plan', 'MP'),
(6, 'Level 0', 'Bill of Manufacturing', 'BM'),
(7, 'Level 2', 'Operational Procedure', 'OP'),
(8, 'Level 0', 'Job Description', 'JD'),
(9, 'Level 2', 'Organizational Chart', 'OC'),
(10, 'Level 0', 'Work Standard', 'WS'),
(11, 'Level 3', 'Work Instruction', 'WI'),
(12, 'Level 3', 'Syteline Operating Procedure', 'SP'),
(13, 'Level 4', 'Forms', 'QR');

-- --------------------------------------------------------

--
-- Table structure for table `main_menu`
--

CREATE TABLE `main_menu` (
  `menuid` int(10) UNSIGNED NOT NULL,
  `accesslevel` int(1) NOT NULL,
  `menu_name` varchar(60) NOT NULL,
  `image` varchar(20) NOT NULL,
  `pages` int(50) NOT NULL,
  `visible` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_menu`
--

INSERT INTO `main_menu` (`menuid`, `accesslevel`, `menu_name`, `image`, `pages`, `visible`) VALUES
(1, 1, 'ISO Masterlist', 'masterlist.PNG', 1, 1),
(2, 1, 'AWCCI Division', 'division.PNG', 2, 1),
(3, 1, 'AWCCI Department', 'dept.PNG', 3, 1),
(4, 1, 'Announcement', 'announcement.PNG', 4, 1),
(5, 1, 'Schedule', 'schedule.PNG', 5, 1),
(6, 2, 'ISO Masterlist', 'masterlist.PNG', 1, 1),
(7, 2, 'Announcement', 'announcement.PNG', 4, 1),
(8, 2, 'Schedule', 'schedule.PNG', 5, 1),
(10, 1, 'Users Password', 'user.PNG', 6, 1),
(11, 1, 'AWCCI Menu', 'menu.PNG', 7, 1),
(12, 2, 'AWCCI Division', 'division.PNG', 2, 1),
(13, 2, 'AWCCI Department', 'dept.PNG', 3, 1),
(16, 1, 'Document Level', 'documentlevel.PNG', 8, 1),
(17, 2, 'Document Level', 'documentlevel.PNG', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `masterlist`
--

CREATE TABLE `masterlist` (
  `procedureid` int(11) UNSIGNED NOT NULL,
  `documenttitle` varchar(100) NOT NULL,
  `documenttype` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `docnum` varchar(100) NOT NULL,
  `effectivitydate` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  `filename` varchar(300) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AVG_ROW_LENGTH=50 DEFAULT CHARSET=latin1 MAX_ROWS=4294967295;

--
-- Dumping data for table `masterlist`
--

INSERT INTO `masterlist` (`procedureid`, `documenttitle`, `documenttype`, `division`, `department`, `docnum`, `effectivitydate`, `status`, `filename`, `create_date`) VALUES
(3, 'Customer External Feedbacks Procedure', '3', '50', '5', 'PM-SMK-003', 'August 14, 2009', 'Active', 'Customer_External_Feedbacks_Procedure.pdf', '2020-02-03 05:35:54'),
(7, 'Suppliers Accreditation Procedures', '3', '62', '4', 'PM-PUR-002', 'July 27, 2009', 'Active', 'Suppliers_Accreditation_Procedures.pdf', '2020-02-03 05:35:54'),
(8, 'Suppliers Evaluation Procedures', '3', '62', '4', 'PM-PUR-003', 'July 27, 2009', 'Active', 'PM-PUR-003_Suppliers_Evaluation_Procedures.pdf', '2020-02-03 05:35:54'),
(9, 'Monthly Production Plan', '3', '51', '8', 'PM-PPM-001', 'August 10, 2009', 'Active', 'PM-PPM-001_Monthly_Production_Plan.pdf', '2020-02-03 05:35:54'),
(11, 'Administration of Production Job Contracting', '3', '51', '9', 'PM-PED-001', 'July 27, 2009', 'Active', 'Administration_of_Production_Job_Contracting.pdf', '2020-02-03 05:35:54'),
(12, 'Procedure in Evaluating Quality Production Processes', '3', '51', '9', 'PM-PED-002', 'July 27, 2009', 'Active', 'Procedure_in_Evaluating_Quality_Production_Processes.pdf', '2020-02-03 05:35:54'),
(13, 'Production Tooling and Consumables Management', '3', '51', '9', 'PM-PED-003', 'July 27, 2009', 'Active', 'Production_Tooling_and_Consumables_Management.pdf', '2020-02-03 05:35:54'),
(14, 'Delivery Procedure', '3', '50', '18', 'PM-WHS-001', 'August 10, 2009', 'Obsolete', 'Delivery_Procedure_PM-WHS-001.pdf', '2020-02-03 05:35:54'),
(15, 'Finished Goods Warehousing', '3', '50', '18', 'PM-WHS-002', 'August 10, 2009', 'Obsolete', 'Finished_Goods_Warehousing_PM-WHS-002.pdf', '2020-02-03 05:35:54'),
(16, 'Control of Documents and Records', '3', '62', '3', 'PM-QMS-001', 'July 01, 2009', 'Obsolete', 'PM-QMS-001_Control_of_Documents_and_Records.pdf', '2020-02-03 05:35:54'),
(17, 'Internal Quality Audit Procedure', '3', '62', '3', 'PM-QMS-002', 'July 01, 2009', 'Active', 'PM-QMS-002_Internal_Quality_Audit_Procedure.pdf', '2020-02-03 05:35:54'),
(18, 'Corrective Action and Preventive Action', '3', '62', '3', 'PM-QMS-003', 'July 01, 2009', 'Obsolete', 'PM-QMS-003_Corrective_Action_and_Preventive_Action.pdf', '2020-02-03 05:35:54'),
(27, 'Purchasing of Materials, Supplies, Spare Parts, Tools, Machineries, Equipment and Services', '3', '62', '4', 'PM-PUR-001', 'July 27, 2009', 'Active', 'PM-PUR-001.pdf', '2020-02-03 05:35:54'),
(28, 'Customer Inquiry and Order Handling Procedure', '3', '50', '5', 'PM-SMK-002', 'August 14, 2009', 'Obsolete', 'Customer_Inquiry_and_Order_Handling_Procedure.pdf', '2020-02-03 05:35:54'),
(29, 'Insulating / Jacketing of Copper or Aluminum', '5', '51', '9', 'MP-PED-001', 'August 03, 2009', 'Active', 'Insulating,_Jacketing_of_Copper_Or_Aluminum.pdf', '2020-02-03 05:35:54'),
(30, 'Drawn Wire Copper or Aluminum, Soft or Hard', '5', '51', '9', 'MP-PED-002', 'August 03, 2009', 'Active', 'Drawn_Wire_Copper_or_Aluminum,_Soft_or_Hard.pdf', '2020-02-03 05:35:54'),
(31, 'Bunching or Stranding Wire Copper or Aluminum, Soft or Hard', '5', '51', '9', 'MP-PED-003', 'August 03, 2009', 'Active', 'Bunching_or_Stranding_Wire_Copper_or_Aluminum,_Soft_or_Hard.pdf', '2020-02-03 05:35:54'),
(32, 'Copper Rod', '5', '51', '10', 'MP-QAD-001', 'August 03, 2009', 'Obsolete', 'MP-QAD-001_Copper_Rod.pdf', '2020-02-03 05:35:54'),
(33, 'Aluminum Rod 1350', '5', '51', '10', 'MP-QAD-002', 'August 03, 2009', 'Obsolete', 'MP-QAD-002_Aluminum_Rod_1350.pdf', '2020-02-03 05:35:54'),
(34, 'Polyvinyl Chloride Compound (PVC)', '5', '51', '10', 'MP-QAD-003', 'August 03, 2009', 'Obsolete', 'MP-QAD-003_Polyvinyl_Chloride_Compound_(PVC).pdf', '2020-02-03 05:35:54'),
(35, 'Polyethylene Compound (PE)', '5', '51', '10', 'MP-QAD-004', 'August 03, 2009', 'Obsolete', 'MP-QAD-004_Polyethylene_Compound_(PE).pdf', '2020-02-03 05:35:54'),
(36, 'Galvanized Steel Wire Class A Coating', '5', '51', '10', 'MP-QAD-005', 'August 03, 2009', 'Obsolete', 'MP-QAD-005_Galvanized_Steel_Wire_Class_A_Coating.pdf', '2020-02-03 05:35:54'),
(37, 'Messenger Wire (Extra High Strength)', '5', '51', '10', 'MP-QAD-006', 'August 03, 2009', 'Obsolete', 'MP-QAD-006_Messenger_Wire_(Extra_High_Strength).pdf', '2020-02-03 05:35:54'),
(38, 'Hard Drawn Copper Wire', '5', '51', '10', 'MP-QAD-007', 'August 03, 2009', 'Obsolete', 'MP-QAD-007_Hard_Drawn_Copper_Wire.pdf', '2020-02-03 05:35:54'),
(39, 'Copper Tape C11000', '5', '51', '10', 'MP-QAD-008', 'August 03, 2009', 'Obsolete', 'MP-QAD-008_Copper_Tape_C11000.pdf', '2020-02-03 05:35:54'),
(41, 'Copper Clad AWG No.18', '5', '51', '10', 'MP-QAD-009', 'August 03, 2009', 'Obsolete', 'MP-QAD-009_Copper_Clad_AWG_No.18.pdf', '2020-02-03 05:35:54'),
(42, 'Plastic Coated Aluminum Shield', '5', '51', '10', 'MP-QAD-010', 'August 03, 2009', 'Obsolete', 'MP-QAD-010_Plastic_Coated_Aluminum_Shield.pdf', '2020-02-03 05:35:54'),
(43, 'Jelly Compound', '5', '51', '10', 'MP-QAD-011', 'August 03, 2009', 'Obsolete', 'MP-QAD-011_Jelly_Compound.pdf', '2020-02-03 05:35:54'),
(44, 'Soft or Annealed and Hard Drawn Copper Wires', '5', '51', '10', 'MP-QAD-012', 'August 03, 2009', 'Active', 'MP-QAD-012_Soft_or_Annealed_and_Hard_Drawn_Copper_Wires.pdf', '2020-02-03 05:35:54'),
(45, 'Aluminum Wires', '5', '51', '10', 'MP-QAD-013', 'August 03, 2009', 'Active', 'MP-QAD-013_Aluminum_Wires.pdf', '2020-02-03 05:35:54'),
(46, 'Stranded or Bunched Copper Wires', '5', '51', '10', 'MP-QAD-014', 'August 03, 2009', 'Active', 'MP-QAD-014_Stranded_or_Bunched_Copper_Wires.pdf', '2020-02-03 05:35:54'),
(47, 'Stranded Aluminum Wires AAC, ACSR', '5', '51', '10', 'MP-QAD-015', 'August 03, 2009', 'Active', 'MP-QAD-015_Stranded_Aluminum_Wires_AAC,_ACSR.pdf', '2020-02-03 05:35:54'),
(48, 'Insulated Copper Wires', '5', '51', '10', 'MP-QAD-016', 'August 03, 2009', 'Active', 'MP-QAD-016_Insulated_Copper_Wires.pdf', '2020-02-03 05:35:54'),
(49, 'Scheduling Production Machine', '11', '51', '8', 'WI-PPM-001', 'August 10, 2009', 'Active', 'Scheduling_Production_Machine_WI-PPM-001.pdf', '2020-02-03 05:35:54'),
(50, 'Preparation of Production Job Order', '11', '51', '8', 'WI-PPM-002', 'August 10, 2009', 'Active', 'Preparation_of_Production_Job_Order_WI-PPM-002.pdf', '2020-02-03 05:35:54'),
(51, 'Preparation of Daily Production Status Report', '11', '51', '8', 'WI-PPM-003', 'August 10, 2009', 'Active', 'Preparation_of_Daily_Production_Status_Report_WI-PPM-003.pdf', '2020-02-03 05:35:54'),
(52, 'Transferring Finished Products to the Finished Goods Warehouse', '11', '51', '8', 'WI-PPM-004', 'August 10, 2009', 'Obsolete', 'Transferring_Finished_Products_to_the_Finished_Goods_Warehouse_WI-PPM-004.pdf', '2020-02-03 05:35:54'),
(53, 'Outside Plant Wire Processing (Sub-Con)', '11', '51', '8', 'WI-PPM-005', 'August 10, 2009', 'Active', 'Outside_Plant_Wire_Processing_(Sub-Con)_WI-PPM-005.pdf', '2020-02-03 05:35:54'),
(54, 'Receiving or Transferring and Storage of Raw Material and Packaging Materials', '11', '51', '8', 'WI-PPM-006', 'August 10, 2009', 'Active', 'Receiving_or_Transferring_and_Storage_of_Raw_Material_and_Packaging_Materials_WI-PPM-006.pdf', '2020-02-03 05:35:54'),
(55, 'Issuance of Raw Materials and Packaging Materials', '11', '51', '8', 'WI-PPM-007', 'August 10, 2009', 'Active', 'Issuance_of_Raw_Materials_and_Packaging_Materials_WI-PPM-007.pdf', '2020-02-03 05:35:54'),
(56, 'Issuance of Raw Materials Centralized Vacuum Loading', '11', '51', '8', 'WI-PPM-008', 'August 10, 2009', 'Active', 'Issuance_of_Raw_Materials_Centralized_Vacuum_Loading_WI-PPM-008.pdf', '2020-02-03 05:35:54'),
(57, 'Physical Count and Monitoring of Raw Materials and Packaging Materials', '11', '51', '8', 'WI-PPM-009', 'August 10, 2009', 'Active', 'Physical_Count_and_Monitoring_of_Raw_Materials_and_Packaging_Materials_WI-PPM-009.pdf', '2020-02-03 05:35:54'),
(59, 'Return of Excess or Defective Raw Materials and Packaging Materials From Production Material Warehou', '11', '51', '8', 'WI-PPM-010', 'August 10, 2009', 'Active', 'WI-PPM-010.pdf', '2020-02-03 05:35:54'),
(60, 'Daily Monitoring Work Instruction', '11', '51', '9', 'WI-PED-001', 'July 27, 2009', 'Active', 'WI-PED-001_Daily_Monitoring_Work_Instruction.pdf', '2020-02-03 05:35:54'),
(61, 'Review or Analysis of Variance of Product (Actual Vs. Standards)', '11', '51', '9', 'WI-PED-002', 'July 27, 2009', 'Active', 'WI-PED-002_Review_or_Analysis_of_Variance_of_Product_(Actual_Vs._Standards).pdf', '2020-02-03 05:35:54'),
(62, 'Preservation of Toolings', '11', '51', '9', 'WI-PED-003', 'July 27, 2009', 'Active', 'WI-PED-003_Preservation_of_Toolings.pdf', '2020-02-03 05:35:54'),
(63, 'Inspection of Drawing Dies Using Microscope', '11', '51', '9', 'WI-PED-004', 'July 27, 2009', 'Active', 'WI-PED-004_Inspection_of_Drawing_Dies_Using_Microscope.pdf', '2020-02-03 05:35:54'),
(64, 'Recutting Approach Angle and Polishing of TC Dies', '11', '51', '9', 'WI-PED-005', 'July 27, 2009', 'Active', 'WI-PED-005_Recutting_Approach_Angle_and_Polishing_of_TC_Dies.pdf', '2020-02-03 05:35:54'),
(65, 'Polishing or Resizing of NDD or PCD Using MC No. 1&2', '11', '51', '9', 'WI-PED-006', 'July 27, 2009', 'Active', 'WI-PED-006_Polishing_or_Resizing_of_NDD_or_PCD_using_MC_No._1&2.pdf', '2020-02-03 05:35:54'),
(66, 'Measuring Bore Diameter of Wire Drawing Dies', '11', '51', '9', 'WI-PED-007', 'July 27, 2009', 'Active', 'WI-PED-007_Measuring_Bore_Diameter_of_Wire_Drawing_Dies.pdf', '2020-02-03 05:35:54'),
(67, 'Set Operation of Various Equipment (LATHE MACHINE and POWER HACKSAW)', '11', '51', '9', 'WI-PED-008', 'July 27, 2009', 'Active', 'WI-PED-008_Set_Operation_of_Various_Equipment_(LATHE_MACHINE_and_POWER_HACKSAW).pdf', '2020-02-03 05:35:54'),
(68, 'Return Non-Acceptance of Items Upon Delivery', '11', '50', '18', 'WI-WHS-001', 'August 20, 2009', 'Obsolete', 'WI-WHS-001_Return_Non-Acceptance_of_Items_Upon_Delivery.pdf', '2020-02-03 05:35:54'),
(69, 'Preparation in Cutting of Wires', '11', '50', '18', 'WI-WHS-002', 'August 20, 2009', 'Obsolete', 'WI-WHS-002_Preparation_in_Cutting_of_Wires.pdf', '2020-02-03 05:35:54'),
(70, 'MSR AND SERVER START-UP', '11', '49', '15', 'WI-MIS-001', 'July 24, 2009', 'Active', 'WI-MIS-001_MSR_AND_SERVER_START-UP.pdf', '2020-02-03 05:35:54'),
(71, 'SERVER BACK-UP', '11', '49', '15', 'WI-MIS-002', 'July 24, 2009', 'Active', 'WI-MIS-002_SERVER_BACK-UP.pdf', '2020-02-03 05:35:54'),
(72, 'SYSTEM SECURITY', '11', '49', '15', 'WI-MIS-003', 'July 24, 2009', 'Active', 'WI-MIS-003_SYSTEM_SECURITY.pdf', '2020-02-03 05:35:54'),
(73, 'Order Entry Process', '12', '50', '5', 'SP-SMK-001', 'August 17, 2009', 'Obsolete', 'SP-SMK-001_Order_Entry_Process.pdf', '2020-02-03 05:35:54'),
(74, 'Estimating Process', '12', '50', '5', 'SP-SMK-002', 'August 14, 2009', 'Active', 'SP-SMK-002_Estimating_Process.pdf', '2020-02-03 05:35:54'),
(75, 'Order Price / Item Revision', '12', '50', '5', 'SP-SMK-003', 'August 14, 2009', 'Active', 'SP-SMK-003_Order_Price_Item_Revision.pdf', '2020-02-03 05:35:54'),
(76, 'Production Job Order Preparation', '12', '51', '8', 'SP-PPM-001', 'July 18, 2009', 'Active', 'Preparation_of_PJO_SP-PPM-001.pdf', '2020-02-03 05:35:54'),
(77, 'PJO with Sub Jobs', '12', '51', '8', 'SP-PPM-002', 'July 18, 2009', 'Active', 'PJO_with_Sub_Jobs_SP-PPM-002.pdf', '2020-02-03 05:35:54'),
(78, 'Job Paper Work', '12', '51', '8', 'SP-PPM-003', 'July 18, 2009', 'Active', 'Job_Paper_Work_SP-PPM-003.pdf', '2020-02-03 05:35:54'),
(79, 'Color or SKU Split PJO', '12', '51', '8', 'SP-PPM-004', 'July 18, 2009', 'Active', 'Color_or_SKU_Split_PJO_SP-PPM-004.pdf', '2020-02-03 05:35:54'),
(80, 'Proper Requisitioning of Raw Materials and Packaging Materials', '12', '51', '8', 'SP-PPM-005', 'July 18, 2009', 'Active', 'Proper_Requisitioning_of_Raw_Materials_and_Packaging_Materials_SP-PPM-005.pdf', '2020-02-03 05:35:54'),
(81, 'Returned Materials Thru Job Materials Transactions', '12', '51', '8', 'SP-PPM-006', 'July 18, 2009', 'Active', 'Returned_Materials_Thru_Job_Materials_Transactions_SP-PPM-006.pdf', '2020-02-03 05:35:54'),
(82, 'Material Return Through Miscellaneous Receipt', '12', '51', '8', 'SP-PPM-007', 'July 18, 2009', 'Active', 'Material_Return_Through_Miscellaneous_Receipt_SP-PPM-007.pdf', '2020-02-03 05:35:54'),
(83, 'Materials Issuance Through Miscellaneous Issue', '12', '51', '8', 'SP-PPM-008', 'July 18, 2009', 'Active', 'Materials_Issuance_Through_Miscellaneous_Issue_SP-PPM-008.pdf', '2020-02-03 05:35:54'),
(84, 'Job Materials Transactions', '12', '51', '8', 'SP-PPM-009', 'July 18, 2009', 'Active', 'Job_Materials_Transactions_SP-PPM-009.pdf', '2020-02-03 05:35:54'),
(85, 'Unposted Job Transaction', '12', '51', '9', 'SP-PED-001', 'July 27, 2009', 'Obsolete', 'Unposted_Job_Transaction.pdf', '2020-02-03 05:35:54'),
(87, 'AWC Incident (Maintenance Module)', '12', '51', '9', 'SP-PED-002', 'July 27, 2009', 'Obsolete', 'AWC_Incident_(Maintenance_Module).pdf', '2020-02-03 05:35:54'),
(88, 'Shipping Process', '12', '50', '18', 'SP-WHS-001', 'August 20, 2009', 'Obsolete', 'SP-WHS-001_Shipping_Process.pdf', '2020-02-03 05:35:54'),
(89, 'Purchase Order Receiving', '12', '51', '8', 'SP-FIN-001', 'August 20, 2009', 'Active', 'SP-FIN-001_Purchase_Order_Receiving.pdf', '2020-02-03 05:35:54'),
(90, 'Vouchering GRN', '12', '49', '12', 'SP-GAD-001', 'August 20, 2009', 'Active', 'SP-GAD-001_Vouchering_GRN.pdf', '2020-02-03 05:35:54'),
(91, 'AP Payment Posting', '12', '49', '12', 'SP-GAD-002', 'August 20, 2009', 'Active', 'SP-GAD-002_AP_Payment_Posting.pdf', '2020-02-03 05:35:54'),
(92, 'Printing of Syteline Financial Statement', '12', '49', '12', 'SP-GAD-003', 'August 20, 2009', 'Active', 'SP-GAD-003_Printing_of_Syteline_Financial_Statement.pdf', '2020-02-03 05:35:54'),
(93, 'Mass Journal Posting', '12', '49', '12', 'SP-GAD-004', 'August 20, 2009', 'Active', 'SP-GAD-004_Mass_Journal_Posting.pdf', '2020-02-03 05:35:54'),
(94, 'Non AP Payment', '12', '49', '16', 'SP-TRD-004', 'August 20, 2009', 'Active', 'SP-TRD-004_Non_AP_Payment.pdf', '2020-02-03 05:35:54'),
(95, 'Customer Payment Process', '12', '49', '14', 'SP-CCD-001', 'August 20, 2009', 'Active', 'SP-CCD-001_Customer_Payment_Process.pdf', '2020-02-03 05:35:54'),
(96, 'Adding New Items', '12', '49', '15', 'SP-MIS-001', 'July 24, 2009', 'Active', 'SP-MIS-001_Adding_New_Items.pdf', '2020-02-03 05:35:54'),
(97, 'Market Development', '3', '50', '5', 'PR-MKG-05101', 'November 20, 2000', 'Active', 'PR-MKG-05101_Market_Development.pdf', '2020-02-03 05:35:54'),
(98, 'Hiring', '3', '62', '21', 'PR-PRL-10501', 'September 01, 2003', 'Obsolete', 'PR-PRL-10501_Hiring.pdf', '2020-02-03 05:35:54'),
(99, 'Orientation of New Employee', '3', '62', '21', 'PR-PRL-10502', 'September 01, 2003', 'Active', 'PR-PRL-10502_Orientation_of_New_Employee.pdf', '2020-02-03 05:35:54'),
(100, 'Performance Evaluation', '3', '62', '21', 'PR-PRL-10503', 'September 01, 2003', 'Active', 'PR-PRL-10503_Performance_Evaluation.pdf', '2020-02-03 05:35:54'),
(101, 'Training Needs Analysis', '3', '62', '21', 'PR-PRL-10504', 'September 01, 2003', 'Active', 'PR-PRL-10504_Training_Needs_Analysis.pdf', '2020-02-03 05:35:54'),
(102, 'Promotion or Employment Changes', '3', '62', '21', 'PR-PRL-10505', 'September 01, 2003', 'Active', 'PR-PRL-10505_Promotion_or_Employment_Changes.pdf', '2020-02-03 05:35:54'),
(103, 'Paternity Leave', '3', '62', '21', 'PR-PRL-10506', 'September 01, 2003', 'Active', 'PR-PRL-10506_Paternity_Leave.pdf', '2020-02-03 05:35:54'),
(104, 'Study Leave', '3', '62', '21', 'PR-PRL-10507', 'September 01, 2003', 'Active', 'PR-PRL-10507_Study_Leave.pdf', '2020-02-03 05:35:54'),
(105, 'Availment of SSS Sickness Benefit', '3', '62', '21', 'PR-PRL-10508', 'September 01, 2003', 'Active', 'PR-PRL-10508_Availment_of_SSS_Sickness_Benefit.pdf', '2020-02-03 05:35:54'),
(106, 'Availment of Philhealth', '3', '62', '21', 'PR-PRL-10509', 'September 01, 2003', 'Active', 'PR-PRL-10509_Availment_of_Philhealth.pdf', '2020-02-03 05:35:54'),
(107, 'Availment of ECC Benefits or Work Connected Illness', '3', '62', '21', 'PR-PRL-10510', 'September 01, 2003', 'Active', 'PR-PRL-10510_Availment_of_ECC_Benefits_or_Work_Connected_Illness.pdf', '2020-02-03 05:35:54'),
(108, 'Availment of Loan Under CBA', '3', '62', '21', 'PR-PRL-10511', 'September 01, 2003', 'Active', 'PR-PRL-10511_Availment_of_Loan_Under_CBA.pdf', '2020-02-03 05:35:54'),
(109, 'Transportation and Meal Subsidy', '3', '62', '21', 'PR-PRL-10512', 'September 01, 2003', 'Active', 'PR-PRL-10512_Transportation,_Meal_Subsidy.pdf', '2020-02-03 05:35:54'),
(110, 'Filing of Leave of Absences', '3', '62', '21', 'PR-PRL-10513', 'September 01, 2003', 'Active', 'PR-PRL-10513_Filing_of_Leave_of_Absences.pdf', '2020-02-03 05:35:54'),
(111, 'Filing of Sick Leave Application', '3', '62', '21', 'PR-PRL-10514', 'September 01, 2003', 'Active', 'PR-PRL-10514_Filing_of_Sick_Leave_Application.pdf', '2020-02-03 05:35:54'),
(112, 'Maternity Leave Application', '3', '62', '21', 'PR-PRL-10515', 'September 01, 2003', 'Active', 'PR-PRL-10515_Maternity_Leave_Application.pdf', '2020-02-03 05:35:54'),
(113, 'Office Uniform and ID', '3', '62', '21', 'PR-PRL-10516', 'September 01, 2003', 'Active', 'PR-PRL-10516_Office_Uniform_and_ID.pdf', '2020-02-03 05:35:54'),
(114, 'Disciplinary Action', '3', '62', '21', 'PR-PRL-10517', 'September 01, 2003', 'Active', 'PR-PRL-10517_Disciplinary_Action.pdf', '2020-02-03 05:35:54'),
(115, 'Resignation', '3', '62', '21', 'PR-PRL-10518', 'September 01, 2003', 'Active', 'PR-PRL-10518_Resignation.pdf', '2020-02-03 05:35:54'),
(116, 'Retirement', '3', '62', '21', 'PR-PRL-10519', 'September 01, 2003', 'Active', 'PR-PRL-10519_Retirement.pdf', '2020-02-03 05:35:54'),
(117, 'Disease as a Ground for Termination', '3', '62', '21', 'PR-PRL-10520', 'September 01, 2003', 'Active', 'PR-PRL-10520_Disease_as_a_Ground_for_Termination.pdf', '2020-02-03 05:35:54'),
(118, 'Re-orientation of Employees', '3', '62', '21', 'PR-PRL-10521', 'September 01, 2003', 'Active', 'PR-PRL-10521_Re-orientation_of_Employees.pdf', '2020-02-03 05:35:54'),
(119, 'Filing of Union Leave', '3', '62', '21', 'PR-PRL-10522', 'September 01, 2003', 'Active', 'PR-PRL-10522_Filing_of_Union_Leave.pdf', '2020-02-03 05:35:54'),
(120, 'Final Testing', '3', '51', '10', 'PR-QAD-10204', 'September 01, 2003', 'Active', 'PR-QAD-10204_Final_Testing.pdf', '2020-02-03 05:35:54'),
(121, 'New Material Evaluation', '3', '51', '10', 'PR-QAD-10205', 'September 01, 2003', 'Active', 'PR-QAD-10205_New_Material_Evaluation.pdf', '2020-02-03 05:35:54'),
(123, 'Non-Conforming Item', '3', '51', '10', 'PR-QAD-10206', 'September 06, 2004', 'Obsolete', 'PR-QAD-10206_Non-Conforming_Item.pdf', '2020-02-03 05:35:54'),
(124, 'Calibration', '3', '51', '10', 'PR-QAD-10208', 'September 01, 2003', 'Obsolete', 'PR-QAD-10208_Calibration.pdf', '2020-02-03 05:35:54'),
(125, 'Statistical Technique', '3', '51', '10', 'PR-QAD-10209', 'September 01, 2003', 'Active', 'PR-QAD-10209_Statistical_Technique.pdf', '2020-02-03 05:35:54'),
(126, 'Preparation of Manufacturing Guide', '3', '51', '10', 'PR-QAD-10213', 'September 01, 2003', 'Active', 'PR-QAD-10213_Preparation_of_Manufacturing_Guide.pdf', '2020-02-03 05:35:54'),
(127, 'Scrap Monitoring', '3', '51', '10', 'PR-QAD-10214', 'May 28, 2004', 'Obsolete', 'PR-QAD-10214_Scrap_Monitoring.pdf', '2020-02-03 05:35:54'),
(128, 'Utility Equipment Operation and Maintenance', '3', '51', '11', 'PR-PEM-10401', 'September 01, 2003', 'Obsolete', 'PR-PEM-10401_Utility_Equipment_Operation_and_Maintenance.pdf', '2020-02-03 05:35:54'),
(129, 'Preventive Maintenance', '3', '51', '11', 'PR-PEM-10402', 'September 01, 2003', 'Obsolete', 'PR-PEM-10402_Preventive_Maintenance.pdf', '2020-02-03 05:35:54'),
(130, 'Corrective Maintenance', '3', '51', '11', 'PR-PEM-10403', 'September 01, 2003', 'Obsolete', 'PR-PEM-10403_Corrective_Maintenance.pdf', '2020-02-03 05:35:54'),
(131, 'Modification and Installation of Machineries and Equipment', '3', '51', '11', 'PR-PEM-10404', 'September 01, 2003', 'Obsolete', 'PR-PEM-10404_Modification_and_Installation_of_Machineries_and_Equipment.pdf', '2020-02-03 05:35:54'),
(132, '3rd Party Calibration', '3', '51', '11', 'PR-PEM-10405', 'September 01, 2003', 'Obsolete', 'PR-PEM-10405_3rd_Party_Calibration.pdf', '2020-02-03 05:35:54'),
(133, 'Issuance of Tools', '3', '51', '11', 'PR-PEM-10407', 'September 01, 2003', 'Active', 'PR-PEM-10407_Issuance_of_Tools.pdf', '2020-02-03 05:35:54'),
(134, 'Issuance of Spare Parts and Supplies', '3', '51', '11', 'PR-PEM-10408', 'September 01, 2003', 'Active', 'PR-PEM-10408_Issuance_of_Spare_Parts_and_Supplies.pdf', '2020-02-03 05:35:54'),
(135, 'Preparation of Purchase Requisition', '3', '51', '11', 'PR-PEM-10409', 'September 01, 2003', 'Active', 'PR-PEM-10409_Preparation_of_Purchase_Requisition.pdf', '2020-02-03 05:35:54'),
(136, 'Receiving and Stocking of Purchased Items from Receiving Unit', '3', '51', '11', 'PR-PEM-10410', 'September 01, 2003', 'Active', 'PR-PEM-10410_Receiving_and_Stocking_of_Purchased_Items_from_Receiving_Unit.pdf', '2020-02-03 05:35:54'),
(137, 'Generators I and II Operation Procedure', '3', '51', '11', 'PR-PEM-10411', 'September 01, 2003', 'Obsolete', 'PR-PEM-10411_Generators_I_and_II_Operation_Procedure.pdf', '2020-02-03 05:35:54'),
(138, 'Generators I and II Maintenance Procedure', '3', '51', '11', 'PR-PEM-10412', 'September 01, 2003', 'Obsolete', 'PR-PEM-10412_Generators_I_and_II_Maintenance_Procedure.pdf', '2020-02-03 05:35:54'),
(139, 'Outsourcing Procedure', '3', '51', '11', 'PR-PEM-10413', 'September 01, 2003', 'Active', 'PR-PEM-10413_Outsourcing_Procedure.pdf', '2020-02-03 05:35:54'),
(141, 'Receiving of Locally Purchased Item', '3', '51', '8', 'PR-RCV-08301', 'February 14, 2000', 'Obsolete', 'PR-RCV-08301_Receiving_of_Locally_Purchased_Item.pdf', '2020-02-03 05:35:54'),
(142, 'Receiving of Imported Item', '3', '51', '8', 'PR-RCV-08302', 'February 14, 2000', 'Obsolete', 'PR-RCV-08302_Receiving_of_Imported_Item.pdf', '2020-02-03 05:35:54'),
(143, 'Storage and Handling of Scrap', '3', '51', '17', 'PR-RCV-08303', 'May 28, 2004', 'Obsolete', 'PR-RCV-08303_Storage_and_Handling_of_Scrap.pdf', '2020-02-03 05:35:54'),
(144, 'Scrap Disposal', '3', '51', '17', 'PR-RCV-08304', 'February 14, 2000', 'Obsolete', 'PR-RCV-08304_Scrap_Disposal.pdf', '2020-02-03 05:35:54'),
(145, 'Control of Nonconforming Products', '3', '51', '10', 'PR-NCP-12301', 'September 01, 2003', 'Obsolete', 'PR-NCP-12301_Control_of_Nonconforming_Products.pdf', '2020-02-03 05:35:54'),
(147, 'Work Instructions in Rejected Locally Purchase Item', '11', '62', '4', 'WI-PCH-08102', 'February 14, 2000', 'Active', 'WI-PCH-08102_Work_Instructions_in_Rejected_Locally_Purchase_Item.pdf', '2020-02-03 05:35:54'),
(148, 'Work Instructions in L/C Opening', '11', '62', '4', 'WI-PCH-08103', 'February 14, 2000', 'Active', 'WI-PCH-08103_Work_Instructions_in_LC_Opening.pdf', '2020-02-03 05:35:54'),
(149, 'Work Instructions in Evaluating Suppliers', '11', '62', '4', 'WI-PCH-08104', 'September 01, 2003', 'Active', 'WI-PCH-08104_Work_Instructions_in_Evaluating_Suppliers.pdf', '2020-02-03 05:35:54'),
(150, 'Work Instruction on Proper Handling and Storage of Copper and Aluminum', '11', '51', '8', 'WI-PPMC-07104', 'September 01, 2003', 'Active', 'WI-PPMC-07104_Work_Instruction_on_Proper_Handling_and_Storage_of_Copper_and_Aluminum.pdf', '2020-02-03 05:35:54'),
(152, 'Work Instruction for Proper Handling and Storage of PVC/PE/Nylon', '11', '51', '8', 'WI-PPMC-07105', 'September 01, 2003', 'Active', 'WI-PPMC-07105_Work_Instruction_For_Proper_Handling_and_Storage_of_PVC,PE,Nylon.pdf', '2020-02-03 05:35:54'),
(153, 'Work Instruction for Proper Handling and Storage of Wooden Reels', '11', '51', '8', 'WI-PPMC-07106', 'September 01, 2003', 'Active', 'WI-PPMC-07106_Work_Instruction_For_Proper_Handling_and_Storage_of_Wooden_Reels.pdf', '2020-02-03 05:35:54'),
(154, 'Work Instruction on Proper Handling and Storage of Carton Boxes', '11', '51', '8', 'WI-PPMC-07107', 'September 01, 2003', 'Active', 'WI-PPMC-07107_Work_Instruction_on_Proper_Handling_and_Storage_of_Carton_Boxes.pdf', '2020-02-03 05:35:54'),
(155, 'Work Instruction on Proper Requisitioning of Raw Materials and Packaging Materials', '11', '51', '8', 'WI-PPMC-07109', 'September 01, 2003', 'Active', 'WI-PPMC-07109_Work_Instruction_on_Proper_Requisitioning_of_Raw_Materials_and_Packaging_Materials.pdf', '2020-02-03 05:35:54'),
(156, 'Work Instruction on Proper Handling and Storage of PVC/PE and Nylon Colorants', '11', '51', '8', 'WI-PPMC-07110', 'September 01, 2003', 'Active', 'WI-PPMC-07110_Work_Instruction_on_Proper_Handling_and_Storage_of_PVC,PE_and_Nylon_Colorants.pdf', '2020-02-03 05:35:54'),
(157, 'Work Instruction on Proper Handling and Storage of Wooden and Plastic Spools', '11', '51', '8', 'WI-PPMC-07111', 'September 01, 2003', 'Active', 'WI-PPMC-07111_Work_Instruction_on_Proper_Handling_and_Storage_of_Wooden_and_Plastic_Spools.pdf', '2020-02-03 05:35:54'),
(161, 'Proper Handling and Storage of Insulating Varnish and Petroleum Jelly', '11', '51', '8', 'WI-PPMC-07112', 'September 01, 2003', 'Active', 'WI-PPMC-07112_Proper_Handling_and_Storage_of_Insulating_Varnish_and_Petroleum_Jelly.pdf', '2020-02-03 05:35:54'),
(162, 'Work Instruction for Proper Handling and Storage of Galvanized Steel Wire', '11', '51', '8', 'WI-PPMC-07113', 'September 01, 2003', 'Active', 'WI-PPMC-07113_Work_Instruction_for_Proper_Handling_and_Storage_of_Galvanized_Steel_Wire.pdf', '2020-02-03 05:35:54'),
(163, 'Di-Electric Strength Test-Dry', '11', '51', '10', 'WI-QAD-10201', 'September 01, 2003', 'Active', 'WI-QAD-10201_Di-Electric_Strength_Test-Dry.pdf', '2020-02-03 05:35:54'),
(164, 'Di-Electric Strength Test-Wet', '11', '51', '10', 'WI-QAD-10202', 'September 01, 2003', 'Active', 'WI-QAD-10202_Di-Electric_Strength_Test-Wet.pdf', '2020-02-03 05:35:54'),
(165, 'Work Instruction for Flammability Tester', '11', '51', '10', 'WI-QAD-10203', 'September 01, 2003', 'Active', 'WI-QAD-10203_Work_Instruction_for_Flammability_Tester.pdf', '2020-02-03 05:35:54'),
(166, 'Work Instruction for Microhmmeter Kelvin Bridge Tester Instrument', '11', '51', '10', 'WI-QAD-10204', 'September 01, 2003', 'Active', 'WI-QAD-10204_Work_Instruction_for_Microhmmeter_Kelvin_Bridge_Tester_Instrument.pdf', '2020-02-03 05:35:54'),
(169, 'Work Instruction for Insulation Resistance Testing Using the Biddle Megohmmeter 2.5/5.0 KV Tester', '11', '51', '10', 'WI-QAD-10205', 'September 01, 2003', 'Active', 'WI-QAD-10205_Insulation_Resistance_Testing_Using_the_Biddle_Megohmmeter_2.5,5.0_KV_Tester.pdf', '2020-02-03 05:35:54'),
(171, 'Work Instruction for Insulation Resistance Testing Using the Megohmmeter Model 5000 AEMC', '11', '51', '10', 'WI-QAD-10206', 'September 01, 2003', 'Active', 'WI-QAD-10206_Insulation_Resistance_Testing_Using_the_Megohmmeter_Model_5000_AEMC.pdf', '2020-02-03 05:35:54'),
(173, 'Work Instruction for Mechanical Testing- UTM', '11', '51', '10', 'WI-QAD-10207', 'September 01, 2003', 'Active', 'WI-QAD-10207_Work_Instruction_for_Mechanical_Testing_UTM.pdf', '2020-02-03 05:35:54'),
(174, 'Work Instruction for Wrap Test', '11', '51', '10', 'WI-QAD-10208', 'September 01, 2003', 'Active', 'WI-QAD-10208_Work_Instruction_for_Wrap_Test.pdf', '2020-02-03 05:35:54'),
(175, 'Heat Shock Test', '11', '51', '10', 'WI-QAD-10209', 'September 01, 2003', 'Active', 'WI-QAD-10209_Heat_Shock_Test.pdf', '2020-02-03 05:35:54'),
(176, 'Work Instruction for Air-Oven Aging Test', '11', '51', '10', 'WI-QAD-10210', 'September 01, 2003', 'Active', 'WI-QAD-10210_Work_Instruction_For_Air-Oven_Aging_Test.pdf', '2020-02-03 05:35:54'),
(177, 'Work Instruction for Continuity Test', '11', '51', '10', 'WI-QAD-10211', 'September 01, 2003', 'Active', 'WI-QAD-10211_Work_Instruction_For_Continuity_Test.pdf', '2020-02-03 05:35:54'),
(178, 'Work Instruction for Compound Flow Test of Jelly Compound', '11', '51', '10', 'WI-QAD-10212', 'September 01, 2003', 'Active', 'WI-QAD-10212_Work_Instruction_For_Compound_Flow_Test_of_Jelly_Compound.pdf', '2020-02-03 05:35:54'),
(179, 'Work Instruction for Water Penetration Testing', '11', '51', '10', 'WI-QAD-10213', 'September 01, 2003', 'Active', 'WI-QAD-10213_Work_Instruction_For_Water_Penetration_Testing.pdf', '2020-02-03 05:35:54'),
(180, 'Work Instruction for Bending Test on Aluminum Wires', '11', '51', '10', 'WI-QAD-10214', 'September 01, 2003', 'Active', 'WI-QAD-10214_Work_Instruction_For_Bending_Test_on_Aluminum_Wires.pdf', '2020-02-03 05:35:54'),
(181, 'Work Instruction for Telecommunication Cable Systematic Testing', '11', '51', '10', 'WI-QAD-10215', 'September 01, 2003', 'Active', 'WI-QAD-10215_Work_Instruction_For_Telecommunication_Cable_Systematic_Testing.pdf', '2020-02-03 05:35:54'),
(182, 'Work Instruction for Flexibility Test', '11', '51', '10', 'WI-QAD-10220', 'September 01, 2003', 'Active', 'WI-QAD-10220_Work_Instruction_For_Flexibility_Test.pdf', '2020-02-03 05:35:54'),
(183, 'Partial Discharge Extinction Level Test', '11', '51', '10', 'WI-QAD-10221', 'September 01, 2003', 'Active', 'WI-QAD-10221_Partial_Discharge_Extinction_Level_Test.pdf', '2020-02-03 05:35:54'),
(184, 'Work Instruction for Vernier Caliper', '11', '51', '10', 'WI-QAD-10223', 'September 01, 2003', 'Active', 'WI-QAD-10223_Work_Instruction_For_Vernier_Caliper.pdf', '2020-02-03 05:35:54'),
(192, 'Preparation of Multi-Processed Wires and Cables for the Preliminary and Final Testing', '11', '51', '10', 'WI-QAD-10224', 'September 01, 2003', 'Active', 'Preparation_of_Multi_Processed_Wires_and_Cables_for_the_Preliminary_and_Final_Testing.pdf', '2020-02-03 05:35:54'),
(193, 'Work Instruction for Stripping of Telephone Conductors', '11', '51', '10', 'WI-QAD-10225', 'September 01, 2003', 'Active', 'WI-QAD-10225_Work_Instruction_For_Stripping_of_Telephone_Conductors.pdf', '2020-02-03 05:35:54'),
(194, 'Work Instruction for Profile Projector Instrument', '11', '51', '10', 'WI-QAD-10227', 'September 01, 2003', 'Active', 'WI-QAD-10227_Work_Instruction_For_Profile_Projector_Instrument.pdf', '2020-02-03 05:35:54'),
(195, 'Work Instruction for Outside Micrometer', '11', '51', '10', 'WI-QAD-10230', 'September 01, 2003', 'Active', 'WI-QAD-10230_Work_Instruction_For_Outside_Micrometer.pdf', '2020-02-03 05:35:54'),
(196, 'Work Instruction for Non-Conforming Material', '11', '51', '10', 'WI-QAD-10231', 'September 01, 2003', 'Obsolete', 'WI-QAD-10231_Work_Instruction_For_Non-Conforming_Material.pdf', '2020-02-03 05:35:54'),
(197, 'Work Instruction or Viscosity Measurement Using Viscometer and Thermosell', '11', '51', '10', 'WI-QAD-10236', 'September 01, 2003', 'Active', 'WI-QAD-10236_Work_Instruction_For_Viscosity_Measurement_Using_Viscometer_and_Thermosell.pdf', '2020-02-03 05:35:54'),
(198, 'Work Instruction for Hot Plate Oven', '11', '51', '10', 'WI-QAD-10237', 'September 01, 2003', 'Active', 'WI-QAD-10237_Work_Instruction_For_Hot_Plate_Oven.pdf', '2020-02-03 05:35:54'),
(199, 'Work Instruction for Wooden Reels Inspection', '11', '51', '10', 'WI-QAD-10238', 'September 01, 2003', 'Active', 'WI-QAD-10238_Work_Instruction_For_Wooden_Reels_Inspection.pdf', '2020-02-03 05:35:54'),
(200, 'Work Instruction of Constant Temperature Bath', '11', '51', '10', 'WI-QAD-10241', 'September 01, 2003', 'Active', 'WI-QAD-10241_Work_Instruction_of_Constant_Temperature_Bath.pdf', '2020-02-03 05:35:54'),
(203, 'Work Instruction for 2 Roll Mill and Molding for the Preparation of Plastic Square from PVC and PE P', '11', '51', '10', 'WI-QAD-10242', 'September 01, 2003', 'Active', 'WI-QAD-10242.pdf', '2020-02-03 05:35:54'),
(205, 'Work Instruction for HP Model 4329A High Resistance Meter with 16008A Model Resistivity Cell', '11', '51', '10', 'WI-QAD-10243', 'September 01, 2003', 'Active', 'WI-QAD-10243.pdf', '2020-02-03 05:35:54'),
(206, 'Work Instruction for Air Circulating Oven', '11', '51', '10', 'WI-QAD-10244', 'September 01, 2003', 'Active', 'WI-QAD-10244_Work_Instruction_For_Air_Circulating_Oven.pdf', '2020-02-03 05:35:54'),
(207, 'Work Instruction for Shore \"A\" Hardness Tester for PVC and PE Hardness Test', '11', '51', '10', 'WI-QAD-10245', 'September 01, 2003', 'Active', 'WI-QAD-10245_Work_Instruction_For_Shore_A_Hardness_Tester_for_PVC_and_PE_Hardness_Test.pdf', '2020-02-03 05:35:54'),
(208, 'Work Instruction for ANA-2 Electrolytic Analysis Apparatus', '11', '51', '10', 'WI-QAD-10247', 'September 01, 2003', 'Active', 'WI-QAD-10247_Work_Instruction_For_ANA-2_Electrolytic_Analysis_Apparatus.pdf', '2020-02-03 05:35:54'),
(209, 'Work Instruction for Physical Visual Inspection', '11', '51', '10', 'WI-QAD-10249', 'September 01, 2003', 'Active', 'WI-QAD-10249_Work_Instruction_For_Physical_Visual_Inspection.pdf', '2020-02-03 05:35:54'),
(210, 'Work Instruction for Centrifuge', '11', '51', '10', 'WI-QAD-10250', 'September 01, 2003', 'Active', 'WI-QAD-10250_Work_Instruction_for_Centrifuge.pdf', '2020-02-03 05:35:54'),
(211, 'Work Instruction for Intermediate Mill', '11', '51', '10', 'WI-QAD-10251', 'September 01, 2003', 'Active', 'WI-QAD-10251_Work_Instruction_for_Intermediate_Mill.pdf', '2020-02-03 05:35:54'),
(213, 'Work Instruction for Measuring Total Fatty Matter of Wire Drawing Lubricant by Refractometer', '11', '51', '10', 'WI-QAD-10253', 'September 01, 2003', 'Active', 'WI-QAD-10253.pdf', '2020-02-03 05:35:54'),
(214, 'Work Instruction for Thermometer', '11', '51', '10', 'WI-QAD-10255', 'September 01, 2003', 'Active', 'WI-QAD-10255_Work_Instruction_for_Thermometer.pdf', '2020-02-03 05:35:54'),
(215, 'Work Instruction for Cable Sealing and Securing', '11', '51', '10', 'WI-QAD-10256', 'September 01, 2003', 'Active', 'WI-QAD-10256_Work_Instruction_for_Cable_Sealing_and_Securing.pdf', '2020-02-03 05:35:54'),
(216, 'Work Instruction Statistical Control', '11', '51', '10', 'WI-QAD-10257', 'September 01, 2003', 'Active', 'WI-QAD-10257_Work_Instruction_Statistical_Control.pdf', '2020-02-03 05:35:54'),
(217, 'Work Instruction for Pareto Diagram by Phenomena', '11', '51', '10', 'WI-QAD-10258', 'September 01, 2003', 'Active', 'WI-QAD-10258_Work_Instruction_For_Pareto_Diagram_by_Phenomena.pdf', '2020-02-03 05:35:54'),
(218, 'Work Instruction in Preparation and Cutting of Cables Prior to Delivery', '11', '51', '10', 'WI-QAD-10259', 'September 01, 2003', 'Active', 'WI-QAD-10259_Work_Instruction_in_Preparation_and_Cutting_of_Cables_Prior_to_Delivery.pdf', '2020-02-03 05:35:54'),
(219, 'Transferring of Finished Products', '11', '51', '10', 'WI-QAD-10260', 'October 20, 2004', 'Active', 'WI-QAD-10260_Transferring_of_Finished_Products.pdf', '2020-02-03 05:35:54'),
(220, 'Work Instruction in Preparation of Route Structure Intended for Manufacturing Guide', '11', '51', '10', 'WI-QAD-10261', 'October 03, 2003', 'Active', 'WI-QAD-10261_Work_Instruction_in_Preparation_of_Route_Structure_Intended_for_Manufacturing_Guide.pdf', '2020-02-03 05:35:54'),
(221, 'Work Instruction for Visual Inspection of Nylon Compound, Crosslink Polyethylene Compound PVC Master', '11', '51', '10', 'WI-QAD-10265', 'March 16, 2005', 'Active', 'WI-QAD-10265.pdf', '2020-02-03 05:35:54'),
(222, 'Work Instruction to Determine the Drop Melting Point of Jelly Compound', '11', '51', '10', 'WI-QAD-10266', 'February 20, 2007', 'Active', 'WI-QAD-10266_Work_Instruction_to_Determine_the_Drop_Melting_Point_of_Jelly_Compound.pdf', '2020-02-03 05:35:54'),
(223, 'Work Instruction for In-House Calibration of Machine Counter', '11', '51', '10', 'WI-QAD-10267', 'February 23, 2007', 'Obsolete', 'WI-QAD-10267_Work_Instruction_For_In-House_Calibration_of_Machine_Counter.pdf', '2020-02-03 05:35:54'),
(224, 'Work Instruction on AEC Cooling Tower Operation', '11', '51', '11', 'WI-PEM-10401', 'February 14, 2000', 'Active', 'WI-PEM-10401_Work_Instruction_on_AEC_Cooling_Tower_Operation.pdf', '2020-02-03 05:35:54'),
(225, 'Work Instruction on Centralized Air System Operation', '11', '51', '11', 'WI-PEM-10402', 'February 14, 2000', 'Active', 'WI-PEM-10402_Work_Instruction_on_Centralized_Air_System_Operation.pdf', '2020-02-03 05:35:54'),
(226, 'Work Instruction on Manual Starting of Generator Set', '11', '51', '11', 'WI-PEM-10403', 'February 14, 2000', 'Active', 'WI-PEM-10403_Work_Instruction_on_Manual_Starting_of_Generator_Set.pdf', '2020-02-03 05:35:54'),
(227, 'Work Instruction on Shutting Off Generator Set', '11', '51', '11', 'WI-PEM-10404', 'February 14, 2000', 'Active', 'WI-PEM-10404_Work_Instruction_on_Shutting_Off_Generator_Set.pdf', '2020-02-03 05:35:54'),
(228, 'Work Instruction on Steam Generator Operation', '11', '51', '11', 'WI-PEM-10405', 'February 14, 2000', 'Active', 'WI-PEM-10405_Work_Instruction_on_Steam_Generator_Operation.pdf', '2020-02-03 05:35:54'),
(229, 'Work Instruction for Utility Equipment Scheduled Maintenance', '11', '51', '11', 'WI-PEM-10406', 'February 14, 2000', 'Active', 'WI-PEM-10406_Work_Instruction_For_Utility_Equipment_Scheduled_Maintenance.pdf', '2020-02-03 05:35:54'),
(230, 'Work Instruction on Water Supply System Pump Operation', '11', '51', '11', 'WI-PEM-10407', 'February 14, 2000', 'Active', 'WI-PEM-10407_Work_Instruction_on_Water_Supply_System_Pump_Operation.pdf', '2020-02-03 05:35:54'),
(231, 'Work Instruction on Water Chiller Units Operation', '11', '51', '11', 'WI-PEM-10408', 'February 14, 2000', 'Active', 'WI-PEM-10408_Work_Instruction_on_Water_Chiller_Units_Operation.pdf', '2020-02-03 05:35:54'),
(232, 'Work Instruction on Preparation of Annual PM Plan', '11', '51', '11', 'WI-PEM-10409', 'February 14, 2000', 'Active', 'WI-PEM-10409_Work_Instruction_on_Preparation_of_Annual_PM_Plan.pdf', '2020-02-03 05:35:54'),
(233, 'Work Instruction on Power Sub-Station Monitoring', '11', '51', '11', 'WI-PEM-10410', 'February 14, 2000', 'Active', 'WI-PEM-10410_Work_Instruction_on_Power_Sub-Station_Monitoring.pdf', '2020-02-03 05:35:54'),
(234, 'Work Instruction on Operation of Sub-Station Manual Transfer Switch (MTS)', '11', '51', '11', 'WI-PEM-10411', 'February 14, 2000', 'Active', 'WI-PEM-10411_Work_Instruction_on_Operation_of_Sub-Station_Manual_Transfer_Switch_(MTS).pdf', '2020-02-03 05:35:54'),
(235, 'Preparation of Miscellaneous Delivery Receipt', '11', '50', '18', 'WI-RCV-08302', 'February 14, 2000', 'Obsolete', 'WI-RCV-08302_Preparation_of_Miscellaneous_Delivery_Receipt.pdf', '2020-02-03 05:35:54'),
(236, 'Acquiring Competent Employees', '11', '62', '21', 'WI-PRL-10501', 'September 01, 2003', 'Active', 'WI-PRL-10501_Acquiring_Competent_Employees.pdf', '2020-02-03 05:35:54'),
(237, 'Holding Competent Employees', '11', '62', '21', 'WI-PRL-10502', 'September 01, 2003', 'Active', 'WI-PRL-10502_Holding_Competent_Employees.pdf', '2020-02-03 05:35:54'),
(238, 'Developing Employees', '11', '62', '21', 'WI-PRL-10503', 'September 01, 2003', 'Active', 'WI-PRL-10503_Developing_Employees.pdf', '2020-02-03 05:35:54'),
(239, 'Labor Relations', '11', '62', '21', 'WI-PRL-10504', 'September 01, 2003', 'Active', 'WI-PRL-10504_Labor_Relations.pdf', '2020-02-03 05:35:54'),
(240, 'Program Administration', '11', '62', '21', 'WI-PRL-10505', 'September 01, 2003', 'Active', 'WI-PRL-10505_Program_Administration.pdf', '2020-02-03 05:35:54'),
(241, 'Document Request Form', '13', '62', '3', 'QR-QMS-001', 'March 30, 2009', 'Active', 'QR-QMS-001_Document_Request_Form.pdf', '2020-02-03 05:35:54'),
(242, 'Master List of Controlled Documents', '13', '62', '3', 'QR-QMS-003', 'March 30, 2009', 'Obsolete', 'QR-QMS-003_Master_List_of_Controlled_Documents.pdf', '2020-02-03 05:35:54'),
(243, 'Master List of Quality Records', '13', '62', '3', 'QR-QMS-004', 'March 30, 2009', 'Obsolete', 'QR-QMS-004_Master_List_of_Quality_Records.pdf', '2020-02-03 05:35:54'),
(244, 'QMS Document Format', '13', '62', '3', 'QR-QMS-005', 'April 01, 2009', 'Active', 'QR-QMS-005_QMS_Document_Format.pdf', '2020-02-03 05:35:54'),
(245, 'Externally Generated Document Master List', '13', '62', '3', 'QR-QMS-006', 'July 01, 2009', 'Obsolete', 'QR-QMS-006_Externally_Generated_Document_Master_List.pdf', '2020-02-03 05:35:54'),
(246, 'Authority to Dispose Archive Records', '13', '62', '3', 'QR-QMS-008', 'July 01, 2009', 'Obsolete', 'QR-QMS-008_Authority_to_Dispose_Archive_Records.pdf', '2020-02-03 05:35:54'),
(247, 'Annual Audit Plan', '13', '62', '3', 'QR-QMS-011', 'June 30, 2009', 'Active', 'QR-QMS-011_Annual_Audit_Plan.pdf', '2020-02-03 05:35:54'),
(248, 'Audit Schedule', '13', '62', '3', 'QR-QMS-012', 'June 30, 2009', 'Active', 'QR-QMS-012_Audit_Schedule.pdf', '2020-02-03 05:35:54'),
(249, 'IQA Checklist', '13', '62', '3', 'QR-QMS-013', 'July 01, 2009', 'Active', 'QR-QMS-013_IQA_Checklist.pdf', '2020-02-03 05:35:54'),
(251, 'IQA Report (Form)', '13', '62', '3', 'QR-QMS-014', 'July 01, 2009', 'Active', 'QR-QMS-014_IQA_Report_(form).pdf', '2020-02-03 05:35:54'),
(252, 'Syteline Operation Procedure', '13', '62', '3', 'QR-QMS-015', 'April 01, 2009', 'Obsolete', 'QR-QMS-015_Syteline_Operation_Procedure.pdf', '2020-02-03 05:35:54'),
(253, 'Verification Report', '13', '62', '3', 'QR-QMS-016', 'June 18, 2009', 'Obsolete', 'QR-QMS-016_Verification_Report.pdf', '2020-02-03 05:35:54'),
(254, 'Summary of Internal Quality Audit', '13', '62', '3', 'QR-QMS-017', 'July 01, 2009', 'Active', 'QR-QMS-017_Summary_of_Internal_Quality_Audit.pdf', '2020-02-03 05:35:54'),
(259, 'Corrective / Preventive Action Report (CPAR)', '13', '62', '3', 'QR-QMS-018', 'June 01, 2009', 'Obsolete', 'QR-QMS-018.pdf', '2020-02-03 05:35:54'),
(260, 'Mass Document Registration Form', '13', '62', '3', 'QR-QMS-020', 'June 24, 2009', 'Obsolete', 'QR-QMS-020_Mass_Document_Registration_Form.pdf', '2020-02-03 05:35:54'),
(261, 'Work Instruction Format', '13', '62', '3', 'QR-QMS-021', 'June 24, 2009', 'Active', 'QR-QMS-021_Work_Instruction_Format.pdf', '2020-02-03 05:35:54'),
(262, 'IMTE Masterlist', '13', '62', '3', 'QR-QMS-022', 'July 21, 2009', 'Obsolete', 'QR-QMS-022_IMTE_Masterlist.pdf', '2020-02-03 05:35:54'),
(263, 'Annual Calibration Plan', '13', '62', '3', 'QR-QMS-025', 'July 21, 2009', 'Active', 'QR-QMS-025_Annual_Calibration_Plan.pdf', '2020-02-03 05:35:54'),
(264, 'Box Record Index', '13', '62', '3', 'QR-QMS-027', 'January 04, 2010', 'Active', 'QR-QMS-027_Box_Record_Index.pdf', '2020-02-03 05:35:54'),
(265, 'Reference Information Form', '13', '62', '21', 'QR-PRL-10503', 'February 14, 2000', 'Active', 'QR-PRL-10503_Reference_Information_Form.pdf', '2020-02-03 05:35:54'),
(266, 'Contract of Temporary Employment', '13', '62', '21', 'QR-PRL-10505', 'February 14, 2000', 'Active', 'QR-PRL-10505_Contract_of_Temporary_Employment.pdf', '2020-02-03 05:35:54'),
(267, 'Performance Rating Report', '13', '62', '21', 'QR-PRL-10508', 'January 01, 2001', 'Obsolete', 'QR-PRL-10508_Performance_Rating_Report.pdf', '2020-02-03 05:35:54'),
(268, 'Leave of Absence Form', '13', '62', '21', 'QR-PRL-10509', 'February 14, 2000', 'Obsolete', 'QR-PRL-10509_Leave_of_Absence_Form.pdf', '2020-02-03 05:35:54'),
(269, 'Personnel Movement', '13', '62', '21', 'QR-PRL-10510', 'February 14, 2000', 'Obsolete', 'QR-PRL-10510_Personnel_Movement.pdf', '2020-02-03 05:35:54'),
(270, 'Company Loan Application', '13', '62', '21', 'QR-PRL-10511', 'February 14, 2000', 'Active', 'QR-PRL-10511_Company_Loan_Application.pdf', '2020-02-03 05:35:54'),
(271, 'Accident Report', '13', '62', '21', 'QR-PRL-10512', 'February 14, 2000', 'Active', 'QR-PRL-10512_Accident_Report.pdf', '2020-02-03 05:35:54'),
(272, 'Request for Change Shift', '13', '62', '21', 'QR-PRL-10519', 'February 14, 2000', 'Active', 'QR-PRL-10519_Request_for_Change_Shift.pdf', '2020-02-03 05:35:54'),
(273, 'Permit to Leave the Company Premises', '13', '62', '21', 'QR-PRL-10520', 'February 14, 2000', 'Active', 'QR-PRL-10520_Permit_to_Leave_Company_Premises.pdf', '2020-02-03 05:35:54'),
(274, 'Request for Undertime', '13', '62', '21', 'QR-PRL-10521', 'February 14, 2000', 'Active', 'QR-PRL-10521_Request_for_Undertime.pdf', '2020-02-03 05:35:54'),
(275, 'Employment Requirement List', '13', '62', '21', 'QR-PRL-10527', 'February 14, 2000', 'Active', 'QR-PRL-10527_Employment_Requirement_List.pdf', '2020-02-03 05:35:54'),
(276, 'Tool and Die Section- Transaction Record', '13', '51', '9', 'QR-PED-10103', 'September 01, 2003', 'Active', 'QR-PED-10103_Tool_and_Die_Section-Transaction_Record.pdf', '2020-02-03 05:35:54'),
(277, 'Tool and Die Inventory- Spare Parts', '13', '51', '9', 'QR-PED-10104', 'September 01, 2003', 'Obsolete', 'QR-PED-10104_Tool_and_Die_Inventory-Spare_Parts.pdf', '2020-02-03 05:35:54'),
(278, 'Tool and Die- Withdrawal Borrower Slip', '13', '51', '9', 'QR-PED-10105', 'September 01, 2003', 'Obsolete', 'QR-PED-10105_Tool_and_Die-Withdrawal_Borrower_Slip.pdf', '2020-02-03 05:35:54'),
(279, 'Tool and Die Inventory- Printing Wheel', '13', '51', '9', 'QR-PED-10106', 'September 01, 2003', 'Obsolete', 'QR-PED-10106_Tool_and_Die_Inventory-Printing_Wheel.pdf', '2020-02-03 05:35:54'),
(280, 'Tool and Die Section- Work Order Form', '13', '51', '9', 'QR-PED-10108', 'September 01, 2003', 'Active', 'QR-PED-10108_Tool_and_Die_Section-Work_Order_Form.pdf', '2020-02-03 05:35:54'),
(281, 'Tool and Die Inventory Card (Tip and Die)', '13', '51', '9', 'QR-PED-10109', 'April 28, 2005', 'Obsolete', 'QR-PED-10109_Tool_and_Die_Inventory_Card_(Tip_and_Die).pdf', '2020-02-03 05:35:54'),
(282, 'Equipment History', '13', '51', '11', 'QR-PEM-10402', 'February 14, 2000', 'Active', 'QR-PEM-10402_Equipment_History.pdf', '2020-02-03 05:35:54'),
(283, 'Work Order Form', '13', '51', '11', 'QR-PEM-10403', 'February 14, 2000', 'Active', 'QR-PEM-10403_Work_Order_Form.pdf', '2020-02-03 05:35:54'),
(284, 'Stockroom Withdrawal Slip', '13', '51', '11', 'QR-PEM-10409', 'February 14, 2000', 'Obsolete', 'QR-PEM-10409_Stockroom_Withdrawal_Slip.pdf', '2020-02-03 05:35:54'),
(285, 'Equipment / Tool Slip', '13', '51', '11', 'QR-PEM-10410', 'February 14, 2000', 'Active', 'QR-PEM-10410_Equipment_Tool_Slip.pdf', '2020-02-03 05:35:54'),
(286, 'Pre-Purchased Requisition', '13', '51', '11', 'QR-PEM-10411', 'February 14, 2000', 'Active', 'QR-PEM-10411_Pre-Purchased_Requisition.pdf', '2020-02-03 05:35:54'),
(287, 'Genset Operation Hourly Monitoring Logsheet', '13', '51', '11', 'QR-PEM-10417', 'July 01, 2006', 'Active', 'QR-PEM-10417_Genset_Operation_Hourly_Monitoring_Logsheet.pdf', '2020-02-03 05:35:54'),
(288, 'Maintenance Checklist Before Starting Engine', '13', '51', '11', 'QR-PEM-10420', 'February 14, 2000', 'Active', 'QR-PEM-10420_Maintenance_Checklist_Before_Starting_Engine.pdf', '2020-02-03 05:35:54'),
(289, 'Generator Set After Operation Inspection Checklist', '13', '51', '11', 'QR-PEM-10421', 'February 14, 2000', 'Active', 'QR-PEM-10421_Generator_Set_After_Operation_Inspection_Checksheet.pdf', '2020-02-03 05:35:54'),
(290, 'Deep Well Pump Raw Water Logsheet', '13', '51', '11', 'QR-PEM-10422', 'July 01, 2002', 'Active', 'QR-PEM-10422_Deep_Well_Pump_Raw_Water_Logsheet.pdf', '2020-02-03 05:35:54'),
(291, 'Substation Monitoring', '13', '51', '11', 'QR-PEM-10433', 'February 14, 2000', 'Active', 'QR-PEM-10433_Substation_Monitoring.pdf', '2020-02-03 05:35:54'),
(292, 'Weekly Machine Schedule', '13', '51', '8', 'QR-PPMC-07112', 'September 01, 2003', 'Active', 'QR-PPMC-07112_Weekly_Machine_Schedule.pdf', '2020-02-03 05:35:54'),
(293, 'Raw Material / Packaging Material Returns Report', '13', '51', '8', 'QR-PPMC-07122', 'September 01, 2003', 'Active', 'QR-PPMC-07122_Raw_Material_Packaging_Material_Returns_Report.pdf', '2020-02-03 05:35:54'),
(294, 'Packaging Materials Inventory List', '13', '51', '8', 'QR-PPMC-07123', 'September 01, 2003', 'Active', 'QR-PPMC-07123_Packaging_Materials_Inventory_List.pdf', '2020-02-03 05:35:54'),
(295, 'Raw Materials Inventory and Consumption Report', '13', '51', '8', 'QR-PPMC-07124', 'September 01, 2003', 'Active', 'QR-PPMC-07124_Raw_Materials_Inventory_and_Consumption_Report.pdf', '2020-02-03 05:35:54'),
(296, 'Inventory Card', '13', '51', '8', 'QR-PPMC-07125', 'September 01, 2003', 'Active', 'QR-PPMC-07125_Inventory_Card.pdf', '2020-02-03 05:35:54'),
(297, 'Requisition Slip', '13', '51', '8', 'QR-PPMC-07126', 'September 01, 2003', 'Active', 'QR-PPMC-07126_Requisition_Slip.pdf', '2020-02-03 05:35:54'),
(298, 'Order Form', '13', '51', '8', 'QR-PPMC-07127', 'September 01, 2003', 'Active', 'QR-PPMC-07127_Order_Form.pdf', '2020-02-03 05:35:54'),
(300, 'Raw Material / Packaging Material Issuance Report', '13', '51', '8', 'QR-PPMC-07128', 'September 01, 2003', 'Active', 'QR-PPMC-07128_Raw_Material_Packaging_Material_Issuance_Report.pdf', '2020-02-03 05:35:54'),
(301, 'Inventory Adjustment Slip (Raw and Packaging Materials)', '13', '51', '8', 'QR-PPMC-07129', 'September 01, 2003', 'Active', 'QR-PPMC-07129_Inventory_Adjustment_Slip_(Raw_and_Packaging_Materials).pdf', '2020-02-03 05:35:54'),
(302, 'Raw Material / Packaging Material Requisition Slip', '13', '51', '8', 'QR-PPMC-07130', 'September 01, 2003', 'Active', 'QR-PPMC-07130_Raw_Material_Packaging_Material_Requisition_Slip.pdf', '2020-02-03 05:35:54'),
(303, 'Raw Material / Packaging Material Return Slip', '13', '51', '8', 'QR-PPMC-07131', 'September 01, 2003', 'Active', 'QR-PPMC-07131_Raw_Material_Packaging_Material_Return_Slip.pdf', '2020-02-03 05:35:54'),
(304, 'Raw Material Control Sheet', '13', '51', '8', 'QR-PPMC-07132', 'September 01, 2003', 'Active', 'QR-PPMC-07132_Raw_Material_Control_Sheet.pdf', '2020-02-03 05:35:54'),
(305, 'Defective Materials Report', '13', '51', '8', 'QR-PPMC-07133', 'September 01, 2003', 'Active', 'QR-PPMC-07133_Defective_Materials_Report.pdf', '2020-02-03 05:35:54'),
(306, 'Material Acceptance and Evaluation: Copper Tape', '13', '51', '10', 'QR-QAD-10237', 'January 21, 2008', 'Active', 'QR-QAD-10237_Material_Acceptance_and_Evaluation-Copper_Tape.pdf', '2020-02-03 05:35:54'),
(307, 'Material Acceptance and Evaluation: Copper Rod', '13', '51', '10', 'QR-QAD-10238', 'January 21, 2008', 'Active', 'QR-QAD-10238_Material_Acceptance_and_Evaluation-Copper_Rod.pdf', '2020-02-03 05:35:54'),
(308, 'Material Acceptance and Evaluation: Copper Clad', '13', '51', '10', 'QR-QAD-10239', 'January 21, 2008', 'Active', 'QR-QAD-10239_Material_Acceptance_and_Evaluation-Copper_Clad.pdf', '2020-02-03 05:35:54'),
(309, 'Material Acceptance and Evaluation: Messenger Wire', '13', '51', '10', 'QR-QAD-10240', 'January 21, 2008', 'Active', 'QR-QAD-10240_Material_Acceptance_and_Evaluation-Messenger_Wire.pdf', '2020-02-03 05:35:54'),
(311, 'Material Acceptance and Evaluation- Galvanized Steel Wire', '13', '51', '10', 'QR-QAD-10241', 'January 21, 2008', 'Active', 'QR-QAD-10241_Material_Acceptance_and_Evaluation-Galvanized_Steel_Wire.pdf', '2020-02-03 05:35:54');
INSERT INTO `masterlist` (`procedureid`, `documenttitle`, `documenttype`, `division`, `department`, `docnum`, `effectivitydate`, `status`, `filename`, `create_date`) VALUES
(312, 'Material Acceptance and Evaluation- Polyvinyl Chloride Compound (Unaged)', '13', '51', '10', 'QR-QAD-10242', 'January 21, 2008', 'Active', 'QR-QAD-10242_Material_Acceptance_and_Evaluation-Polyvinyl_Chloride_Compound_(Unaged).pdf', '2020-02-03 05:35:54'),
(313, 'Material Acceptance and Evaluation- Polyvinyl Chloride Compound (Aged)', '13', '51', '10', 'QR-QAD-10243', 'January 21, 2008', 'Active', 'QR-QAD-10243_Material_Acceptance_and_Evaluation-Polyvinyl_Chloride_Compound_(Aged).pdf', '2020-02-03 05:35:54'),
(314, 'Material Acceptance and Evaluation- Polyethylene Compound', '13', '51', '10', 'QR-QAD-10244', 'January 21, 2008', 'Active', 'QR-QAD-10244_Material_Acceptance_and_Evaluation-Polyethylene_Compound.pdf', '2020-02-03 05:35:54'),
(315, 'Material Acceptance and Evaluation- Aluminum Rod', '13', '51', '10', 'QR-QAD-10245', 'January 21, 2008', 'Obsolete', 'QR-QAD-10245_Material_Acceptance_and_Evaluation-Aluminum_Rod.pdf', '2020-02-03 05:35:54'),
(316, 'Material Acceptance and Evaluation- Plastic Coated Aluminum Shield', '13', '51', '10', 'QR-QAD-10246', 'January 21, 2008', 'Active', 'QR-QAD-10246_Material_Acceptance_and_Evaluation-Plastic_Coated_Aluminum_Shield.pdf', '2020-02-03 05:35:54'),
(317, 'Material Acceptance and Evaluation- Jelly Compound', '13', '51', '10', 'QR-QAD-10247', 'January 21, 2008', 'Active', 'QR-QAD-10247_Material_Acceptance_and_Evaluation-Jelly_Compound.pdf', '2020-02-03 05:35:54'),
(318, 'Summary of Received Materials', '13', '51', '10', 'QR-QAD-10249', 'September 01, 2003', 'Obsolete', 'QR-QAD-10249_Summary_of_Received_Materials.pdf', '2020-02-03 05:35:54'),
(320, 'Finance Division', '9', '62', '22', 'OC-FIN-001', 'July 20, 2009', 'Obsolete', 'OC-FIN-001_Finance_Division.pdf', '2020-02-03 05:35:54'),
(321, 'Human Resources Development Department', '9', '62', '21', 'OC-HRD-001', 'July 20, 2009', 'Active', 'OC-HRD-001_Human_Resources_Development_Department.pdf', '2020-02-03 05:35:54'),
(322, 'Internal Audit Department', '9', '62', '1', 'OC-IAD-001', 'July 20, 2009', 'Active', 'OC-IAD-001_Internal_Audit_Department.pdf', '2020-02-03 05:35:54'),
(323, 'Manufacturing Division (with names)', '9', '62', '22', 'OC-MFG-001', 'July 20, 2009', 'Active', 'OC-MFG-001_Manufacturing_Division.pdf', '2020-02-03 05:35:54'),
(324, 'Production Engineering Department', '9', '51', '9', 'OC-PED-001', 'July 20, 2009', 'Active', 'OC-PED-001_Production_Engineering_Department.pdf', '2020-02-03 05:35:54'),
(325, 'Plant Engineering and Maintenance Department', '9', '51', '11', 'OC-PEM-001', 'July 20, 2009', 'Obsolete', 'OC-PEM-001_Plant_Engineering_and_Maintenance_Department.pdf', '2020-02-03 05:35:54'),
(326, 'Production Planning and Material Control Department', '9', '51', '8', 'OC-PPM-001', 'July 20, 2009', 'Obsolete', 'OC-PPM-001_Production_Planning_and_Material_Control.pdf', '2020-02-03 05:35:54'),
(327, 'Purchasing Department', '9', '62', '4', 'OC-PUR-001', 'July 20, 2009', 'Active', 'OC-PUR-001_Purchasing_Department.pdf', '2020-02-03 05:35:54'),
(328, 'Quality Assurance Department', '9', '51', '10', 'OC-QAD-001', 'July 20, 2009', 'Obsolete', 'OC-QAD-001_Quality_Assurance_Department.pdf', '2020-02-03 05:35:54'),
(329, 'Quality Management System Department', '9', '62', '3', 'OC-QMS-001', 'July 20, 2009', 'Obsolete', 'OC-QMS-001_Quality_Management_System.pdf', '2020-02-03 05:35:54'),
(330, 'Sales and Marketing Division', '9', '62', '22', 'OC-SMK-001', 'July 20, 2009', 'Obsolete', 'OC-SMK-001_Sales_and_Marketing_Division.pdf', '2020-02-03 05:35:54'),
(331, 'Summary Report for Non-Conforming Items', '13', '51', '10', 'QR-QAD-10201', 'September 01, 2003', 'Active', 'QR-QAD-10201_Summary_Report_for_Non-Conforming_Items.pdf', '2020-02-03 05:35:54'),
(332, 'Inspection Report of Non-Conforming Item', '13', '51', '10', 'QR-QAD-10202', 'September 01, 2003', 'Obsolete', 'QR-QAD-10202_Inspection_Report_of_Non-Conforming_Item.pdf', '2020-02-03 05:35:54'),
(333, 'Test Report- Duracord Cable- SJT Type', '13', '51', '10', 'QR-QAD-10203', 'September 01, 2003', 'Active', 'QR-QAD-10203_Test_Report-Duracord_Cable-SJT_Type.pdf', '2020-02-03 05:35:54'),
(334, 'Final Test Report- SPT Parallel Flat Cord', '13', '51', '10', 'QR-QAD-10204', 'September 01, 2003', 'Active', 'QR-QAD-10204_Final_Test_Report-SPT_Parallel_Flat_Cord.pdf', '2020-02-03 05:35:54'),
(335, 'Final Test Report- PVC Insulated Low Voltage Cables for Road Vehicles', '13', '51', '10', 'QR-QAD-10205 ', 'September 01, 2003', 'Active', 'QR-QAD-10205_Final_Test_Report-PVC_Insulated_Low_Voltage_Cables_for_Road_Vehicles.pdf', '2020-02-03 05:35:54'),
(336, 'Test Report- Control Multiple Conductors Cable', '13', '51', '10', 'QR-QAD-10206', 'September 01, 2003', 'Active', 'QR-QAD-10206_Test_Report-Control_Multiple_Conductors_Cable.pdf', '2020-02-03 05:35:54'),
(337, 'Final Test Result- Power Cable', '13', '51', '10', 'QR-QAD-10207', 'September 01, 2003', 'Active', 'QR-QAD-10207_Final_Test_Result-Power_Cable.pdf', '2020-02-03 05:35:54'),
(338, 'Test Report- Lead Out Wire', '13', '51', '10', 'QR-QAD-10208', 'September 01, 2003', 'Active', 'QR-QAD-10208_Test_Report-Lead_Out_Wire.pdf', '2020-02-03 05:35:54'),
(339, 'Final Test Report- Aluminum', '13', '51', '10', 'QR-QAD-10209', 'September 01, 2003', 'Active', 'QR-QAD-10209_Final_Test_Report-Aluminum.pdf', '2020-02-03 05:35:54'),
(340, 'Test Report (Duplex Triplex Quadruplex)', '13', '51', '10', 'QR-QAD-10210', 'September 01, 2003', 'Active', 'QR-QAD-10210_Test_Report_(Duplex_Triplex_Quadruplex).pdf', '2020-02-03 05:35:54'),
(341, 'Final Test Report- Wrap Test- THHN Nylon Jacket', '13', '51', '10', 'QR-QAD-10211', 'September 01, 2003', 'Obsolete', 'QR-QAD-10211_Final_Test_Report-Wrap_Test-THHN_Nylon_Jacket.pdf', '2020-02-03 05:35:54'),
(342, 'Final Test Report- Hot Set Test- Power Cable', '13', '51', '10', 'QR-QAD-10212', 'September 01, 2003', 'Active', 'QR-QAD-10212_Final_Test_Report-Hot_Set_Test-Power_Cable.pdf', '2020-02-03 05:35:54'),
(343, 'Water Penetration Test Report', '13', '51', '10', 'QR-QAD-10214', 'September 01, 2003', 'Obsolete', 'QR-QAD-10214_Water_Penetration_Test_Report.pdf', '2020-02-03 05:35:54'),
(344, 'Final Test Report- Flat Telephone Dropwire', '13', '51', '10', 'QR-QAD-10215', 'September 01, 2003', 'Active', 'QR-QAD-10215_Final_Test_Report-Flat_Telephone_Dropwire.pdf', '2020-02-03 05:35:54'),
(345, 'Communication Cables- Summary Final Inspection Test Report', '13', '51', '10', 'QR-QAD-10216', 'September 01, 2003', 'Active', 'QR-QAD-10216_Communication_Cables-Summary_Final_Inspection_Test_Report.pdf', '2020-02-03 05:35:54'),
(346, 'Final Test Report- Foam Skin Filled Telephone Cable', '13', '51', '10', 'QR-QAD-10218', 'September 01, 2003', 'Active', 'QR-QAD-10218_Final_Test_Report-Foam_Skin_Filled_Telephone_Cable.pdf', '2020-02-03 05:35:54'),
(347, 'Final Test Report- Standard & JF Type Telephone Cable', '13', '51', '10', 'QR-QAD-10219', 'September 01, 2003', 'Active', 'QR-QAD-10219_Final_Test_Report-Standard_or_JF_Type_Telephone_Cable.pdf', '2020-02-03 05:35:54'),
(348, 'Sievematic Test Report for Standard or JF Telephone Cable', '13', '51', '10', 'QR-QAD-10220', 'September 01, 2003', 'Obsolete', 'QR-QAD-10220_Sievematic_Test_Report_for_Standard_or_JF_Telephone_Cable.pdf', '2020-02-03 05:35:54'),
(349, 'Sievematic Test Report for FSFTC', '13', '51', '10', 'QR-QAD-10221', 'September 01, 2003', 'Active', 'QR-QAD-10221_Sievematic_Test_Report_for_FSFTC.pdf', '2020-02-03 05:35:54'),
(350, 'Test Report- Jacketed Interior Wire AWG 22 C', '13', '51', '10', 'QR-QAD-10222', 'September 01, 2003', 'Active', 'QR-QAD-10222_Test_Report-Jacketed_Interior_Wire_AWG_22_C.pdf', '2020-02-03 05:35:54'),
(351, 'Test Report- Intercom Cable', '13', '51', '10', 'QR-QAD-10223', 'September 01, 2003', 'Obsolete', 'QR-QAD-10223_Test_Report-Intercom_Cable.pdf', '2020-02-03 05:35:54'),
(352, 'Final Test Report- Jumper Wire- PVC', '13', '51', '10', 'QR-QAD-10224', 'September 01, 2003', 'Active', 'QR-QAD-10224_Final_Test_Report-Jumper_Wire-PVC.pdf', '2020-02-03 05:35:54'),
(353, 'Final Test Report- Terminating Cable', '13', '51', '10', 'QR-QAD-10225', 'September 01, 2003', 'Obsolete', 'QR-QAD-10225_Final_Test_Report-Terminating_Cable.pdf', '2020-02-03 05:35:54'),
(354, 'Final Test Report- Duralene PE Insulated', '13', '51', '10', 'QR-QAD-10226', 'September 01, 2003', 'Active', 'QR-QAD-10226_Final_Test_Report-Duralene_PE_Ins.pdf', '2020-02-03 05:35:54'),
(355, 'Final Test Report- Bare Wire', '13', '51', '10', 'QR-QAD-10227', 'September 01, 2003', 'Active', 'QR-QAD-10227_Final_Test_Report-Bare_Wire.pdf', '2020-02-03 05:35:54'),
(356, 'Final Test Report- PE Insulated Cable Soft Drawn', '13', '51', '10', 'QR-QAD-10228', 'September 01, 2003', 'Active', 'QR-QAD-10228_Final_Test_Report-PE_Insulated_Cable_Soft_Drawn.pdf', '2020-02-03 05:35:54'),
(357, 'Data Tally Sheet', '13', '51', '10', 'QR-QAD-10253', 'September 01, 2003', 'Obsolete', 'QR-QAD-10253_Data_Tally_Sheet.pdf', '2020-02-03 05:35:54'),
(358, 'Pareto Chart', '13', '51', '10', 'QR-QAD-10254', 'September 01, 2003', 'Obsolete', 'QR-QAD-10254_Pareto_Chart.pdf', '2020-02-03 05:35:54'),
(359, 'Customer Complaint', '13', '51', '10', 'QR-QAD-10255', 'September 01, 2003', 'Active', 'QR-QAD-10255_Customer_Complaint.pdf', '2020-02-03 05:35:54'),
(360, 'AWCCI Corporate Organizational Chart', '9', '62', '22', 'OC-AWC-001', 'May 03, 2010', 'Obsolete', 'AWCCI_Corporate_Organizational_Chart.pdf', '2020-02-03 05:35:54'),
(362, 'Customer Satisfaction Survey', '13', '50', '5', 'QR-MKG-001', 'April 19, 2010', 'Obsolete', 'QR-MKG-001_Customer_Satisfaction_Survey.pdf', '2020-02-03 05:35:54'),
(363, 'New Item Data Build-Up Request', '13', '50', '5', 'QR-MKG-002', 'April 19, 2010', 'Active', 'QR-MKG-002_New_Item_Data_Build-Up_Request.pdf', '2020-02-03 05:35:54'),
(364, 'Authority to Cut', '13', '50', '5', 'QR-MKG-003', '', 'Active', 'QR-MKG-003_Authority_to_Cut.pdf', '2020-02-03 05:35:54'),
(365, 'Pick-up Slip Form', '13', '50', '5', 'QR-MKG-004', 'June 08, 2010', 'Active', 'QR-MKG-004_Pick-up_Slip_Form.pdf', '2020-02-03 05:35:54'),
(366, 'Order Acknowledgement', '13', '50', '7', 'QR-ORH-06101', 'February 14, 2000', 'Obsolete', 'QR-ORH-06101_Order_Acknowledgement.pdf', '2020-02-03 05:35:54'),
(367, 'Change Order Form', '13', '50', '7', 'QR-ORH-06104', 'June 01, 2007', 'Active', 'QR-ORH-06104_Change_Order_Form.pdf', '2020-02-03 05:35:54'),
(368, 'Problem Job Report', '13', '50', '5', 'QR-ORH-06105', 'February 14, 2000', 'Active', 'QR-ORH-06105_Problem_Job_Report.pdf', '2020-02-03 05:35:54'),
(369, 'Request for Quotation', '13', '50', '7', 'QR-ORH-06107', 'February 14, 2000', 'Active', 'QR-ORH-06107_Request_for_Quotation.pdf', '2020-02-03 05:35:54'),
(370, 'Customer Order Form Worksheet', '13', '50', '7', 'QR-SMK-001', 'April 01, 2010', 'Active', 'QR-SMK-001_Customer_Order_Form_Worksheet.pdf', '2020-02-03 05:35:54'),
(371, 'Utilities Daily Logsheet - Wire Drawing Cooling Tower AEC', '13', '51', '11', 'QR-PEM-10406', 'February 14, 2000', 'Active', 'QR-PEM-10406_Utilities_Daily_Logsheet-Wire_Drawing_Cooling_Tower_AEC.pdf', '2020-02-03 05:35:54'),
(372, 'Broomwade Compressors No. 1 and No. 2', '13', '51', '11', 'QR-PEM-10407', 'February 14, 2000', 'Active', 'QR-PEM-10407_Broomwade_Compressors_No.1_and_No.2.pdf', '2020-02-03 05:35:54'),
(373, 'Utilities Daily Logsheet Chillers No. 1 and No. 2 AEC', '13', '51', '11', 'QR-PEM-10415', 'July 17, 2006', 'Active', 'QR-PEM-10415_Utilities_Daily_Logsheet_Chillers_No.1_and_No.2_AEC.pdf', '2020-02-03 05:35:54'),
(374, 'Electrical Preventive Checklist', '13', '51', '11', 'QR-PEM-10419', 'February 14, 2000', 'Obsolete', 'QR-PEM-10419_Electrical_Preventive_Checklist.pdf', '2020-02-03 05:35:54'),
(375, 'Daily Activities Report', '13', '51', '11', 'QR-PEM-10426', 'February 14, 2000', 'Obsolete', 'QR-PEM-10426_Daily_Activities_Report.pdf', '2020-02-03 05:35:54'),
(376, 'Extruder Cooling Tower', '13', '51', '11', 'QR-PEM-10432', 'February 14, 2000', 'Active', 'QR-PEM-10432_Extruder_Cooling_Tower.pdf', '2020-02-03 05:35:54'),
(377, 'Material Inspection & Evaluation Wooden Reel Inspection Report', '13', '51', '10', 'QR-QAD-045', 'October 12, 2009', 'Obsolete', 'QR-QAD-045_Material_Inspection_&_Evaluation_Wooden_Reel_Inspection_Report.pdf', '2020-02-03 05:35:54'),
(378, 'Insulated Wire Daily Inspection and Audit Report', '13', '51', '10', 'QR-QAD-10229', 'September 01, 2003', 'Active', 'QR-QAD-10229_Insulated_Wire_Daily_Inspection_and_Audit_Report.pdf', '2020-02-03 05:35:54'),
(379, 'Wire Drawing Daily Inspection and Audit Report', '13', '51', '10', 'QR-QAD-10230', 'September 01, 2003', 'Active', 'QR-QAD-10230_Wire_Drawing_Daily_Inspection_and_Audit_Report.pdf', '2020-02-03 05:35:54'),
(380, 'Stranded and Bunched Bare Wire Daily Inspection and Audit Report', '13', '51', '10', 'QR-QAD-10231', 'September 01, 2003', 'Active', 'QR-QAD-10231_Stranded_and_Bunched_Bare_Wire_Daily_Inspection_and_Audit_Report.pdf', '2020-02-03 05:35:54'),
(381, 'Final Test Report - Building Wires', '13', '51', '10', 'QR-QAD-10233', '', 'Active', 'QR-QAD-10233_Final_Test_Report-Building_Wires.pdf', '2020-02-03 05:35:54'),
(382, 'Production Job Order', '13', '51', '8', 'QR-PPMC-07101', 'September 01, 2003', 'Active', 'QR-PPMC-07101_Production_Job_Order.pdf', '2020-02-03 05:35:54'),
(383, 'Monthly Production Plan- Building Wires', '13', '51', '8', 'QR-PPMC-07102', 'September 01, 2003', 'Active', 'QR-PPMC-07102_Monthly_Production_Plan-Building_Wires.pdf', '2020-02-03 05:35:54'),
(384, 'Monthly Production Plan- TF, Auto, Duplex, Durex, Duracord and Special Cable', '13', '51', '8', 'QR-PPMC-07104', 'September 01, 2003', 'Active', 'QR-PPMC-07104_Monthly_Production_Plan-TF,Auto,Duplex,Durex,Duracord_and_Special_Cable.pdf', '2020-02-03 05:35:54'),
(385, 'Production Control Sheet- Wire Drawing', '13', '51', '8', 'QR-PPMC-07106', 'September 01, 2003', 'Obsolete', 'QR-PPMC-07106_Production_Control_Sheet-Wire_Drawing.pdf', '2020-02-03 05:35:54'),
(386, 'Production Control Sheet- Strander/Buncher', '13', '51', '8', 'QR-PPMC-07107', 'September 01, 2003', 'Obsolete', 'QR-PPMC-07107_Production_Control_Sheet-Strander,Buncher.pdf', '2020-02-03 05:35:54'),
(387, 'Production Control Sheet- Extruder, Telephone, Packaging and Respooler', '13', '51', '8', 'QR-PPMC-07108', 'September 01, 2003', 'Obsolete', 'QR-PPMC-07108_Production_Control_Sheet-Extruder,Telephone,Packaging_and_Respooler.pdf', '2020-02-03 05:35:54'),
(388, 'Daily Production Report', '13', '51', '8', 'QR-PPMC-07113', 'September 01, 2003', 'Active', 'QR-PPMC-07113_Daily_Production_Report.pdf', '2020-02-03 05:35:54'),
(389, 'Production Master Schedule', '13', '51', '8', 'QR-PPMC-07115', 'September 01, 2003', 'Active', 'QR-PPMC-07115_Production_Master_Schedule.pdf', '2020-02-03 05:35:54'),
(390, 'Monthly Production Plan- Bare Aluminum', '13', '51', '8', 'QR-PPMC-07118', 'September 01, 2003', 'Active', 'QR-PPMC-07118_Monthly_Production_Plan-Bare_Aluminum.pdf', '2020-02-03 05:35:54'),
(391, 'Monthly Production Plan- Duralene', '13', '51', '8', 'QR-PPMC-07119', 'September 01, 2003', 'Active', 'QR-PPMC-07119_Monthly_Production_Plan-Duralene.pdf', '2020-02-03 05:35:54'),
(392, 'Monthly Production Plan- Building Wires', '13', '51', '8', 'QR-PPMC-07120', 'September 01, 2003', 'Active', 'QR-PPMC-07120_Monthly_Production_Plan-Building_Wires.pdf', '2020-02-03 05:35:54'),
(393, 'Manpower Requisition Form', 'None', '62', '22', 'QR-PRL-10501', 'February 16, 2009', 'Obsolete', 'QR-PRL-10501_Manpower_Requisition_Form.pdf', '2020-02-03 05:35:54'),
(394, 'Employment Application Form', '13', '62', '21', 'QR-PRL-10502', 'February 16, 2009', 'Obsolete', 'QR-PRL-10502_Employment_Application_Form.pdf', '2020-02-03 05:35:54'),
(396, 'Interview Assessment Form', '13', '62', '21', 'QR-PRL-10502', 'February 16, 2009', 'Obsolete', 'QR-PRL-10502_Interview_Assessment_Form.pdf', '2020-02-03 05:35:54'),
(397, 'Probationary Employment Agreement- Rank and File', '13', '62', '21', 'QR-PRL-10506', 'February 14, 2000', 'Active', 'QR-PRL-10506_Probationary_Employment_Agreement-Rank_and_File.pdf', '2020-02-03 05:35:54'),
(398, 'Union Leave Status Monitoring Sheet (Rank and File Daily Paid Union)', '13', '62', '21', 'QR-PRL-10516', 'February 14, 2000', 'Active', 'QR-PRL-10516_Union_Leave_Status_Monitoring_Sheet_(Rank_and_File_Daily_Paid_Union).pdf', '2020-02-03 05:35:54'),
(399, 'Attendance Form', '13', '62', '21', 'QR-PRL-10517', 'August 15, 2004', 'Active', 'QR-PRL-10517_Attendance_Form.pdf', '2020-02-03 05:35:54'),
(400, 'Accountability Clearance Form', '13', '62', '21', 'QR-PRL-10523', 'February 14, 2000', 'Active', 'QR-PRL-10523_Accountability_Clearance_Form.pdf', '2020-02-03 05:35:54'),
(401, 'Release Waiver and Quitclaim Form', '13', '62', '21', 'QR-PRL-10524', 'February 14, 2000', 'Active', 'QR-PRL-10524_Release_Waiver_and_Quitclaim_Form.pdf', '2020-02-03 05:35:54'),
(402, 'Exit Interview Form', '13', '62', '21', 'QR-PRL-10525', 'February 14, 2000', 'Obsolete', 'QR-PRL-10525_Exit_Interview_Form.pdf', '2020-02-03 05:35:54'),
(403, 'Employees Data Information Update Form', '13', '62', '21', 'QR-PRL-10529', 'February 14, 2000', 'Obsolete', 'QR-PRL-10529_Employees_Data_Information_Update_Form.pdf', '2020-02-03 05:35:54'),
(404, 'Request for Chest X-Ray', '13', '62', '21', 'QR-PRL-10504', 'February 14, 2000', 'Active', 'QR-PRL-10504_Request_for_Chest_Xï¿½Ray.pdf', '2020-02-03 05:35:54'),
(405, 'Union Leave Form', '13', '62', '21', 'QR-PRL-10513', 'February 14, 2000', 'Active', 'QR-PRL-10513_Union_Leave_Form.pdf', '2020-02-03 05:35:54'),
(406, 'Medical Certificate', '13', '62', '21', 'QR-PRL-10528', 'February 14, 2000', 'Active', 'QR-PRL-10528_Medical_Certificate.pdf', '2020-02-03 05:35:54'),
(407, 'Union Leave Status Monitoring Sheet (Supervisors Union)', '13', '62', '21', 'QR-PRL-10514', 'February 14, 2000', 'Active', 'QR-PRL-10514_Union_Leave_Status_Monitoring_Sheet_(Supervisors_Union).pdf', '2020-02-03 05:35:54'),
(408, 'Probationary Employment Agreement- Monthly', '13', '62', '21', 'QR-PRL-10507', 'February 14, 2000', 'Active', 'QR-PRL-10507_Probationary_Employment_Agreement-Monthly.pdf', '2020-02-03 05:35:54'),
(409, 'Union Leave Status Monitoring Sheet (Monthly Rank and File Union)', '13', '62', '21', 'QR-PRL-10515', 'February 14, 2000', 'Active', 'QR-PRL-10515_Union_Leave_Status_Monitoring_Sheet_(Monthly_Rank_and_File_Union).pdf', '2020-02-03 05:35:54'),
(410, 'Paternity Notification Form', '13', '62', '21', 'QR-PRL-10518', 'February 14, 2000', 'Active', 'QR-PRL-10518_Paternity_Notification_Form.pdf', '2020-02-03 05:35:54'),
(411, 'Individual Training Records', '13', '62', '21', 'QR-PRL-10522', 'February 14, 2000', 'Active', 'QR-PRL-10522_Individual_Training_Records.pdf', '2020-02-03 05:35:54'),
(412, 'Leave Credits Monitoring Sheet', '13', '62', '21', 'QR-PRL-10526', 'February 14, 2000', 'Active', 'QR-PRL-10526_Leave_Credits_Monitoring_Sheet.pdf', '2020-02-03 05:35:54'),
(413, 'Equipment Software Verification (Instron 5565 and 5569) Form', '13', '51', '10', 'QR-QAD-046', 'February 26, 2010', 'Active', 'QR-QAD-046_Equipment_Software_Verification_(Instron_5565_and_5569)_Form.pdf', '2020-02-03 05:35:54'),
(414, 'Telephone Cable Physical and Mechanical Test Report- FSF Low Cap', '13', '51', '10', 'QR-QAD-10217', 'September 01, 2003', 'Obsolete', 'QR-QAD-10217_Telephone_Cable_Physical_and_Mechanical_Test_Report-FSF_Low_Cap.pdf', '2020-02-03 05:35:54'),
(415, 'Quench Annealing Lubricant Monitoring Sheet', '13', '51', '10', 'QR-QAD-10250', 'September 01, 2003', 'Active', 'QR-QAD-10250_Quench_Annealing_Lubricant_Monitoring_Sheet.pdf', '2020-02-03 05:35:54'),
(416, 'Wire Drawing Lubricant Monitoring Sheet', '13', '51', '10', 'QR-QAD-10251', 'September 01, 2003', 'Active', 'QR-QAD-10251_Wire_Drawing_Lubricant_Monitoring_Sheet.pdf', '2020-02-03 05:35:54'),
(417, 'Calibration Plan- Quality Assurance', '13', '51', '10', 'QR-QAD-10252', 'September 01, 2003', 'Active', 'QR-QAD-10252_Calibration_Plan-Quality_Assurance.pdf', '2020-02-03 05:35:54'),
(418, 'Manufactured Goods Transfer Slip', '13', '51', '10', 'QR-QAD-10256', 'September 01, 2003', 'Obsolete', 'QR-QAD-10256_Manufactured_Goods_Transfer_Slip.pdf', '2020-02-03 05:35:54'),
(419, 'Scrap Monitoring Report', '13', '51', '10', 'QR-QAD-10260', 'September 01, 2003', 'Active', 'QR-QAD-10260_Scrap_Monitoring_Report.pdf', '2020-02-03 05:35:54'),
(420, 'Scrap Transfer Slip', '13', '51', '10', 'QR-QAD-10261', 'March 18, 2004', 'Active', 'QR-QAD-10261_Scrap_Transfer_Slip.pdf', '2020-02-03 05:35:54'),
(421, 'Monthly Defective Item Report', '13', '51', '10', 'QR-QAD-10263', 'April 03, 2006', 'Obsolete', 'QR-QAD-10263_Monthly_Defective_Item_Report.pdf', '2020-02-03 05:35:54'),
(422, 'Manufacturing Guide', '13', '51', '10', 'QR-QAD-10307', 'September 01, 2003', 'Active', 'QR-QAD-10307_Manufacturing_Guide.pdf', '2020-02-03 05:35:54'),
(423, 'Delivery Receipt', '13', '50', '18', 'QR-SHP-11101', 'February 14, 2000', 'Active', 'QR-SHP-11101_Delivery_Receipt.pdf', '2020-02-03 05:35:54'),
(424, 'Reel Delivery Sheet', '13', '50', '18', 'QR-SHP-11104', 'February 14, 2000', 'Obsolete', 'QR-SHP-11104_Reel_Delivery_Sheet.pdf', '2020-02-03 05:35:54'),
(425, 'Daily Delivery Schedule', '13', '50', '18', 'QR-SHP-11105', 'June 01, 2007', 'Active', 'QR-SHP-11105_Daily_Delivery_Schedule.pdf', '2020-02-03 05:35:54'),
(426, 'Sales Return Slip', '13', '50', '18', 'QR-SHP-11106', 'February 14, 2000', 'Active', 'QR-SHP-11106_Sales_Return_Slip.pdf', '2020-02-03 05:35:54'),
(427, 'Inventory Adjustment Slip (Finished Goods)', '13', '50', '18', 'QR-SHP-11108', 'February 14, 2000', 'Active', 'QR-SHP-11108_Inventory_Adjustment_Slip_(Finished_Goods).pdf', '2020-02-03 05:35:54'),
(428, 'Vehicle Monitoring Record', '13', '50', '18', 'QR-WHS-001', 'May 03, 2010', 'Active', 'QR-WHS-001_Vehicle_Monitoring_Record.pdf', '2020-02-03 05:35:54'),
(430, 'Pre-Packing Slip Report', '13', '50', '18', 'QR-WHS-002', 'May 03, 2010', 'Active', 'QR-WHS-002_Pre-Packing_Slip_Report.pdf', '2020-02-03 05:35:54'),
(431, 'Calibration and Verification Procedure', '3', '62', '3', 'PM-QMS-005', 'April 19, 2010', 'Obsolete', 'PM-QMS-005_Calibration_and_Verification_Procedure.pdf', '2020-02-03 05:35:54'),
(433, 'Syteline Operation Procedure', '13', '62', '3', 'QR-QMS-015', 'April 30, 2010', 'Active', 'QR-QMS-015_Syteline_Operation_Procedure_rev.1.pdf', '2020-02-03 05:35:54'),
(434, 'Mass Document Request Form', '13', '62', '3', 'QR-QMS-020', 'August 16, 2010', 'Active', 'QR-QMS-020_Mass_Document_Request_Form_rev1.pdf', '2020-02-03 05:35:54'),
(435, 'Exit Interview Questionnaire', '13', '62', '21', 'QR-HRD-005', 'July 27, 2010', 'Active', 'QR-HRD-005_Exit_Interview_Questionnaire.pdf', '2020-02-03 05:35:54'),
(438, 'Daily Sales Call Report', '13', '50', '7', 'QR-ORH-06103', 'February 14, 2000', 'Active', 'QR-ORH-06103_Daily_Sales_Call_Report.pdf', '2020-02-03 05:35:54'),
(439, 'Evaluation of Suppliers Form', '13', '62', '4', 'QR-PCH-08105', 'September 01, 2003', 'Obsolete', 'QR-PCH-08105_Evaluation_of_Suppliers_Form.pdf', '2020-02-03 05:35:54'),
(440, 'Vendors Information Sheet', '13', '62', '4', 'QR-PCH-08104', 'February 14, 2000', 'Active', 'QR-PCH-08104_Vendors_Information_Sheet.pdf', '2020-02-03 05:35:54'),
(441, 'Suppliers List', '13', '62', '4', 'QR-PCH-08106', 'November 24, 2000', 'Obsolete', 'QR-PCH-08106_Suppliers_List.pdf', '2020-02-03 05:35:54'),
(442, 'Suppliers Accreditation Rating Sheet', '13', '62', '4', 'QR-PCH-08107', 'November 27, 2000', 'Active', 'QR-PCH-08107_Suppliers_Accreditation_Rating_Sheet.pdf', '2020-02-03 05:35:54'),
(443, 'Daily Monitoring Report', '13', '51', '9', 'QR-PED-10101', 'February 02, 2009', 'Obsolete', 'QR-PED-10101_Daily_Monitoring_Report.pdf', '2020-02-03 05:35:54'),
(444, 'Tool and Die Section - Marking Wheel Order Form', '13', '51', '9', 'QR-PED-10107', 'September 01, 2003', 'Active', 'QR-PED-10107_Tool_and_Die_Section-Marking_Wheel_Order_Form.pdf', '2020-02-03 05:35:54'),
(445, 'Tool Room Clearance Form', '13', '51', '11', 'QR-PEM-10408', 'February 14, 2000', 'Active', 'QR-PEM-10408_Tool_Room_Clearance_Form.pdf', '2020-02-03 05:35:54'),
(446, 'Inventory Card', '13', '51', '11', 'QR-PEM-10428', 'February 14, 2000', 'Obsolete', 'QR-PEM-10428_Inventory_Card.pdf', '2020-02-03 05:35:54'),
(447, 'Amwire Building and Facilities Checklist', '13', '51', '11', 'QR-PEM-10435', 'July 18, 2005', 'Obsolete', 'QR-PEM-10435_Amwire_Building_and_Facilities_Checklist.pdf', '2020-02-03 05:35:54'),
(448, 'Finished Goods Transfer Slip', '13', '51', '8', 'QR-PPMC-07111', 'September 01, 2003', 'Obsolete', 'QR-PPMC-07111_Finished_Goods_Transfer_Slip.pdf', '2020-02-03 05:35:54'),
(449, 'Annual Preventive Maintenance Plan', '13', '51', '11', 'QR-PEM-10401', 'March 01, 2006', 'Active', 'QR-PEM-10401_Annual_Preventive_Maintenance_Plan.pdf', '2020-02-03 05:35:54'),
(450, 'Weekly Preventive Maintenance Schedule', '13', '51', '11', 'QR-PEM-10405', 'March 31, 2007', 'Active', 'QR-PEM-10405_Weekly_Preventive_Maintenance_Schedule.pdf', '2020-02-03 05:35:54'),
(451, 'MISC - Delivery Receipt', '13', '51', '17', 'QR-RCV-08301', 'February 14, 2000', 'Obsolete', 'QR-RCV-08301_MISC-Delivery_Receipt.pdf', '2020-02-03 05:35:54'),
(452, 'Scrap Material List', '13', '51', '17', 'QR-RCV-08303', 'February 14, 2000', 'Active', 'QR-RCV-08303_Scrap_Material_List.pdf', '2020-02-03 05:35:54'),
(453, 'Sales Invoice', '13', '49', '14', 'QR-FIN-10601', 'February 14, 2000', 'Obsolete', 'QR-FIN-10601_Sales_Invoice.pdf', '2020-02-03 05:35:54'),
(454, 'Copper Rod', '5', '51', '10', 'MP-QAD-001', 'January 06, 2010', 'Obsolete', 'MP-QAD-001_Copper_Rod_revised.pdf', '2020-02-03 05:35:54'),
(455, 'Aluminum Rod 1350', '5', '51', '10', 'MP-QAD-002', 'January 06, 2010', 'Obsolete', 'MP-QAD-002_Aluminum_Rod_1350_revised.pdf', '2020-02-03 05:35:54'),
(456, 'Polyvinyl Chloride Compound (PVC)', '5', '51', '10', 'MP-QAD-003', 'January 06, 2010', 'Obsolete', 'MP-QAD-003_Polyvinyl_Chloride_Compound_(PVC)_revised.pdf', '2020-02-03 05:35:54'),
(457, 'Polyethylene Compound (PE)', '5', '51', '10', 'MP-QAD-004', 'January 06, 2010', 'Obsolete', 'MP-QAD-004_Polyethylene_Compound_(PE)_revised.pdf', '2020-02-03 05:35:54'),
(458, 'Galvanized Steel Wire Class A Coating', '5', '51', '10', 'MP-QAD-005', 'January 06, 2010', 'Obsolete', 'MP-QAD-005_Galvanized_Steel_Wire_Class_A_Coating_revised.pdf', '2020-02-03 05:35:54'),
(459, 'Messenger Wire (Extra High Strength)', '5', '51', '10', 'MP-QAD-006', 'January 06, 2010', 'Obsolete', 'MP-QAD-006_Messenger_Wire_(Extra_High_Strength)_revised.pdf', '2020-02-03 05:35:54'),
(460, 'Hard Drawn Copper Wire', '5', '51', '10', 'MP-QAD-007', 'January 06, 2010', 'Obsolete', 'MP-QAD-007_Hard_Drawn_Copper_Wire_revised.pdf', '2020-02-03 05:35:54'),
(461, 'Copper Tape C11000', '5', '51', '10', 'MP-QAD-008', 'January 06, 2010', 'Obsolete', 'MP-QAD-008_Copper_Tape_C11000_revised.pdf', '2020-02-03 05:35:54'),
(462, 'Copper Clad AWG No.18', '5', '51', '10', 'MP-QAD-009', 'January 06, 2010', 'Obsolete', 'MP-QAD-009_Copper_Clad_AWG_No.18_revised.pdf', '2020-02-03 05:35:54'),
(463, 'Plastic Coated Aluminum Shield', '5', '51', '10', 'MP-QAD-010', 'January 06, 2010', 'Obsolete', 'MP-QAD-010_Plastic_Coated_Aluminum_Shield_revised.pdf', '2020-02-03 05:35:54'),
(464, 'Jelly Compound', '5', '51', '10', 'MP-QAD-011', 'January 06, 2010', 'Obsolete', 'MP-QAD-011_Jelly_Compound_revised.pdf', '2020-02-03 05:35:54'),
(466, 'Order Entry Process', '12', '50', '5', 'SP-MKG-001', 'May 11, 2010', 'Active', 'SP-MKG-001_Order_Entry_Process.pdf', '2020-02-03 05:35:54'),
(478, 'AWCCI Quality Manual', '1', '62', '3', 'QM-AWC-001', 'July 20, 2009', 'Obsolete', 'AWCCI_Quality_Manual.pdf', '2020-02-03 05:35:54'),
(481, 'Preparation of Miscellaneous Delivery Receipt', '11', '51', '17', 'WI-MFG-001', 'March 7, 2011', 'Active', 'WI-MFG-001_Preparation_of_Miscellaneous_Delivery_Receipt.pdf', '2020-02-03 05:35:54'),
(486, 'Insulated Wire Daily Inspection and Audit Report- 3.5\" Videx Tandem Line- Yasih', '13', '51', '10', 'QR-QAD-002', 'February 2, 2011', 'Active', 'QR-QAD-002_Insulated_Wire_Daily_Inspection_and_Audit_Report-3.5_Videx_Tandem_Line-Yasih.pdf', '2020-02-03 05:35:54'),
(487, 'Scrap Management', '3', '51', '17', 'PM-MFG-001', 'November 22, 2010', 'Obsolete', 'PM-MFG-001_Scrap_Management.pdf', '2020-02-03 05:35:54'),
(488, 'Archive Records Access Form', '13', '62', '3', 'QR-QMS-009', 'January 14, 2011', 'Active', 'QR-QMS-009_Archive_Records_Access_Form.pdf', '2020-02-03 05:35:54'),
(489, 'AWCCI Corporate Organizational Chart', '9', '62', '22', 'OC-AWC-001', 'November 1, 2010', 'Active', 'OC-AWC-001_AWCCI_Corporate_Organizational_Chart.pdf', '2020-02-03 05:35:54'),
(490, 'Executive Office', '9', '62', '19', 'OC-EXE-001', 'November 1, 2010', 'Active', 'OC-EXE-001_Executive_Office.pdf', '2020-02-03 05:35:54'),
(491, 'Customer Profile', '13', '50', '5', 'QR-MKG-005', 'February 1, 2011', 'Active', 'QR-MKG-005_Customer_Profile.pdf', '2020-02-03 05:35:54'),
(492, 'Counter Calibration', '11', '62', '3', 'WI-QMS-001', 'October 19, 2010', 'Active', 'WI-QMS-001_Counter_Calibration.pdf', '2020-02-03 05:35:54'),
(493, 'Temperature Controller Calibration', '11', '62', '3', 'WI-QMS-002', 'October 19, 2010', 'Active', 'WI-QMS-002_Temperature_Controller_Calibration.pdf', '2020-02-03 05:35:54'),
(494, 'Electrical Preventive Checklist (Alternating Current Motor)', '13', '51', '11', 'QR-PEM-177', 'June 1, 2011', 'Active', 'QR-PEM-177_Electrical_Preventive_Checklist_(Alternating_Current_Motor).pdf', '2020-02-03 05:35:54'),
(495, 'Electrical Preventive Checklist (AC Clutch Motor)', '13', '51', '11', 'QR-PEM-178', 'June 1, 2011', 'Active', 'QR-PEM-178_Electrical_Preventive_Checklist_(AC_Clutch_Motor).pdf', '2020-02-03 05:35:54'),
(496, 'Electrical Preventive Checklist (Direct Current Motor)', '13', '51', '11', 'QR-PEM-179', 'June 1, 2011', 'Active', 'QR-PEM-179_Electrical_Preventive_Checklist_(Direct_Current_Motor).pdf', '2020-02-03 05:35:54'),
(497, 'Stockroom Withdrawal Slip', '13', '51', '11', 'QR-PEM-180', 'July 4, 2011', 'Active', 'QR-PEM-180_Stockroom_Withdrawal_Slip.pdf', '2020-02-03 05:35:54'),
(498, 'Tool and Die - Withdrawal/Borrower Slip', '13', '51', '9', 'QR-PED-001', 'July 1, 2011', 'Obsolete', 'QR-PED-001_Tool_and_Die-Withdrawal_Borrower_Slip.pdf', '2020-02-03 05:35:54'),
(499, 'Delivery Procedure', '3', '50', '18', 'PM-WHS-001', 'December 1, 2010', 'Active', 'PM-WHS-001_Delivery_Procedure.pdf', '2020-02-03 05:35:54'),
(500, 'Finished Goods Warehousing', '3', '50', '18', 'PM-WHS-002', 'December 1, 2010', 'Active', 'PM-WHS-002_Finished_Goods_Warehousing.pdf', '2020-02-03 05:35:54'),
(501, 'User Access Request', '13', '49', '15', 'QR-MIS-001', 'June 6, 2011', 'Active', 'QR-MIS-001-Rev.0_User_Access_Request.pdf', '2020-02-03 05:35:54'),
(502, 'Training / Seminar Request Form', '13', '62', '21', 'QR-HRD-001', 'June 9, 2011', 'Active', 'QR-HRD-001-Rev.0_Training_Seminar_Request_Form.pdf', '2020-02-03 05:35:54'),
(506, 'Aluminum Rod 1350', '5', '51', '10', 'MP-QAD-002', 'October 1, 2010', 'Obsolete', 'MP-QAD-002_Aluminum_Rod_1350.pdf', '2020-02-03 05:35:54'),
(505, 'Copper Rod', '5', '51', '10', 'MP-QAD-001', 'October 1, 2010', 'Obsolete', 'MP-QAD-001_Copper_Rod.pdf', '2020-02-03 05:35:54'),
(504, 'Overtime Policy', '2', '62', '21', 'CP-HRD-001', 'November 15, 2010', 'Active', 'CP-HRD-001_Overtime_Policy.pdf', '2020-02-03 05:35:54'),
(503, 'Fixed Assets Policy and Procedures', '2', '49', '13', 'CP-CAD-001', 'October 1, 2010', 'Active', 'CP-CAD-001_Fixed_Assets_Policy_and_Procedures.pdf', '2020-02-03 05:35:54'),
(508, 'Polyethylene Compound (PE)', '5', '51', '10', 'MP-QAD-004', 'October 1, 2010', 'Active', 'MP-QAD-004_Polyethylene_Compound_(PE).pdf', '2020-02-03 05:35:54'),
(507, 'Polyvinyl Chloride Compound (PVC)', '5', '51', '10', 'MP-QAD-003', 'October 1, 2010', 'Active', 'MP-QAD-003_Polyvinyl_Chloride_Compound_(PVC).pdf', '2020-02-03 05:35:54'),
(509, 'Galvanized Steel Wire Class A Coating', '5', '51', '10', 'MP-QAD-005', 'October 1, 2010', 'Active', 'MP-QAD-005_Galvanized_Steel_Wire_Class_A_Coating.pdf', '2020-02-03 05:35:54'),
(510, 'Messenger Wire (Extra High Strength)', '5', '51', '10', 'MP-QAD-006', 'October 1, 2010', 'Active', 'MP-QAD-006_Messenger_Wire_(Extra_High_Strength).pdf', '2020-02-03 05:35:54'),
(511, 'Hard Drawn Copper Wire', '5', '51', '10', 'MP-QAD-007', 'October 1, 2010', 'Active', 'MP-QAD-007_Hard_Drawn_Copper_Wire.pdf', '2020-02-03 05:35:54'),
(512, 'Copper Tape C11000', '5', '51', '10', 'MP-QAD-008', 'October 1, 2010', 'Active', 'MP-QAD-008_Copper_Tape_C11000.pdf', '2020-02-03 05:35:54'),
(513, 'Copper Clad AWG No. 18', '5', '51', '10', 'MP-QAD-009', 'October 1, 2010', 'Active', 'MP-QAD-009_Copper_Clad_AWG_No.18.pdf', '2020-02-03 05:35:54'),
(514, 'Plastic Coated Aluminum Shield', '5', '51', '10', 'MP-QAD-010', 'October 1, 2010', 'Active', 'MP-QAD-010_Plastic_Coated_Aluminum_Shield.pdf', '2020-02-03 05:35:54'),
(515, 'Jelly Compound', '5', '51', '10', 'MP-QAD-011', 'October 1, 2010', 'Active', 'MP-QAD-011_Jelly_Compound.pdf', '2020-02-03 05:35:54'),
(516, 'Handling Incidents During Deliveries', '11', '50', '18', 'WI-WHS-001', 'June 24, 2011', 'Active', 'WI-WHS-001_Handling_Incidents_During_Deliveries.pdf', '2020-02-03 05:35:54'),
(517, 'Purchase Requistion Report', '13', '62', '4', 'QR-PUR-001', 'June 28, 2011', 'Active', 'QR-PUR-001_Purchase_Requistion_Report.pdf', '2020-02-03 05:35:54'),
(518, 'Finance Division (with names)', '9', '62', '22', 'OC-FIN-001', 'June 15, 2010', 'Active', 'OC-FIN-001_Finance_Division_(with_names).pdf', '2020-02-03 05:35:54'),
(519, 'Marketing Services Department (with names)', '9', '50', '5', 'OC-MKG-001', 'May 11, 2011', 'Obsolete', 'OC-MKG-001_Marketing_Services_Department_(with_names).pdf', '2020-02-03 05:35:54'),
(520, 'Marketing Division (with names)', '9', '62', '22', 'OC-MKG-003', 'May 11, 2011', 'Obsolete', 'OC-MKG-003_Marketing_Division_(with_names).pdf', '2020-02-03 05:35:54'),
(521, 'Plant Engineering and Maintenance Department (with names)', '9', '51', '11', 'OC-PEM-001', 'May 3, 2010', 'Active', 'OC-PEM-001_Plant_Engineering_and_Maintenance_Department_(with_names).pdf', '2020-02-03 05:35:54'),
(522, 'Production Planning and Materials Control Department (with names)', '9', '51', '8', 'OC-PPM-001', 'June 13, 2011', 'Active', 'OC-PPM-001_Production_Planning_and_Materials_Control_Department_(with_names).pdf', '2020-02-03 05:35:54'),
(523, 'Quality Assurance Department (with names)', '9', '51', '10', 'OC-QAD-001', 'May 3, 2010', 'Active', 'OC-QAD-001_Quality_Assurance_Department_(with_names).pdf', '2020-02-03 05:35:54'),
(524, 'Sales Department (with names)', '9', '50', '7', 'OC-SLS-001', 'June 6, 2011', 'Obsolete', 'OC-SLS-001_Sales_Department_(with_names).pdf', '2020-02-03 05:35:54'),
(525, 'Finance Division (without names)', '9', '62', '22', 'OC-FIN-002', 'June 15, 2010', 'Active', 'OC-FIN-002_Finance_Division_(without_names).pdf', '2020-02-03 05:35:54'),
(526, 'Human Resources Development Department (without names)', '9', '62', '21', 'OC-HRD-002', 'May 3, 2010', 'Active', 'OC-HRD-002_Human_Resources_Development_Department_(without_names).pdf', '2020-02-03 05:35:54'),
(527, 'Internal Audit Department (without names)', '9', '62', '1', 'OC-IAD-002', 'May 3, 2010', 'Active', 'OC-IAD-002_Internal_Audit_Department_(without_names).pdf', '2020-02-03 05:35:54'),
(528, 'Marketing Services Department (without names)', '9', '50', '5', 'OC-MKG-002', 'May 11, 2011', 'Obsolete', 'OC-MKG-002_Marketing_Services_Department_(without_names).pdf', '2020-02-03 05:35:54'),
(529, 'Marketing Division (without names)', '9', '62', '22', 'OC-MKG-004', 'May 11, 2011', 'Obsolete', 'OC-MKG-004_Marketing_Division_(without_names).pdf', '2020-02-03 05:35:54'),
(530, 'Production Engineering Department (without names)', '9', '51', '9', 'OC-PED-002', 'May 3, 2010', 'Active', 'OC-PED-002_Production_Engineering_Department_(without_names).pdf', '2020-02-03 05:35:54'),
(531, 'Plant Engineering and Maintenance Department (without names)', '9', '51', '11', 'OC-PEM-002', 'May 3, 2010', 'Active', 'OC-PEM-002_Plant_Engineering_and_Maintenance_Department_(without_names).pdf', '2020-02-03 05:35:54'),
(532, 'Production Planning and Materials Control Department (without names)', '9', '51', '8', 'OC-PPM-002', 'June 13, 2011', 'Active', 'OC-PPM-002_Production_Planning_and_Materials_Control_Department_(without_names).pdf', '2020-02-03 05:35:54'),
(533, 'Purchasing Department (without name)', '9', '62', '4', 'OC-PUR-002', 'May 3, 2010', 'Active', 'OC-PUR-002_Purchasing_Department_(without_name).pdf', '2020-02-03 05:35:54'),
(534, 'Quality Assurance Department (without names)', '9', '51', '10', 'OC-QAD-002', 'May 3, 2010', 'Active', 'OC-QAD-002_Quality_Assurance_Department_(without_names).pdf', '2020-02-03 05:35:54'),
(535, 'Quality Management System Department (without names)', '9', '62', '3', 'OC-QMS-002', 'May 3, 2010', 'Obsolete', 'OC-QMS-002_Quality_Management_System_Department_(without_names).pdf', '2020-02-03 05:35:54'),
(536, 'Sales Department (without names)', '9', '50', '7', 'OC-SLS-002', 'June 6, 2011', 'Obsolete', 'OC-SLS-002_Sales_Department_(without_names).pdf', '2020-02-03 05:35:54'),
(537, 'Personnel Administration Policy', '2', '62', '21', 'QM-AWCC-10500', 'September 1, 2003', 'Active', 'QM-AWCC-10500_Personnel_Administration_Policy.pdf', '2020-02-03 05:35:54'),
(538, 'Definition of Terms', '2', '62', '21', 'CPM-PRL-105', 'September 1, 2003', 'Active', 'CPM-PRL-105_Definition_of_Terms.pdf', '2020-02-03 05:35:54'),
(539, 'Selection and Placement', '2', '62', '21', 'CPM-PRL-105A', 'September 1, 2003', 'Obsolete', 'CPM-PRL-105A_Selection_and_Placement.pdf', '2020-02-03 05:35:54'),
(540, 'Employees Orientation', '2', '62', '21', 'CPM-PRL-105B', 'September 1, 2003', 'Active', 'CPM-PRL-105B_Employees_Orientation.pdf', '2020-02-03 05:35:54'),
(541, 'Hours of Work', '2', '62', '21', 'CPM-PRL-105C', 'September 1, 2003', 'Active', 'CPM-PRL-105C_Hours_of_Work.pdf', '2020-02-03 05:35:54'),
(542, 'Absences and Punctuality', '2', '62', '21', 'CPM-PRL-105D', 'September 1, 2003', 'Active', 'CPM-PRL-105D_Absences_and_Punctuality.pdf', '2020-02-03 05:35:54'),
(543, 'Employees Leave', '2', '62', '21', 'CPM-PRL-105F', 'September 1, 2003', 'Active', 'CPM-PRL-105F_Employees_Leave.pdf', '2020-02-03 05:35:54'),
(544, 'Holidays', '2', '62', '21', 'CPM-PRL-105G', 'September 1, 2003', 'Active', 'CPM-PRL-105G_Holidays.pdf', '2020-02-03 05:35:54'),
(545, 'Other Benefits', '2', '62', '21', 'CPM-PRL-105H', 'September 1, 2003', 'Active', 'CPM-PRL-105H_Other_Benefits.pdf', '2020-02-03 05:35:54'),
(546, 'Transportation / Meal Subsidy', '2', '62', '21', 'CPM-PRL-105I', 'September 1, 2003', 'Active', 'CPM-PRL-105I_Transportation_Meal_Subsidy.pdf', '2020-02-03 05:35:54'),
(547, 'Performance Appraisal', '2', '62', '21', 'CPM-PRL-105J', 'September 1, 2003', 'Active', 'CPM-PRL-105J_Performance_Appraisal.pdf', '2020-02-03 05:35:54'),
(548, 'Training and Development', '2', '62', '21', 'CPM-PRL-105K', 'September 1, 2003', 'Active', 'CPM-PRL-105K_Training_and_Development.pdf', '2020-02-03 05:35:54'),
(549, 'Promotion or Employment Changes', '2', '62', '21', 'CPM-PRL-105L', 'September 1, 2003', 'Active', 'CPM-PRL-105L_Promotion_or_Employment_Changes.pdf', '2020-02-03 05:35:54'),
(550, 'Office Decorum', '2', '62', '21', 'CPM-PRL-105M', 'September 1, 2003', 'Active', 'CPM-PRL-105M_Office_Decorum.pdf', '2020-02-03 05:35:54'),
(551, 'Company Uniform and ID', '2', '62', '21', 'CPM-PRL-105N', 'September 1, 2003', 'Active', 'CPM-PRL-105N_Company_Uniform_and_ID.pdf', '2020-02-03 05:35:54'),
(552, 'Safety of Employees', '2', '62', '21', 'CPM-PRL-105O', 'September 1, 2003', 'Active', 'CPM-PRL-105O_Safety_of_Employees.pdf', '2020-02-03 05:35:54'),
(553, 'Wage and Salary Administration', '2', '62', '21', 'CPM-PRL-105P', 'September 1, 2003', 'Active', 'CPM-PRL-105P_Wage_and_Salary_Administration.pdf', '2020-02-03 05:35:54'),
(554, 'Resignation', '2', '62', '21', 'CPM-PRL-105Q', 'September 1, 2003', 'Active', 'CPM-PRL-105Q_Resignation.pdf', '2020-02-03 05:35:54'),
(555, 'Retirement', '2', '62', '21', 'CPM-PRL-105R', 'September 1, 2003', 'Active', 'CPM-PRL-105R_Retirement.pdf', '2020-02-03 05:35:54'),
(556, 'Termination', '2', '62', '21', 'CPM-PRL-105S', 'September 1, 2003', 'Active', 'CPM-PRL-105S_Termination.pdf', '2020-02-03 05:35:54'),
(557, 'Separation Due to Illness or Disease', '2', '62', '21', 'CPM-PRL-105T', 'September 1, 2003', 'Active', 'CPM-PRL-105T_Separation_Due_to_Illness_or_Disease.pdf', '2020-02-03 05:35:54'),
(558, 'Manpower Planning', '2', '62', '21', 'CPM-PRL-105U', 'September 1, 2003', 'Active', 'CPM-PRL-105U_Manpower_Planning.pdf', '2020-02-03 05:35:54'),
(559, 'Filing of Overtime Procedure', '3', '62', '21', 'PM-HRD-001', 'November 15, 2010', 'Active', 'PM-HRD-001_Filing_of_Overtime_Procedure.pdf', '2020-02-03 05:35:54'),
(560, 'Permit to Work Overtime', '13', '62', '21', 'QR-HRD-007', 'November 15, 2010', 'Obsolete', 'QR-HRD-007_Permit_to_Work_Overtime.pdf', '2020-02-03 05:35:54'),
(561, 'Raw Material Delivery Record', '13', '51', '10', 'QR-QAD-001', 'October 1, 2010', 'Obsolete', 'QR-QAD-001_Raw_Material_Delivery_Record.pdf', '2020-02-03 05:35:54'),
(562, 'Measurement System Analysis Report', '13', '62', '3', 'QR-QMS-024', 'June 18, 2010', 'Active', 'QR-QMS-024_Measurement_System_Analysis_Report.pdf', '2020-02-03 05:35:54'),
(563, 'Monthly Calibration Schedule', '13', '62', '3', 'QR-QMS-028', 'April 5, 2010', 'Active', 'QR-QMS-028_Monthly_Calibration_Schedule.pdf', '2020-02-03 05:35:54'),
(564, 'Calibration Report', '13', '62', '3', 'QR-QMS-016', 'April 15, 2010', 'Active', 'QR-QMS-016_Calibration_Report.pdf', '2020-02-03 05:35:54'),
(565, 'Manufacturing Control Plan', '13', '62', '22', 'QR-MFG-001', 'July 3, 2009', 'Active', 'QR-MFG-001_Manufacturing_Control_Plan.pdf', '2020-02-03 05:35:54'),
(566, 'Capital Expenditure Request (CER)', '13', '49', '13', 'QR-CAD-001', 'October 1, 2010', 'Active', 'QR-CAD-001_Capital_Expenditure_Request.pdf', '2020-02-03 05:35:54'),
(567, 'Request to Transfer / Dispose Fixed Asset (RTDFA)', '13', '49', '13', 'QR-CAD-002', 'October 1, 2010', 'Active', 'QR-CAD-002_Request_to_Transfer_Dispose_Fixed_Asset.pdf', '2020-02-03 05:35:54'),
(568, 'Master Length Monitoring Form', '13', '50', '5', 'QR-MKG-006', 'May 5, 2011', 'Obsolete', 'QR-MKG-006_Master_Length_Monitoring_Form.pdf', '2020-02-03 05:35:54'),
(569, 'Local Travel and Entertainment and Other Expenses', '2', '50', '5', 'CP-MKG-001', 'August 17, 2011', 'Obsolete', 'CP-MKG-001_Local_Travel_and_Entertainment_and_Other_Expenses.pdf', '2020-02-03 05:35:54'),
(570, 'New / Revised Document Acknowledgment Form', '13', '62', '3', 'QR-QMS-010', 'September 7, 2011', 'Active', 'QR-QMS-010_New_Revised_Document_Acknowledgment_Form.pdf', '2020-02-03 05:35:54'),
(571, 'Office Supplies / Equipment Accountability Record', '13', '62', '22', 'QR-FIN-001', 'September 1, 2011', 'Active', 'QR-FIN-001_Office_Supplies-Equipment_Accountability_Record.pdf', '2020-02-03 05:35:54'),
(572, 'ATC Status Monitoring Form', '13', '50', '18', 'QR-WHS-003', 'July 11, 2011', 'Active', 'QR-WHS-003_ATC_Status_Monitoring_Form.pdf', '2020-02-03 05:35:54'),
(573, 'Manning and Operation of PABX Telephone System', '2', '62', '19', 'CP-EXE-001', 'September 12, 2011', 'Active', 'CP-EXE-001_Manning_and_Operation_of_PABX_Telephone_System.pdf', '2020-02-03 05:35:54'),
(574, 'PO and Quotation Review Checklist', '13', '50', '7', 'QR-SLS-001', 'September 27, 2010', 'Active', 'QR-SLS-001_PO_and_Quotation_Review_Checklist.pdf', '2020-02-03 05:35:54'),
(575, 'Job Description Format', '13', '62', '21', 'QR-HRD-008', 'August 15, 2011', 'Obsolete', 'QR-HRD-008_Job_Description_Format.pdf', '2020-02-03 05:35:54'),
(576, 'MIS Support Request', '13', '49', '15', 'QR-FIN-10602', 'February 14, 2000', 'Active', 'QR-FIN-10602_MIS_Support_Request.pdf', '2020-02-03 05:35:54'),
(655, 'Control of Documents and Records', '3', '62', '3', 'PM-QMS-001', '10/10/2011', 'Active', 'PM-QMS-001_Control_of_Documents_and_Records_2-0.pdf', '2020-02-03 05:35:54'),
(578, 'AWCCI QMS Documentation Website Usage', '11', '62', '3', 'WI-QMS-003', 'October 10, 2011', 'Active', 'WI-QMS-003_AWCCI_QMS_Documentation_Website_Usage.pdf', '2020-02-03 05:35:54'),
(581, 'Delineation of Sales Coverage Between AWCCI and Its Dealers/Distributors and Commission Salesmen', '2', '50', '7', 'CP-MKG-002', 'December 1, 2011', 'Active', 'CP-MKG-002_Delineation_of_Sales_Coverage_Between_AWCCI_and_Its_Dealers_Distributors_and_Commission_Salesmen.pdf', '2020-02-03 05:35:54'),
(582, 'Daily Production Status Report', '13', '51', '8', 'QR-PPM-001', 'January 2, 2012', 'Active', 'QR-PPM-001_Daily_Production_Status_Report.pdf', '2020-02-03 05:35:54'),
(583, 'Goods Receiving Note Report', '13', '51', '8', 'QR-PPM-002', 'January 4, 2012', 'Active', 'QR-PPM-002_Goods_Receiving_Note_Report.pdf', '2020-02-03 05:35:54'),
(584, 'Purchase Order', '13', '62', '4', 'QR-PUR-002', 'January 4, 2012', 'Active', 'QR-PUR-002_Purchase_Order.pdf', '2020-02-03 05:35:54'),
(590, 'Electronic Data File', '13', '62', '21', 'QR-HRD-002', 'February 6, 2012', 'Obsolete', 'QR-HRD-002_Electronic_Data_File.pdf', '2020-02-03 05:35:54'),
(591, 'Marine Insurance Form', 'EF', '50', '5', 'EF-MKG-001', 'February 2, 2012', 'Active', 'EF-MKG-001_Marine_Insurance_Form.pdf', '2020-02-03 05:35:54'),
(592, 'Clearance', '13', '62', '21', 'QR-HRD-003', 'February 9, 2012', 'Obsolete', 'QR-HRD-003_Clearance.pdf', '2020-02-03 05:35:54'),
(593, 'Computation of Benefits of Separated Employees', '13', '62', '21', 'QR-HRD-004', 'February 9, 2012', 'Obsolete', 'QR-HRD-004_Computation_of_Benefits_of_Separated_Employees.pdf', '2020-02-03 05:35:54'),
(594, 'Job Description Format', '13', '62', '21', 'QR-HRD-008', 'February 14, 2012', 'Obsolete', 'QR-HRD-008_Rev.1_Job_Description_Format.pdf', '2020-02-03 05:35:54'),
(595, 'Job Description Format', '13', '62', '21', 'QR-HRD-008', 'March 8, 2012', 'Obsolete', 'QR-HRD-008_Rev.2_Job_Description_Format.pdf', '2020-02-03 05:35:54'),
(596, 'Credit Memo Approval Form', '13', '50', '5', 'QR-MKG-008', 'March 14, 2012', 'Active', 'QR-MKG-008_Credit_Memo_Approval_Form.pdf', '2020-02-03 05:35:54'),
(597, 'Debit Memo Approval Form', '13', '50', '5', 'QR-MKG-009', 'March 14, 2012', 'Active', 'QR-MKG-009_Debit_Memo_Approval_Form.pdf', '2020-02-03 05:35:54'),
(598, 'Marketing Services Department (with names)', '9', '50', '5', 'OC-MKG-001', 'March 14, 2012', 'Active', 'OC-MKG-001_Marketing_Services_Department_(with_names).pdf', '2020-02-03 05:35:54'),
(599, 'Marketing Division (with names)', '9', '62', '22', 'OC-MKG-003', 'March 14, 2012', 'Active', 'OC-MKG-003_Marketing_Division_(with_names).pdf', '2020-02-03 05:35:54'),
(600, 'Sales Department (with names)', '9', '50', '7', 'OC-SLS-001', 'March 14, 2012', 'Active', 'OC-SLS-001_Sales_Department_(with_names).pdf', '2020-02-03 05:35:54'),
(601, 'Marketing Services Department (without names)', '9', '50', '5', 'OC-MKG-002', 'March 14, 2012', 'Active', 'OC-MKG-002_Marketing_Services_Department_(without_names).pdf', '2020-02-03 05:35:54'),
(602, 'Marketing Division (without names)', '9', '62', '22', 'OC-MKG-004', 'March 14, 2012', 'Active', 'OC-MKG-004_Marketing_Division_(without_names).pdf', '2020-02-03 05:35:54'),
(603, 'Sales Department (without names)', '9', '50', '7', 'OC-SLS-002', 'March 14, 2012', 'Active', 'OC-SLS-002_Sales_Department_(without_names).pdf', '2020-02-03 05:35:54'),
(604, 'Customer Order', '13', '50', '5', 'QR-MKG-007', 'March 5, 2012', 'Active', 'QR-MKG-007_Customer_Order.pdf', '2020-02-03 05:35:54'),
(605, 'Personnel Movement', '13', '62', '21', 'QR-HRD-006', 'March 15, 2012', 'Obsolete', 'QR-HRD-006_Personnel_Movement.pdf', '2020-02-03 05:35:54'),
(606, 'WB01 De Angeli Buncher', '7', '51', '9', 'OP-WB1-001', 'November 7, 2011', 'Active', 'OP-WB1-001_WB01_De_Angeli_Buncher.pdf', '2020-02-03 05:35:54'),
(607, 'WB02 Northampton', '7', '51', '9', 'OP-WB2-001', 'November 7, 2011', 'Active', 'OP-WB2-001_WB02_Northampton.pdf', '2020-02-03 05:35:54'),
(608, 'WB03 Bitor', '7', '51', '9', 'OP-WB3-001', 'November 7, 2011', 'Active', 'OP-WB3-001_WB03_Bitor.pdf', '2020-02-03 05:35:54'),
(609, 'WB04 Hamana Buncher', '7', '51', '9', 'OP-WB4-001', 'November 7, 2011', 'Active', 'OP-WB4-001_WB04_Hamana_Buncher.pdf', '2020-02-03 05:35:54'),
(610, 'WC01 Cortinovis 1600', '7', '51', '9', 'OP-WC1-001', 'November 7, 2011', 'Active', 'OP-WC1-001_WC01_Cortinovis_1600.pdf', '2020-02-03 05:35:54'),
(611, 'WC02 Cortinovis 2240', '7', '51', '9', 'OP-WC2-001', 'November 7, 2011', 'Active', 'OP-WC2-001_WC02_Cortinovis_2240.pdf', '2020-02-03 05:35:54'),
(612, 'WC03 Cortinovis 1000', '7', '51', '9', 'OP-WC3-001', 'November 7, 2011', 'Active', 'OP-WC3-001_WC03_Cortinovis_1000.pdf', '2020-02-03 05:35:54'),
(613, 'WC04 Hamana Cabler', '7', '51', '9', 'OP-WC4-001', 'November 7, 2011', 'Active', 'OP-WC4-001_WC04_Hamana_Cabler.pdf', '2020-02-03 05:35:54'),
(614, 'WC05 Hamana Twister', '7', '51', '9', 'OP-WC5-001', 'November 7, 2011', 'Active', 'OP-WC5-001_WC05_Hamana_Twister.pdf', '2020-02-03 05:35:54'),
(615, 'WD01 Copper Rod Breakdown Machine', '7', '51', '9', 'OP-WD1-001', 'November 7, 2011', 'Active', 'OP-WD1-001_WD01_Copper_Rod_Breakdown_Machine.pdf', '2020-02-03 05:35:54'),
(616, 'WD02 Aluminum Rod Breakdown Machine', '7', '51', '9', 'OP-WD2-001', 'November 7, 2011', 'Active', 'OP-WD2-001_WD02_Aluminum_Rod_Breakdown_Machine.pdf', '2020-02-03 05:35:54'),
(617, 'WD03 Two-Wire Line', '7', '51', '9', 'OP-WD3-001', 'November 7, 2011', 'Active', 'OP-WD3-001_WD03_Two-Wire_Line.pdf', '2020-02-03 05:35:54'),
(618, 'WD04 Four-Wire Line', '7', '51', '9', 'OP-WD4-001', 'November 7, 2011', 'Active', 'OP-WD4-001_WD04_Four-Wire_Line.pdf', '2020-02-03 05:35:54'),
(619, 'WE01 6â€ Jacketing Line Davis Standard', '7', '51', '9', 'OP-WE1-001', 'November 7, 2011', 'Active', 'OP-WE1-001_WE01_6in._Jacketing_Line_Davis_Standard.pdf', '2020-02-03 05:35:54'),
(620, 'WE02 2.5â€ x 3.5â€ Videx Tandem Line', '7', '51', '9', 'OP-WE2-001', 'November 7, 2011', 'Active', 'OP-WE2-001_WE02_2.5in_x_3.5in_Videx_Tandem_Line.pdf', '2020-02-03 05:35:54'),
(621, 'WE03 4.5â€ x 2.5â€ Videx Tandem Line', '7', '51', '9', 'OP-WE3-001', 'November 7, 2011', 'Active', 'OP-WE3-001_WE03_4.5in_x_2.5in_Videx_Tandem_Line.pdf', '2020-02-03 05:35:54'),
(622, 'WE04 Triple Line', '7', '51', '9', 'OP-WE4-001', 'November 7, 2011', 'Active', 'OP-WE4-001_WE04_Triple_Line.pdf', '2020-02-03 05:35:54');
INSERT INTO `masterlist` (`procedureid`, `documenttitle`, `documenttype`, `division`, `department`, `docnum`, `effectivitydate`, `status`, `filename`, `create_date`) VALUES
(623, 'WE05 Autoline', '7', '51', '9', 'OP-WE5-001', 'November 7, 2011', 'Active', 'OP-WE5-001_WE05_Autoline.pdf', '2020-02-03 05:35:54'),
(624, 'WE06 Samp-Nokia Tandem Line', '7', '51', '9', 'OP-WE6-001', 'November 7, 2011', 'Active', 'OP-WE6-001_WE06_Samp-Nokia_Tandem_Line.pdf', '2020-02-03 05:35:54'),
(625, 'WS01 Rigid Hamana', '7', '51', '9', 'OP-WS1-001', 'November 7, 2011', 'Active', 'OP-WS1-001_WS01_Rigid_Hamana.pdf', '2020-02-03 05:35:54'),
(626, 'WS02 Lesmo_Buncher', 'None', '62', '22', 'OP-WS2-001', '', 'Active', '', '2020-02-03 05:35:54'),
(627, 'WS02 Lesmo Buncher', '7', '51', '9', 'OP-WS2-001', 'November 7, 2011', 'Active', 'OP-WS2-001_WS02_Lesmo_Buncher.pdf', '2020-02-03 05:35:54'),
(628, 'WS03 Synchro', '7', '51', '9', 'OP-WS3-001', 'November 7, 2011', 'Active', 'OP-WS3-001_WS03_Synchro.pdf', '2020-02-03 05:35:54'),
(629, 'WS04 54 Bobbins', '7', '51', '9', 'OP-WS4-001', 'November 7, 2011', 'Active', 'OP-WS4-001_WS04_54_Bobbins.pdf', '2020-02-03 05:35:54'),
(630, 'WS05 Bar Closer', '7', '51', '9', 'OP-WS5-001', 'November 7, 2011', 'Active', 'OP-WS5-001_WS05_Bar_Closer.pdf', '2020-02-03 05:35:54'),
(631, 'Material Acceptance and Evaluation: Aluminum Rod', '13', '51', '10', 'QR-QAD-003', 'March 15, 2012', 'Active', 'QR-QAD-003_Material_Acceptance_and_Evaluation-Aluminum_Rod.pdf', '2020-02-03 05:35:54'),
(637, 'Tool and Die - Withdrawal Slip', '13', '51', '9', 'QR-PED-001', 'May 15, 2012', 'Active', 'QR-PED-001_Tool_and_Die_Withdrawal_Slip.pdf', '2020-02-03 05:35:54'),
(638, 'Tool and Die - Borrower Slip', '13', '51', '9', 'QR-PED-002', 'May 15, 2012', 'Active', 'QR-PED-002_Tool_and_Die_Borrower_Slip.pdf', '2020-02-03 05:35:54'),
(639, 'Trip Ticket', '13', '62', '22', 'QR-FIN-002', 'May 22, 2012', 'Obsolete', 'QR-FIN-002_Trip_Ticket.pdf', '2020-02-03 05:35:54'),
(640, 'Gasoline Requisition Slip', '13', '62', '22', 'QR-FIN-003', 'May 22, 2012', 'Active', 'QR-FIN-003_Gasoline_Requisition_Slip.pdf', '2020-02-03 05:35:54'),
(641, 'Leave of Absence Form', '13', '62', '21', 'QR-HRD-009', 'June 1, 2012', 'Active', 'QR-HRD-009_Leave_of_Absence_Form.pdf', '2020-02-03 05:35:54'),
(642, 'Airline Ticket Request Form', '13', '62', '19', 'QR-AWC-001', 'June 5, 2012', 'Obsolete', 'QR-AWC-001_Airline_Ticket_Request_Form.pdf', '2020-02-03 05:35:54'),
(643, 'Change of Details on Airline Ticket Request Form', '13', '62', '19', 'QR-AWC-002', 'June 5, 2012', 'Obsolete', 'QR-AWC-002_Change_of_Details_on_Airline_Ticket_Request_Form.pdf', '2020-02-03 05:35:54'),
(644, 'Christmas Giveaways Allocation List', '13', '50', '5', 'QR-MKG-010', 'July 2, 2012', 'Active', 'QR-MKG-010_Christmas_Giveaways_Allocation_List.pdf', '2020-02-03 05:35:54'),
(645, 'Performance Rating Report', '13', '62', '21', 'QR-HRD-010', 'July 4, 2012', 'Obsolete', 'QR-HRD-010_Performance_Rating_Report.pdf', '2020-02-03 05:35:54'),
(646, 'Christmas Giveaways Planning and Preparation', '3', '50', '5', 'PM-MKG-004', 'July 6, 2012', 'Active', 'PM-MKG-004_Christmas_Giveaways_Planning_and_Preparation.pdf', '2020-02-03 05:35:54'),
(647, 'Daily Monitoring Report', '13', '51', '9', 'QR-PED-003', 'August 10, 2012', 'Obsolete', 'QR-PED-003_Daily_Monitoring_Report.pdf', '2020-02-03 05:35:54'),
(648, 'Credit Application Form', '13', '49', '14', 'QR-CCD-001', 'September 1, 2012', 'Active', 'QR-CCD-001_Credit_Application_Form.pdf', '2020-02-03 05:35:54'),
(649, 'Bank Inquiry Letter', '13', '49', '14', 'QR-CCD-002', 'September 1, 2012', 'Active', 'QR-CCD-002_Bank_Inquiry_Letter.pdf', '2020-02-03 05:35:54'),
(650, 'Manufacturing Document Format', '13', '62', '22', 'QR-MFG-002', 'January 25, 2011', 'Active', 'QR-MFG-002_Manufacturing_Document_Format.pdf', '2020-02-03 05:35:54'),
(651, 'Customer Return Endorsement Form', '13', '50', '5', 'QR-MKG-011', 'September 6, 2012', 'Obsolete', 'QR-MKG-011_Customer_Return_Endorsement_Form.pdf', '2020-02-03 05:35:54'),
(652, 'Customer Information and Financial Statement Analysis', '13', '50', '5', 'QR-MKG-006', 'September 5, 2012', 'Active', 'QR-MKG-006_Customer_Information_and_Financial_Statement_Analysis.pdf', '2020-02-03 05:35:54'),
(653, 'Control of Nonconforming Product', '3', '62', '3', 'PM-QMS-004', 'September 17, 2012', 'Obsolete', 'PM-QMS-004_Control_of_Nonconforming_Product.pdf', '2020-02-03 05:35:54'),
(654, 'Sales Invoice', '13', '49', '14', 'QR-CCD-003', 'October 5, 2012', 'Active', 'QR-CCD-003_Sales_Invoice.pdf', '2020-02-03 05:35:54'),
(656, 'Permit to Work Overtime', '13', '62', '21', 'QR-HRD-007', 'November 19, 2012', 'Active', 'QR-HRD-007_Permit_to_Work_Overtime.rev1.pdf', '2020-02-03 05:35:54'),
(657, 'Production Monitoring Form - Wire Drawing', '13', '51', '8', 'QR-PPM-005', 'December 5, 2012', 'Obsolete', 'QR-PPM-005_Production_Monitoring_Form_Wire_Drawing.pdf', '2020-02-03 05:35:54'),
(658, 'Sales Credit Procedure', '3', '50', '7', 'PM-MKG-005', 'September 5, 2012', 'Active', 'PM-MKG-005_Sales_Credit_Procedure.pdf', '2020-02-03 05:35:54'),
(659, 'Transportation Expense', '2', '62', '21', 'CP-HRD-002', 'January 14, 2013', 'Obsolete', 'CP-HRD-002_Transportation_Expense.pdf', '2020-02-03 05:35:54'),
(660, 'Details of Transportation Allowance', '13', '49', '16', 'QR-TRD-001', 'January 14, 2013', 'Active', 'QR-TRD-001_Details_of_Transportation_Allowance.pdf', '2020-02-03 05:35:54'),
(661, 'Petty Cash Requisition', '13', '49', '16', 'QR-TRD-002', 'January 14, 2013', 'Active', 'QR-TRD-002_Petty_Cash_Requisition.pdf', '2020-02-03 05:35:54'),
(662, 'Personal Information Update', '13', '62', '21', 'QR-HRD-011', 'February 11, 2013', 'Obsolete', 'QR-HRD-011_Personal_Information_Update.pdf', '2020-02-03 05:35:54'),
(663, 'Voluntary Separation Benefit', '2', '62', '21', 'CP-HRD-004', 'January 1, 2013', 'Active', 'CP-HRD-004_Voluntary_Separation_Benefit.pdf', '2020-02-03 05:35:54'),
(664, 'Paid Leaves', '2', '62', '21', 'CP-HRD-005', 'January 1, 2013', 'Active', 'CP-HRD-005_Paid_Leaves.pdf', '2020-02-03 05:35:54'),
(665, 'Bin Card', '13', '50', '5', 'QR-MKG-012', 'March 22, 2013', 'Active', 'QR-MKG-012_Bin_Card.pdf', '2020-02-03 05:35:54'),
(666, 'Airline Ticket Form', '13', '62', '19', 'QR-AWC-001', 'May 6, 2013', 'Obsolete', 'QR-AWC-001_Airline_Ticket_Form.pdf', '2020-02-03 05:35:54'),
(667, 'Use of Company Service Vehicles', '2', '62', '21', 'CP-HRD-008', 'June 20, 2013', 'Obsolete', 'CP-HRD-008_Use_of_Company_Service_Vehicles.pdf', '2020-02-03 05:35:54'),
(668, 'Receiving of Locally / Imported Purchased Item', '3', '51', '8', 'PM-PPM-002', 'August 2, 2013', 'Active', 'PM-PPM-002_Receiving_of_Locally_Imported_Purchased_Item.pdf', '2020-02-03 05:35:54'),
(669, 'Local Travel and Entertainment and Other Expenses', '2', '62', '21', 'CP-HRD-007', 'September 7, 2013', 'Obsolete', 'CP-HRD-007_Local_Travel_and_Entertainment_and_Other_Expenses.pdf', '2020-02-03 05:35:54'),
(670, 'Trip Ticket', '13', '62', '22', 'QR-FIN-002', 'October 4, 2013', 'Obsolete', 'QR-FIN-002_Trip_Ticket_rev1.pdf', '2020-02-03 05:35:54'),
(671, 'Field Work Allowance', '2', '62', '21', 'CP-HRD-006', 'October 8, 2013', 'Active', 'CP-HRD-006_Field_Work_Allowance.pdf', '2020-02-03 05:35:54'),
(672, 'Scrap Management', '3', '51', '17', 'PM-MFG-001', 'October 18, 2013', 'Active', 'PM-MFG-001_Scrap_Management_1-1.pdf', '2020-02-03 05:35:54'),
(673, 'Employee Cost Reduction Reward Program', '2', '62', '3', 'CP-QMS-001', 'October 19, 2013', 'Obsolete', 'CP-QMS-001_Employee_Cost_Reduction_Reward_Program.pdf', '2020-02-03 05:35:54'),
(674, 'Cost Reduction Program Submission Form', '13', '62', '3', 'QR-QMS-029', 'October 19, 2013', 'Active', 'QR-QMS-029_Cost_Reduction_Program_Submission_Form.pdf', '2020-02-03 05:35:54'),
(675, 'Cost Reduction Reward Program Cost/Benefit Analysis', '13', '62', '3', 'QR-QMS-030', 'October 19, 2013', 'Active', 'QR-QMS-030_Cost_Reduction_Reward_Program_Cost_Benefit_Analysis.pdf', '2020-02-03 05:35:54'),
(676, 'Recruitment', '2', '62', '21', 'CP-HRD-009', 'October 21, 2013', 'Active', 'CP-HRD-009_Recruitment.pdf', '2020-02-03 05:35:54'),
(677, 'Scrap Monitoring', '3', '51', '10', 'PM-QAD-001', 'October 25, 2013', 'Active', 'PM-QAD-001_Scrap_Monitoring.pdf', '2020-02-03 05:35:54'),
(678, 'Clearance', '13', '62', '21', 'QR-HRD-003', 'November 27, 2013', 'Active', 'QR-HRD-003_Clearance.rev1.pdf', '2020-02-03 05:35:54'),
(679, 'Itinerary/Trip Schedule', '13', '62', '21', 'QR-HRD-012', 'February 20, 2014', 'Active', 'QR-HRD-012_Itinerary_Trip_Schedule_Rev.0.pdf', '2020-02-03 05:35:54'),
(680, 'Cash Advance Receipt', '13', '62', '22', 'QR-FIN-004', 'June 4, 2014', 'Active', 'QR-FIN-004_Cash_Advance_Receipt_Rev.0.pdf', '2020-02-03 05:35:54'),
(681, 'Jumper Wire', '5', '51', '10', 'MP-QAD-017', 'July 1, 2014', 'Active', 'MP-QAD-017_Jumper_Wire.pdf', '2020-02-03 05:35:54'),
(760, 'Building Wires: THHN, THWN-2, THW, TW, PVC/C, PVC/D, PVC/E (Yasih Machine)', '5', '51', '10', 'MP-QAD-020', 'September 19, 2017', 'Active', 'MP-QAD-020_Building_Wires_YASIH_MACHINE_Rev.1.pdf', '2020-02-03 05:35:54'),
(683, 'Duplex,Triplex, Quadruplex (AWG # 6, # 4, # 2, # 1/0, # 2/0, # 3/0, # 4/0)', '5', '51', '10', 'MP-QAD-018', 'July 1, 2014', 'Active', 'MP-QAD-018_Duplex,Triplex,Quadruplex_AWG_6,4,2,1-0,2-0,3-0,4-0.pdf', '2020-02-03 05:35:54'),
(684, 'Building Wires: THHN, THW, TW (14mmÂ² - 500mmÂ²)', '5', '51', '10', 'MP-QAD-019', 'July 1, 2014', 'Obsolete', 'MP-QAD-019_Building_Wires_THHN,THW,TW_14mm2-500mm2.pdf', '2020-02-03 05:35:54'),
(685, 'Building Wires: THHN, THW, TW (1.6mm, 2.0mm, 2.6mm, 2.0mmÂ², 3.5mmÂ², 5.5mmÂ², 8.0mmÂ²)', '5', '51', '10', 'MP-QAD-020', 'July 1, 2014', 'Obsolete', 'MP-QAD-020_Building_Wires_THHN,THW,TW_1.6mm,2.0mm,2.6mm,2.0mm2,3.5mm2,5.5mm2,8.0mm2.pdf', '2020-02-03 05:35:54'),
(686, 'Jacketed Wire', '5', '51', '10', 'MP-QAD-021', 'July 1, 2014', 'Active', 'MP-QAD-021_Jacketed_Wire.pdf', '2020-02-03 05:35:54'),
(687, 'Drop Wire HD Copper and Copper Clad', '5', '51', '10', 'MP-QAD-022', 'July 1, 2014', 'Active', 'MP-QAD-022_Drop_Wire_HD_Copper_and_Copper_Clad.pdf', '2020-02-03 05:35:54'),
(688, 'TF Wires 0.75mmÂ² and 1.25mmÂ²', '5', '51', '10', 'MP-QAD-023', 'July 1, 2014', 'Active', 'MP-QAD-023_TF_Wires_0.75mm2_and_1.25mm2.pdf', '2020-02-03 05:35:54'),
(689, 'Lead Out Wire (0.75mmÂ², 1.25mmÂ²) ', '5', '51', '10', 'MP-QAD-024', 'July 1, 2014', 'Active', 'MP-QAD-024_Lead_Out_Wire_0.75mm2,1.25mm2.pdf', '2020-02-03 05:35:54'),
(703, 'Local Travel and Entertainment and Other Expenses', '2', '62', '21', 'CP-HRD-007', 'July 28, 2014', 'Obsolete', 'CP-HRD-007_Local_Travel_and_Entertainment_and_Other_Expenses_1-1.pdf', '2020-02-03 05:35:54'),
(691, 'Duracord Cable â€“ 75Â°C  600 V (0.75mmÂ²-30mmÂ²) / 2C, 3C, 4C', '5', '51', '10', 'MP-QAD-025', 'July 1, 2014', 'Active', 'MP-QAD-025_Duracord_Cable_75degC_600V_0.75mm2-30mm2_2C,3C,4C.pdf', '2020-02-03 05:35:54'),
(692, 'Portable Cableâ€“ (38mm - 250mmÂ²)', '5', '51', '10', 'MP-QAD-026', 'July 1, 2014', 'Active', 'MP-QAD-026_Portable_Cable_38mm-250mm2.pdf', '2020-02-03 05:35:54'),
(693, 'Submersible Pump Cableâ€“ 75Â°C  600 V', '5', '51', '10', 'MP-QAD-027', 'July 1, 2014', 'Active', 'MP-QAD-027_Submersible_Pump_Cable_75degC_600V.pdf', '2020-02-03 05:35:54'),
(694, 'Power Cable  (Shielded and Unshielded)  XLPE and Clear PE', '5', '51', '10', 'MP-QAD-028', 'July 1, 2014', 'Active', 'MP-QAD-028_Power_Cable-Shielded_and_Unshielded_XLPE_and_Clear_PE.pdf', '2020-02-03 05:35:54'),
(695, 'Non Metallic Flat Wires Durex Cable', '5', '51', '10', 'MP-QAD-029', 'July 1, 2014', 'Active', 'MP-QAD-029_Non_Metallic_Flat_Wires_Durex_Cable.pdf', '2020-02-03 05:35:54'),
(696, 'Control Cable', '5', '51', '10', 'MP-QAD-030', 'July 1, 2014', 'Active', 'MP-QAD-030_Control_Cable.pdf', '2020-02-03 05:35:54'),
(697, 'Telephone Cable', '5', '51', '10', 'MP-QAD-031', 'July 1, 2014', 'Active', 'MP-QAD-031_Telephone_Cable.pdf', '2020-02-03 05:35:54'),
(698, 'Duralene ACSR and AAC', '5', '51', '10', 'MP-QAD-032', 'July 1, 2014', 'Active', 'MP-QAD-032_Duralene_ACSR_and_AAC.pdf', '2020-02-03 05:35:54'),
(699, 'SPT Parallel Flat Cord', '5', '51', '10', 'MP-QAD-033', 'July 1, 2014', 'Active', 'MP-QAD-033_SPT_Parallel_Flat_Cord.pdf', '2020-02-03 05:35:54'),
(700, 'Battery Cable', '5', '51', '10', 'MP-QAD-034', 'July 1, 2014', 'Active', 'MP-QAD-034_Battery_Cable.pdf', '2020-02-03 05:35:54'),
(701, 'Bare Copper, Aluminum and ACSR', '5', '51', '10', 'MP-QAD-035', 'July 1, 2014', 'Active', 'MP-QAD-035_Bare_Copper,Aluminum_and_ACSR.pdf', '2020-02-03 05:35:54'),
(702, 'PVC Insulated Power Cable', '5', '51', '10', 'MP-QAD-036', 'July 1, 2014', 'Active', 'MP-QAD-036_PVC_Insulated_Power_Cable.pdf', '2020-02-03 05:35:54'),
(704, 'Expense / Liquidation Report', '13', '49', '16', 'QR-TRD-003', 'July 28, 2014', 'Active', 'QR-TRD-003_Expense_Liquidation_Report_Rev.0.pdf', '2020-02-03 05:35:54'),
(705, 'Bench Top Diameter Gauge Verification Report', '13', '51', '10', 'QR-QAD-004', 'August 12, 2014', 'Active', 'QR-QAD-004_Bench_Top_Diameter_Gauge_Verification_Report.pdf', '2020-02-03 05:35:54'),
(706, 'InteliSENS Series SL3060 Calibrator Verification Report', '13', '62', '3', 'QR-QMS-031', 'August 13, 2014', 'Active', 'QR-QMS-031_InteliSENS_Series_SL3060_Calibrator_Verification_Report.pdf', '2020-02-03 05:35:54'),
(707, 'InteliSENS Series SL3060 Calibrator Verification', '11', '62', '3', 'WI-QMS-004', 'August 15, 2014', 'Active', 'WI-QMS-004_InteliSENS_Series_SL3060_Calibrator_Verification.pdf', '2020-02-03 05:35:54'),
(708, 'Externally Generated Document Registration Database', '13', '62', '3', 'QR-DCL-13112', 'November 5, 2007', 'Active', 'QR-DCL-13112_Externally_Generated_Document_Registration_Database_Rev.0.pdf', '2020-02-03 05:35:54'),
(709, 'Controlled Document Registration Database', '13', '62', '3', 'QR-QMS-002', 'March 30, 2009', 'Active', 'QR-QMS-002_Controlled_Document_Registration_Database_Rev.0.pdf', '2020-02-03 05:35:54'),
(710, 'Amwire Building and Facilities Checklist', '13', '51', '11', 'QR-PEM-181', 'October 13, 2014', 'Active', 'QR-PEM-181_Amwire_Building_and_Facilities_Checklist_Rev.0.pdf', '2020-02-03 05:35:54'),
(711, 'Production Monitoring Form- Strander/Buncher', '13', '51', '8', 'QR-PPM-003', 'October 22, 2014', 'Obsolete', 'QR-PPM-003_Production_Monitoring_Form_Strander_Buncher_Rev.0.pdf', '2020-02-03 05:35:54'),
(712, 'Perfect Attendance Incentive', '2', '62', '21', 'CP-HRD-003', 'February 1, 2015', 'Obsolete', 'CP-HRD-003_Perfect_Attendance_Incentive.pdf', '2020-02-03 05:35:54'),
(713, '', 'None', '62', '22', 'QR-PED-003', '', 'Active', '', '2020-02-03 05:35:54'),
(714, 'Daily Monitoring Report', '13', '51', '9', 'QR-PED-003', 'May 18, 2015', 'Active', 'QR-PED-003_Daily_Monitoring_Report_Rev.1.pdf', '2020-02-03 05:35:54'),
(715, 'Production Monitoring Form- Extruder/Telephone/Packaging & Respooler', '13', '51', '8', 'QR-PPM-004', 'July 21, 2015', 'Obsolete', 'QR-PPM-004_Production_Monitoring_Form_Extruder_Telephone_Packaging_and_Respooler_Rev.0.pdf', '2020-02-03 05:35:54'),
(716, 'Copper Rod', '5', '51', '10', 'MP-QAD-001', 'September 1, 2015', 'Active', 'MP-QAD-001_Copper_Rod_Rev.3.pdf', '2020-02-03 05:35:54'),
(717, 'Aluminum Rod 1350', '5', '51', '10', 'MP-QAD-002', 'September 1, 2015', 'Active', 'MP-QAD-002_Aluminum_Rod_1350_Rev.2.pdf', '2020-02-03 05:35:54'),
(718, 'Cash Count Form', '13', '49', '16', 'QR-TRD-004', 'October 5, 2015', 'Active', 'QR-TRD-004_Cash_Count_Form.pdf', '2020-02-03 05:35:54'),
(719, 'Perfect Attendance Incentive', '2', '62', '21', 'CP-HRD-003', 'November 1, 2015', 'Active', 'CP-HRD-003_Perfect_Attendance_Incentive_Rev1.pdf', '2020-02-03 05:35:54'),
(720, 'Spare Parts Return Slip', '13', '51', '11', 'QR-PEM-182', 'October 5, 2015', 'Active', 'QR-PEM-182_Spare_Parts_Return_Slip.pdf', '2020-02-03 05:35:54'),
(721, 'Finished Goods Transfer Slip', '13', '51', '8', 'QR-PPM-006', 'October 19, 2015', 'Active', 'QR-PPM-006_Finished_Goods_Transfer_Slip.pdf', '2020-02-03 05:35:54'),
(722, 'Petty Cash Fund', '2', '49', '16', 'CP-TRD-001', 'October 29, 2015', 'Obsolete', 'CP-TRD-001_Petty_Cash_Fund.pdf', '2020-02-03 05:35:54'),
(723, 'Mobile Phone Policy', '2', '62', '21', 'CP-HRD-010', 'November 2, 2015', 'Active', 'CP-HRD-010_Mobile_Phone_Policy.pdf', '2020-02-03 05:35:54'),
(724, 'Accountability Form', '13', '62', '21', 'QR-HRD-013', 'November 2, 2015', 'Active', 'QR-HRD-013_Accountability_Form.pdf', '2020-02-03 05:35:54'),
(725, 'Management Information System Department (with names)', '9', '49', '15', 'OC-MIS-001', 'August 19, 2015', 'Active', 'OC-MIS-001_MIS_Department_with_names.pdf', '2020-02-03 05:35:54'),
(726, 'Absence Call Slip', '13', '62', '21', 'QR-HRD-014', 'November 2, 2015', 'Active', 'QR-HRD-014_Absence_Call_Slip.pdf', '2020-02-03 05:35:54'),
(727, 'Airline Ticket Form', '13', '62', '19', 'QR-AWC-001', 'January 26, 2016', 'Obsolete', 'QR-AWC-001_Airline_Ticket_Form_Rev.2.pdf', '2020-02-03 05:35:54'),
(728, 'Internet Acceptable Use', '2', '62', '21', 'CP-HRD-012', 'January 30, 2016', 'Active', 'CP-HRD-012_Internet_Acceptable_Use.pdf', '2020-02-03 05:35:54'),
(729, 'Petty Cash Fund', '2', '49', '16', 'CP-TRD-001', 'January 30, 2016', 'Active', 'CP-TRD-001_Petty_Cash_Fund_Rev.1.pdf', '2020-02-03 05:35:54'),
(730, 'Dealings with Business Partners, Conflict of Interest and Gifts', '2', '62', '21', 'CP-HRD-011', 'February 1, 2016', 'Active', 'CP-HRD-011_Dealings_with_Business_Partners_Conflict_of_Interest_and_Gifts.pdf', '2020-02-03 05:35:54'),
(731, 'Local Travel and Entertainment and Other Expenses', '2', '62', '21', 'CP-HRD-007', 'February 27, 2016', 'Obsolete', 'CP-HRD-007_Local_Travel_and_Entertainment_and_Other_Expenses_rev1-2.pdf', '2020-02-03 05:35:54'),
(732, 'Reception of Company Visitors', '2', '62', '21', 'CP-HRD-014', 'February 26, 2016', 'Active', 'CP-HRD-014_Reception_of_Company_Visitors.pdf', '2020-02-03 05:35:54'),
(733, 'Gasoline Allowance', '2', '62', '21', 'CP-HRD-013', 'March 11, 2016', 'Active', 'CP-HRD-013_Gasoline_Allowance.pdf', '2020-02-03 05:35:54'),
(734, 'Handling Third Party Trucking Contractor', '3', '50', '18', 'PM-WHS-003', 'April 20, 2016', 'Active', 'PM-WHS-003_Handling_Third_Party_Trucking_Contractor.pdf', '2020-02-03 05:35:54'),
(735, 'Material Processing Evaluation- Bare Wire', '13', '51', '9', 'QR-PED-004', 'April 11, 2016', 'Active', 'QR-PED-004_Material_Processing_Evaluation_Bare_Wire.pdf', '2020-02-03 05:35:54'),
(736, 'Material Processing Evaluation- Insulated Wire', '13', '51', '9', 'QR-PED-005', 'April 11, 2016', 'Active', 'QR-PED-005_Material_Processing_Evaluation_Insulated_Wire.pdf', '2020-02-03 05:35:54'),
(737, 'Quality Management System Department', '9', '62', '3', 'OC-QMS-001', 'May 1, 2016', 'Active', 'OC-QMS-001_Quality_Management_System.pdf', '2020-02-03 05:35:54'),
(738, 'Monthly Cycle Count', '3', '62', '1', 'PM-IAD-001', 'June 1, 2016', 'Active', 'PM-IAD-001_Monthly_Cycle_Count.pdf', '2020-02-03 05:35:54'),
(739, 'Daily Borrowed Equipment Log Sheet', '13', '51', '11', 'QR-PEM-183', 'June 9, 2016', 'Active', 'QR-PEM-183_Daily_Borrowed_Equipment_Log_Sheet.pdf', '2020-02-03 05:35:54'),
(740, 'IMTE Masterlist', '13', '62', '3', 'QR-QMS-022', 'June 27, 2016', 'Active', 'QR-QMS-022_IMTE_Masterlist_Rev.1.pdf', '2020-02-03 05:35:54'),
(741, 'Verification Sticker', '13', '62', '3', 'QR-QMS-023', 'June 27, 2016', 'Active', 'QR-QMS-023_Verification_Sticker.pdf', '2020-02-03 05:35:54'),
(742, 'IMTE Calibration and Verification Procedure', '3', '62', '3', 'PM-QMS-005', 'August 10, 2016', 'Active', 'PM-QMS-005_IMTE_Calibration_and_Verification_Procedure.pdf', '2020-02-03 05:35:54'),
(743, 'Local Travel and Entertainment and Other Expenses', '2', '62', '21', 'CP-HRD-007', 'October 20, 2016', 'Obsolete', 'CP-HRD-007_Local_Travel_and_Entertainment_and_Other_Expenses_rev1-3.pdf', '2020-02-03 05:35:54'),
(759, 'Building Wires: THHN, THWN-2, THW, TW, PVC/C, PVC/D, PVC/E (14mmÂ² - 500mmÂ²)', '5', '51', '10', 'MP-QAD-019', 'September 19, 2017', 'Active', 'MP-QAD-019_Building_Wires_4.5_Tandem_Machine_Rev.1.pdf', '2020-02-03 05:35:54'),
(747, 'Employee Cost Reduction Reward Program', '2', '62', '3', 'CP-QMS-001', 'December 8, 2016', 'Active', 'CP-QMS-001_Employee_Cost_Reduction_Reward_Program_Rev1.pdf', '2020-02-03 05:35:54'),
(748, 'Transportation Expense', '2', '62', '21', 'CP-HRD-002', 'December 19, 2016', 'Active', 'CP-HRD-002_Transportation_Expense_Rev1.pdf', '2020-02-03 05:35:54'),
(749, 'Credit Card Expense Report', '13', '49', '16', 'QR-TRD-005', 'February 14, 2017', 'Active', 'QR-TRD-005_Credit_Card_Expense_Report.pdf', '2020-02-03 05:35:54'),
(750, 'Company Credit Card', '2', '62', '21', 'CP-HRD-015', 'February 14, 2017', 'Obsolete', 'CP-HRD-015_Company_Credit_Card.pdf', '2020-02-03 05:35:54'),
(751, 'Airline Ticket Form', '13', '62', '19', 'QR-AWC-001', 'April 20, 2017', 'Obsolete', 'QR-AWC-001_Airline_Ticket_Form_Rev.3.pdf', '2020-02-03 05:35:54'),
(752, 'Company Credit Card', '2', '62', '21', 'CP-HRD-015', 'May 19, 2017', 'Active', 'CP-HRD-015_Company_Credit_Card_Rev1.pdf', '2020-02-03 05:35:54'),
(753, 'Company Car Disposal', '2', '62', '3', 'CP-AWC-001', '05/30/2017', 'Active', 'CP-AWC-001_Company_Car_Disposal.pdf', '2020-02-03 05:35:54'),
(754, ' Product Evaluation Endorsement Form', '13', '50', '5', 'QR-MKG-011', 'June 14, 2017', 'Active', 'QR-MKG-011_Product_Evaluation_Endorsement_Form.pdf', '2020-02-03 05:35:54'),
(755, 'Production Monitoring Form', '13', '51', '8', 'QR-PPM-003', 'August 17, 2017', 'Active', 'QR-PPM-003_Production_Monitoring_Form.pdf', '2020-02-03 05:35:54'),
(756, 'Local Travel and Entertainment and Other Expenses', '2', '62', '21', 'CP-HRD-007', 'September 8, 2017', 'Active', 'CP-HRD-007_Local_Travel_and_Entertainment_and_Other_Expenses_1-4.pdf', '2020-02-03 05:35:54'),
(757, 'Manpower Requisition Form', '13', '62', '21', 'QR-HRD-015', 'September 8, 2017', 'Obsolete', 'QR-HRD-015_Manpower_Requisition_Form.pdf', '2020-02-03 05:35:54'),
(758, 'Forklift Disposal', '2', '62', '3', 'CP-AWC-002', 'September 13, 2017', 'Active', 'CP-AWC-002_Forklift_Disposal.pdf', '2020-02-03 05:35:54'),
(761, 'Walk Around Checklist', '13', '51', '11', 'QR-PEM-184', 'October 25, 2017', 'Active', 'QR-PEM-184_Walk_Around_Checklist.pdf', '2020-02-03 05:35:54'),
(762, 'Use of Company Service Vehicles', '2', '62', '21', 'CP-HRD-008', 'October 25, 2017', 'Active', 'CP-HRD-008_Use_of_Company_Service_Vehicles_1-1.pdf', '2020-02-03 05:35:54'),
(763, 'Trip Ticket', '13', '62', '22', 'QR-FIN-002', 'January 31, 2018', 'Active', 'QR-FIN-002_Trip_Ticket_Rev.2.pdf', '2020-02-03 05:35:54'),
(764, 'Performance Rating Report', '13', '62', '21', 'QR-HRD-010', 'March 15, 2018', 'Active', 'QR-HRD-010_Performance_Rating_Report_Rev.1.pdf', '2020-02-03 05:35:54'),
(765, 'Authority to Dispose Archive Records', '13', '62', '3', 'QR-QMS-008', 'May 17, 2018', 'Active', 'QR-QMS-008_Authority_to_Dispose_Archive_Records_Rev.1.pdf', '2020-02-03 05:35:54'),
(766, 'Archive Log Book', '13', '62', '3', 'QR-QMS-007', 'November 5, 2007', 'Active', '', '2020-02-03 05:35:54'),
(768, 'Manufactured Goods Transfer Slip', '13', '49', '13', 'QR-CAD-003', 'August 30, 2018', 'Active', 'QR-CAD-003_Manufactured_Goods_Transfer_Slip.pdf', '2020-02-03 05:35:54'),
(835, 'Risk Management Plan', '13', '62', '3', 'QR-QMS-003', 'August 15, 2018', 'Active', 'QR-QMS-003_Risk_Management_Plan_Rev.0.pdf', '2020-02-03 05:35:54'),
(770, 'UL Mark (Label) Control Program', '3', '51', '10', 'PM-QAD-002', 'September 10, 2018', 'Obsolete', 'PM-QAD-002_UL_Mark_(Label)_Control_Program.pdf', '2020-02-03 05:35:54'),
(771, '_Corrective_Action_Report', 'None', '62', '22', 'QR-QMS-018', '', 'Active', '', '2020-02-03 05:35:54'),
(772, 'Corrective Action Report', '13', '62', '3', 'QR-QMS-018', 'October 11, 2018', 'Obsolete', 'QR-QMS-018_Corrective_Action_Report.pdf', '2020-02-03 05:35:54'),
(773, '_Corrective_Action_Report_(CAR) Database', 'None', '62', '22', 'QR-QMS-019', '', 'Active', '', '2020-02-03 05:35:54'),
(774, '_Corrective Action_Report_(CAR)_Database', 'None', '62', '22', 'QR-QMS-019', '', 'Active', '', '2020-02-03 05:35:54'),
(775, 'Corrective Action Report (CAR) Database', '13', '62', '3', 'QR-QMS-019', 'October 19, 2018', 'Obsolete', 'QR-QMS-019_Corrective_Action_Report_(CAR)_Database.pdf', '2020-02-03 05:35:54'),
(776, 'New Customer Data Build-up Request', '13', '50', '5', 'QR-MKG-013', 'October 20, 2018', 'Obsolete', 'QR-MKG-013_New_Customer_Data_Build-up_Request.pdf', '2020-02-03 05:35:54'),
(777, 'Unposted Job Transaction', '12', '49', '13', 'SP-CAD-001', 'October 19, 2018', 'Active', 'SP-CAD-001_Unposted_Job_Transaction.pdf', '2020-02-03 05:35:54'),
(778, 'Printing Bar Code Sticker, Item Tag and WIP Tag', '12', '49', '13', 'SP-CAD-002', 'October 19, 2018', 'Active', 'SP-CAD-002_Printing_Bar_Code_Sticker,_Item_Tag_and_WIP_Tag.pdf', '2020-02-03 05:35:54'),
(779, 'Posting FGTS to Warehouse/Shipping', '12', '51', '8', 'SP-PPM-010', 'October 19, 2018', 'Active', 'SP-PPM-010_Posting_FGTS_to_Warehouse&Shipping.pdf', '2020-02-03 05:35:54'),
(780, 'Finished Goods Stock Allocation', '12', '50', '5', 'SP-MKG-002', 'October 19, 2018', 'Active', 'SP-MKG-002_Finished_Goods_Stock_Allocation.pdf', '2020-02-03 05:35:54'),
(781, 'Preparation & Printing of Delivery Receipt (DR)', '12', '50', '18', 'SP-WHS-001', 'October 19, 2018', 'Active', 'SP-WHS-001_Preparation_&_Printing_of_Delivery_Receipt_(DR).pdf', '2020-02-03 05:35:54'),
(782, ' Printing Bar Code Tag & Item Tag for Items Under ATC (Authority to Cut)', '12', '50', '18', 'SP-WHS-002', 'October 19, 2018', 'Active', 'SP-WHS-002_Printing_Bar_Code_Tag_&_Item_Tag_for_Items_under_ATC_(Authority_to_Cut).pdf', '2020-02-03 05:35:54'),
(783, 'Web-based DR Check APP Usage', '11', '50', '18', 'WI-WHS-002', 'October 19, 2018', 'Active', 'WI-WHS-002_Web-based_DR_Check_APP_Usage.pdf', '2020-02-03 05:35:54'),
(784, 'Importing PTF and Posting Job Transaction to Syteline', '12', '49', '13', 'SP-CAD-003', 'October 19, 2018', 'Active', 'SP-CAD-003_Importing_PTF_and_Posting_Job_Transaction_to_Syteline.pdf', '2020-02-03 05:35:54'),
(785, 'E-PTF Web-based Usage', '11', '49', '13', 'WI-CAD-001', 'October 19, 2018', 'Active', 'WI-CAD-001_E-PTF_Web-based_Usage.pdf', '2020-02-03 05:35:54'),
(786, 'Transferring Finished Products to the Finished Goods Warehouse', '11', '51', '8', 'WI-PPM-004', 'October 19, 2018', 'Active', 'WI-PPM-004_Transferring_Finished_Products_to_the_Finished_Goods_Warehouse.pdf', '2020-02-03 05:35:54'),
(787, 'Annual Budget Plan', '2', '62', '3', 'CP-AWC-004', 'October 4, 2018', 'Active', 'CP-AWC-004_Annual_Budget_Plan.pdf', '2020-02-03 05:35:54'),
(788, 'Finished Goods Barcoding', '3', '62', '22', 'PM-MFG-002', 'October 19, 2018', 'Active', 'PM-MFG-002_Finished_Goods_Barcoding.pdf', '2020-02-03 05:35:54'),
(789, 'Customer Satisfaction Survey', '13', '50', '5', 'QR-MKG-001', 'November 6, 2018', 'Active', 'QR-MKG-001_Customer_Satisfaction_Survey_Rev1.pdf', '2020-02-03 05:35:54'),
(790, 'Utility Equipment Operation and Maintenance', '3', '51', '11', 'PM-PEM-001', 'November 7, 2018', 'Active', 'PM-PEM-001_Utility_Equipment_Operation_and_Maintenance.pdf', '2020-02-03 05:35:54'),
(791, 'Preventive Maintenance', '3', '51', '11', 'PM-PEM-002', 'November 7, 2018', 'Active', 'PM-PEM-002_Preventive_Maintenance.pdf', '2020-02-03 05:35:54'),
(792, 'Corrective Maintenance', '3', '51', '11', 'PM-PEM-003', 'November 7, 2018', 'Active', 'PM-PEM-003_Corrective_Maintenance.pdf', '2020-02-03 05:35:54'),
(793, 'Modification and Installation of Machineries and Equipment', '3', '51', '11', 'PM-PEM-004', 'November 7, 2018', 'Active', 'PM-PEM-004_Modification_and_Installation_of_Machineries_and_Equipment.pdf', '2020-02-03 05:35:54'),
(794, 'Generators I and II Operation Procedure', '3', '51', '11', 'PM-PEM-005', 'November 7, 2018', 'Active', 'PM-PEM-005_Generators_I_and_II_Operation_Procedure.pdf', '2020-02-03 05:35:54'),
(795, 'Generators I and II Maintenance Procedure', '3', '51', '11', 'PM-PEM-006', 'November 7, 2018', 'Active', 'PM-PEM-006_Generators_I_and_II_Maintenance_Procedure.pdf', '2020-02-03 05:35:54'),
(796, 'Corrective Action', '3', '62', '3', 'PM-QMS-003', 'November 17, 2018', 'Active', 'PM-QMS-003_Corrective_Action.pdf', '2020-02-03 05:35:54'),
(797, 'Control of Nonconforming Product', '3', '62', '3', 'PM-QMS-004', 'November 19, 2018', 'Active', 'PM-QMS-004_Control_of_Nonconforming_Product_1-1.pdf', '2020-02-03 05:35:54'),
(814, 'AWCCI Quality Manual', '1', '62', '3', 'QM-AWC-001', 'August 15, 2018', 'Active', 'QM-AWC-001_AWCCI_Quality_Manual_3_0.pdf', '2020-02-03 05:35:54'),
(799, 'Raw Material Delivery Record', '13', '51', '10', 'QR-QAD-001', 'September 1, 2013', 'Obsolete', 'QR-QAD-001_Raw_Material_Delivery_Record-Rev.1.pdf', '2020-02-03 05:35:54'),
(800, 'Airline Ticket Form', '13', '62', '19', 'QR-AWC-001', 'March 20, 2019', 'Active', 'QR-AWC-004_Airline_Ticket_Form_Rev.4.pdf', '2020-02-03 05:35:54'),
(801, 'Check Payment Request Form', '13', '49', '16', 'QR-TRD-006', 'March 12, 2019', 'Active', 'QR-TRD-006_Check_Payment_Request_Form.pdf', '2020-02-03 05:35:54'),
(802, 'UL Mark (Label) Control Program', '3', '51', '10', 'PM-QAD-002', 'March 25, 2019', 'Active', 'PM-QAD-002_UL_Mark_(Labels)_Control_Program_Rev.1.pdf', '2020-02-03 05:35:54'),
(803, 'Customer Inquiry & Order Handling Procedure', '3', '50', '5', 'PM-MKG-001', 'March 27, 2019', 'Active', 'PM-MKG-001_Customer_Inquiry_and_Order_Handling_Procedure.pdf', '2020-02-03 05:35:54'),
(804, 'New Item Data Build-up Request Process', '11', '49', '13', 'WI-CAD-002', 'March 27, 2019', 'Active', 'WI-CAD-002_New_Item_Data_Build_up_Request_Process.pdf', '2020-02-03 05:35:54'),
(805, 'Customer Bidding Process', '2', '62', '3', 'CP-AWC-006', 'April 1, 2019', 'Active', 'CP-AWC-006_Customer_Bidding_Process.pdf', '2020-02-03 05:35:54'),
(806, 'Sales Invoice Transmittal', '2', '62', '3', 'CP-AWC-005', 'April 1, 2019', 'Active', 'CP-AWC-005_Sales_Invoice_Transmittal.pdf', '2020-02-03 05:35:54'),
(807, 'Project Management', '2', '62', '3', 'CP-AWC-007', 'June 10, 2019', 'Active', 'CP-AWC-007_Project_Management.pdf', '2020-02-03 05:35:54'),
(808, 'Transfer of Accounts', '2', '62', '3', 'CP-AWC-003', 'June 20, 2019', 'Active', 'CP-AWC-003_Transfer_of_Accounts.pdf', '2020-02-03 05:35:54'),
(809, 'New Customer Data Build-up_Request', 'None', '62', '22', 'QR-MKG-013', '', 'Active', '', '2020-02-03 05:35:54'),
(810, 'New Customer Data Build-up Request', '13', '50', '5', 'QR-MKG-013', 'June 26, 2019', 'Active', 'QR-MKG-013_New_Customer_Data_Build-up_Request_Rev1.pdf', '2020-02-03 05:35:54'),
(811, 'Final Test Report (Durex Wires)', '13', '51', '10', 'QR-QAD-005', 'July 13, 2019', 'Active', 'QR-QAD-005_Final_Test_Report_(Durex_Wires).pdf', '2020-02-03 05:35:54'),
(812, 'Final Test Report (UL Building Wires)', '13', '51', '10', 'QR-QAD-006', 'July 13, 2019', 'Active', 'QR-QAD-006_Final_Test_Report_(UL_Building_Wires).pdf', '2020-02-03 05:35:54'),
(815, 'Misc - Delivery Receipt', '13', '62', '22', 'QR-MFG-003', 'September 30, 2019', 'Active', 'QR-MFG-003_Misc_Delivery_Receipt.pdf', '2020-02-03 05:35:54'),
(816, 'Raw Material Delivery Record', '13', '51', '10', 'QR-QAD-001', 'January 2, 2019', 'Active', 'QR-QAD-001_Raw_Material_Delivery_Record_Rev.2.pdf', '2020-02-03 05:35:54'),
(817, 'Employee Information Update', '13', '62', '21', 'QR-HRD-011', 'December 3, 2019', 'Active', 'QR-HRD-011_Employee_Information_Update.pdf', '2020-02-03 05:35:54'),
(818, 'Supplier Evaluation Form', '13', '62', '4', 'QR-PUR-003', 'January 3, 2020', 'Active', 'QR-PUR-003_Supplier_Evaluation_Form.pdf', '2020-02-03 05:35:54'),
(819, 'Employment Application Form', '13', '62', '21', 'QR-HRD-016', 'January 3, 2020', 'Active', 'QR-HRD-016_Employment_Application_Form.pdf', '2020-02-03 05:35:54'),
(820, 'Interview Assessment Form', '13', '62', '21', 'QR-HRD-017', 'January 6, 2020', 'Active', 'QR-HRD-017_Interview_Assessment_Form.pdf', '2020-02-03 05:35:54'),
(821, 'Disciplinary Action Sheet', '13', '62', '21', 'QR-HRD-018', 'January 7, 2020', 'Active', 'QR-HRD-018_Disciplinary_Action_Sheet.pdf', '2020-02-03 05:35:54'),
(822, 'Electronic Data File', '13', '62', '21', 'QR-HRD-002', 'January 15, 2020', 'Active', 'QR-HRD-002_Electronic_Data_File_Rev.1.pdf', '2020-02-03 05:35:54'),
(823, 'Computation of Benefits of Separated Employees', '13', '62', '21', 'QR-HRD-004', 'January 15, 2020', 'Active', 'QR-HRD-004_Computation_of_Benefits_of_Separated_Employees_Rev.1.pdf', '2020-02-03 05:35:54'),
(824, 'Employee Movement Notice', '13', '62', '21', 'QR-HRD-006', 'January 15, 2020', 'Active', 'QR-HRD-006_Employee_Movement_Notice.pdf', '2020-02-03 05:35:54'),
(825, 'Manpower Requisition Form_Rev.', 'None', '62', '22', 'QR-HRD-015', '', 'Active', '', '2020-02-03 05:35:54'),
(826, ' Manpower Requisition Form', '13', '62', '21', 'QR-HRD-015', 'January 15, 2020', 'Active', 'QR-HRD-015_Manpower_Requisition_Form_Rev.1.pdf', '2020-02-03 05:35:54'),
(827, 'Notice to Explain', '13', '62', '21', 'QR-HRD-019', 'January 15, 2020', 'Active', 'QR-HRD-019_Notice_to_Explain.pdf', '2020-02-03 05:35:54'),
(828, 'Official Explanation', '13', '62', '21', 'QR-HRD-020', 'January 15, 2020', 'Active', 'QR-HRD-020_Official_Explanation.pdf', '2020-02-03 05:35:54'),
(829, 'Job Description Form', '13', '62', '21', 'QR-HRD-008', 'December 3, 2019', 'Active', 'QR-HRD-008_Job_Description_Form_Rev.3.pdf', '2020-02-03 05:35:54'),
(830, 'Authorization to Deduct', '13', '62', '21', 'QR-HRD-021', 'January 15, 2020', 'Active', 'QR-HRD-021_Authorization_to_Deduct.pdf', '2020-02-03 05:35:54'),
(831, 'Corrective Action Report', '13', '62', '3', 'QR-QMS-018', 'January 15, 2020', 'Active', 'QR-QMS-018_Corrective_Action_Report_Rev.2.pdf', '2020-02-03 05:35:54'),
(832, 'Corrective Action Report (CAR) Database', '13', '62', '3', 'QR-QMS-019', 'January 15, 2020', 'Active', 'QR-QMS-019_Corrective_Action_Report_(CAR)_Database_Rev.2.pdf', '2020-02-03 05:35:54'),
(836, 'Final Test', '13', '51', '10', 'QR-QAD-007', '02/13/2020', 'Active', 'QR-QAD-007_Final_Test_Report_(TF_Wire).pdf', '2020-02-12 05:52:43'),
(837, 'Final Test TF', '13', '51', '10', 'QR-QAD-007', '02/13/2020', 'Active', 'QR-QAD-007_Final_Test_Report_(TF_Wire).pdf', '2020-02-12 05:55:49'),
(838, 'Final Test Report (TF Wire)', '13', '51', '10', 'QR-QAD-007', '02/13/2020', 'Active', 'QR-QAD-007_Final_Test_Report_(TF_Wire).pdf', '2020-02-15 02:46:30'),
(839, 'Turnover Sheet', '13', '62', '21', 'QR-HRD-022', '02/17/2020', 'Active', 'QR-HRD-022_Turnover_Sheet.pdf', '2020-02-17 08:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedid` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `dateofevent` varchar(30) NOT NULL,
  `dateposted` varchar(30) NOT NULL,
  `venue` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedid`, `title`, `dateofevent`, `dateposted`, `venue`) VALUES
(5, 'QMS Awareness Seminar', 'March 21, 2012', 'March 7, 2012', 'Big Conference Room'),
(6, 'Problem Solving Tools & Techniques Training', 'March 22-23, 2012; 1:00 PM - 5', 'March 7, 2012', 'Big Conference Room');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `userdesc` varchar(50) NOT NULL,
  `userlevel` int(1) NOT NULL,
  `filename` varchar(60) NOT NULL,
  `online_users` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `fullname`, `userdesc`, `userlevel`, `filename`, `online_users`) VALUES
(1, 'donnie', '202cb962ac59075b964b07152d234b70', 'Donnie Grubat', 'Programmer', 1, 'P9290003.JPG', 0),
(2, 'lan', '468979cc67f15063596917e91547742e', 'Melanie Panopio', 'QMS Staff', 2, '', 1),
(3, 'gil', '80323dc196589af7f01ce3819070e841', 'Gil Iraola', 'Deputy QMR', 2, '', 0),
(4, 'gln_c', 'e5891a8fe069120c349d1a8c8943752c', 'Glenn S.A. Casalme', 'QMR', 2, '', 0),
(25, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'Donnie Grubat', 'ISO Test', 2, 'dept.PNG', 0),
(26, 'ALAM', 'bbd007f39d4f08e20b170e825b9b73d2', 'Anna Lizza A. Marcelo', 'QMS Manager', 2, '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`announcementid`);

--
-- Indexes for table `awcci_department`
--
ALTER TABLE `awcci_department`
  ADD PRIMARY KEY (`deptid`);

--
-- Indexes for table `awcci_division`
--
ALTER TABLE `awcci_division`
  ADD PRIMARY KEY (`divid`);

--
-- Indexes for table `documentlevel`
--
ALTER TABLE `documentlevel`
  ADD PRIMARY KEY (`recid`);

--
-- Indexes for table `main_menu`
--
ALTER TABLE `main_menu`
  ADD PRIMARY KEY (`menuid`);

--
-- Indexes for table `masterlist`
--
ALTER TABLE `masterlist`
  ADD PRIMARY KEY (`procedureid`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `announcementid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `awcci_department`
--
ALTER TABLE `awcci_department`
  MODIFY `deptid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `awcci_division`
--
ALTER TABLE `awcci_division`
  MODIFY `divid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `documentlevel`
--
ALTER TABLE `documentlevel`
  MODIFY `recid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `main_menu`
--
ALTER TABLE `main_menu`
  MODIFY `menuid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `masterlist`
--
ALTER TABLE `masterlist`
  MODIFY `procedureid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=840;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
