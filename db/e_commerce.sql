-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 01:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(9) NOT NULL,
  `user_id` int(9) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_desc` varchar(1000) NOT NULL,
  `category_img` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `category_name`, `category_desc`, `category_img`) VALUES
(1, 31, 'Temp Fencing, Decorative Fencing and Gates', 'Corrosion of other parts of alimentary tract', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313939783136322e706e672f3566613264642f666666666666),
(2, 84, 'Structural & Misc Steel Erection', 'Open bite of elbow', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323435783233322e706e672f3566613264642f666666666666),
(3, 27, 'Structural & Misc Steel Erection', 'Toxic effect of halogenated insecticides', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313833783233392e706e672f6363303030302f666666666666),
(7, 24, 'Framing (Wood)', 'Traumatic breaking of right ear drum, sequela', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313637783139392e706e672f6464646464642f303030303030),
(9, 63, 'Masonry', 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, left leg', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313337783138382e706e672f6363303030302f666666666666),
(11, 61, 'Curb & Gutter', 'Unspecified occupant of three-wheeled motor vehicle injured in collision with other nonmotor vehicle in nontraffic accident', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313630783231312e706e672f6363303030302f666666666666),
(12, 91, 'Curb & Gutter', 'Spontaneous rupture of flexor tendons, ankle and foot', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313630783134342e706e672f6363303030302f666666666666),
(13, 61, 'Exterior Signage', 'Continuing pregnancy after elective fetal reduction of one fetus or more', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323332783232322e706e672f3566613264642f666666666666),
(14, 88, 'Framing (Steel)', 'Laceration of unspecified blood vessel at lower leg level, unspecified leg, subsequent encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323230783135302e706e672f3566613264642f666666666666),
(15, 56, 'Soft Flooring and Base', 'Fall into empty swimming pool, subsequent encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313331783134312e706e672f6363303030302f666666666666),
(16, 17, 'RF Shielding', 'Maternal care for anti-D [Rh] antibodies, third trimester, fetus 5', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323330783231382e706e672f6666343434342f666666666666),
(17, 67, 'Elevator', 'Labor and delivery complicated by cord around neck, without compression', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313532783231362e706e672f6363303030302f666666666666),
(18, 46, 'Framing (Wood)', 'Contracture, left shoulder', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313731783138392e706e672f6363303030302f666666666666),
(19, 24, 'Masonry', 'Peripheral corneal degeneration', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313231783230342e706e672f6464646464642f303030303030),
(20, 44, 'Ornamental Railings', 'Intraoperative hemorrhage and hematoma of eye and adnexa complicating other procedure', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313538783130302e706e672f6464646464642f303030303030),
(21, 48, 'Epoxy Flooring', 'Pneumococcal arthritis, right ankle and foot', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313234783230322e706e672f6363303030302f666666666666),
(22, 98, 'Prefabricated Aluminum Metal Canopies', 'Maternal care for other known or suspected poor fetal growth', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313535783231392e706e672f6666343434342f666666666666),
(23, 80, 'Drywall & Acoustical (FED)', 'Abnormal cytological findings in specimens from other female genital organs', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313838783131352e706e672f6666343434342f666666666666),
(24, 55, 'Fire Sprinkler System', 'Unspecified fracture of shaft of unspecified femur, subsequent encounter for open fracture type I or II with routine healing', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323435783232332e706e672f6363303030302f666666666666),
(25, 44, 'Landscaping & Irrigation', 'Nondisplaced other extraarticular fracture of right calcaneus, subsequent encounter for fracture with routine healing', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313033783230362e706e672f3566613264642f666666666666),
(26, 88, 'Temp Fencing, Decorative Fencing and Gates', 'Continuing pregnancy after elective fetal reduction of one fetus or more, third trimester, fetus 3', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323331783137352e706e672f6464646464642f303030303030),
(27, 27, 'Soft Flooring and Base', 'Injury of cervical sympathetic nerves, sequela', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313636783230332e706e672f6363303030302f666666666666),
(28, 18, 'Roofing (Asphalt)', 'Nondisplaced fracture of shaft of unspecified metacarpal bone, initial encounter for closed fracture', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323033783233352e706e672f3566613264642f666666666666),
(29, 92, 'RF Shielding', 'Unspecified nondisplaced fracture of surgical neck of left humerus, subsequent encounter for fracture with delayed healing', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313833783233322e706e672f6666343434342f666666666666),
(30, 2, 'Roofing (Asphalt)', 'Foreign body in other and multiple parts of external eye, unspecified eye', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313839783136342e706e672f6464646464642f303030303030),
(31, 97, 'Hard Tile & Stone', 'Fall on or from other playground equipment, initial encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313930783130342e706e672f6666343434342f666666666666),
(32, 16, 'Rebar & Wire Mesh Install', 'Hordeolum (externum) (internum) of eyelid', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313235783234312e706e672f6363303030302f666666666666),
(33, 26, 'Granite Surfaces', 'Nondisplaced intertrochanteric fracture of right femur, subsequent encounter for open fracture type I or II with nonunion', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313032783137312e706e672f6464646464642f303030303030),
(34, 40, 'Rebar & Wire Mesh Install', 'Other specified complication of vascular prosthetic devices, implants and grafts', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313539783136322e706e672f6363303030302f666666666666),
(35, 81, 'Drilled Shafts', 'Aneurysmal bone cyst, unspecified thigh', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323333783232352e706e672f6666343434342f666666666666),
(36, 79, 'Prefabricated Aluminum Metal Canopies', 'Central demyelination of corpus callosum', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313737783234332e706e672f6666343434342f666666666666),
(37, 10, 'EIFS', 'Displaced comminuted fracture of shaft of right femur, subsequent encounter for closed fracture with delayed healing', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313332783230332e706e672f6363303030302f666666666666),
(38, 77, 'Temp Fencing, Decorative Fencing and Gates', 'Traumatic hemorrhage of right cerebrum with loss of consciousness greater than 24 hours with return to pre-existing conscious level, subsequent encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313534783133362e706e672f6363303030302f666666666666),
(39, 55, 'Plumbing & Medical Gas', 'Age-related osteoporosis with current pathological fracture, unspecified lower leg, initial encounter for fracture', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323336783138372e706e672f6666343434342f666666666666),
(40, 86, 'Electrical', 'Fracture of unspecified metatarsal bone(s), right foot, subsequent encounter for fracture with nonunion', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323436783130392e706e672f6666343434342f666666666666),
(41, 4, 'Drilled Shafts', 'External constriction of right elbow, subsequent encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313835783132352e706e672f6666343434342f666666666666),
(42, 90, 'Landscaping & Irrigation', 'Fracture of unspecified part of neck of left femur, subsequent encounter for open fracture type I or II with malunion', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313437783136382e706e672f3566613264642f666666666666),
(43, 52, 'Elevator', 'Unqualified visual loss, both eyes', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313534783233392e706e672f6363303030302f666666666666),
(44, 57, 'Doors, Frames & Hardware', 'Nontraumatic ischemic infarction of muscle, lower leg', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313230783132352e706e672f6464646464642f303030303030),
(45, 4, 'Retaining Wall and Brick Pavers', 'Panophthalmitis (acute), left eye', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313231783135392e706e672f6363303030302f666666666666),
(46, 4, 'Ornamental Railings', 'Subluxation of distal radioulnar joint of right wrist, initial encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313031783133382e706e672f6363303030302f666666666666),
(47, 44, 'Ornamental Railings', 'Brown-Sequard syndrome at unspecified level of cervical spinal cord, subsequent encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323233783134392e706e672f3566613264642f666666666666),
(48, 73, 'Drywall & Acoustical (FED)', 'Other superficial bite of left shoulder', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313538783130392e706e672f6363303030302f666666666666),
(49, 92, 'Drywall & Acoustical (FED)', 'Other injury of other specified intrathoracic organs, initial encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313034783130382e706e672f6363303030302f666666666666),
(50, 81, 'Roofing (Metal)', 'Disorders of visual cortex in (due to) inflammatory disorders, unspecified side of brain', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323235783136342e706e672f3566613264642f666666666666),
(51, 45, 'Casework', 'Unspecified superficial injury of left forearm, sequela', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313935783139332e706e672f6363303030302f666666666666),
(52, 9, 'Landscaping & Irrigation', 'Adhesive middle ear disease', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323438783132362e706e672f6464646464642f303030303030),
(53, 24, 'Overhead Doors', 'Lateral subluxation of right ulnohumeral joint, initial encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313034783130392e706e672f3566613264642f666666666666),
(54, 96, 'Landscaping & Irrigation', 'Subluxation of midcarpal joint of unspecified wrist, sequela', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313432783139312e706e672f6464646464642f303030303030),
(55, 42, 'Structural & Misc Steel Erection', 'Person on outside of pick-up truck or van injured in collision with pedestrian or animal in nontraffic accident', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313938783132332e706e672f6464646464642f303030303030),
(56, 9, 'Roofing (Asphalt)', 'Kaposi\'s sarcoma of other sites', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313534783139352e706e672f6464646464642f303030303030),
(57, 4, 'Landscaping & Irrigation', 'Barton\'s fracture of left radius', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313238783137342e706e672f3566613264642f666666666666),
(58, 5, 'Soft Flooring and Base', 'Unspecified laceration of spleen, sequela', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313139783136322e706e672f6363303030302f666666666666),
(59, 28, 'Construction Clean and Final Clean', 'Unspecified effects of drowning and nonfatal submersion, sequela', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313036783136302e706e672f6363303030302f666666666666),
(60, 12, 'Retaining Wall and Brick Pavers', 'Partial traumatic transphalangeal amputation of left little finger, sequela', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313435783136312e706e672f6666343434342f666666666666),
(61, 40, 'Epoxy Flooring', '20 weeks gestation of pregnancy', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313934783233392e706e672f6363303030302f666666666666),
(62, 21, 'Granite Surfaces', 'Toxic effect of venom of other arthropod, undetermined, subsequent encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313335783233322e706e672f3566613264642f666666666666),
(63, 44, 'Landscaping & Irrigation', 'Driver of special industrial vehicle injured in nontraffic accident', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313231783231332e706e672f6363303030302f666666666666),
(64, 91, 'Rebar & Wire Mesh Install', 'Subcutaneous fat necrosis due to birth injury', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313632783130322e706e672f6464646464642f303030303030),
(65, 64, 'Doors, Frames & Hardware', 'Subluxation of left ankle joint, subsequent encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313033783132322e706e672f6666343434342f666666666666),
(66, 66, 'Hard Tile & Stone', 'Unspecified soft tissue disorder related to use, overuse and pressure, unspecified forearm', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313231783135342e706e672f6666343434342f666666666666),
(67, 33, 'Curb & Gutter', 'Striking against or struck by driver side automobile airbag', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313332783138332e706e672f6363303030302f666666666666),
(68, 48, 'Site Furnishings', 'Person boarding or alighting a car injured in collision with van, sequela', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323330783130372e706e672f6464646464642f303030303030),
(69, 42, 'Elevator', 'Stage 3 necrotizing enterocolitis', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313635783135382e706e672f6363303030302f666666666666),
(70, 15, 'Painting & Vinyl Wall Covering', 'Abrasion of unspecified external genital organs, male', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323036783138342e706e672f6464646464642f303030303030),
(71, 13, 'Doors, Frames & Hardware', 'Greenstick fracture of shaft of right ulna, subsequent encounter for fracture with malunion', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313034783134312e706e672f3566613264642f666666666666),
(72, 2, 'Plumbing & Medical Gas', 'Foreign body in small intestine, sequela', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313938783138312e706e672f6464646464642f303030303030),
(73, 79, 'Granite Surfaces', 'Contusion of unspecified middle finger without damage to nail, initial encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783230302e706e672f6464646464642f303030303030),
(74, 76, 'Landscaping & Irrigation', 'Acute infarction of intestine, part and extent unspecified', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313530783130302e706e672f6363303030302f666666666666),
(75, 74, 'Elevator', 'Pain due to cardiac prosthetic devices, implants and grafts, initial encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313132783131392e706e672f6464646464642f303030303030),
(76, 1, 'Overhead Doors', 'Laceration of extensor muscle, fascia and tendon of right middle finger at wrist and hand level, sequela', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323337783139382e706e672f6464646464642f303030303030),
(77, 53, 'Wall Protection', 'Laceration of other flexor muscle, fascia and tendon at forearm level, right arm', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313234783130382e706e672f6464646464642f303030303030),
(78, 25, 'Granite Surfaces', 'Complex tear of lateral meniscus, current injury, unspecified knee', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323431783132302e706e672f3566613264642f666666666666),
(79, 53, 'Asphalt Paving', 'Parachutist entangled in object, subsequent encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313938783132312e706e672f6363303030302f666666666666),
(80, 42, 'Asphalt Paving', 'Toxic effect of contact with unspecified venomous animal, undetermined', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313835783131372e706e672f3566613264642f666666666666),
(81, 22, 'Ornamental Railings', 'Poisoning by cocaine, assault', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313733783135372e706e672f6666343434342f666666666666),
(82, 44, 'Roofing (Metal)', 'Unspecified fracture of T9-T10 vertebra, subsequent encounter for fracture with delayed healing', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313739783232332e706e672f6363303030302f666666666666),
(83, 28, 'Soft Flooring and Base', 'Cervical shortening, third trimester', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313335783132332e706e672f6666343434342f666666666666),
(84, 45, 'RF Shielding', 'Toxic effect of carbon monoxide from other source, assault', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313435783133342e706e672f6363303030302f666666666666),
(85, 36, 'Drilled Shafts', 'Unspecified fracture of third thoracic vertebra, sequela', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313339783130322e706e672f6666343434342f666666666666),
(86, 53, 'Masonry', 'Contusion and laceration of left cerebrum with loss of consciousness of 30 minutes or less, sequela', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313531783136302e706e672f6363303030302f666666666666),
(87, 61, 'Glass & Glazing', 'Benign lipomatous neoplasm of skin and subcutaneous tissue of other and unspecified sites', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323333783132352e706e672f3566613264642f666666666666),
(88, 34, 'Site Furnishings', 'Exanthema subitum [sixth disease] due to human herpesvirus 7', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313032783135312e706e672f3566613264642f666666666666),
(89, 74, 'Fire Protection', 'Toxic effect of other specified gases, fumes and vapors, undetermined, sequela', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313130783232312e706e672f3566613264642f666666666666),
(90, 85, 'Asphalt Paving', 'Webbing of neck', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313634783131322e706e672f3566613264642f666666666666),
(91, 86, 'EIFS', 'Placentitis, unspecified trimester, fetus 1', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323234783230352e706e672f6363303030302f666666666666),
(92, 100, 'Roofing (Metal)', 'Dislocation of proximal interphalangeal joint of right ring finger', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313733783139382e706e672f6666343434342f666666666666),
(93, 37, 'Overhead Doors', 'Fractured dental restorative material', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313636783136352e706e672f3566613264642f666666666666),
(94, 93, 'Overhead Doors', 'Corrosion of unspecified degree of left knee, subsequent encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313032783232372e706e672f6363303030302f666666666666),
(95, 86, 'Framing (Wood)', 'Maternal care for anti-D [Rh] antibodies, third trimester', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313836783139392e706e672f6363303030302f666666666666),
(96, 66, 'Granite Surfaces', 'bike passenger injured in collision with heavy transport vehicle or bus in traffic accident, initial encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323030783231392e706e672f6464646464642f303030303030),
(97, 54, 'HVAC', 'Driver of pick-up truck or van injured in collision with car, pick-up truck or van in traffic accident, subsequent encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323431783231352e706e672f6363303030302f666666666666),
(98, 5, 'Rebar & Wire Mesh Install', 'Melanoma in situ of right ear and external auricular canal', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323231783130372e706e672f6666343434342f666666666666),
(99, 96, 'Framing (Steel)', 'Occupant of animal-drawn vehicle injured in collision with two- or three-wheeled motor vehicle, initial encounter', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313031783233352e706e672f6666343434342f666666666666),
(100, 2, 'Marlite Panels (FED)', 'People on outside of bus injured in noncollision transport accident in traffic accident', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323530783130342e706e672f6464646464642f303030303030),
(102, 5, 'test', 'test2', 0x68747470733a2f2f64756d6d79696d6167652e636f6d2f323530783130342e706e672f6464646464642f303030303030),
(103, 5, 'test', 'test5', 0x68747470733a2f2f64756d6d79696d6167652e636f6d2f323530783130342e706e672f6464646464642f303030303030);

-- --------------------------------------------------------

--
-- Table structure for table `mock_data`
--

CREATE TABLE `mock_data` (
  `id` varchar(2) DEFAULT NULL,
  `products` varchar(11) DEFAULT NULL,
  `price` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mock_data`
--

INSERT INTO `mock_data` (`id`, `products`, `price`) VALUES
('id', 'products', 'price'),
('1', 'Toys', '$571.57'),
('2', 'Automotive', '$120.49'),
('3', 'Outdoors', '$659.16'),
('4', 'Music', '$889.70'),
('5', 'Grocery', '$324.33'),
('6', 'Games', '$243.07'),
('7', 'Beauty', '$165.75'),
('8', 'Tools', '$275.43'),
('9', 'Baby', '$8.98'),
('10', 'Games', '$539.09'),
('11', 'Beauty', '$511.92'),
('12', 'Clothing', '$871.37'),
('13', 'Automotive', '$305.43'),
('14', 'Games', '$555.62'),
('15', 'Industrial', '$43.21'),
('16', 'Garden', '$803.22'),
('17', 'Computers', '$320.50'),
('18', 'Garden', '$142.76'),
('19', 'Automotive', '$162.40'),
('20', 'Grocery', '$245.33'),
('21', 'Electronics', '$374.97'),
('22', 'Kids', '$665.66'),
('23', 'Books', '$397.99'),
('24', 'Jewelry', '$787.97'),
('25', 'Grocery', '$813.81'),
('26', 'Games', '$795.66'),
('27', 'Music', '$301.81'),
('28', 'Kids', '$309.19'),
('29', 'Grocery', '$633.64'),
('30', 'Shoes', '$274.57'),
('31', 'Garden', '$44.59'),
('32', 'Automotive', '$170.19'),
('33', 'Games', '$97.16'),
('34', 'Movies', '$209.08'),
('35', 'Computers', '$849.58'),
('36', 'Beauty', '$215.20'),
('37', 'Tools', '$924.09'),
('38', 'Clothing', '$134.33'),
('39', 'Health', '$393.45'),
('40', 'Tools', '$630.84'),
('41', 'Books', '$575.79'),
('42', 'Games', '$916.87'),
('43', 'Grocery', '$71.30'),
('44', 'Baby', '$512.13'),
('45', 'Home', '$563.14'),
('46', 'Movies', '$184.99'),
('47', 'Grocery', '$364.52'),
('48', 'Movies', '$260.81'),
('49', 'Tools', '$732.44'),
('50', 'Home', '$664.24');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(9) NOT NULL,
  `cat_id` int(9) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(1000) NOT NULL,
  `price` int(10) NOT NULL,
  `rating` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `cat_id`, `product_name`, `product_desc`, `price`, `rating`) VALUES
(1, 1, ' iyugto ', ' Suite 59 ', 100, 5),
(6, 11, 'Goodness', 'Suite 59', 6037, 3),
(7, 8, 'Cookies - Englishbay White', '16th', 2024, 2),
(8, 6, 'Puree - Mocha', '8th Floor', 9240, 4),
(10, 4, 'Ginsing - Fresh', '4th Floor', 6759, 1),
(11, 9, 'Oats Large Flake', 'Apt 970', 2730, 5),
(12, 8, 'Wasabi Pastry', 'Room 1911', 5447, 1),
(14, 6, 'Bread - Roll, Soft White Round', 'Apt 1465', 740, 5),
(16, 10, 'Wine - Chateau Aqueria Tavel', 'Room 180', 7976, 4),
(17, 1, 'Irish Cream - Butterscotch', 'PO Box 39428', 7036, 1),
(18, 7, 'Wine - Fume Blanc Fetzer', 'Suite 11', 4395, 4),
(20, 7, 'Oil - Olive, Extra Virgin', 'Room 1833', 4381, 2),
(21, 10, 'Rum - White, Gg White', '1st Floor', 7741, 2),
(22, 4, 'Soup Campbells Turkey Veg.', 'Room 1716', 9868, 4),
(23, 1, 'Oil - Grapeseed Oil', '4th Floor', 6507, 3),
(24, 8, 'Rum - Mount Gay Eclipes', 'Apt 163', 9250, 5),
(25, 2, 'Truffle Cups Green', '8th Floor', 9627, 2),
(26, 8, 'Wine - Red, Antinori Santa', '11th Floor', 1561, 1),
(27, 10, 'Beans - French', 'PO Box 69759', 7292, 1),
(28, 1, 'Beef - Rib Roast, Cap On', 'PO Box 94852', 5303, 3),
(29, 10, 'Honey - Comb', 'Suite 66', 562, 3),
(30, 5, 'Chicken - Base', 'Apt 734', 9261, 3),
(31, 6, 'Soup - Campbells Broccoli', '5th Floor', 9156, 3),
(32, 1, 'Cake - Mini Cheesecake', 'PO Box 30900', 7885, 4),
(33, 6, 'Wine - Two Oceans Sauvignon', 'Suite 99', 7611, 4),
(34, 1, 'Food Colouring - Blue', 'PO Box 23638', 5949, 2),
(35, 6, 'Lettuce - Treviso', 'Apt 361', 452, 4),
(36, 3, 'Apricots Fresh', '15th Floor', 8006, 2),
(37, 4, 'Truffle Paste', 'Suite 2', 5211, 5),
(39, 3, 'Coffee Caramel Biscotti', '9th Floor', 4856, 5),
(40, 1, 'Flower - Carnations', 'PO Box 70910', 8684, 2),
(41, 9, 'Wiberg Cure', '13th Floor', 2144, 3),
(42, 7, 'Cheese - Taleggio D.o.p.', 'PO Box 20732', 3372, 5),
(43, 1, 'Longos - Chicken Caeser Salad', 'Apt 665', 1985, 5),
(44, 5, 'Cabbage Roll', 'Suite 83', 8287, 5),
(45, 3, 'Praline Paste', 'Apt 1614', 6150, 1),
(46, 2, 'Chicken Giblets', 'Room 1680', 8248, 4),
(47, 5, 'Croissants Thaw And Serve', 'Apt 254', 6537, 3),
(48, 5, 'Aspic - Clear', 'Room 766', 3241, 4),
(49, 1, 'Cake - Box Window 10x10x2.5', '16th Floor', 6606, 4),
(50, 10, 'Carbonated Water - Lemon Lime', '10th Floor', 9973, 3),
(51, 1, 'Cleaner - Comet', 'Room 1372', 5853, 1),
(52, 7, 'Steamers White', 'PO Box 15614', 7402, 4),
(53, 9, 'Squeeze Bottle', 'Suite 91', 4855, 4),
(54, 9, 'Cake - Pancake', 'PO Box 95327', 4500, 4),
(55, 2, 'Mustard - Dijon', '9th Floor', 6254, 4),
(56, 8, 'Spice - Chili Powder Mexican', 'Suite 51', 9683, 5),
(57, 9, 'Mushroom - Chanterelle, Dry', 'Room 72', 2349, 1),
(59, 5, 'Curry Paste - Green Masala', 'Suite 37', 8688, 3),
(60, 5, 'Gin - Gilbeys London, Dry', '12th Floor', 8239, 5),
(61, 5, 'Chocolate Bar - Coffee Crisp', '20th Floor', 3868, 1),
(62, 5, 'Wine - Chateau Aqueria Tavel', 'PO Box 14307', 7582, 5),
(63, 8, 'Fork - Plastic', 'PO Box 85138', 298, 2),
(64, 3, 'Cabbage Roll', 'Suite 43', 3258, 5),
(65, 10, 'Soup - French Onion, Dry', 'Suite 95', 9663, 2),
(66, 2, 'Swiss Chard - Red', 'Apt 1869', 6632, 3),
(67, 1, 'Tea - Decaf Lipton', 'Suite 90', 8980, 5),
(68, 3, 'Chicken - Breast, 5 - 7 Oz', '7th Floor', 6637, 3),
(69, 4, 'Bandage - Fexible 1x3', 'Room 1688', 2101, 2),
(70, 7, 'Truffle Cups Green', 'Apt 89', 6571, 3),
(71, 8, 'Bread - Roll, Calabrese', '16th Floor', 9074, 5),
(72, 1, 'Cheese - Cheddar, Old White', 'PO Box 20324', 7835, 4),
(73, 3, 'Wooden Mop Handle', 'Room 874', 1730, 1),
(74, 10, 'Flower - Dish Garden', 'Room 1020', 2547, 4),
(75, 2, 'Steampan - Foil', 'Room 228', 1004, 3),
(76, 6, 'Bread - Frozen Basket Variety', 'Apt 459', 9166, 5),
(77, 6, 'Bread - Raisin Walnut Pull', 'Room 357', 485, 2),
(78, 6, 'Cheese - Woolwich Goat, Log', 'Suite 30', 9349, 4),
(79, 5, 'Aspic - Light', 'PO Box 76239', 8932, 3),
(80, 10, 'Wine - Red, Black Opal Shiraz', 'Apt 381', 3406, 1),
(81, 4, 'Oranges - Navel, 72', 'Room 5', 4928, 5),
(82, 6, 'Poppy Seed', 'PO Box 66492', 6509, 1),
(83, 1, 'Mustard - Pommery', 'PO Box 46565', 6924, 2),
(84, 4, 'Butter Balls Salted', 'Apt 521', 186, 1),
(85, 6, 'Wine - Chateau Timberlay', 'Room 726', 2089, 4),
(86, 6, 'Beef - Top Sirloin - Aaa', 'Apt 128', 9157, 4),
(87, 4, 'Sauce - White, Mix', 'Apt 170', 9691, 1),
(88, 9, 'Flour - Bran, Red', 'Room 992', 3539, 5),
(89, 6, 'Wine - Jaboulet Cotes Du Rhone', 'Suite 11', 9546, 5),
(90, 4, 'Mustard Prepared', 'PO Box 90393', 8902, 4),
(91, 3, 'Wine - Pinot Noir Pond Haddock', 'Room 1463', 7901, 2),
(92, 5, 'Chicken - Tenderloin', 'Suite 75', 1380, 5),
(93, 7, 'Compound - Mocha', '1st Floor', 3603, 4),
(94, 5, 'Lid - High Heat, Super Clear', 'Suite 50', 1984, 2),
(95, 5, 'Flavouring - Rum', 'Room 161', 6216, 2),
(96, 2, 'Onions - Vidalia', 'Room 1253', 5953, 4),
(97, 7, 'Cheese - Fontina', 'PO Box 23237', 6329, 2),
(98, 10, 'Coriander - Seed', 'Room 3', 2552, 4),
(99, 10, 'Puree - Mocha', 'Room 1138', 1602, 5),
(100, 4, 'Bread - Raisin Walnut Oval', 'Room 12', 5812, 5),
(159, 7, 'test', 'good', 89, 5),
(160, 1, 'breadcrumb', 'good', 2, 5),
(161, 3, 'ghjkhk', 'hj', 4567, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(9) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_login` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `first_name`, `last_name`, `email`, `password`, `created_at`, `last_login`, `is_admin`) VALUES
(1, 'fgh', 'gh', 'fgh@gmail.com', '$2y$10$pFmsfRKL1entfUZQR7wYVucZzuO6459oi4sIoUD66nq.QcxGXF4Rm', '2023-06-10 06:06:01', NULL, 0),
(2, 'varun', 'iyer', 'varun@gmail.com', '123', '2023-06-02 04:37:12', NULL, 0),
(4, 'varun', 'jk', 'v@test.com', '$2y$10$m2mPBJn/CprpKA1A/Tde2OUO6MXHFi3dIcQ9jHVrBkUmYuNxNN03C', '2023-06-12 07:04:20', NULL, 0),
(5, 'realtest', 'man', 'v@gmail.com', '$2y$10$00L0CsIk2zuFLT1OiOvGdeh4uB/JHhMwbPl80z0dhydhzCG9047tu', '2023-06-12 11:29:07', '2023-06-12 11:29:07', 0),
(7, 'abc', 'abc', 'abc@gmail.com', '$2y$10$UaUphABQP1G3kAfiusRPGuP6wHizssz4srLU43VKUdAzGCDKyCMp.', '2023-06-02 09:21:13', NULL, 0),
(10, 'rohit', 'sharma', 'r@s.com', '$2y$10$iTXFfnuYw6XgjW1nqWE1Hu6sNWyblDA4t18DMTbOVEA.4AdS/WkFe', '2023-06-02 10:58:18', NULL, 0),
(11, 'ksjdjhfv', 'adfsgvdf', '', '$2y$10$LJ73omN96FilDjvkFZEM6.4zfcuz9l5zaaDojF0RXj1cyzloLEo.e', '2023-06-10 05:46:50', NULL, 0),
(13, 'mon', 'day', 'mon@gmail.com', '$2y$10$mJLhhGuIJVeHsYKlDeudpOBS1W75xRpK187327WvSSG5xaCJLFWte', '2023-06-05 05:32:14', NULL, 1),
(17, 'testg', 'now', 'testing@now.com', '$2y$10$83B6dnfsPVXFYZCdi754vOD/qhiEG2FxAA5b157v45oWLqQgDepg6', '2023-06-12 07:02:22', '2023-06-10 10:07:15', 1),
(18, 'george', 'reddy', 'gr@gr.com', '$2y$10$irhClqX7oD7j8SRo3f66yuaLXiB0Hliygqb7VKlk1gffEVqMMt/N6', '2023-06-12 07:26:38', '2023-06-12 07:26:38', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
