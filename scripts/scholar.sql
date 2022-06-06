-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 17, 2022 at 09:15 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: scholar
--
create database scholar;
use scholar;

-- --------------------------------------------------------

--
-- Table structure for table links
--

DROP TABLE IF EXISTS links;
CREATE TABLE IF NOT EXISTS links (
  id int(12) NOT NULL AUTO_INCREMENT,
  link_url varchar(1000) NOT NULL,
  status varchar(10) NOT NULL DEFAULT 'NO',
  comments varchar(2000) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY link_url (link_url)
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=latin1;

--
-- Dumping data for table links
--

INSERT INTO links (id, link_url, status, comments) VALUES
(1, 'kim', 'YES', 'This was a test scenario.																														'),
(2, 'https://youtu.be/MnI0un5YF7A', 'YES', 'The video did not have links that were useful. Just a few North west territory links that were broken or not working.					'),
(3, 'https://www.participatelearning.com/teach-in-the-usa/application-requirements/', 'YES', 'For teachers.				'),
(4, 'https://youtu.be/iwa95-RtK64', 'YES', 'J1 visa to the US. Not much information though.'),
(5, 'https://www.facebook.com/drericberg/videos/402223474867144/', 'sudo', 'Benefits of fasting.'),
(6, 'https://youtu.be/d7Tk7lCH_d0', 'resee', 'Very informative'),
(7, 'https://us.docworkspace.com/d/sIB_ChdImhbPziwY', 'sudo', 'About fasting. Not realy relevant.'),
(8, 'https://youtu.be/oBMLbvA-MXg', 'sudo', 'Series fulani ninaitwa winx. Seems to be nice.'),
(9, 'https://youtu.be/NCZO1OnAFVs', 'YES', 'Just benefits on moving to Canada'),
(10, 'https://youtu.be/_w5pHj3av3E', 'NO', NULL),
(11, 'https://youtu.be/Bpt6HBRXdNE', 'NO', NULL),
(12, 'https://www.rasmussen.edu/degrees/technology/blog/computer-science-vs-data-science/', 'NO', NULL),
(13, 'https://youtu.be/msSOZm_50XA', 'NO', NULL),
(14, 'https://youtu.be/_dVBcpUfNGI', 'NO', NULL),
(15, 'https://youtu.be/bDTR5TGr4bk', 'NO', NULL),
(16, 'https://www.facebook.com/drericberg/videos/947513809516706/', 'NO', NULL),
(17, 'https://youtu.be/gxI-J8P4fS0', 'NO', NULL),
(18, 'https://youtu.be/oifBYnpXvAA', 'NO', NULL),
(19, 'https://youtu.be/MU8xhYgHT0U', 'NO', NULL),
(20, 'https://youtu.be/t-8PXH2jXUk', 'NO', NULL),
(21, 'https://us.docworkspace.com/d/sIAXChdImid3ujQY', 'NO', NULL),
(22, 'https://youtu.be/WR9yqC8HQGg', 'NO', NULL),
(23, 'https://youtube.com/shorts/0kp5nLJhLvg?feature=share', 'NO', NULL),
(24, 'https://www.smartdataanalytic.com/', 'NO', NULL),
(25, 'https://maps.app.goo.gl/spH8ARNfNLbT6tWQ8', 'NO', NULL),
(26, 'https://www.facebook.com/5min.crafts/videos/305457534816506/', 'NO', NULL),
(27, 'https://youtu.be/IJjBQ1rAZ3c', 'NO', NULL),
(28, 'https://youtube.com/shorts/JaTEFukDmeo?feature=share', 'NO', NULL),
(29, 'https://youtu.be/9UeNfVuSHgQ', 'NO', NULL),
(30, 'https://m.youtube.com/watch?v=JHDkALRz5Rk', 'NO', NULL),
(31, 'https://youtu.be/nG6rrRPBXwQ', 'NO', NULL),
(32, 'https://youtu.be/rsw7Fxg0ZAE', 'NO', NULL),
(33, 'https://youtube.com/shorts/IVqGowGDmOs?feature=share', 'NO', NULL),
(34, 'https://youtube.com/shorts/6HDCgv9rifs?feature=share', 'NO', NULL),
(35, 'https://www.visaplace.com/blog-immigration-law/canada-visa-processing-time/', 'NO', NULL),
(36, 'https://us.docworkspace.com/d/sIMbChdImtqivkAY', 'NO', NULL),
(37, 'https://www.wps.com/d/?from=t', 'NO', NULL),
(38, 'https://youtu.be/AUKu7H28Bdw', 'NO', NULL),
(39, 'https://scholarsintel.com/canada-scholarships/?fbclid=IwAR0wnG1aKglND12HPNU9XADENAApd7fZRpSHfwkR2rsXonaPp_5LBQGgIms', 'NO', NULL),
(40, 'https://youtu.be/_fK6mTxIJgg', 'NO', NULL),
(41, 'https://youtu.be/q0Jl-HWtD3k', 'NO', NULL),
(42, 'https://fb.watch/bhzCjmOPVW/', 'NO', NULL),
(43, 'https://opportunitiescorners.info/category/scholarships/', 'NO', NULL),
(44, 'https://youtu.be/DNJykPqjLVQ', 'NO', NULL),
(45, 'https://docs.google.com/document/u/0/d/1sdHQJKklrjKOPhMit0rccDr-wxMKq7efDcNPVqZakHE/mobilebasic', 'NO', NULL),
(46, 'https://docs.google.com/document/u/0/d/1fwNVEXF8k1f6jv6b1ojYNZkPSm51XhN14Fz132aq7cQ/mobilebasic', 'NO', NULL),
(47, 'https://youtu.be/0Iha8wPH_pI', 'NO', NULL),
(48, 'https://youtu.be/IWpy2TvP4mg', 'NO', NULL),
(49, 'https://careers-neofinancial.icims.com/jobs/search?searchRelation=keyword_all&pr=1', 'NO', NULL),
(50, 'https://youtu.be/fANmdc4GCV0', 'NO', NULL),
(51, 'https://jobs.zalando.com/en/jobs/3438944-it-technician/', 'NO', NULL),
(52, 'https://youtu.be/0ConHjmuX4A', 'NO', NULL),
(53, 'https://www.facesinc.org/', 'NO', NULL),
(54, 'https://youtu.be/VEuROVVA7OM', 'NO', NULL),
(55, 'https://youtu.be/IVWqAGP2GGo', 'NO', NULL),
(56, 'https://www.wurth.co.ke/chemicals/lubricants-and-rust-removers/silicone-spray-500ml/00893-221', 'NO', NULL),
(57, 'https://fb.watch/brjZN81ZlP/', 'NO', NULL),
(58, 'https://youtu.be/abKhAoLf9No', 'NO', NULL),
(59, 'https://youtu.be/2_x1paUvuBI', 'NO', NULL),
(60, 'https://www.vantagemigration.ca/offer-page1599576555877?surveyoutcome=default&surveyresults=true', 'NO', NULL),
(61, 'https://youtu.be/Mo7CJtHZlM8', 'NO', NULL),
(62, 'https://youtu.be/kgRP4hgQBWw', 'NO', NULL),
(63, 'https://twitter.com/Kvaati/status/1498923733469343749?t=2POYx9sLJP-DvhlL05O4uA&s=08', 'NO', NULL),
(64, 'https://twitter.com/mmnjug/status/1498522440229879808?t=N17JBx9fDKn3n46tu1xrAQ&s=08', 'NO', NULL),
(65, 'https://youtu.be/sgxNzgGOIAA', 'NO', NULL),
(66, 'https://youtu.be/9jRTIaEt-UY', 'NO', NULL),
(67, 'https://youtu.be/GJMoDB1uJRM', 'NO', NULL),
(68, 'https://youtu.be/7AG7bF1qD5Q', 'NO', NULL),
(69, 'https://youtu.be/fojW6vz0ySA', 'NO', NULL),
(70, 'https://maps.app.goo.gl/JyMUxym1qGSRcJdz5', 'NO', NULL),
(71, 'https://fb.watch/bLmuq3CVNr/', 'NO', NULL),
(72, 'https://fully-fundedscholarships.com/canadian-quebec-scholarships-without-ielts-in-2022/', 'NO', NULL),
(73, 'https://studygreen.info/fully-funded-government-scholarships-2022-2023-march/', 'NO', NULL),
(74, 'https://fortune.com/education/business/articles/2022/03/09/how-to-get-google-to-pay-for-your-data-analytics-training/', 'NO', NULL),
(75, 'https://studygreen.info/daad-in-country-in-region-scholarships-for-africans-2022/', 'NO', NULL),
(76, 'https://www.idp.com/kenya/apply-at-top-canadian-universities/?utm_source=google&utm_medium=cpc&utm_campaign=sp-kenya-can-destination-alwayson&gclid=Cj0KCQjwz7uRBhDRARIsAFqjulnugyjoPDNBlCev5BbPRQgCKaGE4zPF3t6OBd-_umc3BF0sOzZt7lEaAiogEALw_wcB', 'NO', NULL),
(77, 'https://opportunitiescorners.info/scholarships-for-international-students-in-canada/', 'NO', NULL),
(78, 'https://fully-fundedscholarships.com/fully-funded-scholarships-2022-2023/scholarships-in-canada/', 'NO', NULL),
(79, 'https://www.opportunitiesforafricans.com/government-of-poland-banach-scholarship-programme-2022/', 'NO', NULL),
(80, 'https://www.r-bloggers.com/2022/03/which-data-science-skills-are-important-50000-increase-in-salary-in-6-months/', 'NO', NULL),
(81, 'https://fb.watch/bN7AfAafHs/', 'NO', NULL),
(82, 'https://www.myjobmag.co.ke/jobs-at/the-kenya-trade-network-agency-kentrade', 'NO', NULL),
(83, 'https://youtu.be/7ll7WDNnqaY', 'NO', NULL),
(84, 'https://youtu.be/QEde8Jz0RwQ', 'NO', NULL),
(85, 'https://youtu.be/MQEfR3Gg7vQ', 'NO', NULL),
(86, 'https://m.youtube.com/channel/UC50bi5fNoYQk11lWhfi3l4w', 'NO', NULL),
(87, 'https://youtu.be/pUoC29b8zGY', 'NO', NULL),
(88, 'https://youtu.be/u2RyD_Zpdrw', 'NO', NULL),
(89, 'https://youtu.be/PdfmB6YGOtE	', 'NO', NULL),
(90, 'https://www.immigratenwt.ca/en/', 'NO', NULL),
(91, 'https://www.youtube.com/watch?v=qVlVL80fOac', 'NO', NULL),
(92, 'https://www.welcomenb.ca/content/wel-bien/en/immigration_programs.html', 'review', 'Promising				'),
(93, 'https://opportunitiescorners.info/usa-scholarships-for-international-students/', 'NO', NULL),
(94, 'https://youtu.be/6sNx_GnZbTo', 'NO', NULL),
(95, 'https://www.analyticsinsight.net/top-10-data-science-tools-every-job-seeker-should-know-in-2022/', 'NO', NULL),
(96, 'https://fb.watch/bWvSGmbqT5/', 'NO', NULL),
(97, 'https://www.youtube.com/watch?v=2djNW6Q_6ZI', 'NO', NULL),
(98, 'https://youtu.be/oOoADF2xFDA', 'NO', NULL),
(99, 'https://gain-network.net/participants', 'NO', NULL),
(100, 'https://youtu.be/fwcu47JRs64', 'NO', NULL),
(101, 'https://youtu.be/u6AwaOgtnwQ', 'NO', NULL),
(102, 'https://youtu.be/0pOzp4ggaG4', 'NO', NULL),
(103, 'https://youtu.be/xooGg4oKC2c', 'NO', NULL),
(104, 'https://youtu.be/xX4WoH2g3bo', 'NO', NULL),
(105, 'https://youtu.be/vcIkOP12BZw', 'NO', NULL),
(106, 'https://g-tac-expo.com/en/', 'NO', NULL),
(107, 'https://en.wikipedia.org/wiki/List_of_unaccredited_institutions_of_higher_education', 'NO', NULL),
(108, 'https://en.m.wikipedia.org/wiki/List_of_universities_in_Canada', 'NO', NULL),
(109, 'https://www.usiu.ac.ke/2509/kenyas-new-cyber-shujaa-program-targets-train-2-000-youth-as-cybersecurity-experts/', 'NO', NULL),
(110, 'https://www.randstadusa.com/jobs/4/915134/system-administrator-java_tallahassee/', 'NO', NULL),
(111, 'https://www.randstadusa.com/job-seeker/best-jobs/top-15-most-demand-jobs/', 'NO', NULL),
(112, 'https://docs.google.com/forms/d/e/1FAIpQLSekYlVBui9_CawjaEaoZX71ofQW2GoOzAJwUIF88Z0LecH9dA/viewform', 'NO', NULL),
(113, 'https://ca.indeed.com/m/viewjob?jk=a9f65ad966370d2c&from=serp', 'NO', NULL),
(114, 'https://ca.indeed.com/m/jobs?q=information%20technology&l=New%20Brunswick&taxo2=EHPW9&jt=fulltime&from=serpso', 'NO', NULL),
(115, 'https://cyber.gc.ca/en/guidance/where-go-school', 'NO', NULL),
(116, 'https://www.myjobmag.co.ke/jobs/job-openings-at-equity-bank-kenya#job373161', 'NO', NULL),
(117, 'https://www.mastersportal.com/universities/11742/mcgill-university.html', 'NO', NULL),
(118, 'https://docs.google.com/document/u/0/d/1NlyI86PxdWoUHRxBOyRkwkXnff5DCDJKtrStwbmc2gc/mobilebasic', 'NO', NULL),
(119, 'https://youtu.be/A91uN2odWf0', 'NO', NULL),
(120, 'https://apply.eu/?gclid=Cj0KCQjw_4-SBhCgARIsAAlegrUEbzBL7mb97bP-oq8thyn3zBnrMHaeMLGMlivQUJi4R8aqZf1wryAaAv8ZEALw_wcB', 'NO', NULL),
(121, 'https://www.linkedin.com/mwlite/jobs/view/2989112969?referenceId=xApSVmJbiRiTzHEoyCbNhw%3D%3D&eBP=JOB_SEARCH_ORGANIC', 'NO', NULL),
(122, 'https://applications.wes.org/createaccount/home/select-eval-type?ln=1', 'NO', NULL),
(123, 'https://youtu.be/F5qCNugSagw', 'NO', NULL),
(124, 'https://www.saskatchewan.ca/residents/moving-to-saskatchewan/live-in-saskatchewan/by-immigrating/saskatchewan-immigrant-nominee-program/browse-sinp-programs/applicants-international-skilled-workers/sinp-tech-talent-pathway', 'NO', NULL),
(125, 'https://www.saskjobs.ca/jsp/joborder/listing.jsp?filter_by=2&noc_skill_type=2', 'NO', NULL),
(126, 'https://www.jacobs-university.de/study/graduate/programs', 'NO', NULL),
(127, 'https://check.in/how-international-students-study-from-u-s-uk-and-canada-universities-for-cheap?utm_campaign=study_ca-na-ke-en-mb-smart&imp=49176&utm_medium=paid&utm_source=google_display_network&campaign_id=13626303754&utm_term=worldscholarshipforum.com&utm_content=smart&asid=124032248117&adid=529526518976&placement=worldscholarshipforum.com&device=m&adgroup=smart&gclid=EAIaIQobChMIyoW-48Xy9gIVCoR7Ch3zcQP3EAEYASAAEgLWDvD_BwE', 'YES', 'Good					'),
(128, 'https://www.studying-in-germany.org/masters-data-science-germany/', 'NO', NULL),
(129, 'https://www.studying-in-germany.org/best-masters-degrees-in-cybersecurity-in-germany/', 'NO', NULL),
(130, 'https://uscollegeinternational.com/?s=none&category=&degree=masters&region=europe&subject=computer_science', 'NO', NULL),
(131, 'https://uscollegeinternational.com/?s=none&category=full_funding&degree=masters&region=canada&subject=data_analytics', 'NO', NULL),
(132, 'https://uscollegeinternational.com/best-computer-forensics-schools-world/', 'NO', NULL),
(133, 'https://uscollegeinternational.com/?s=none&category=full_funding&degree=masters&region=united_states&subject=computer_science', 'NO', NULL),
(134, 'https://www.opportunitiesforafricans.com/standard-bank-group-internship-programme-2022/?amp', 'NO', NULL),
(135, 'https://fb.watch/cb9t_bXINn/', 'NO', NULL),
(136, 'https://youtu.be/1BMkkfEBblA', 'NO', NULL),
(137, 'https://youtu.be/qhLUImL_UIw', 'NO', NULL),
(138, 'https://www.vfairs.com/solutions/virtual-career-fair/', 'NO', NULL),
(139, 'https://training.prx.org/programs/google-podcasts-creator-program/apply', 'NO', NULL),
(140, 'https://www.kth.se/en/studies/master/cybersecurity/courses-cybersecurity-1.1076018', 'NO', NULL),
(141, 'https://fully-fundedscholarships.com/australian-university-of-melbourne-scholarships-without-ielts-in-2022-study-for-free-in-australia/', 'NO', NULL),
(142, 'https://fully-fundedscholarships.com/ohio-state-university-osu-scholarships-without-ielts-in-2022-study-for-free-in-ohio-usa/', 'review', 'Some Leads but not very promising.'),
(143, 'https://www.reed.co.uk/jobs/ict-infrastructure-officer/46271869', 'NO', NULL),
(144, 'https://opportunitydesk.info/universities-with-no-application-fee/', 'NO', NULL),
(145, 'https://www.mastersportal.com/studies/35302/data-science.html', 'NO', NULL),
(146, 'https://www.vu.lt/en/studies/master-studies/computer-modelling', 'YES', 'A bit empty but worth a revisit.'),
(147, 'https://www.onlinestudies.com/MSc-in-Computer-Science/United-Kingdom/Unicaf-University-of-East-London/', 'NO', NULL),
(148, 'https://www.masterstudies.com/MSc/Data-Analytics/amp/?page=2', 'NO', NULL),
(149, 'https://greatyop.com/queen-elizabeth-commonwealth-scholarship/', 'NO', NULL),
(150, 'https://www.iu.org/lp/masters-degrees-2080/?country=KE&studyFormat=1&gclid=CjwKCAjwur-SBhB6EiwA5sKtjjREcHTW-fD2OKLiQoRgUVUoNJLS0q1-A1nk6yKxdnIgf5zW6uoPmhoC8ioQAvD_BwE', 'NO', NULL),
(151, 'https://youtu.be/_fpsPuqMm4g', 'NO', NULL),
(152, 'https://www.dfat.gov.au/about-us/publications/australia-awards-scholarships-policy-handbook', 'YES', 'Not very helpful'),
(153, 'https://www.dfat.gov.au/people-to-people/australia-awards/Pages/how-to-apply-for-an-australia-awards-scholarship', 'YES', 'Just info that is scanty.'),
(154, 'https://youtu.be/vo-Lb5IOMpI', 'NO', NULL),
(155, 'https://yts.mx/browse-movies/0/all/sci-fi/6/latest/2000-2009/all', 'YES', 'Cool Movies'),
(156, 'https://www.mastersportal.com/universities/355/vilnius-university.html', 'NO', NULL),
(157, 'https://www.masterstudies.com/Master-in-Cybersecurity-Management/Lithuania/MRU-Mykolas-Romeris/', 'NO', NULL),
(158, 'https://mina7.net/en/grant/29073,cybersecurity-management-mykolas-romeris-university-lithuania', 'NO', NULL),
(159, 'http://www.delphicoverseas.com/study-europe-lithuania.php', 'NO', NULL),
(160, 'https://us02st1.zoom.us/web_client/1ej0z6i/html/externalLinkPage.html?ref=https://bit.ly/FullScholarshipInEurope2022', 'NO', NULL),
(161, 'jobs.ac.uk', 'NO', NULL),
(162, 'https://us02st1.zoom.us/web_client/1ej0z6i/html/externalLinkPage.html?ref=https://t.me/+tZkUFl36jzphNjg0', 'YES', 'Telegram group for scholarships.'),
(163, 'https://opportunitydesk.info/microsoft-cloud-data-scholarships/', 'YES', 'Already applied.'),
(164, 'https://www.totaljobs.com/job/it-support-analyst/ic-resources-job97200524', 'YES', 'Restricted.'),
(165, 'https://www.totaljobs.com/jobs/junior-java-developer', 'NO', NULL),
(166, 'https://www.geeksforgeeks.org/top-10-front-end-developer-skills-that-you-need-in-2022/', 'NO', NULL),
(167, 'https://www.cbc.ca/news/canada/calgary/cybercrime-alberta-calgary-1.6420457', 'NO', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
