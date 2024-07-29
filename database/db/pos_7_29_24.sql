-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2024 at 07:43 AM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_bank_transactions`
--

CREATE TABLE `account_bank_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inv_number` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_bank_transaction_details`
--

CREATE TABLE `account_bank_transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_tran_id` bigint(20) UNSIGNED DEFAULT NULL,
  `inv_id` varchar(255) DEFAULT NULL,
  `credit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `debit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  `cheque_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cheque_date` timestamp NULL DEFAULT NULL,
  `refference` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_classes`
--

CREATE TABLE `account_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_classes`
--

INSERT INTO `account_classes` (`id`, `name`, `bname`, `description`, `user_id`, `branch_id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'sdf', 'sd', 'asdf', 1, 9, 3, '2024-07-28 23:01:41', '2024-07-28 23:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `account_expense_details`
--

CREATE TABLE `account_expense_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_id` bigint(20) UNSIGNED DEFAULT NULL,
  `inv_number` varchar(255) DEFAULT NULL,
  `credit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `debit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  `cheque_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cheque_date` timestamp NULL DEFAULT NULL,
  `refference` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_groups`
--

CREATE TABLE `account_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_groups`
--

INSERT INTO `account_groups` (`id`, `class_id`, `name`, `description`, `bname`, `user_id`, `branch_id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'asdf', 'asdf', 'asdf', 1, 9, 3, '2024-07-28 23:02:58', '2024-07-28 23:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `account_journals`
--

CREATE TABLE `account_journals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inv_number` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_journal_details`
--

CREATE TABLE `account_journal_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `journal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `inv_number` varchar(255) DEFAULT NULL,
  `credit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `debit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  `cheque_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cheque_date` timestamp NULL DEFAULT NULL,
  `refference` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_ledgers`
--

CREATE TABLE `account_ledgers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subgroup_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_payments`
--

CREATE TABLE `account_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inv_number` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_payment_details`
--

CREATE TABLE `account_payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `inv_number` varchar(255) DEFAULT NULL,
  `credit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `debit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  `cheque_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cheque_date` varchar(255) DEFAULT NULL,
  `refference` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_receives`
--

CREATE TABLE `account_receives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inv_number` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_receive_details`
--

CREATE TABLE `account_receive_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `inv_number` varchar(255) DEFAULT NULL,
  `credit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `debit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  `cheque_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cheque_date` timestamp NULL DEFAULT NULL,
  `refference` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_sub_groups`
--

CREATE TABLE `account_sub_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_transaction_details`
--

CREATE TABLE `account_transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `inv_number` varchar(255) DEFAULT NULL,
  `credit_id` int(11) DEFAULT NULL,
  `debit_id` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `cheque_id` int(11) DEFAULT NULL,
  `cheque_date` timestamp NULL DEFAULT NULL,
  `refference` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `branch_code` varchar(255) DEFAULT NULL,
  `branch_address` varchar(255) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `account_holder` varchar(255) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_cheques`
--

CREATE TABLE `bank_cheques` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `inv_type` varchar(255) DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `cheque_date` timestamp NULL DEFAULT NULL,
  `cheque_bank` varchar(255) DEFAULT NULL,
  `issue_date` timestamp NULL DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `payee_name` varchar(255) DEFAULT NULL,
  `payee_account_number` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_mobiles`
--

CREATE TABLE `bank_mobiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mfs_provider` varchar(255) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `withdrawn` decimal(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_transactions`
--

CREATE TABLE `bank_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `transaction_date` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_transaction_details`
--

CREATE TABLE `bank_transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `credit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `debit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `cheque_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cheque_date` timestamp NULL DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_transfers`
--

CREATE TABLE `bank_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `receiver_account_no` varchar(255) DEFAULT NULL,
  `receiver_account_name` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `transfer_date` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `page_header` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `branch_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `page_header`, `address`, `branch_code`, `phone`, `mobile`, `fax`, `email`, `web`, `logo`, `status`, `slug`, `company_id`, `created_at`, `updated_at`) VALUES
(9, 'smce', 'sdfg', '<p>sd sdfg</p>', '1', 'sdfg', 'sdfg', 'sdfg', 'user@user.com', 'sdfg', 'admin/uploaded-files/company/branch/branch-1719813664809.JPG', 1, NULL, 3, '2024-07-01 00:01:04', '2024-07-01 00:01:04'),
(10, 'smce', 'sdfg', '<p>ghjfg tfyjh&nbsp;</p>', '2', 'sdfg', 'sdfg', 'sdfg', 'user@user.com', 'sdfg', 'admin/uploaded-files/company/branch/branch-1719818032856.jpg', 1, NULL, 3, '2024-07-01 01:13:52', '2024-07-01 01:13:52'),
(11, 'smce', 'sdfg', '<p>u9; rtu&nbsp;</p>', '3', 'sdfg', 'sdfg', 'sdfg', 'user@user.com', 'sdfg', 'admin/uploaded-files/company/branch/branch-1719818190575.jpg', 1, NULL, 3, '2024-07-01 01:16:30', '2024-07-01 01:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `description`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin/uploaded-files/product/brand/brand-1719901382167.ico', '<p>asdf</p>', 1, NULL, '2024-07-02 00:23:02', '2024-07-02 00:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category_Code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `category_Code`, `description`, `image`, `created_by`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'create userzxc', '3', 'asdf', 'admin/uploaded-files/product/category/category-1719908690509.JPG', 'Super Admin', 1, NULL, '2024-07-02 01:01:33', '2024-07-02 02:24:50'),
(5, 'create user', '4', 'sdf', 'admin/uploaded-files/product/category/category-172085306419.JPG', 'Admin', 1, NULL, '2024-07-13 00:44:24', '2024-07-13 00:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `child_code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_categories`
--

INSERT INTO `child_categories` (`id`, `name`, `cat_id`, `sub_cat_id`, `image`, `created_by`, `child_code`, `description`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(6, 'color', 3, 3, '', 'Admin', '1', 'sd', 1, NULL, '2024-07-13 23:59:30', '2024-07-13 23:59:30'),
(7, 'bew', 5, 4, '', 'Admin', '2', 'sdf', 1, NULL, '2024-07-14 00:00:47', '2024-07-14 00:00:47'),
(8, 'new', 5, 4, '', 'Admin', '3', 'sdf', 1, NULL, '2024-07-14 00:04:25', '2024-07-14 00:04:25'),
(9, 'sa', 3, 3, '', 'Admin', '4', 'sdf', 1, NULL, '2024-07-14 00:10:22', '2024-07-14 00:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `bname`, `symbol`, `status`, `created_at`, `updated_at`) VALUES
(1, 'red', 'lal', 'asdf', 1, '2024-07-13 00:43:51', '2024-07-13 00:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `page_header` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `tin` varchar(255) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `tin_image` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `license_image` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `page_header`, `address`, `phone`, `fax`, `mobile`, `tin`, `vat`, `tin_image`, `license`, `license_image`, `web`, `email`, `logo`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'Smce', 'dfsg', '<p>sadfwa43 swer </p>', 'dsfg', 'dfg', 'dfg', 'sdfg', 'sdfg', 'admin/uploaded-files/company/tin/tin-1719813618470.ico', 'sdfg', 'admin/uploaded-files/company/license/license-1719813618900.JPG', 'sdfg', 'user@user.com', 'admin/uploaded-files/company/logo/logo-1719813618396.JPG', 1, NULL, '2024-07-01 00:00:18', '2024-07-01 01:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `company_user`
--

CREATE TABLE `company_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nid` text DEFAULT NULL,
  `cperson` varchar(255) DEFAULT NULL,
  `cmobile` varchar(255) DEFAULT NULL,
  `creditlimit` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cus_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `nid`, `cperson`, `cmobile`, `creditlimit`, `balance`, `rank`, `address`, `image`, `note`, `status`, `company_id`, `branch_id`, `cus_code`, `created_at`, `updated_at`) VALUES
(2, 'sarowar', 'user@user.com', '01677997957', '32rsdfg4', 'create user', '01677997957', '333', '33333', '344', 'dfg', '', 'saf', 1, NULL, NULL, '', '2024-07-14 05:45:25', '2024-07-14 05:45:25'),
(3, 'sarowar', 'user@user.com', '01677997957', '32rsdfg4', 'create user', '01677997957', '333', '33333', '344', 'dfg', 'admin/uploaded-files/people/customers/cus-1721016717302.png', 'fg', 1, NULL, NULL, '', '2024-07-14 22:11:57', '2024-07-14 22:11:57'),
(4, 'sarowar', 'user@user.com', '01677997957', '32rsdfg4', 'create user', '01677997957', '333', '33333', '344', 'dfg', '', 'cfvbh', 1, NULL, NULL, '', '2024-07-14 22:15:53', '2024-07-14 22:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'nwe44', 'sdf44', 1, '2024-07-25 03:52:27', '2024-07-25 03:52:41'),
(4, 'sdf', 'sdf', 1, '2024-07-28 02:39:58', '2024-07-28 02:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'asdf', 'asdf', 1, '2024-07-28 02:42:58', '2024-07-28 02:42:58'),
(3, 'efe', 'ad', 0, '2024-07-28 02:45:24', '2024-07-28 02:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `joining_date` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `per_address` longtext DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

CREATE TABLE `manufactures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `cperson` varchar(255) DEFAULT NULL,
  `cmobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `mainproduct` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`id`, `name`, `bname`, `address`, `cperson`, `cmobile`, `email`, `web`, `rank`, `mainproduct`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'create user', 'lal', 'dfg\r\nsdfg', 'create user', '01677997957', 'user@user.com', 'http://127.0.0.1:8000/manufacture/create', '33', 'xc', 'xc', 1, '2024-07-13 00:47:42', '2024-07-13 00:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_06_11_000006_create_branches_table', 1),
(8, '2024_06_11_000008_create_company_user_table', 1),
(10, '2024_06_11_000010_create_store_types_table', 1),
(11, '2024_06_11_009004_add_foreigns_to_branches_table', 1),
(12, '2024_06_11_009005_add_foreigns_to_company_user_table', 1),
(13, '2024_06_11_009006_add_foreigns_to_stores_table', 1),
(14, '2024_06_29_071312_create_permission_tables', 1),
(15, '2024_06_11_000007_create_companies_table', 2),
(17, '2024_06_11_000009_create_stores_table', 3),
(23, '2024_06_11_000011_create_brands_table', 4),
(28, '2024_06_11_000012_create_categories_table', 5),
(30, '2024_06_11_000015_create_sub_categories_table', 6),
(31, '2024_06_11_000013_create_child_categories_table', 7),
(33, '2024_06_11_000016_create_colors_table', 8),
(34, '2024_06_11_000017_create_manufactures_table', 8),
(35, '2024_06_11_000018_create_sizes_table', 8),
(36, '2024_06_11_000019_create_units_table', 8),
(37, '2024_06_11_000014_create_products_table', 9),
(38, '2024_06_11_000023_create_customers_table', 10),
(39, '2024_06_11_000031_create_suppliers_table', 10),
(40, '2024_06_24_000025_create_departments_table', 11),
(41, '2024_06_24_000026_create_designations_table', 11),
(42, '2024_06_24_000027_create_employees_table', 12),
(43, '2024_06_24_000001_create_account_bank_transactions_table', 13),
(44, '2024_06_24_000002_create_account_bank_transaction_details_table', 13),
(45, '2024_06_24_000003_create_account_classes_table', 13),
(46, '2024_06_24_000004_create_account_expense_details_table', 13),
(47, '2024_06_24_000005_create_account_groups_table', 13),
(48, '2024_06_24_000006_create_account_journals_table', 13),
(49, '2024_06_24_000007_create_account_journal_details_table', 13),
(50, '2024_06_24_000008_create_account_ledgers_table', 13),
(51, '2024_06_24_000009_create_account_payments_table', 13),
(52, '2024_06_24_000010_create_account_payment_details_table', 13),
(53, '2024_06_24_000011_create_account_receive_details_table', 13),
(54, '2024_06_24_000012_create_account_receives_table', 13),
(55, '2024_06_24_000013_create_account_sub_groups_table', 13),
(56, '2024_06_24_000014_create_account_transaction_details_table', 13),
(57, '2024_07_16_091740_create_banks_table', 13),
(58, '2024_07_16_091804_create_bank_accounts_table', 13),
(59, '2024_07_16_091811_create_bank_transactions_table', 13),
(60, '2024_07_16_091813_create_bank_transaction_details_table', 13),
(61, '2024_07_16_091817_create_bank_transfers_table', 13),
(62, '2024_07_16_091822_create_bank_cheques_table', 13),
(63, '2024_07_16_091850_create_bank_mobiles_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 8),
(6, 'App\\Models\\User', 3),
(6, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create user', 'web', NULL, NULL),
(3, 'create role', 'web', '2024-06-29 01:38:45', '2024-06-29 01:38:45'),
(4, 'update role', 'web', '2024-06-29 01:39:01', '2024-06-29 01:39:01'),
(5, 'delete role', 'web', '2024-06-29 01:39:12', '2024-06-29 01:39:12'),
(6, 'create permission', 'web', '2024-06-29 01:44:02', '2024-06-29 01:44:02'),
(7, 'update permission', 'web', '2024-06-29 01:44:12', '2024-06-29 01:44:12'),
(8, 'delete permission', 'web', '2024-06-29 01:44:22', '2024-06-29 01:44:22'),
(9, 'update user', 'web', '2024-06-29 01:45:50', '2024-06-29 01:45:50'),
(10, 'delete user', 'web', '2024-06-29 01:45:57', '2024-06-29 01:45:57'),
(11, 'create company', 'web', '2024-06-29 01:46:09', '2024-06-29 01:46:09'),
(12, 'update company', 'web', '2024-06-29 01:46:19', '2024-06-29 01:46:19'),
(13, 'delete company', 'web', '2024-06-29 01:46:27', '2024-06-29 01:46:27'),
(14, 'view permission', 'web', '2024-06-29 02:45:41', '2024-06-29 02:45:41'),
(15, 'view user', 'web', '2024-06-29 02:47:35', '2024-06-29 02:47:35'),
(16, 'view role', 'web', '2024-06-29 02:48:04', '2024-06-29 02:48:04'),
(17, 'role management', 'web', '2024-06-29 02:50:21', '2024-06-29 02:50:21'),
(18, 'company management', 'web', '2024-06-29 02:54:44', '2024-06-29 02:54:44'),
(22, 'view company', 'web', '2024-06-30 05:41:40', '2024-06-30 05:41:40'),
(23, 'create branch', 'web', '2024-06-30 05:42:01', '2024-06-30 05:42:01'),
(24, 'update branch', 'web', '2024-06-30 05:42:11', '2024-06-30 05:42:11'),
(25, 'delete branch', 'web', '2024-06-30 05:42:21', '2024-06-30 05:42:21'),
(26, 'view branch', 'web', '2024-06-30 05:42:32', '2024-06-30 05:42:32'),
(27, 'create store', 'web', '2024-07-01 04:18:10', '2024-07-01 04:18:10'),
(28, 'view store', 'web', '2024-07-01 04:18:18', '2024-07-01 04:18:18'),
(29, 'update store', 'web', '2024-07-01 04:18:29', '2024-07-01 04:18:29'),
(30, 'delete store', 'web', '2024-07-01 04:18:37', '2024-07-01 04:18:37'),
(31, 'product management', 'web', '2024-07-01 06:43:22', '2024-07-01 06:43:22'),
(32, 'create brand', 'web', '2024-07-01 06:43:35', '2024-07-01 06:43:35'),
(33, 'update brand', 'web', '2024-07-01 06:43:46', '2024-07-01 06:43:46'),
(34, 'view brand', 'web', '2024-07-01 06:43:57', '2024-07-01 06:43:57'),
(35, 'delete brand', 'web', '2024-07-01 06:44:04', '2024-07-01 06:44:04'),
(36, 'create category', 'web', '2024-07-01 06:44:15', '2024-07-01 06:44:15'),
(37, 'update category', 'web', '2024-07-01 06:44:25', '2024-07-01 06:44:25'),
(38, 'delete category', 'web', '2024-07-01 06:44:37', '2024-07-01 06:44:37'),
(39, 'view category', 'web', '2024-07-01 06:44:45', '2024-07-01 06:44:45'),
(40, 'view subcategory', 'web', '2024-07-01 06:45:10', '2024-07-01 06:45:10'),
(41, 'create subcategory', 'web', '2024-07-01 06:45:25', '2024-07-01 06:45:25'),
(42, 'update subcategory', 'web', '2024-07-01 06:45:36', '2024-07-01 06:45:36'),
(43, 'delete subcategory', 'web', '2024-07-01 06:45:46', '2024-07-01 06:45:46'),
(44, 'create childcategory', 'web', '2024-07-01 06:50:38', '2024-07-01 06:50:38'),
(45, 'view childcategory', 'web', '2024-07-01 06:50:45', '2024-07-01 06:50:45'),
(46, 'update childcategory', 'web', '2024-07-01 06:50:53', '2024-07-01 06:50:53'),
(47, 'delete childcategory', 'web', '2024-07-01 06:51:01', '2024-07-01 06:51:01'),
(48, 'create product', 'web', '2024-07-01 06:51:35', '2024-07-01 06:51:35'),
(49, 'view product', 'web', '2024-07-01 06:51:41', '2024-07-01 06:51:41'),
(50, 'update product', 'web', '2024-07-01 06:51:51', '2024-07-01 06:51:51'),
(51, 'delete product', 'web', '2024-07-01 06:52:00', '2024-07-01 06:52:00'),
(52, 'view color', 'web', '2024-07-13 00:37:41', '2024-07-13 00:37:41'),
(53, 'view size', 'web', '2024-07-13 00:38:11', '2024-07-13 00:38:11'),
(54, 'view unit', 'web', '2024-07-13 00:39:28', '2024-07-13 00:39:28'),
(55, 'view manufacture', 'web', '2024-07-13 00:39:52', '2024-07-13 00:39:52'),
(56, 'create color', 'web', '2024-07-13 00:40:24', '2024-07-13 00:40:24'),
(57, 'update color', 'web', '2024-07-13 00:40:31', '2024-07-13 00:40:31'),
(58, 'delete color', 'web', '2024-07-13 00:40:40', '2024-07-13 00:40:40'),
(59, 'create size', 'web', '2024-07-13 00:41:37', '2024-07-13 00:41:37'),
(60, 'update size', 'web', '2024-07-13 00:41:44', '2024-07-13 00:41:44'),
(61, 'delete size', 'web', '2024-07-13 00:41:52', '2024-07-13 00:41:52'),
(62, 'create manufacture', 'web', '2024-07-13 00:42:19', '2024-07-13 00:42:19'),
(63, 'update manufacture', 'web', '2024-07-13 00:42:31', '2024-07-13 00:42:31'),
(64, 'delete manufacture', 'web', '2024-07-13 00:42:43', '2024-07-13 00:42:43'),
(65, 'create unit', 'web', '2024-07-13 00:42:59', '2024-07-13 00:42:59'),
(66, 'update unit', 'web', '2024-07-13 00:43:07', '2024-07-13 00:43:07'),
(67, 'delete unit', 'web', '2024-07-13 00:43:15', '2024-07-13 00:43:15'),
(68, 'people management', 'web', '2024-07-14 04:20:40', '2024-07-14 04:20:40'),
(69, 'view customers', 'web', '2024-07-14 04:20:51', '2024-07-24 19:20:46'),
(70, 'create customers', 'web', '2024-07-14 04:21:00', '2024-07-24 19:20:38'),
(71, 'update customers', 'web', '2024-07-14 04:21:12', '2024-07-24 19:20:31'),
(72, 'delete customers', 'web', '2024-07-14 04:21:20', '2024-07-24 19:20:23'),
(73, 'create suppliers', 'web', '2024-07-24 19:21:44', '2024-07-24 19:21:44'),
(74, 'view suppliers', 'web', '2024-07-24 19:21:51', '2024-07-24 19:21:51'),
(75, 'update suppliers', 'web', '2024-07-24 19:21:59', '2024-07-24 19:21:59'),
(76, 'delete suppliers', 'web', '2024-07-24 19:22:09', '2024-07-24 19:22:09'),
(77, 'account management', 'web', '2024-07-28 22:44:15', '2024-07-28 22:44:15'),
(78, 'view class', 'web', '2024-07-28 22:45:29', '2024-07-28 22:45:29'),
(79, 'create class', 'web', '2024-07-28 22:45:38', '2024-07-28 22:45:38'),
(80, 'update class', 'web', '2024-07-28 22:45:46', '2024-07-28 22:45:46'),
(81, 'delete class', 'web', '2024-07-28 22:45:53', '2024-07-28 22:45:53'),
(82, 'view group', 'web', '2024-07-28 22:46:12', '2024-07-28 22:46:12'),
(83, 'create group', 'web', '2024-07-28 22:46:18', '2024-07-28 22:46:18'),
(84, 'update group', 'web', '2024-07-28 22:46:24', '2024-07-28 22:46:24'),
(85, 'delete group', 'web', '2024-07-28 22:46:32', '2024-07-28 22:46:32'),
(87, 'view subgroup', 'web', '2024-07-28 22:47:46', '2024-07-28 22:47:46'),
(88, 'create subgroup', 'web', '2024-07-28 22:48:03', '2024-07-28 22:48:03'),
(89, 'update subgroup', 'web', '2024-07-28 22:48:14', '2024-07-28 22:48:14'),
(90, 'delete subgroup', 'web', '2024-07-28 22:48:20', '2024-07-28 22:48:20'),
(91, 'view ledger', 'web', '2024-07-28 22:48:38', '2024-07-28 22:48:38'),
(92, 'create ledger', 'web', '2024-07-28 22:48:46', '2024-07-28 22:48:46'),
(93, 'update ledger', 'web', '2024-07-28 22:48:53', '2024-07-28 22:48:53'),
(94, 'delete ledger', 'web', '2024-07-28 22:49:00', '2024-07-28 22:49:00'),
(95, 'view accountpayment', 'web', '2024-07-28 22:50:21', '2024-07-28 22:50:21'),
(96, 'create accountpayment', 'web', '2024-07-28 22:50:48', '2024-07-28 22:50:48'),
(97, 'update accountpayment', 'web', '2024-07-28 22:50:55', '2024-07-28 22:50:55'),
(98, 'delete accountpayment', 'web', '2024-07-28 22:51:02', '2024-07-28 22:51:02'),
(99, 'view accountreceive', 'web', '2024-07-28 22:51:20', '2024-07-28 22:51:20'),
(100, 'create accountreceive', 'web', '2024-07-28 22:51:42', '2024-07-28 22:51:42'),
(101, 'update accountreceive', 'web', '2024-07-28 22:51:48', '2024-07-28 22:51:48'),
(102, 'delete accountreceive', 'web', '2024-07-28 22:51:54', '2024-07-28 22:51:54'),
(103, 'view journal', 'web', '2024-07-28 22:52:11', '2024-07-28 22:52:11'),
(104, 'create journal', 'web', '2024-07-28 22:52:19', '2024-07-28 22:52:19'),
(105, 'update journal', 'web', '2024-07-28 22:52:25', '2024-07-28 22:52:25'),
(106, 'delete journal', 'web', '2024-07-28 22:52:31', '2024-07-28 22:52:31'),
(107, 'view transaction', 'web', '2024-07-28 22:52:45', '2024-07-28 22:52:45'),
(108, 'create transaction', 'web', '2024-07-28 22:52:52', '2024-07-28 22:52:52'),
(109, 'update transaction', 'web', '2024-07-28 22:52:58', '2024-07-28 22:52:58'),
(110, 'delete transaction', 'web', '2024-07-28 22:53:04', '2024-07-28 22:53:04'),
(111, 'bank management', 'web', '2024-07-28 22:59:23', '2024-07-28 22:59:23'),
(112, 'view expensedetails', 'web', '2024-07-28 23:18:41', '2024-07-28 23:18:41'),
(113, 'create expensedetails', 'web', '2024-07-28 23:18:48', '2024-07-28 23:18:48'),
(114, 'update expensedetails', 'web', '2024-07-28 23:18:55', '2024-07-28 23:18:55'),
(115, 'delete expensedetails', 'web', '2024-07-28 23:19:01', '2024-07-28 23:19:01'),
(116, 'view transactiondetails', 'web', '2024-07-28 23:20:54', '2024-07-28 23:20:54'),
(117, 'create transactiondetails', 'web', '2024-07-28 23:21:00', '2024-07-28 23:21:00'),
(118, 'update transactiondetails', 'web', '2024-07-28 23:21:08', '2024-07-28 23:21:08'),
(119, 'delete transactiondetails', 'web', '2024-07-28 23:21:16', '2024-07-28 23:21:16'),
(121, 'view bank', 'web', '2024-07-28 23:28:04', '2024-07-28 23:28:04'),
(122, 'create bank', 'web', '2024-07-28 23:28:12', '2024-07-28 23:28:12'),
(123, 'update bank', 'web', '2024-07-28 23:28:18', '2024-07-28 23:28:18'),
(124, 'delete bank', 'web', '2024-07-28 23:28:24', '2024-07-28 23:28:24'),
(125, 'view bankaccount', 'web', '2024-07-28 23:28:37', '2024-07-28 23:28:37'),
(126, 'create bankaccount', 'web', '2024-07-28 23:28:46', '2024-07-28 23:28:46'),
(127, 'update bankaccount', 'web', '2024-07-28 23:28:53', '2024-07-28 23:28:53'),
(128, 'delete bankaccount', 'web', '2024-07-28 23:28:58', '2024-07-28 23:28:58'),
(129, 'view bankmobile', 'web', '2024-07-28 23:29:12', '2024-07-28 23:29:12'),
(130, 'create bankmobile', 'web', '2024-07-28 23:29:17', '2024-07-28 23:29:17'),
(131, 'update bankmobile', 'web', '2024-07-28 23:29:23', '2024-07-28 23:29:23'),
(132, 'delete bankmobile', 'web', '2024-07-28 23:29:29', '2024-07-28 23:29:29'),
(133, 'view banktransaction', 'web', '2024-07-28 23:29:43', '2024-07-28 23:29:43'),
(134, 'create banktransaction', 'web', '2024-07-28 23:29:56', '2024-07-28 23:29:56'),
(135, 'update banktransaction', 'web', '2024-07-28 23:30:04', '2024-07-28 23:30:04'),
(136, 'delete banktransaction', 'web', '2024-07-28 23:30:12', '2024-07-28 23:30:12'),
(137, 'view banktransfer', 'web', '2024-07-28 23:30:36', '2024-07-28 23:30:36'),
(138, 'create banktransfer', 'web', '2024-07-28 23:30:43', '2024-07-28 23:30:43'),
(139, 'update banktransfer', 'web', '2024-07-28 23:30:49', '2024-07-28 23:30:49'),
(140, 'delete banktransfer', 'web', '2024-07-28 23:30:56', '2024-07-28 23:30:56'),
(141, 'view bankcheque', 'web', '2024-07-28 23:31:11', '2024-07-28 23:31:11'),
(142, 'create bankcheque', 'web', '2024-07-28 23:31:17', '2024-07-28 23:31:17'),
(143, 'update bankcheque', 'web', '2024-07-28 23:31:23', '2024-07-28 23:31:23'),
(144, 'delete bankcheque', 'web', '2024-07-28 23:31:28', '2024-07-28 23:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `min_quantity` varchar(255) DEFAULT NULL,
  `tex` varchar(255) DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `manufacture_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `quantity`, `created_by`, `image`, `min_quantity`, `tex`, `discount_type`, `discount`, `description`, `status`, `brand_id`, `category_id`, `size_id`, `sub_category_id`, `color_id`, `child_category_id`, `unit_id`, `manufacture_id`, `created_at`, `updated_at`) VALUES
(2, 'toner 222', '1', 54.00, '33', 'Admin', 'admin/uploaded-files/product/products/pro-1721190462819.png', '3', '1', 'percent', 44.00, 'xcvg sdfg', 1, 1, 3, 3, 3, 1, 6, 1, 1, '2024-07-13 02:50:35', '2024-07-16 22:27:42'),
(3, 'toner 3333', '1', 54.00, '33', 'Admin', 'admin/uploaded-files/product/products/pro-1721190472620.png', '3', '1', 'percent', 44.00, 'xcvg sdfg', 1, 1, 3, 3, 3, 1, 6, 1, 1, '2024-07-13 02:50:35', '2024-07-16 22:27:52'),
(4, 'toner 44', '1', 54.00, '33', 'Admin', 'admin/uploaded-files/product/products/pro-1721190485632.jpg', '3', '1', 'percent', 44.00, 'xcvg sdfg', 1, 1, 3, 3, 3, 1, 6, 1, 1, '2024-07-13 02:50:35', '2024-07-16 22:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'web', NULL, NULL),
(6, 'Admin', 'web', '2024-06-29 01:42:36', '2024-06-29 01:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 6),
(3, 1),
(3, 6),
(4, 1),
(4, 6),
(5, 1),
(5, 6),
(6, 1),
(6, 6),
(7, 1),
(7, 6),
(8, 1),
(8, 6),
(9, 1),
(9, 6),
(10, 1),
(10, 6),
(11, 1),
(11, 6),
(12, 1),
(12, 6),
(13, 1),
(13, 6),
(14, 1),
(14, 6),
(15, 1),
(15, 6),
(16, 1),
(16, 6),
(17, 1),
(17, 6),
(18, 1),
(18, 6),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `bname`, `symbol`, `status`, `created_at`, `updated_at`) VALUES
(3, 'create user', 'lal', 'asdf', 1, '2024-07-13 03:42:54', '2024-07-13 03:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `store_code` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `incharge` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `address`, `store_code`, `mobile`, `status`, `slug`, `company_id`, `incharge`, `created_at`, `updated_at`) VALUES
(3, 'admin', '<p>asd ad ad</p>', '2', 'sdfg', 1, NULL, 3, 3, '2024-07-01 02:39:33', '2024-07-01 02:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `store_types`
--

CREATE TABLE `store_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sub_cat_code` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `image`, `sub_cat_code`, `created_by`, `description`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 3, 'asdf', 'admin/uploaded-files/product/sub_category/sub_cat-1719922072530.JPG', '1', 'Super Admin', 'asefr', 1, NULL, '2024-07-02 05:01:25', '2024-07-02 06:07:52'),
(3, 3, 'asdf', 'admin/uploaded-files/product/sub_category/sub_cat-1719922533597.JPG', '2', 'Super Admin', 'asdf', 1, NULL, '2024-07-02 06:15:33', '2024-07-02 06:15:33'),
(4, 5, 'color', '', '3', 'Admin', 'sdf', 1, NULL, '2024-07-14 00:00:26', '2024-07-14 00:00:26'),
(5, 5, 'nwe', '', '4', 'Admin', 'sdf', 1, NULL, '2024-07-14 00:11:27', '2024-07-14 00:11:27');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sup_code` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `cperson` varchar(255) DEFAULT NULL,
  `cmobile` varchar(255) DEFAULT NULL,
  `creditlimit` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `sup_code`, `email`, `mobile`, `nid`, `cperson`, `cmobile`, `creditlimit`, `balance`, `image`, `rank`, `address`, `note`, `status`, `company_id`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 'sarowar', '', 'user@user.com', '01677997957', '32rsdfg4', 'create user', '01677997957', '333', '33333', 'admin/uploaded-files/people/suppliers/sup-1721017164796.png', '344', 'dfg', 'jjj', '1', NULL, NULL, '2024-07-14 22:19:24', '2024-07-14 22:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `bname`, `symbol`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'lal', 'asdf', 1, '2024-07-13 00:46:32', '2024-07-13 00:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin/uploaded-files/users/user-1719727653448.JPG', 'superadmin@gmail.com', NULL, '$2y$10$Vma53vXNqexCXjH9KbGBS.ecXRkNTxOGyquBj0Bkn89r9DxV.a7Ba', NULL, '2024-06-29 01:23:01', '2024-06-30 00:07:33'),
(2, 'Admin', 'admin/uploaded-files/users/user-1719727608950.JPG', 'admin@gmail.com', NULL, '$2y$10$MxRtJ2oyVA33iIJ12azJMeoz9aGnApMRBKBoLr7n42/gxRP/FOzEm', NULL, '2024-06-29 01:43:10', '2024-06-30 00:06:48'),
(3, 'sarowar', 'admin/uploaded-files/users/user-1719727547460.JPG', 'sarowar@gmail.com', NULL, '$2y$10$HyGozL1MggKiAxSarrYpTuryvr5fk1XzdXZGiyy0Ni.WIt61Cq5oi', NULL, '2024-06-29 02:37:50', '2024-06-30 00:05:47'),
(5, 'Admin', 'admin/uploaded-files/users/user-1719727347237.png', 'ussdfer@user.com', NULL, '$2y$10$7ICfkx.w.e76gHDUY9.Z6eGlYPsftma4KZLlSxy6hN3qLSpD4kNI2', NULL, '2024-06-29 05:02:38', '2024-06-30 00:02:27'),
(8, 'Adminawef', 'admin/uploaded-files/users/user-1719663525129.JPG', 'use23fwsdfsadr@user.com', NULL, '$2y$10$U1xmihCoeDUQvQc.RTtQ.uPi3VmJMXvQ3uOtn0ZkCnP9pJ8qXhiea', NULL, '2024-06-29 06:18:45', '2024-06-30 00:08:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_bank_transactions`
--
ALTER TABLE `account_bank_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_bank_transaction_details`
--
ALTER TABLE `account_bank_transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_classes`
--
ALTER TABLE `account_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_expense_details`
--
ALTER TABLE `account_expense_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_groups`
--
ALTER TABLE `account_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_journals`
--
ALTER TABLE `account_journals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_journal_details`
--
ALTER TABLE `account_journal_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_ledgers`
--
ALTER TABLE `account_ledgers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_payments`
--
ALTER TABLE `account_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_payment_details`
--
ALTER TABLE `account_payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_receives`
--
ALTER TABLE `account_receives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_receive_details`
--
ALTER TABLE `account_receive_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_sub_groups`
--
ALTER TABLE `account_sub_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_transaction_details`
--
ALTER TABLE `account_transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_cheques`
--
ALTER TABLE `bank_cheques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_mobiles`
--
ALTER TABLE `bank_mobiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transaction_details`
--
ALTER TABLE `bank_transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branches_company_id_foreign` (`company_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_user`
--
ALTER TABLE `company_user`
  ADD KEY `company_user_user_id_foreign` (`user_id`),
  ADD KEY `company_user_company_id_foreign` (`company_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_types`
--
ALTER TABLE `store_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_bank_transactions`
--
ALTER TABLE `account_bank_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_bank_transaction_details`
--
ALTER TABLE `account_bank_transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_classes`
--
ALTER TABLE `account_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_expense_details`
--
ALTER TABLE `account_expense_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_groups`
--
ALTER TABLE `account_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_journals`
--
ALTER TABLE `account_journals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_journal_details`
--
ALTER TABLE `account_journal_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_ledgers`
--
ALTER TABLE `account_ledgers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_payments`
--
ALTER TABLE `account_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_payment_details`
--
ALTER TABLE `account_payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_receives`
--
ALTER TABLE `account_receives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_receive_details`
--
ALTER TABLE `account_receive_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_sub_groups`
--
ALTER TABLE `account_sub_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_transaction_details`
--
ALTER TABLE `account_transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_cheques`
--
ALTER TABLE `bank_cheques`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_mobiles`
--
ALTER TABLE `bank_mobiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_transaction_details`
--
ALTER TABLE `bank_transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store_types`
--
ALTER TABLE `store_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `company_user`
--
ALTER TABLE `company_user`
  ADD CONSTRAINT `company_user_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `company_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
