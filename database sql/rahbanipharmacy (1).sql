-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 07:31 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rahbanipharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `userID` int(11) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pnumber` varchar(40) NOT NULL,
  `appointment` varchar(40) NOT NULL,
  `adate` date NOT NULL,
  `time` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`userID`, `fname`, `lname`, `email`, `pnumber`, `appointment`, `adate`, `time`) VALUES
(80, 'samar', 'kreidy', 'kreidy123@gmail.com', '71122333', 'manicure', '2020-12-30', ''),
(81, 'alfonse', 'putin', 'putin.ae@lau.edu', '71954349', 'manicure', '2021-01-07', '');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(20) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `quantity` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `productname`, `quantity`) VALUES
(1, 'Actonel O. A W. 35mg 4 Tabs', 1),
(2, 'Almond Baby skin care cream 150ml', 2),
(3, 'Almond Baby skin care cream 75ML', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productName`, `quantity`) VALUES
('Description,Qty', 0),
('Actonel O. A W. 35mg 4 Tabs                                                                                             ,0', 0),
('Almond Baby skin care cream 150ml,2', 0),
('Almond Baby skin care cream 75ML,2', 0),
('Aminosteril 5 % 1 X 500 Ml                                                                                              ,0', 0),
('Aminosteril Ke 10% 1x 500 Ml                                                                                            ,0', 0),
('Aminoven 10% 500ml                                                                                                      ,0', 0),
('Aminoven 5 % 500 Ml                                                                                                     ,0', 0),
('Aminoven Infant 10% 100ml                                                                                               ,0', 0),
('Amlocard 10mg 30 Tabs                                                                                                   ,108', 0),
('Amlocard 10mg 30 Tabs                                                                                                   ,0', 0),
('Amlocard 10mg 30 Tabs                                                                                                   ,0', 0),
('Amlocard 5mg 30 Tabs                                                                                                    ,200', 0),
('Amlocard 5mg 30 Tabs                                                                                                    ,100', 0),
('Amlocard 5mg 30 Tabs                                                                                                    ,0', 0),
('Amlocard 5mg 30 Tabs                                                                                                    ,82', 0),
('Aripezil 10 mg 30 tab,9', 0),
('Atg Fresenius 1 X 5 Ml&&&&&&&&&&&&&&&&&&                                                                                ,0', 0),
('Atorlip 10 Mg 30film Coated Tabs                                                                                        ,30', 0),
('Atorlip 10 Mg 30film Coated Tabs                                                                                        ,1', 0),
('Atorlip 20 Mg 30 Film Coated Tabs                                                                                       ,10', 0),
('Atorlip 20 Mg 30 Film Coated Tabs                                                                                       ,0', 0),
('Atorlip 40mg 30tabs                                                                                                     ,0', 0),
('Atorlip 40mg 30tabs                                                                                                     ,3', 0),
('Azicin 250 benta 6tabs,16', 0),
('Azicin 250 benta 6tabs,0', 0),
('Azicin 250 benta 6tabs,10', 0),
('Azicin 500 benta 3tabs,0', 0),
('Azicin 500 benta 3tabs,10', 0),
('Azicin 500 benta 3tabs,8', 0),
('Azifast 250mg 6tabs,0', 0),
('Azifast 500mg 3tabs,0', 0),
('Becaplex Gel 15 Gr. 0.01%                                                                                               ,0', 0),
('Benta D 10000 30 Caps                                                                                                   ,0', 0),
('Benta D 10000 30 Caps                                                                                                   ,34', 0),
('Benta D 10000 30 Caps                                                                                                   ,49', 0),
('Benta D 10000 30 Caps                                                                                                   ,0', 0),
('Berinin p 600IU ,0', 0),
('Berinine(facteur 9)                                                                                                     ,0', 0),
('Bio-d3 25000 Iu 15 Softgels                                                                                             ,0', 0),
('Bisocor 10 Mg 30 Tabs                                                                                                   ,1', 0),
('Bisocor 10 Mg 30 Tabs                                                                                                   ,5', 0),
('Bisocor 5 Mg 30 Tabs                                                                                                    ,0', 0),
('Bisocor 5 Mg 30 Tabs                                                                                                    ,0', 0),
('Bisocor 5 Mg 30 Tabs                                                                                                    ,0', 0),
('Bisocor 5 Mg 30 Tabs                                                                                                    ,49', 0),
('Bisocor 5 Mg 30 Tabs                                                                                                    ,0', 0),
('Bisocor 5 Mg 30 Tabs                                                                                                    ,300', 0),
('Bisocor 5 Mg 30 Tabs                                                                                                    ,0', 0),
('Bisocor 5 Plus 5/12.5mg 30 Tabs                                                                                         ,0', 0),
('Bisocor 5 Plus 5/12.5mg 30 Tabs                                                                                         ,69', 0),
('Bisocor 5 Plus 5/12.5mg 30 Tabs                                                                                         ,0', 0),
('boderm 250mg 15tabs ,3', 0),
('boderm 250mg 15tabs ,4', 0),
('Bon-one 0.25mcg 100 Tabs                                                                                                ,0', 0),
('Bon-one 0.5mcg 100 Tabs                                                                                                 ,0', 0),
('Bon-one 1mcg 100 Tabs                                                                                                   ,0', 0),
('Capeda 500mg 120 Tablets                                                                                                ,0', 0),
('Capeda 500mg 60 Tabs.                                                                                                   ,4', 0),
('Carboplatine Mylan 10 mg/mL ,0', 0),
('Carboplatine Mylan 10 mg/mL ,13', 0),
('Cefipex 1000mg Im/iv                                                                                                    ,4', 0),
('Cisplatin Mylan 50mg/50ml 1 Vial 50ml                                                                                   ,0', 0),
('Cisplatin Mylan 50mg/50ml 1 Vial 50ml                                                                                   ,0', 0),
('Cisplatine Mylan 1mg/ml  1vial 10ml                                                                                     ,1', 0),
('Cisplatine Mylan 1mg/ml  1vial 10ml                                                                                     ,0', 0),
('Clomid 50mg 10 Tabs                                                                                                     ,0', 0),
('Condine 150/300Mg 60Tabs,1', 0),
('Consupren 100 Mg 50 Soft Gel. Caps                                                                                      ,0', 0),
('Consupren 25 Mg 50 Caps                                                                                                 ,0', 0),
('Consupren 50 Mg 50 Soft Gel. Caps                                                                                       ,0', 0),
('Cresulip 10mg 30 Tabs.                                                                                                  ,0', 0),
('Cresulip 10mg 30 Tabs.                                                                                                  ,1', 0),
('Cresulip 10mg 30 Tabs.                                                                                                  ,6', 0),
('Cresulip 10mg 30 Tabs.                                                                                                  ,10', 0),
('Cresulip 10mg 30 Tabs.                                                                                                  ,31', 0),
('Cresulip 20mg 30 Tabs.                                                                                                  ,0', 0),
('Cresulip 20mg 30 Tabs.                                                                                                  ,0', 0),
('Cresulip 20mg 30 Tabs.                                                                                                  ,10', 0),
('Cresulip 20mg 30 Tabs.                                                                                                  ,0', 0),
('Cresulip 20mg 30 Tabs.                                                                                                  ,0', 0),
('Cresulip 20mg 30 Tabs.                                                                                                  ,100', 0),
('Daonil 5 Mg 30 Tabs                                                                                                     ,0', 0),
('Diamet 500mg/5mg 30 Tabs                                                                                                ,3', 0),
('Diamet 500mg/5mg 30 Tabs                                                                                                ,0', 0),
('Dianorm 1000mg Xr 30 Tabs                                                                                               ,90', 0),
('Dianorm 1000mg Xr 30 Tabs                                                                                               ,0', 0),
('Dianorm 1000mg Xr 30 Tabs                                                                                               ,230', 0),
('Dianorm 500mg Xr 30 Tabs                                                                                                ,56', 0),
('Dianorm 500mg Xr 30 Tabs                                                                                                ,100', 0),
('Dianorm 750mg Xr 30 Tabs.                                                                                               ,23', 0),
('Dianorm 750mg Xr 30 Tabs.                                                                                               ,0', 0),
('Dianorm 750mg Xr 30 Tabs.                                                                                               ,120', 0),
('Dianorm 850mg 30tabs                                                                                                    ,2', 0),
('Dianorm 850mg 30tabs                                                                                                    ,10', 0),
('Dianorm 850mg 30tabs                                                                                                    ,230', 0),
('Dianorm 850mg 30tabs                                                                                                    ,0', 0),
('Dianorm 850mg 30tabs                                                                                                    ,0', 0),
('Diltiazem 60mg 100 Tabs                                                                                                 ,0', 0),
('Dipeptiven 100ml 1 Flacon                                                                                               ,0', 0),
('dolopan 500mg 20tabs,8', 0),
('Donecept 10mg 30tabs,3', 0),
('Donecept 5mg 30tabs,1', 0),
('Dronel once a week 35mg 4fct ,2', 0),
('duloxa 30mg 30delayed released caps,0', 0),
('duloxa 60mg 30delayed released caps,0', 0),
('Duralis 20 Mg 4 Tabs                                                                                                    ,5.744', 0),
('duralis 20mg 1 tab,0', 0),
('duralis 20mg 1 tab,79', 0),
('Duralis 5mg 30tabs,20', 0),
('Duralis 5mg 30tabs,0', 0),
('Duralis 5mg 30tabs,4', 0),
('Eliza 120mg 30 Caps.                                                                                                    ,0', 0),
('Eliza 120mg 30 Caps.                                                                                                    ,0', 0),
('Eliza 120mg 30 Caps.                                                                                                    ,0', 0),
('Eliza 120mg 30 Caps.                                                                                                    ,78', 0),
('Eliza 60 Mg 30 Caps                                                                                                     ,0', 0),
('Elotrans Pulvers.                                                                                                       ,0', 0),
('Epirubicine Mylan 10mg/5ml ,0', 0),
('Epirubicine Mylan 50 Mg/25 Ml Iv                                                                                        ,0', 0),
('Epotex 2000 Iu 1ml                                                                                                      ,0', 0),
('Epotex 4000 Iu 2 Ml                                                                                                     ,0', 0),
('Etoposide Mylan 100mg/5ml                                                                                               ,15', 0),
('Ezetralex 10mg 30 Tabs.                                                                                                 ,0', 0),
('Ezetralex 10mg 30 Tabs.                                                                                                 ,187', 0),
('Ezetralex 10mg 30 Tabs.                                                                                                 ,0', 0),
('Ezetralex 10mg 30 Tabs.                                                                                                 ,210', 0),
('Facteur 9 (berinine)                                                                                                    ,0', 0),
('Fire Power 1 Fl. 60 Ml (sweet Berry)                                                                                    ,0', 0),
('Floxin L 500mg 7 film coated tablets,12', 0),
('Flumivir  75mg 10 Caps.                                                                                                 ,104', 0),
('Flumivir  75mg 10 Caps.                                                                                                 ,750', 0),
('Flumivir  75mg 10 Caps.                                                                                                 ,0', 0),
('flumix benta 10 tabs,180', 0),
('Flumix Benta 20tab                                                                                                      ,15', 0),
('Flumix Benta 20tab                                                                                                      ,75', 0),
('Flumix Benta 20tab                                                                                                      ,35', 0),
('Fluzan 150mg 1 Tab.                                                                                                     ,49', 0),
('Fluzan 150mg 1 Tab.                                                                                                     ,0', 0),
('Gabrika 100mg 30 Caps.                                                                                                  ,2', 0),
('Gabrika 100mg 30 Caps.                                                                                                  ,1', 0),
('Gabrika 100mg 30 Caps.                                                                                                  ,0', 0),
('Gabrika 150mg 30 Caps.                                                                                                  ,0', 0),
('Gabrika 150mg 30 Caps.                                                                                                  ,9', 0),
('Gabrika 150mg 30 Caps.                                                                                                  ,1', 0),
('gabrika 25mg 30 capsule,18', 0),
('gabrika 25mg 30 capsule,50', 0),
('gabrika 25mg 30 capsule,0', 0),
('Gabrika 75mg 30 Caps.                                                                                                   ,0', 0),
('Gabrika 75mg 30 Caps.                                                                                                   ,0', 0),
('Gabrika 75mg 30 Caps.                                                                                                   ,30', 0),
('Gabrika 75mg 30 Caps.                                                                                                   ,0', 0),
('Gabrika 75mg 30 Caps.                                                                                                   ,11', 0),
('Gelorevoice throat lozenges,46', 0),
('glimatinib benta 100 mg 120 tabs,0', 0),
('Haemate P 250 Iu                                                                                                        ,0', 0),
('Haemate P 500 Iu                                                                                                        ,0', 0),
('Haemocomplettan P 1 G &&&&&&&&&&&&&&&2                                                                                  ,0', 0),
('Haemocomplettan P 1G,0', 0),
('Hepatitis B Immunglobulin P 1 Ml Vac.&&3                                                                                ,0', 0),
('Himate(facteur 8)                                                                                                       ,0', 0),
('Human Albumin 20% 100ml &&&&&&&&&&&&&&&&&&                                                                              ,0', 0),
('Human Albumin 20% 50ml (Benta) frigo                                                                                    ,0', 0),
('Human Albumin 20% 50ml (Benta) frigo                                                                                    ,0', 0),
('Human Albumin 20% 50ml (Benta) frigo                                                                                    ,22', 0),
('HYAtears 10ml preservative frere,0', 0),
('HYAtears forte 10ml,8', 0),
('HYAtears UNO 30*0.5ml,0', 0),
('Hydradrop 10ml bottle,8', 0),
('Imunocell 500mg 50 Tabs.                                                                                                ,0', 0),
('Injex System Injector& Reset Box 3 Ml                                                                                   ,0', 0),
('Ins. Lantus 100 Iu/ml 1x10ml Vial &&&&1                                                                                 ,0', 0),
('Instant Energy 1 Fl. 60 Ml                                                                                              ,0', 0),
('Insuman 100 Iu Basal  5 Ml&&&&&&&1                                                                                      ,0', 0),
('Insuman 100 Iu Basal 5 X3 Ml Cart&&&&&1                                                                                 ,0', 0),
('Insuman 100 Iu Comb 5 Ml&&&&&&&&&&&&1                                                                                   ,0', 0),
('Insuman 100 Iu Rapid 5 Ml&&&&&&1                                                                                        ,0', 0),
('Iviron 20mg/ml 100mg I.v. 5*5ml                                                                                         ,4', 0),
('Iviron 20mg/ml 100mg I.v. 5*5ml                                                                                         ,0', 0),
('Kaluvia 200/50mg 60tabs,2', 0),
('Ketosteril 100 Tabs                                                                                                     ,3', 0),
('Lasix 250mg 5 Amp. De 25 Ml                                                                                             ,0', 0),
('Lasix Amp. 5 X2 Ml                                                                                                      ,0', 0),
('Lasix Ped Liquid 150 Ml&&&&&&&&&&&&&&2                                                                                  ,0', 0),
('levipram 1000 100tabs,4.9', 0),
('Levipram 250 100tabs,3', 0),
('Levipram 500 Mg 100 Fct                                                                                                 ,13', 0),
('Levipram 500 Mg 100 Fct                                                                                                 ,5', 0),
('Levipram 500 Mg 100 Fct                                                                                                 ,0.4', 0),
('Lipoacid Combi 30 Tabs                                                                                                  ,0', 0),
('Lipoacid Cream 30 Ml                                                                                                    ,0', 0),
('Lipovenoes 10 % Plr 1*500 Ml                                                                                            ,0', 0),
('Lipovenoes 20% 500 Ml                                                                                                   ,9', 0),
('loxyt 30mg 30caps,7', 0),
('loxyt 30mg 30caps,1', 0),
('loxyt 60mg 30caps,1', 0),
('loxyt 60mg 30caps,4', 0),
('loxyt 60mg 30caps,0', 0),
('Methyle Prednisolone 120mg mylan 1vial,0', 0),
('Methylprednisolone 40mg mylan 1vial,0', 0),
('Nanofib 145mg 30 Tabs.                                                                                                  ,0', 0),
('Nanofib 145mg 30 Tabs.                                                                                                  ,0', 0),
('Nanofib 145mg 30 Tabs.                                                                                                  ,70', 0),
('Nanofib 145mg 30 Tabs.                                                                                                  ,15', 0),
('Neograstim 30 Mu 1ml Sc/iv                                                                                              ,5', 0),
('Novalgin 5 Amp 5ml                                                                                                      ,0', 0),
('Novalgin Tab 0.5g 10  Tab                                                                                               ,0', 0),
('Novalgin Tab 0.5g 20                                                                                                    ,0', 0),
('Octagam 10g                                                                                                             ,0', 0),
('Octagam 5 G 100 Ml                                                                                                      ,0', 0),
('Octagam 5.0 Gr 50 Ml                                                                                                    ,0', 0),
('Olanzax 10mg 30tabs,0', 0),
('Olanzax 10mg 30tabs,8', 0),
('Olanzax 10mg 30tabs,10', 0),
('Olanzax 10mg 30tabs,0', 0),
('Olanzax 5mg 30tabs,0', 0),
('Olanzax 5mg 30tabs,0', 0),
('Olanzax 5mg 30tabs,26', 0),
('Olanzax 5mg 30tabs,0', 0),
('Olizax 10mg 30mouth dissolving tabs,3', 0),
('Olizax 5mg 30mouth dissolving tabs,2', 0),
('Omezol 20 Mg 30 Caps                                                                                                    ,0', 0),
('Omezol 20 Mg 30 Caps                                                                                                    ,2.663', 0),
('Omezol 20 Mg 30 Caps                                                                                                    ,0', 0),
('Oral-lyn 400 Iu Spray &&&&&&&&&&&&&&&&&&&&&&&&&                                                                         ,0', 0),
('Oxaliplatine mylan 5mg/ml 1vial,0', 0),
('Peditrace 10Ml*10,11', 0),
('Penfine Kan 29 G X 12 Mm                                                                                                ,0', 0),
('Penfine Kan 31 G. X 8 Mm                                                                                                ,0', 0),
('Piodiab 15 15 Mg 30 Tab                                                                                                 ,0', 0),
('Piodiab 15 15 Mg 30 Tab                                                                                                 ,7', 0),
('Piodiab 30 30 Mg 30 Tabs                                                                                                ,0', 0),
('Piodiab 30 30 Mg 30 Tabs                                                                                                ,4', 0),
('Pregaforte 100mg 30caps,2', 0),
('Pregaforte 150mg 30caps,1', 0),
('Pregaforte 25mg 30caps,1', 0),
('Pregaforte 75mg 30caps,4', 0),
('Privigen 10% human normal immuno. 5g/50ml,0', 0),
('Profact Depot 6.6 Mg 2 M                                                                                                ,0', 0),
('Prosmide 50mg 30 Tabs.                                                                                                  ,0', 0),
('Prostafine 0.4 Mg 30 Tabs                                                                                               ,0', 0),
('Prostafine 0.4 Mg 30 Tabs                                                                                               ,247', 0),
('Prylex 10mg 30tabs,11', 0),
('Prylex 10mg 30tabs,0', 0),
('Prylex 15Mg 30Tabs,10', 0),
('Prylex 20mg 30tabs,4', 0),
('Rabezol 10mg 15 Tabs                                                                                                    ,0', 0),
('Rabezol 20mg 10 Tabs                                                                                                    ,0', 0),
('Rabezol 20mg 30 Tabs   ,47', 0),
('Rabezol 20mg 30 Tabs   ,3', 0),
('Rhesogam P 1.5 Ml.&&&&&&&&&&&&&&3                                                                                       ,0', 0),
('Rhophylac 300mcg/2ml                                                                                                    ,0', 0),
('Rischotic OD 1mg 30comp,0', 0),
('Rischotic OD 2mg 30comp,0', 0),
('Ropenem 1000mg Iv  1 Vial                                                                                               ,0', 0),
('Ropenem 1000mg Iv  1 Vial                                                                                               ,2', 0),
('Ropenem 500mg Iv  1 Vial                                                                                                ,0', 0),
('Sandoglobulin 12 Gr.&&&&&&&&&&&&&&&&&&&&&&&&&                                                                           ,0', 0),
('Sandoglobulin 5 Gr 50ml.&&&&&&&&&&&&&&&      ,6', 0),
('Sandoglobulin 5 Gr 50ml.&&&&&&&&&&&&&&&      ,2', 0),
('Sandoglobulin 6 Gr.&&&&&&&&&&&&&&&                                                                                      ,1', 0),
('Simgal 10 Mg 28 Tabs                                                                                                    ,0', 0),
('Simgal 20 Mg 28 Tabs                                                                                                    ,0', 0),
('Simgal 40 Mg 28 Tabs                                                                                                    ,0', 0),
('Snake Venom Antiserum 1 Amp. 10 Ml&&&&&2                                                                                ,0', 0),
('Soluvit N 10*10ml,10', 0),
('Steribo 1mg 30 Tabs.                                                                                                    ,1', 0),
('Sterifine 5 (5mg) 30 Tabs                                                                                               ,31', 0),
('Sterifine 5 (5mg) 30 Tabs                                                                                               ,14', 0),
('Sterifine 5 (5mg) 30 Tabs                                                                                               ,16', 0),
('Stovirenz 600 mg 30 film coated tabs,1', 0),
('Suprefact Nasal 1 Fl.  &&&&&&&1                                                                                         ,0', 0),
('Telmicard 40 Mg 30 Tabs                                                                                                 ,0', 0),
('Telmicard 40 Mg 30 Tabs                                                                                                 ,2', 0),
('Telmicard 40 Mg 30 Tabs                                                                                                 ,100', 0),
('Telmicard 40 Mg 30 Tabs                                                                                                 ,0', 0),
('Telmicard 80 Mg 30 Tabs                                                                                                 ,0', 0),
('Telmicard 80 Mg 30 Tabs                                                                                                 ,0', 0),
('Telmicard 80 Mg 30 Tabs                                                                                                 ,229', 0),
('Telmicard 80 Mg 30 Tabs                                                                                                 ,0', 0),
('Telmicard 80 Plus 30 Tabs.                                                                                              ,0', 0),
('Telmicard 80 Plus 30 Tabs.                                                                                              ,298', 0),
('Telmicard 80 Plus 30 Tabs.                                                                                              ,0', 0),
('Tetagam 250 Iu 1 Ml Prefilled                                                                                           ,0', 0),
('Tetagam 250 Iu 1 Ml Prefilled                                                                                           ,19', 0),
('Tetagam P Amp. 250 Iu&&&&&&&&&&&&&2                                                                                     ,0', 0),
('Topirate 100mg 60 Tabs.                                                                                                 ,0', 0),
('Topirate 100mg 60 Tabs.                                                                                                 ,4', 0),
('Topirate 200 Mg 60 Tabs                                                                                                 ,0', 0),
('Topirate 25 Mg 60 Tabs                                                                                                  ,19', 0),
('Topirate 25 Mg 60 Tabs                                                                                                  ,0', 0),
('Topirate 25 Mg 60 Tabs                                                                                                  ,0', 0),
('Topirate 50mg 60 Tabs.                                                                                                  ,4', 0),
('Topirate 50mg 60 Tabs.                                                                                                  ,0', 0),
('Torvalip 10mg 30 film coated tablet,1', 0),
('Torvalip 10mg 30 film coated tablet,5', 0),
('Torvalip 10mg 30 film coated tablet,0', 0),
('Torvalip 10mg 30 film coated tablet,2', 0),
('Torvalip 20mg 30 film coated tablet,12', 0),
('Torvalip 40mg 30 film coated tablet,2', 0),
('Torvalip 40mg 30 film coated tablet,0', 0),
('Torvalip 40mg 30 film coated tablet,0', 0),
('Trental 300mg/15ml  5 Ampoules                                                                                          ,0', 0),
('Trental Infusion 10*15 Ml                                                                                               ,0', 0),
('Tritace 1.25 Mg 28 Caps                                                                                                 ,0', 0),
('Tritace Comp 2.5mg/12.5mg 28 Tabs.                                                                                      ,0', 0),
('Tritace Comp 5mg/25mg 28 Tabs.                                                                                          ,0', 0),
('Uro Tarivid 100 Mg 6 Tabs                                                                                               ,0', 0),
('Valcyk 500 Mg 10 Coated Tabs                                                                                            ,5', 0),
('Valcyk 500 Mg 10 Coated Tabs                                                                                            ,0', 0),
('Valcyk 500mg 50 Tabs                                                                                                    ,1', 0),
('Valcyk 500mg 50 Tabs                                                                                                    ,0', 0),
('Vancomycine 500 Mg Lyo Qualimed                                                                                         ,0', 0),
('Vancomycine 500mg 1 Vial                                                                                                ,0', 0),
('Venimmun N 5.0 G/100ml.&&&&&&&&&&&1                                                                                     ,0', 0),
('Venimmun P 10 G&&&&&&&&&&&&&&1                                                                                          ,0', 0),
('Venlax Xr 150 Mg 20 Tabs                                                                                                ,0', 0),
('Venlax Xr 150 Mg 20 Tabs                                                                                                ,22', 0),
('Venlax Xr 150 Mg 20 Tabs                                                                                                ,0', 0),
('Venlax Xr 37.5mg 20 Caps.                                                                                               ,9', 0),
('Venlax Xr 37.5mg 20 Caps.                                                                                               ,60', 0),
('Venlax Xr 37.5mg 20 Caps.                                                                                               ,0', 0),
('Venlax Xr 75 Mg 20 Tabs                                                                                                 ,0', 0),
('Venlax Xr 75 Mg 20 Tabs                                                                                                 ,44', 0),
('Vicondine 150mg 60 tabs,1', 0),
('Viostan 160mg 30tabs,0', 0),
('Viostan 160mg 30tabs,60', 0),
('Viostan 160mg 30tabs,0', 0),
('Viostan 320mg 30tabs,4', 0),
('Viostan 80mg 30tabs,21', 0),
('Viostan 80mg 30tabs,0', 0),
('Viostan plus 160/12.5mg 30tabs,0', 0),
('Viostan plus 160/12.5mg 30tabs,0', 0),
('Viostan plus 160/12.5mg 30tabs,29', 0),
('Viostan plus 160/25mg 30tabs,1', 0),
('Viostan plus 320/12.5mg 30tabs,0', 0),
('Viostan plus 320/12.5mg 30tabs,1', 0),
('Viostan plus 320/25mg 30tabs,6', 0),
('Viostan Plus 80/12.5 30 Tab,2', 0),
('Vitalipid N infant 10*10ml,1', 0),
('Voluven 1*500 ml,0', 0),
('Zortex 1mg 30 Tabs.                                                                                                     ,4', 0),
('Panadol', 54);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
