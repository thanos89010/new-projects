-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2020 at 11:33 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seven`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `address_id` int(11) NOT NULL,
  `address_reciever` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address_postal_code` mediumint(9) NOT NULL,
  `address_country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address_phone` bigint(20) NOT NULL,
  `address_mobile` bigint(20) NOT NULL,
  `address_notes` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE `basket` (
  `basket_id` int(11) NOT NULL,
  `basket_user_id` int(11) NOT NULL,
  `basket_product_id` int(11) NOT NULL,
  `basket_timestamp` datetime NOT NULL,
  `basket_quantity` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `basket`
--

INSERT INTO `basket` (`basket_id`, `basket_user_id`, `basket_product_id`, `basket_timestamp`, `basket_quantity`) VALUES
(0, 0, 0, '0000-00-00 00:00:00', 126);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `categories_alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `categories_photo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `categories_description` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_alias`, `categories_photo`, `categories_description`) VALUES
(1, 'Τανιες', 'tainies', 'images/Hxos.jpg', ''),
(2, 'Gaming', 'gaming', 'images/GamingAcc.jpg', ''),
(3, 'Τηλεφωνία & Tablets', 'tilefonia-tablet', 'images/Smartphones (1).jpg', ''),
(4, 'PC Αξεσουάρ & Gadgets', 'pc-aksesouar', 'images/Wearables.jpg', ''),
(5, 'Πρόσφορες', 'prosfores', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city_country_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`, `city_country_id`) VALUES
(1, 'Θεσσαλονίκη ', 1),
(2, 'Αθηνά ', 1),
(3, 'Βόλος ', 1),
(4, 'Λάρισα ', 1),
(5, 'Λεμεσό', 2),
(6, 'Πάφο', 2),
(7, 'Μόναχο', 3),
(8, 'Βερολίνο', 3),
(9, 'Ρώμη', 4),
(10, 'Μιλάνο', 4),
(11, 'Μαδρίτη', 5),
(12, 'Μπαρσελονα', 5);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country_flag` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `country_flag`) VALUES
(1, 'Ελλάδα', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJcAAABkCAMAAAC8R1L8AAAAP1BMVEUNXq////8cabUAUqrL1ujX4/EAV6yDqNI2er2wyeOzw958mspHfL3p8fgATKgARaa60ehEg8Lg6fMAY7KBos7BSAFqAAABBElEQVRoge3ayw6CQAxG4REGxQsXlfd/VnfK4jemDXVAz7du4jExdtBJSamPu6dTLUeKoMuGLhu6bOiy2XBXFcvb1eYmlLfr0u1C0UUXXXRttqtWhnnXIAb6NrpLr4HZq3ZyYLy2oZLz/dyqvf4ILMXdFZtFF1100RXWdZcLbDHpLOVXQZYD05hDpb3Sz/d2ryb+9pxDF1100fVnXdV0COXt0vtrOe6uIuiyocuGLpsVdMlvtc/n+2hJboGpeXXl4I2jeZ8fo9FlQ5cNXTZ02ay2K/bnNTf9f1p5Rc4wAPDLYq8buK12b5cOeIMuG7ps6LKhy+bNfbniou+re5U+NgAAvuMBKb1EFLDDpjMAAAAASUVORK5CYII='),
(2, 'Κύπρο', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARQAAAC2CAMAAAAvDYIaAAAAn1BMVEUzMsz////lqwIqKcozMsuSkt/t7fkwL8sLC8dpaNQjIsonJsro6PcTEcjkqADkpgCYl98AAMb09Pv//vj47tD8+/H689r79uLlrQDx252Kit3y3aXv1IznuS/u0YD47crpukXvz3b68c3nszHhmwDjriHsxV/pwVXsyGzw0ov257vy2Zjpu0zv0oTsxmfqwk325b3othz25LRZWdKsrOW2AseZAAADvElEQVR4nO3da1PaQBiGYYzHqt1VQyCUSEJpKHL00P//20qk4qE3mk/7xvG5Z5xBvmTnMmw2C4ytlkUnR3u1Ovp+bDI+k4QCCQUSCiQUSCiQUCChQEKBhAIJBRIKJBRIKJBQIKFAQoGEAgkFEgokFEgokFAgoUBCgYQCCQUSCiQUSCiQUCChQEKBhAIJBRIKJBRIKJBQIKFAQoGEAgkFEgokFEgokFAgoUBCgYQCCQUSCiQUSCiQUCChQEKBhAIJBRIKJBRIKJBQIKFAQoGEAgkFEgoklP87bjrK6Vmg9rcP9s8u66JcnlrUOgzVxfbBxcXhVT2Uqx/BhveyVr3Rfa2EAgkF+iQocdCjfQaUuN3vBD1g81HiTnY9SIIesvEo+aAY5mFNmo3S7//MRr+GYSeUvWajtEvvfDQMf+DmonTbY+/d77bBoY1Rki4+HXfa/SJdk2RhLzv/MkZpT27609cweZbNFvNR6lzR6wafTh4zRslTH5XzySDrVUuRuD9ZLArnIlf9LE3OkipblPjGRVHk1vOpd+VqfO3XVc9EkfeFxWyyyRYlKXz01Bpm+4srsszOxBClmi665TPKi1yZmw2rygQl7iZ57+a+2xk4MoncMPAS9k0WKMlsvhytT4fxnE0i1zcY1YvCoiT31SkwTTezh9thErmBzaX4qbAotz4d3k/SXRhblKgXdFhvC3ymZNH2ovuuijO89gSfU/LRxyJVfmz5AgqMclt++NLZzDTe8gUUGCXZcRF+Jrm7W98IVitcQ5XQl+TeBydKlux1l36UTReGa5XQKNN3JxU/qSSSx31qw/VbaJR4+R6KWwQeDhd8RdvbjbKeSWahh4MFR5nuXKb4dDXmjbjQBUeJZynfGbtVJ7Zd3W8zuCGcFqXbtMF4NClHs4aI7NncJXfvJ0U5KuZFZTJa9KoCvzH6fjabTEn7Nm93Oisfpca7BJjpdmTu/LwZU+vrbPdoF6a3ODsz3s0P/dZ5vZr7tqlhQoGEArW+WfRQ98PFDybDa+1bVPcT1+eXZxbDM/noe+0vLJx/oS8sCIUSCiQUSCiQUCChQEKBhAIJBRIKJBRIKJBQIKFAQoGEAgkFEgokFEgokFAgoUBCgYQCCQUSCiQUSCiQUCChQEKBhAIJBRIKJBRIKJBQIKFAQoGEAgkFEgokFEgokFAgoUBCgYQCCQUSCiQUSCiQUCChQEKBhAIJBRIKJBRIKJBQIKFAQoGEAgkFajzKQfhaJzX/4ev5ybHB8A5s/hCnf+qhHLVMzpS/7XOWUSRxYhgAAAAASUVORK5CYII='),
(3, 'Γερμανία', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANwAAACECAMAAADMWbUpAAAACVBMVEUAAADdAAD/zgDGIigcAAAAfklEQVR4nO3PAREAIAADIbV/aHP8DhpwDgAAAAAAAAAAADl3mFyVXJVclVyVXJVclVyVXJVclVyVXJVclVyVXJVclVyVXJVclVyVXJVc1XbuDZOrkquSq5KrkquSq5KrkquSq5KrkquSq5KrkquSq5KrkquSq5KrkquSq5rOffo9cXGhkyMkAAAAAElFTkSuQmCC'),
(4, 'Ιταλία', 'data:image/png;base64,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'),
(5, 'Ισπανία', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUSEhIVFhUVFRUVEhUVFRUVFRUVFRUXFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMsNygtMysBCgoKDg0OFxAQGi0dHR8rLS0vKysrLS0tLS0tLSstLS0tLS0rLS0tLS0tLSstLS0tLS0tLS0tLSstLS0tKy0tLf/AABEIAK4BIgMBEQACEQEDEQH/xAAcAAADAAMBAQEAAAAAAAAAAAAAAQIDBQYEBwj/xABMEAABAwICAwsHCQUGBwEAAAABAAIDBBESIQYxUwUHEyJBUZGSk9HSFhcyUmFysRQjM0Nxc4GhszRCVGPBJCWywuHxYnWCg6Pi8ET/xAAaAQEBAAMBAQAAAAAAAAAAAAAAAQIEBQMG/8QANhEAAgECAwcEAAUDAwUAAAAAAAECAxEEFVEFEhMhMVKhMkFhcRQiIzOxJEKBYsHwBjSCkdH/2gAMAwEAAhEDEQA/ANzvk6QCelbwRe0NqwzF6OLCx9y0g5jLVyXWtVnvRR29jUbV+fPkfNpamQfWyWy/ff3rwR9Xw4aEvq5NXCydo/vSw4cNBiqkvYSye35x/elicKOgn1cgv87J1396hdyGgzVSGwEsmfLjd3oThx0EKmTayWH8x2f5oOHHQttRJtJOe3CPt8VS8KOgfKpCLiSTrv70MuHHQRqZAPpZL6vTd3oR046Fipk1cLJ13d6DchoMVMm0k67+9UvDhoL5RJtJOu7vQcOOgjUybSTru70HDjoL5XJtZB/3Hd6g4cdEMVUm1k67u9UcOOiAVMm1k7R3eoOHDRAamTaSdo/vQcOGiEKqXaSdd3eg4cdEI1Um1k+zhHflmoOHHREurJBrlkt77svzS9iOnFeyKFXJa4lkI993eqXcg/ZCFXJtJOu7vQcOOiH8rk1cLJ2ju9CbkNEAqpNrJ13flmg3IaIfymTaydd/elhw46IPlMm1k67u9Bw46Ik1cm0k67+9LDhx0QCrk2kgPvv70HDhohuqZdrJ13d6E4cNER8ql20nXd3oThx0RDq6UfWSdo/vUsYyjFew21rz9bJ13d6WJFQfsgNVLtZOu/vVSHCi/YRrJdrJ2j+9LDgw0Mb6uW1+Fk67+9LMwnThH2PvejbiaSmOIn5iHMk3+jbrW1Hoj46s1xJfbOV34WgNpgAABLNawsBdrSch0piYpKNjo7A5zk3ofNyVrH1R55GqCw43cnOlwW0/un8Cli2MWbckBkjeoDMxZFMTRa6EHdCljnQWKIuhBAIAAQA5qAxEIB4uQoUoICgUIS9vKpYtzGgMeG2bfxCxsYWaMoscx/ss0ZJk3vr6UFhjL2hAZGlCAUKThQDshBX/APuVCEll9SAxm4UJYwvjvmMjzKNHlKm/YhsxGTgl7GKqW6mcEHUrc9k7kPGSMj6H37Rv9kpvuIf02raj0R8TWX6kvt/ycrvwuypvvKg9AYFliekTo/8AT6/NP6PnDiFqH1RjexQGMN5UsDJG6/2oDK5t/tRg8rm2QHoicqDI4ZoDG9iFFG9CmW6GIyUAIAQEoCS1AJAUCgAFABCgMZSxbkgWzHQiMWZNefSqUgtI9iAYfzoCwUAAIAQhJbdCWIKAZzQGNzUK2YnC+tSxhKKZhwFpuCsbWPDccXyMwluDzq73I9Iyuff9HD/ZKf7iH9Nq249EfG11+pL7f8nJb7wypffqP8iyxXsdHYHrl/g+dOatNH1AyFQS1iAl8djdQFsuqAlbce1ARGEBmCAEDIwZoVFXQgxZANAIlAIoAKALICbIAsgAIAIQGMhAU09KAshAQ5iATUBkQCugEgJIQxIshGxoLkEKgxkKEZikZyhYyR5yj7o/QWjZ/slN9xD+m1bUeiPjaz/Ul9v+TkN+B2dK321B/OMLLFWujq7AXOb+j56CtU+l6gSgLUAOVBNkAWQA0KXKP8VQMIBEqARanMvIA1Cch2QDKpBLFi4yqBILMLIWzABCBhQBZOYuJzVOZLklioAOQF3QEubfkS5EIXQtykAiFOYEQrchJCXBJapchN1kmiElCEPbkowffNHP2Sn+4h/TatqPRHxdb9yX2/5J0z0agqHQmXhDgEmHC7D6ZaTew9gXK2tjJ0nHdLgMVOjfd9zRM0KoR9S4/bI/vXFe0q2pvvaOI1L8i6HYO7R/eoto1tSZliO4oaE0Oxf2r+9ZZjW1GZYjXwV5E0Oxd2r+9TMa2ozLEdwxoTQj6g9pJ3qZjW1I9o4juH5F0Ow/8j+9Mxr6kzDEdxTdDaEf/nHXf3pmFbUfjsR3FjRCh/hm9Lu9Y5hX1H46v3DOiND/AAzOl3epmFfUfjq/cLyQof4ZvS7vTMK+o/HV+4l2htD/AA467+9XMcRqMwxHcR5F0OwP4SPH9UzGvqVbQxPcB0JoNi7tH96uY19SvaGJX9xB0HoNk/tX96Ladcq2jiNfAvIWh2cnavVzOsXM8Rr4F5CUPqS9q9XM6wzPEai8g6H1Je1crmdYZniNReQVD6svalMzrDM8Rr4H5C0PqS9q5TNKxczxGvgfkLQ+pL2r1VtOsTM8Rr4F5DUPqS9s5MyrDM8Rr4H5C0Ozk7Z6ZlWGZYjXwI6DUOzk7Z6ZnWGZYjXwI6CUPqSdq9FtOsTMsRqT5C0PqS9q5XMqwzOvqLyDovVm7U9yZlWJmdfUnyDouabtf9FktpVS5nX1A6BUX87tf9EzOsM0r6knQKj/AJ/aDwpmVYuaV/gg6A0frT9dvhTNKvwXNa/wT5v6TaT9dngVW1KuiLmtb4IO99S7So60fgVzSrogtq1dEY3b3lNtqjpi8CyW1amiMs2qaIxu3vKfbz9Efcss1noM1noY373kXJUSj7WsPwTNZe6MltWeh9K3J3MDIImYicMUbb214WgX/JdmGLbimcOpUbk38mTSD0mfY7+i5e3PXFGGH9zV2XCNoYUIzKAqQd1AJACAYQowoAchQUAwOZN4pEjg3NxAHtWcYOfQxbSPBPukG1EcQcLOAJ9EjjYgM73Po8gsOXXlswwcpUnN+xhxVc97XtPouB+w3Wq6ckryPRSTGsbBhZANCghiSVSgqBlAJASUuACXAFUCBS5LArcgEoCShbCCpBFQCKAhyICWV0SxDlHZix01H9Gz3W/AL6WnbcX0asurPLu/6bPdPxC1NufuQPTDe5qiVw7myDXLG/MM9TDdZGIOalgJQCQDQpQQAoyiUYNZV7oRgPdJM2KNhwkuNszyDlcTry5wujTpOMVux3pM80pVW4pXNO/SejYDI+Z0wuWRhrTiJGZuLAsAFteRxXzW7PDVpJKK3dT2p4GtKe5bmeEaQQyA1TaU4YeK0OfHwrgfpDGSbsAu24vnfLlXtGlUjTdNz5szrYBwrqm+rPZTaT0krTwZdDIwF1pBbij0nB1yDh+1eFPC14S/M9+LGIwNWi1y6m2p90GObwkNQyZotjwkZXsBcXu0e1a0qSk9ycN3Q150503eSNsCCARy5hc2Ss2jNFtKxYIKqAggCyIAqBIARgSgAlVEEVQJABRAm6oEgEgEUBAQBdUGKTUoyM6iiPzbPcb8AvpqfoX0akurPHu875xvu/1Wltv9yP0euH6M1hXEZsCDUBTXWQhnEl1bmI3KAAEKCFGFARLK1gLnuDWjW5xAAvkLk9CyjCU3aKuVHnod1IZiRFI1xBItmDkLmwOZyIOS9amGqQ5tFd1zsc7ppo/w1pAJDhLj82GEsJaPSY4guDiBxgeLzWzXRwGMXpk0rHrhMVLDybiupytPua5zPk7WNdfESZC1l6hzS1kkUrMXzbRbiONnEG17LqyqU/Vc95Y1usqu9Zntj3FkjAiDIyDjvE9z2fKLF2B1QCA5rozfDhab2ztkpxqcry/4jzlXc58Rt3/g8ku5LoBgdHdr2uDy4B1RIwgGMxMka1sLmOablxBIflisFkqtOb5PoZSxcqk1JvmuhsND9G3CThC518Lg4hloQCRY4ybyYhcgNGR1kZX1cXioxi+jaMsbjZV4qDS+zvaqtii9N4bZtwDmcI1avsPQVwdydWW8kaCduSHS1scovG8OyByvqP2rCpSnT9ReZmusEUFQCgEUAiqUV0AIRiKEBABVAkBJQCKoFhQCKFMchUAMN1SCIVDOmo/o2e634BfS0vRH6Rpy6s8O730jfd/qtHbT/VX0euH6GsaFxWzYMgCAHNuhCW5GyxBnusgAQWKCAFLA8e7dLHLC6ORoLSW69TXA3a/8DZe+HqSpz3oi7XQ1G5W5GGdksoidIzG2Esx3ZiHGcQ5o5Bb2XW1XxLlTcY9H1MVN2syd3tM2Uk5hdBI8hrXYmuaBxgTaxz5FMPs91oKadjfw+BqV470WcxujpAJGmRjJ44S4ixihlj4QuLzm51r3OQ5ORdalh3FbsndnrT2bae7Kzehl3BFRXSlkM44SNuMumgiva+GzXC7r3K2aeDUk1YuLp08Ik5w66G/ZuBVQh08tZAGZcK/CxuIMuM5Lg3bnbM2IWT2fK1oI5FTE0Gvyxtc3dNI1jY42mMgR4mNbK0vfG2wdIG242ZBJ5z7VyMRsituSqt9DCFdXtY1ml+4jakMLReVl8ILiyN7b5teeWxNxlz861MFiXS5PozZjUlB3iPRHcYUrHgj51+b7PxsYLmzIzyDl9qxxuIdV8uiEqkpu8jeALRRCwrcAUYJKgAhW5bkqkEgBAFkIBVBKASAV1bgSFJIQEuCgMcblQUQlyM6WjHzbPdb8Avpqb/JH6RpyXNni3c+kHuj4lc/bX7yPWh6TWOauMbBkjOSoKAQgOasQUFkBtQFWUAwFSiljxC1r3tlz5he+FSlWgn0uYTdoux6Kyja0tLWNabkXFgbW/NfQbYw9KFBcONnc1qDm5cz5PviR/wB4WdcAxwYiNYFyCQOU+xeOzm+B/wCz6rZjf4abXybcCjLTbBwfCgEcHDwXChpjwlurhMRB/L2LD+o37W5/7HC/FS3r3szBvXwA1tVGxzsJgkY19gHYeEADrEWBsdVrLu4S/V9Tobak3hqTl1OU0mrMNG6lp3OqqSKS5qSyVr4i6UvMUziBHKS9ziHZ68rXX0OChCVRSfJ6Hy8pO1juNDNzGwNpy+znu3MxU7mkkNBnLp8+ctlgHswmy5e1JKVKqoqy5mdJfmR2nyISPYHtJHGOsjO3sXxmx6UKtVxlzRuYiTS5Ey0rY3uDQRcNJuSc8xylZbaowo1IxhyViYeTa5g0LjNmyVZAFkAi1AIBASQsgACACUBJQgiqAsgEQgJwoBWVRQKAxqAxlqoE1yjB1NH9Gz3W/AL6an6I/SNOXVnh3c+kHuj4laG2f3l9HpQ9LPAuObAgqCwhCrKAAgKClgNUFKWbJz9jjdOJp/lNNHdwppeISA7Dwz3FoMmCxIGJhAuBrXc2VCnKP+o3cMqSpzlLnJC3Q0MgpeDfPV8aSXgw7geK6R0ZbhPGJAJudeRK62Noyp096K3medLaLqtqEFyOQ3e3HdT1Yp5agvyjPDPvxGm+RDnHIEc9s1rUKyqUt+MbfB28NX38PKUI29rGd89MJXU2FhgzqzKJCWmcHFhAvm4nO1/ZZbEVVdPj3/N0t8Hzf4Sq52cWl1NPuTu7V0svD0wILuEaX4WvaQyz5W4T6vFJ1FdahhEqe+5WlobeOxtKUo0Jq6jyb+T6MGT7r00TYGwxUkhvVsxPa8TNnxyBhYLkSNJPG9YaivbD1uG95rmjj4ujwp7tzyaEblSQ0m6MMYAfHeKnqHsfFIHObiLC1xdhja4tILSQbk56zjtCtGcXN6czzo2jJXCPRaR0raeTdAGpc10uqVz8LXDjen6Fw5vJfFqyXzmBnx5t047q1O5UxlOMbqnyIqH1VDV09MZnTOlwcUFz2PjMhD3ObJd0RAvYNNsvwXpj8LFxfE58uTEJUa9OU0t2x3dhc2XyS6mougkMgKASEJKWBKyKCAChBKgSAEAigJVsCSgEShSCFAIoDHI3lQHUUJ+bZ7jf8IX09L0R+kacurPJu79IPdHxK5+2v3l9Hrh/Sa8LkHuMBQlyrIS4KlGVAUEAICrIDQaT6ROpnsghp3zzSjE1ovgsHW5Myb/gL5ldXZmFcpcRv3PalQVSMnKSikeWXR+trJI5d0pWNja8PjpYdQcLnjnUOY5uP2Lt7TrTpUb68jGnXoUk6dBXb92LS6hiklge+JrnvrIInOIzdGYySw87fYuJgas1GSv0R6YepOO8ou3I5qu3GidTSiONjZDuq6nifa2FmKzY78jb2yW/TrT4qTfLdubNPETU1vSut04x7XxieIukbIx5ELBbA3hHFlSH5ZHC1o/BfWUcXRlCEmvbmcrEYCrUrOUOkne50ej808MYbHUVELS10oEWHA8RgNcQXEcfLV8Fw6uJlvycelzuzoU2kpRTtyNo3dSqD6fFV1JEk8LJIpcIOBzhbGBzjkOq413BXhVrzlCaeh5yw9B71opWXU6jd3cKoNW2soZGtqA3g3Ml9B7G3Nhly5Ag29hC0djYiV3SXyc+NWmqbhWXJ6dTDT6Yn5Q2GtpH09Q8Nja4DEw3cQ2xOeAl37pcLle+1qNSr+ZO1vYQwaVNzpS3onVWsV8wjyTQgUKIoAcgIIVIK6FEgHdCAUBJVAggAoCSsgKygEUKQUsBEJYCKhDpaIfNs9xvwC+npeiP0jUl1Z4d3fpR7o+JXO20/wBZfR64f0mvC5RsFtWJjYaEsUqUagBAMIBpcp5K6mbijmdk6HFhPOJLNcHcuHUbc4C3sBXcKij7NowndQaXubCsqGOLQ1zSbuyBudWfxXc25UhOhHdd+ZqYaLUuhzGk549L/wAwg/SK42C5qf0dKj/d9GlP0R/58P1Vur1/+H+x7R9XPtNNutA0xudhGI7rTtxZBxba9i7m5Vs0m963tuo3MNJ8RR/0EQEsaXA4Gl73cc8LdkbncK5lgMLczz3vqyuvVc1zJiozqbu51XUbactniDmuD/llOXF0mPHc3D2mw4uf43vlZedT0S+j2cr05L2sfWmuHCNuQM368v3StDYdliHf5PnMRdwPPuvRtlnie4giDjtbkQXODmgk8hGsf7Lb2zinCW7H3RMK3GLVzMF810Nj4EUuULIAcgJVISUKAQAUIJAIqgEAilgIqgklAIoUiyAFSCPtCgOlo/o2e634BfTUvRH6RqS6s127hPC/9I/qubtj/uLfB64f0niYuUbA7oQtqEGCgHdQDQAEA1GEaPSndkU/BswNdju7jvez0COKMDTe976xawyK6mz8CsReTdrHjVq7h4KfSYGUAU54oxDDK8uNxYhwfGGgZ678mpblTZEtx/mPNYjn0NrpBuW+R8EjLHgqiOaVvK5sYcLs/wCKz9XKALLnYSrGDlCXurG3GW7d6o52mgkkh4kUrid2eHwiN4cIeExcIWkXAtz2XVhQlKp+Xmt21/8AB6OvBS59thS7kxvhnhkmiBkqZ52yB7CyleH5Nlde2LKzhyB1he2e/CjubsWubVrnlHG2kqifKKSsaWp3Oma50ksM7HviLS+JhnhcwtAbJG9hsG2Fw328ixnQnHk1yR16eMpSglFrU22iej8j3xSOa+OnhdwkIl+lleL4SW2+bjGIm3P9q5uNxUIRcE7t+DwxGJjK+71l1Og3c3VY2QRmIyOZnbEwDjDJ1s3ZDLNts9YWrgtnTrQ3lKxx6ldRdjFuVuyDOIxBhbIAMQe08bOxIAw25MnE+xe2I2ZKFFzlLoSFdSlax0a4aXI2/kEIJVARVAihBFRlEqB3QglQJACIEkKgVkBJCARQEOQCCoE4IDpqP6Nnut+AX01L0R+kakurNduznKfsC5O13/UtfB7UPSeNcw92MBEQoIx9BdLi4ynUDUBQCAagMckLXG7mNcbFt3NBOE5ltyNR5l6xrzj6XYxaT6nmfuNTEBppobA3AEbRY89wFmsZWX97JuRPbdeN+vyZ8iXMBOL94fvDJ3SFnCvUpemRHBMwyUkbjic255Sc76vS9Y5DXqstrMsTblIwdCnoZsANibm2rES63tFyV4Txtap6pMqpxXQsa14dbmZ4qncmCR2KSJrydeK7hlkCGk2BtygLZp42vTjuxlZGDpRfVCh3Hp2OD2wRh4N2vA44Oq+LWksbXmrOdwqUE7pHtC1bc7mdwJVLZCKXQE5AACAlAAQgiVRYSGIKlFZAIqkEnIyEShLkOQXJJTkXkIKjkNqxZOR0tL6DPdb8AvpqfoX0akurPlOn+k9VDXSxxyANDYyBgabXY0nMjnutjFYOlOreSPotlYOlVoXkjnHaYVpz4c/gxncvD8BQ7TprZ9DQY0urv4g9Rncr+AodpXs6hoX5Z1w+vHUZ3KfgKGhjltDQoaa122HZs7ky+hoMsoaD8ta7bDqM7lMuoaEyzD6D8ta7bN7NncmXUNBllDQBptXbZvZt7ky6hoTLKGg/LWu2w7NvcmXUNC5Zh9B+Wtdtm9m3uTLsPoXK8O/Yry3rtq3s2qPZ1B+xMqw+hQ06rfXj7Md6mWUNDHKqHyUNPa31ouy/9lMsoaEymj8j8va3nh7M+JTLKJMpo/Ihp/W/yezPiTK6IymjqxjT+t/kdmfGpldHQuUUtWV5wa3mg7N3jRbLo6GOUUdWPzg1vNT9m7xotl0RlNHVh5wa3mp+zf40yuiXKaOrF5wK3mp+zf40yukTKaOrDzgVnNT9m/xpldEuU0dWHnBrPVp+zf40yuiMpo6snzgVnq0/Zu8aZXRJlVDVgdP6zmg7N3jTLKIymjqxeX1ZzQdm7xpllEZTS1YnafVv8jsz41ctojKaWrF5fVv8nsz4kyygMppfIeX1b/I7M+JMtolymlqwGn1ZzQfjG7xK5bRGU0g8vqzmg7N3iUyyj8kyml8h5e1nNB2bvGrllH5GVUvkXl7WerB2bvGmWUSPZNITtPqzmg7N3jTLKIymkSdPazmg7N3jTK6RcqpC8vazmg7M+JMsokyqkI6e1lvqdWzPiTLaOhcqpH13cSve+nhe62J0UbnWFhdzATYc2a6cMNFRR8vVp2nJfLPlO+gP7xk+7i/wrKv6z6bYj/pv8nLNzsvM647oBoQLIUEBOJQowVRYoKAapBXQoFBYCgGowClhyEqB3Qoig5gg5ghLgUFxApYXC6WRASyLyILrIBY0IUVQMoCboQAlwCAChLCTkLEqCw7KlsYXHWo2Q++6OfslP9xD+m1bUeiPiK/7kvt/yfON9Mf3g72wxf5h/RYYj1H0OxOeGa+TkGOXidiwE2Qti7oLDuhAKAxlClXQpYQg7oQnEgBDIYQCJQDxILACgBBYSBIRKGVhAoY2G4oRgChAugFdDKxjKCwNCGLLQBdASSgGDkgBAF0AroBIBYkBjebrF9DF9D75o5+yU/3EP6bVuR6I+Ir/ALkvt/yfPd9pn9uB54Gfk54XniPWd/Yb/p39nEDJeB2huKouW0FCgShQxc6ACgGCgAlAMuQAEBQQgwhURdDIQKGLLBQDQXAoZJkoAshGCGAggGhUY3FCkuKEZkaEINyAklASgKQEkoRg5CiCASARQjMbjkjMGffdHP2Sn+4h/TatqPRHxdf9yX2/5OD323tNVE5pBBguCOUcI5edd3mmdvYP7U0/ZnEFnQvBHcIwEaiCOZUhlZzoW4yEKYZELcMWaC5SC4nCxQXC6FuZEHIftQgwguYn60LvAAgLCAYKjYEEuZ2G0JcgylyMkqmIwEBDyheRJCDkSxtyhGZSUIS5S4uJLglutLkuUUuLghLkpctymtS5QcxLi5FlSGN2pGYM++aOfslP9xD+m1bUeiPjK6/Ul9v+TRaeaDSTyRfJ3RtY1jgRI59y50heTk08pK86sG7WNnZm0FQjJTTdzmzvcVe1g60ngU4UtTq51S7X4E3e3q9rB0yeBThS+BnVPtfgfm4q9rB0yeBOHIZzS7X4F5t6va09vek8CcKepc7p9r8E+bSr2sHWk8CcKeqJndPtfj/6A3tKvawdMngTgz1RM6p9r8D821XtYOtJ4E4UjJbbp9r8A7e1qz9bB0yeBOFPVB7ap9r8CO9tVbWDpk8CcKWozqn2vwUN7er2sHTJ4E4U9S53T7X4GN7ir2sHTJ4E4U9UM6p9r8B5uKvawdMnhThT1LndPtfgR3t6rawdMngThT1RM7p9r8B5t6vawdMngThT1Gd0+1+Bne3q9rB0yeBOFPUZ3T7X4F5uKrawdaTwJwp6oZ1Sf9r8Febiq2sHTJ4E4U9UVbbpdr8B5uarawdMnhThT1Rc7pdr8CO9zV7WDpk8CvClqTPKfa/AjvcVe1g6ZPAnClqR7bp9r8D83NXtYOmTwqcOWpM6p9r8E+beq2sHTJ4E4c9S51T7X4Gd7aq2sHWk8CcKeozqn2vwA3uKvawdMngThz1GdU+1+A821XtYOmTwJwp6kzqn2vwLzbVW1g6ZPArwpajOqfa/A/NtVbWDpk8CcKQzqn2vwIb2tWPrYOmTwJwpEzqn2vwI72tVtYOmTwJwpajOqfa/A/NrV7WDpk8CcKWozqn2vwHm1qtrB0yeBOFLUudU+1+ChvcVW1g6ZPCnClqZZ1T7X4F5uKvawdaTwJwpGL21T7X4JO9rV7Wn6ZPAnCnqjF7Zp9r8GN29lV2+lg60ngU4Un7mD2vTf9rPq2425T46eGMlt2RRtNr2u1gBtlqyXuocj56pVi5ydvdn/9k='),
(6, 'Ρουμανία ', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARMAAAC3CAMAAAAGjUrGAAAAG1BMVEUAK3/OESb80RYAI4F5b2f/1wn+1xXNACbdZyKTR8sdAAABAElEQVR4nO3QRwEAIAwEsDKLf8WouF8iIVUxa5+Zcl+PmFyJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEydOnDhx4sSJEye5kw8yndcsBTMZHgAAAABJRU5ErkJggg=='),
(7, 'Αγγλία ', 'data:image/png;base64,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'),
(8, 'Πορτογαλία', 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F5%2F5c%2FFlag_of_Portugal.svg%2F1200px-Flag_of_Portugal.svg.png&imgrefurl=https%3A%2F%2Fel.wikipedia.org%2Fwiki%2F%25CE%25A0%25CE%25BF%25CF%2581%25CF%2584%25CE%25BF%25CE%25B3%25CE%25B1%25CE%25BB%25CE%25AF%25CE%25B1&tbnid=GKs7NxxoIqMcVM&vet=12ahUKEwj2urnUgZDnAhVRmbQKHdnvCEMQMygAegUIARDVAQ..i&docid=Pz1PyoiqMlDLDM&w=1200&h=800&q=%CE%A0%CE%BF%CF%81%CF%84%CE%BF%CE%B3%CE%B1%CE%BB%CE%AF%CE%B1%20flag&ved=2ahUKEwj2urnUgZDnAhVRmbQKHdnvCEMQMygAegUIARDVAQ'),
(9, 'Σκοτία ', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASIAAACuCAMAAAClZfCTAAAANlBMVEUAZb3///8AWLkAYbwAXboAVrizyeYAY73g6vWAptf7/f5Af8cAVLiBptd8pNZEgcisxOQ7fMaUaMZzAAAE6UlEQVR4nO2d63IbIQyF2V07GztO47z/y9bj6ZS0xtYFAUeMvt+ZDIg9SBwuTgvJdTukSTlsV7r/if6TZTkdt9GdacF2/HVm9J4VouX9ax3dH3vWj3dW53khWpa3NJnaDvsbs+vcEC3nz5nUth9PHI3JQjSV2rgak4boprY5ctth42pMHqIpctvOy2PqEPlXm0hjqhDd1LY7Vhs/j9WEaDm7Vdu2CjWmDZFbtck1pg+RS7VpNFYTolsledlHd1rCftForCpEN7V9OFLb+q3SWGWIHKlNrbHqEN1y2+ogtzE9jzYhcpHb1i+9xixCBK+2Oo3ZhAjaJRGvx4ohYpi3FLBqU9aK/3KtSod/gXRJhJ5HmXtpU1FU/QBu3XbTWH2vzqc/BbLBlAanNhON/UxFNv8QZwegxaBvK9/ufgqKS6LzPB4681AWz6O2hpIwl+8QbPLYs6E2SQLLaaRL0j49tx2C9tgIgSjyPOe2XtOpZCv3KSNcEps89slquM/c1vnz96e2/sNqVHz1qiT3y4jJwWZY+uwA2JgVioLOi0ti53nIMSrD2uY2ozymLnfxcxvAoql6++DehFa5DWMIazeh7rTZAbApci2ahjFUj0AVbwCCfwBtwW2U2y5maoNrUEIbNMTP2qxZFtJHnRxhEghwik0Yw4ddqKXxkwDCIFEMXRK5WDSmkQtrL9aDWVOlavNkYA0x+ZzZoKn/tIlTlAno2WgPeaxEt20rtxt7qdfgutSYdfNfpWGs5bOGxgcxJjiqktoO8+jljhmtJguveaxEk6OFUx2+TC0G3HkeK2E7bcyksYzhYflJrxMkO5fEkechx+bizsxXm4yuf1WDfEEuGU20dSDUiq8x2aLQA6yxjMlGlxIfV77TQLXhayxjkriluHp+wqr8k+DtEZPUXW2eNJYxqSR5uMhjJUxcEgZAnoecLmrzqbFMc7W51Vim8brNs8YyJi5JGVTPQ04jtU2gsYzJpvN/gHsecsxzG5Z3b4Op2qbSWMbQJZkjj5Vg/WACzcQ/KREhogihUcR0TRBJnyBKR4pYgBDEMpYgzBCKsNQIwpglCHufIjaJCGKrkSA2rCni2ANBHJ4hiCNYFHGQjyCOgxLEoWKKOJpOEBccCOKaDEVctiKIK3sEcfGTIq4PE8QldIJ4yoAiHsQgiGdVCOJxHop44gms0e7UFs/NUcSjhVRT4+nL18QDqhSjlwTwuQ2hgdCPOceT4BQ4pQnCx1xqFtRycvSUWADuNyXgGgQ4aFifNaj0cSZH4AQCkmKhyxCEDxygCQSDp0kXS6Khi0YnC+tx1oMje2aMgeXM5Btgg8KUHGw6Jxb8PFai47C63bbqtrHnT2OZLp8/1OJQQfNDBhMcxGh8VAXR85DTUAg+81iJRtPpVEcLmxy+9JzHSphLYh6NZUwn1kkPyxteJ/Diecgxc0kmvrhjdLUpVf8L5OtfJhfkqkM0vFZ8jUEqqgwRrMYy1Zs4VSHycaG5diuwJkTgGsvUqU0fIk+PK1SVNtoQeXuio6JAVobIjcYyarWpQuQgj5VQVpKKEKF4HnJ0Lok8RA41ltGoTRoipxrLyNUmDJFbjWXE6zZRiCA9DzlCl0QQIvcay4jUxg4RsuchR7Itzw0RkHdvAz+38UI0kcYyXLWxQjRBHivBdEkYIZr3BxN4PynxGwojfuHIBL2jAAAAAElFTkSuQmCC'),
(10, 'Βουλγαρία', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASIAAACuCAMAAAClZfCTAAAAElBMVEX////WJhIAlm4AjF8AnHPgFQC7K9XWAAAA+ElEQVR4nO3QMQGAMAAEsYeCf8tIuI0pkZANAAAAAAAAAAAAAAAAAAAAgB8dwm6CoqQoKUqKkqKkKClKipKipCgpSoqSoqQoKUqKkqKkKClKipKipCgpSoqSoqQoKUqKkqKkKClKipKipCgpSoqSoqQoKUqKkqKkKClKipKipCgpSoqSoqQoKUqKkqKkKClKewh7CbsIipKipCgpSoqSoqQoKUqKkqKkKClKipKipCgpSoqSoqQoKUqKkqKkKClKipKipCgpSoqSoqQoKUqKkqKkKClKipKipCgpSoqSoqQoKUqKkqKkKClKipKipCgpSoqSoqQoKUofMGTNC8HkSxoAAAAASUVORK5CYII=');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_user_id` int(11) NOT NULL,
  `order_address_id` int(11) NOT NULL,
  `order_created_id` int(11) NOT NULL,
  `order_payment_method` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `order_price` float NOT NULL,
  `order_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `op_id` int(11) NOT NULL,
  `op_order_id` int(11) NOT NULL,
  `op_product_id` int(11) NOT NULL,
  `op_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `status_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_datetime` datetime NOT NULL,
  `order_tracking_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `product_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_small_description` text COLLATE utf8_unicode_ci NOT NULL,
  `product_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `product_price` float NOT NULL,
  `product_sale` float NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_sub_category_id` int(11) NOT NULL,
  `product_photo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_sku` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `product_available` enum('ΠΡΟΠΑΡΑΓΓΕΛΙΑ','ΤΕΛΕΥΤΑΙΑ ΚΟΜΜΑΤΙΑ','ΔΙΑΘΕΣΙΜΟ','ΕΞΑΝΤΛΗΜΕΝΟ') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `product_name`, `product_alias`, `product_small_description`, `product_description`, `product_price`, `product_sale`, `product_category_id`, `product_sub_category_id`, `product_photo`, `product_quantity`, `product_sku`, `product_available`) VALUES
(1, 'Που χάθηκες Μπερναντέτ; (DVD)', 'pou-xathikes-mpernantet', 'Η Μπερναντέτ Φοξ τα έχει όλα: έναν τρυφερό σύζυγο, μια γλυκύτατη κόρη και μια υπέροχη ζωή', 'Η Μπερναντέτ Φοξ τα έχει όλα: έναν τρυφερό σύζυγο, μια γλυκύτατη κόρη και μια υπέροχη ζωή. Το μόνο που της λείπει είναι η περιπέτεια. Όταν η Μπερναντέτ εξαφανίζεται πριν από ένα προγραμματισμένο οικογενειακό ταξίδι στην Ανταρκτική, η 13χρονη κόρη της θα κάνει τα πάντα για να την εντοπίσει, ανακαλύπτοντας στην πορεία συγκλονιστικά στοιχεία από το παρελθόν της μητέρας της.', 19, 19, 1, 1, 'images/poy-hathikes-mpernantet-dvd.jpg', 1, '21384', 'ΔΙΑΘΕΣΙΜΟ'),
(2, 'Ο εισβολέας (DVD)', 'o-isvoleas', 'Ένα νεαρό ζευγάρι αγοράζει το σπίτι των ονείρων τους, όμως ο προηγούμενος ιδιοκτήτης δεν είναι έτοιμος να το αφήσει...', 'Όταν ένας νεαρό παντρεμένο ζευγάρι αγοράζει το σπίτι των ονείρων τους στο NapaValley, νομίζουν ότι έχουν βρει το τέλειο σπίτι για να κάνουν τα επόμενα βήματα τους ως οικογένεια. Αλλά όταν ο παράξενα πωλητής συνεχίζει να διεισδύει στη ζωή τους, αρχίζουν να υποψιάζονται ότι έχει κρυφά κίνητρα πέρα από μια γρήγορη πώληση.', 17, 17, 1, 1, 'images/o-eisvoleas-dvd.jpg', 0, '21373', 'ΠΡΟΠΑΡΑΓΓΕΛΙΑ'),
(3, 'Η ιστορία των παιχνιδιών 4 (DVD)', 'toy-story', 'Ο Woody ήταν πάντα σίγουρος για τη θέση του στον κόσμο και το ότι προτεραιότητα του είναι η φροντίδα του παιδιού του, είτε είναι ο Andy είτε η Bonnie.', 'Ο Woody ήταν πάντα σίγουρος για τη θέση του στον κόσμο και το ότι προτεραιότητα του είναι η φροντίδα του παιδιού του, είτε είναι ο Andy είτε η Bonnie. Οπότε όταν το καινούριο παιχνίδι της Bonnie, που είναι καρπός χειροτεχνίας και ακούει στο όνομα Forky, αυτοαποκαλείται «σκουπίδι», ο Woody αναλαμβάνει να του δείξει ότι πρέπει να αγκαλιάσει το γεγονός ότι είναι ένα παιχνίδι. ', 13, 13, 1, 2, 'images/i-istoria-ton-paihnidion-4-dvd.jpg', 5, '21322', 'ΔΙΑΘΕΣΙΜΟ'),
(4, 'Θεέ μου τι σου κάναμε; 2 (DVD)', 'themou-ti-sou-kaname', 'Όταν και οι τέσσερις γαμπροί τους αποφασίζουν να εγκαταλείψουν τη Γαλλία, μαζί με τις συζύγους και τα παιδιά τους,', 'Όταν και οι τέσσερις γαμπροί τους αποφασίζουν να εγκαταλείψουν τη Γαλλία, μαζί με τις συζύγους και τα παιδιά τους, ο Κλοντ και η Μαρί προσπαθούν με κάθε τρόπο να ανατρέψουν τα σχέδια και να κρατήσουν κοντά τους τις κόρες τους!', 23, 23, 1, 2, 'images/thee-moy-ti-soy-kaname-2-dvd.jpg', 2, '21348', 'ΠΡΟΠΑΡΑΓΓΕΛΙΑ'),
(5, 'Game of Thrones Περιοδος 8 (4 DVD)', 'game-of-thrones', 'Η στρατιά του Night King να πλησιάζει και κορυφώνεται σε μία επική σύγκρουση μεταξύ ζωντανών και νεκρών.', 'Η βραβευμένη με Emmy σειρά επιστρέφει με έναν τελευταίο κύκλο επεισοδίων με διπροσωπίες και προδοσίας, ευγένεια και εντιμότητα καθώς και με μία επική σύγκρουση μεταξύ ζωντανών και νεκρών. Με τη στρατιά του Night King να ασκεί πίεση στον Τζον και την Ντάνι και στις συμμαχικές τους δυνάμεις, το τέλος των οκτώ κύκλων έφτασε και απαντά σε αμέτρητες ερωτήσεις σχετικά με την τύχη των πρωταγωνιστών της σειράς.', 37, 37, 1, 3, 'images/game-of-thrones-periodos-8-4-dvd.jpg', 0, 'BOX-2107', 'ΠΡΟΠΑΡΑΓΓΕΛΙΑ'),
(6, 'Breaking Bad', 'Breaking-Bad', '', '', 15, 15, 1, 3, 'images/breaking-bad-season-5-part-2-3-dvd-.jpg', 2, 'BOX-1963', 'ΤΕΛΕΥΤΑΙΑ ΚΟΜΜΑΤΙΑ'),
(7, 'Αστερίξ: Το Μυστικό του Μαγικού Ζωμού (DVD)', 'asterix', 'Έπειτα από μια πτώση κατά τη συγκομιδή του γκι, ο δρυΐδης Πανοραμίξ αποφασίζει πως είναι καιρός να εξασφαλίσει το μέλλον του χωριού.\r\n', 'Έπειτα από μια πτώση κατά τη συγκομιδή του γκι, ο δρυΐδης Πανοραμίξ αποφασίζει πως είναι καιρός να εξασφαλίσει το μέλλον του χωριού.\r\nΜαζί με τον Αστερίξ και τον Οβελίξ ξεκινά ένα ταξίδι στον γαλατικό κόσμο, αναζητώντας έναν νεαρό, ταλαντούχο δρυΐδη, για να του μεταδώσει το Μυστικό του Μαγικού Ζωμού.', 13, 13, 1, 4, 'images/asterix-to-mystiko-toy-magikoy-zomoy-dvd.jpg', 1, '21199', 'ΤΕΛΕΥΤΑΙΑ ΚΟΜΜΑΤΙΑ'),
(8, 'Ο Άγγελος (DVD)\r\n', 'o-aggelos', 'O Carlitos ή Άγγελος του Θανάτου έχει αγγελικό πρόσωπο, αλλά είναι ένας από τους πιο επικίνδυνους εγκληματίες. Αυτή είναι η ιστορία του.', '\r\nBuenos Aires, 1971. O Carlitos είναι ένας νεαρός που μοιάζει με αστέρα του σινεμά: γλυκό πρόσωπο, ξανθές μπούκλες και απαράμιλλο στυλ. Από μικρός ζήλευε τα πράγματα που είχαν οι άλλοι, στην εφηβεία του όμως φανερώνει την πραγματική του φύση: γίνεται κλέφτης.\r\nΌταν συναντά στο σχολείο του τον Ramon, ο Carlitos γοητεύεται και κάνει ό,τι μπορεί για να του τραβήξει την προσοχή. Μαζί θα ξεκινήσουν ένα ταξίδι παρανομίας, έρωτα και καταστροφής. Οι δολοφονίες μοιάζουν σα φυσική κατάληξη της πορείας του, ώσπου ο Carlitos θα συλληφθεί.\r\nΗ αγγελική του μορφή τραβά την προσοχή του τύπου και της κοινής γνώμης. Το προσωνύμιο που του δίνεται είναι «Άγγελος του Θανάτου» με τη φήμη του να εκτοξεύεται στα ύψη αμέσως μετά τη σύλληψη του. Του αποδίδονται πάνω από σαράντα ληστείες και έντεκα δολοφονίες.\r\nΣήμερα μετά από 45 χρόνια εγκλεισμού ο Carlitos είναι ο εγκληματίας με τα περισσότερα χρόνια κράτησης στην ιστορία της Αργεντινής.', 9, 9, 1, 4, 'images/o-aggelos-dvd.jpg', 2, '21175', 'ΤΕΛΕΥΤΑΙΑ ΚΟΜΜΑΤΙΑ'),
(9, 'Η ΕΠΟΧΗ ΤΩΝ ΠΑΓΕΤΩΝΩΝ 4: Ο ΧΟΡΟΣ ΤΩΝ ΗΠΕΙΡΩΝ', 'i-epoxi-ton-pagetonon', 'Η τελευταία προσπάθεια του Σκρατ να θάψει το καταραμένο βελανίδι του καταλήγει στο κέντρο της Γης,', 'Η τελευταία προσπάθεια του Σκρατ να θάψει το καταραμένο βελανίδι του καταλήγει στο κέντρο της Γης, με αποτέλεσμα να προκαλέσει συνέπειες που θα αλλάξουν ολόκληρο τον κόσμο – μια σεισμική δραστηριότητα τέτοιου μεγέθους που θα πυροδοτήσει τη μεγαλύτερη περιπέτεια όλων των εποχών για τον Μάνι, τον Ντιέγκο και τον Σιντ.', 8, 8, 1, 5, 'images/i-epohi-ton-pagetonon-4-o-horos-ton-ipeiron.jpg', 2, '17525', 'ΤΕΛΕΥΤΑΙΑ ΚΟΜΜΑΤΙΑ'),
(10, 'Ηρακλής (DVD) (O-RING)', 'iraklis', '', '', 8, 8, 1, 5, 'images/iraklis-dvd-oring.jpg', 0, '20835', 'ΠΡΟΠΑΡΑΓΓΕΛΙΑ'),
(11, 'BATTLEFIELD 4 (PC)\r\n', 'BATTLEFIELD\r\n', '', '', 15, 15, 2, 7, 'images/battlefield-4-pc.jpg', 0, 'C1528', 'ΕΞΑΝΤΛΗΜΕΝΟ'),
(12, 'World of Warcraft: Battle for Azeroth (PC)', 'Warcraft', '', '', 45, 45, 2, 7, 'images/world-of-warcraft-battle-for-azeroth-pc.jpg', 5, 'C1962', 'ΔΙΑΘΕΣΙΜΟ'),
(13, 'Gaming Headset Trust Ziva (PC)', 'Headset ', '', '', 10, 10, 2, 8, 'images/gaming-headset-trust-ziva-pc.jpg', 10, 'L71222', 'ΔΙΑΘΕΣΙΜΟ'),
(14, 'Gaming Keyboard HyperX Alloy FPS Mechanical, MX Red-NA Key', 'Keyboard', 'Gaming Keyboard HyperX Alloy FPS Mechanical, MX Red-NA Key\r\n', 'Gaming Keyboard HyperX Alloy FPS Mechanical, MX Red-NA Key\r\n', 90, 90, 2, 8, 'images/gaming-keyboard-hyperx-alloy-fps-mechanical-mx-red-na-key.jpg', 5, 'L7970', 'ΕΞΑΝΤΛΗΜΕΝΟ'),
(15, 'Razer LANCEHEAD Tournament Edition Gaming Mouse', 'Razer-Gaming-Mouse', 'Το ταχύτερο, ακριβέστερο και πιο ευαίσθητο mouse του κόσμου, το Razer Lancehead Tournament Edition εξοπλίζεται με τον νέο οπτικό αισθητήρα 5G 16.000DPI (αληθινά χωρίς interpolation) στα 450 IPS.', 'Το ταχύτερο, ακριβέστερο και πιο ευαίσθητο mouse του κόσμου, το Razer Lancehead Tournament Edition εξοπλίζεται με τον νέο οπτικό αισθητήρα 5G 16.000DPI (αληθινά χωρίς interpolation) στα 450 IPS. Διαθέτει την υψηλότερη μετρημένη ακρίβεια ανάλυσης από οποιοδήποτε άλλο gaming mouse στα 99,4%. Το Razer Lancehead Tournament Edition είναι πλήρως συμβατό με το Razer Synapse Pro το οποίο χρησιμοποιεί στη λειτουργία του εγκεφάλου του ώστε να λαμβάνει αυτόματα πληροφορίες και updates αλλά και να αποθηκεύσεται τις ρυθμίσεις σας όχι μόνο στο Cloud αλλά και στην εσωτερική μνήμη του Lancehead για χρήση/αναλλαγή των ρυθμίσεων και χωρίς σύνδεση στο ίντερνετ. Επίσης σε συνεργασία με Omron διαθέτει ναι υπερευαίσθητα κουμπιά Omron εξαιρετικής αντοχής στα 50,000,000 κλικς που μεταδίδουν την εντολή άμεσα με το σύστημα Hyperresponse ενώ είναι πλήρως προγραμματιζόμενα. Νέος αμφιδέξιος σχεδιασμούς και για αριστερόχειρες και για αριστερόχειρες. Επιπλέον η λειτουργία Chroma δίνει νέα διαδραστική χρωματική διάσταση στο gaming, μια και επιτρέπει στα LED της συσκευής την επιλογή μοτίβων και κινήσεων ανάμεσα σε 16,8 εκατομμύρια χρώματα. Αν έχετε περισσότερες από μία συσκευές, μπορούν να συγχρονιστούν μεταξύ τους. Χαρακτηριστικά: • 16000 dpi 5G optical sensor • 450 IPS/50g επιτάχυνση • Εργονομικός σχεδιασμός για δεξιόχειρες και αριστερόχειρες με ελαστική επένδυση • On-The-Fly Sensitivity Adjustment • Μηχανικά Razer Switches • 9 Πλήρως Προγραμματιζόμενα Hyperesponse πλήκτρα • Razer Synapse Pro • Λειτουργία Razer Chroma • 1000Hz Ultrapolling • Inter-device color synchronization • Ελαφρύ 2 μέτρων καλώδιο με επένδυση ινών • Μέγεθος: 117mm μήκος, 71mm φάρδος, 38mm ύψος • Βάρος: 104g', 90, 90, 3, 15, 'images/razer-lancehead-tournament-edition-gaming-mouse.jpg', 0, 'ES7149', 'ΕΞΑΝΤΛΗΜΕΝΟ'),
(16, 'Razer SPHEX V2\r\n', 'Razer-SPHEX\r\n', 'Το Razer Sphex v2 είναι επιφάνεια κατασκευασμένη από ανθεκτικό πολυάνθρακα με νέα βελτιωμένη κολλητική βάση παρέχοντας ιδανικό περιβάλλον για υψηλές επιδόσεις τόσο για οπτικά όσο και για laser ποντίκια. Χαρακτηριστικά Υψηλές επιδόσεις τόσο για οπτικά όσο και για laser ποντίκια - Το νέο Razer Sphex V2 κατασκευάστηκε με γνώμονα τις αυξημένες απαιτήσεις των σύγχρονων παιχνιδιών.', 'Το Razer Sphex v2 είναι επιφάνεια κατασκευασμένη από ανθεκτικό πολυάνθρακα με νέα βελτιωμένη κολλητική βάση παρέχοντας ιδανικό περιβάλλον για υψηλές επιδόσεις τόσο για οπτικά όσο και για laser ποντίκια. Χαρακτηριστικά Υψηλές επιδόσεις τόσο για οπτικά όσο και για laser ποντίκια - Το νέο Razer Sphex V2 κατασκευάστηκε με γνώμονα τις αυξημένες απαιτήσεις των σύγχρονων παιχνιδιών. Τοποθετήστε το σε όποια επιφάνεια θέλετε και απολαύστε ακρίβεια και αξιοπιστία κινήσεων τόσο για τα οπτικά όσο και για τα laser ποντίκια. Ιδανικό για κάθε επιφάνεια - Με την αντιολισθητική βάση του προσφέρει σταθερότητα σε κάθε σας κίνηση, ενώ η ειδική κατασκευή του σας επιτρέπει να το έχετε πάντα μαζί σας. Επιπλέον σας δίνει τη δυνατότητα να το πλύνετε όποτε αυτό χρειαστεί για να το έχετε πάντα σαν καινούριο. Gaming grade desktop skin - Το νέο Razer Sphex V2 δίνει μια νέα διάσταση στα mousepads. Είναι τόσο λεπτό (0.5mm) που θα προσαρμοστεί στο γραφείο σας σαν δεύτερη επιφάνεια.\r\nΔιαστάσεις: 35,5cm(Μήκος) / 25,4cm(Πλάτος) / 0.05cm(Ύψος) Βάρος: 51 Γραμμάρια', 15, 15, 3, 15, 'images/razer-sphex-v2.jpg', 3, 'ES7150', 'ΠΡΟΠΑΡΑΓΓΕΛΙΑ'),
(17, 'Razer Deathadder LeftHand\r\n', 'Razer-Deathadder-LeftHand\r\n', 'Το πρώτο Gaming Mouse για αριστερόχειρες είναι γεγονός.', 'Το πρώτο Gaming Mouse για αριστερόχειρες είναι γεγονός. Το κλασικό design DeathAdder της Razer τώρα σε νέα έκδοση με 3G αισθητήρα υπερύθρων για απόλυτο έλεγχο και εργονομικό σχεδιασμό για αριστερόχειρες που παρέχει άνεση ακόμη και έπειτα από πολύωρη χρήση. Ο 3G αισθητήρας υπερύθρων του Razer DeathAdder υποστηρίζει ταχύτητες κίνησης που είναι μέχρι και 2.25 φορές πιο γρήγορες από εκείνες των standard οπτικών αισθητήρων 800dpi.', 75, 75, 3, 15, 'images/razer-deathadder-lefthand.jpg', 5, 'ES7196', 'ΔΙΑΘΕΣΙΜΟ'),
(18, 'Razer Βάση Ακουστικών\r\n', 'Razer-Βάση-Ακουστικών\r\n', 'Κατασκευασμένο από υψηλής ποιότητας αλουμίνιο, με ελαστικά αντιολισθητικά πόδια, επίσημα σχεδιασμένο στήριγμα ακουστικών από την Razer με στρώση μάυρο ματ, ανθεκτικό και κομψό.\r\n', 'Κατασκευασμένο από υψηλής ποιότητας αλουμίνιο, με ελαστικά αντιολισθητικά πόδια, επίσημα σχεδιασμένο στήριγμα ακουστικών από την Razer με στρώση μάυρο ματ, ανθεκτικό και κομψό.\r\n', 34, 34, 3, 15, 'images/razer-vasi-akoystikon.jpg', 5, 'ES7173', 'ΤΕΛΕΥΤΑΙΑ ΚΟΜΜΑΤΙΑ'),
(19, 'Razer Ornata Chroma Keyboard GR', 'Razer-Ornata-Chroma-Keyboard', 'RAZER ORNATA CHROMA GREEK \r\n\r\nΥβριδικό πληκτρολόγιο με συνδυασμό τεχνολογιών. ', '\r\nΓια χρόνια η γραμμή που διαχώριζε τα μηχανικά πληκτρολόγια από τα πληκτρολόγια μεμβράνης ήταν ξεκάθαρη.\r\nH νέα τεχνολογία Mecha-Membrane διατηρεί τα καλύτερα χαρακτηριστικά από τις δύο τεχνολογίες, δηλαδή την ευχάριστη απαλή αίσθηση της πίεσης πλήκτρων μεμβράνης με το ακριβές και αξιόπιστο feedback των μηχανικών.\r\n\r\nΤο Razer Mech-Membrane είναι το αποτέλεσμα έρευνας και ανάπτυξης πολλών ετών που αφιερώσαμε για να κατασκευάσουμε τα καλύτερα keyboards για τους gamers.\r\nΤο Razer Ornata είναι ένα τέλειο παράδειγμα του πως οι μηχανικοί μας μπορούν να χρησιμοποιήσουν το feedback για να καινοτομήσουν με κάτι πραγματικά απίθανο για τους gamers – σε αυτή την περίπτωση, μια λύση η οποία συνδυάζει δύο φαινομενικά διαφορετικές τεχνολογίες πληκτρολογίων για να προσφέρουν μια εκπληκτική εμπειρία.\r\n\r\nΔιαθέσιμο σε Ελληνικό layout, με τους 15 απολύτως απαραίτητους χαρακτήρες διακριτικά τυπωμένους σε 15 πλήκτρα', 110, 110, 3, 15, 'images/razer-ornata-chroma-keyboard-gr.jpg', 5, 'ES7128', 'ΔΙΑΘΕΣΙΜΟ'),
(20, 'Slim USB Keyboard GR version OK05T Ωmega', 'Slim-USB-Keyboard ', 'Πληκτρολόγιο USB με εργονομικό σχεδιασμό και ελληνικούς χαρακτήρες', 'Πληκτρολόγιο USB με εργονομικό σχεδιασμό και ελληνικούς χαρακτήρες', 9, 9, 4, 17, 'images/slim-usb-keyboard-gr-version-ok05t-omega.jpg', 10, 'L2110', 'ΔΙΑΘΕΣΙΜΟ'),
(21, 'Mousepad Zeroground MP-1700G Okada Extreme 2.0\r\n', 'Mousepad-Zeroground ', 'Το Okada 2.0 Extreme διαθέτει εσωτερικό τριών στρώσεων και αντιολισθητική βάση με προφίλ 3,5 mm που του επιτρέπει να παραμένει σταθερό, όση δύναμη κι αν εφαρμόζεις κουνώντας το ποντίκι επάνω του.\r\n', 'Το Okada 2.0 Extreme διαθέτει εσωτερικό τριών στρώσεων και αντιολισθητική βάση με προφίλ 3,5 mm που του επιτρέπει να παραμένει σταθερό, όση δύναμη κι αν εφαρμόζεις κουνώντας το ποντίκι επάνω του.\r\n', 9, 9, 4, 18, 'images/mousepad-zeroground-mp1700g-okada-extreme-20.jpg', 8, 'L72014', 'ΔΙΑΘΕΣΙΜΟ'),
(22, 'Καλώδιο Scart αρσ. - Scart αρσ., 1,5m, Valueline 140-5360', 'Καλώδιο-Scart', 'Ακροδέκτης Α Scart male\r\nΑκροδέκτης B Scart male\r\nΜήκος 1,5 m\r\n?Επίχρυσος Ακροδέκτης Όχι', 'Ακροδέκτης Α Scart male\r\nΑκροδέκτης B Scart male\r\nΜήκος 1,5 m\r\n?Επίχρυσος Ακροδέκτης Όχι', 2, 2, 4, 19, 'images/kalodio-scart-ars-scart-ars-15m-valueline-140-5360.jpg', 5, 'L7976', 'ΔΙΑΘΕΣΙΜΟ'),
(23, 'Gaming Mouse Zeroground MS-3400G Hattori 3.0\r\n', 'Gaming-Mouse-Zeroground-MS-3400G ', '- LED φωτισμός 4 χρωμάτων\r\n- Διακόπτες Huano\r\n- Για δεξιόχειρες\r\n- 3.200 DPI', 'LED φωτισμός 4 χρωμάτων\r\n- Διακόπτες Huano\r\n- Για δεξιόχειρες\r\n- 3.200 DPI\r\nΚατασκευαστής	Zeroground\r\nΕγγύηση	2 Έτη', 13, 13, 4, 21, 'images/gaming-mouse-zeroground-ms3400g-hattori-30.jpg', 8, 'L72001', 'ΔΙΑΘΕΣΙΜΟ'),
(24, 'BATTLEBORN PS4\r\n', 'BATTLEBORN \r\n', '\r\nFormat	PS4\r\nΕίδος	Action / Adventure\r\nΚατασκευαστής	2K Games', '\r\nFormat	PS4\r\nΕίδος	Action / Adventure\r\nΚατασκευαστής	2K Games', 9, 9, 5, 22, 'images/battleborn-ps4.jpg', 5, 'P40330', 'ΔΙΑΘΕΣΙΜΟ'),
(25, 'FINAL FANTASY 15 PS4\r\n', 'FINAL-FANTASY\r\n', '\r\nFormat	PS4\r\nΕίδος	Role-Playing\r\nΚατασκευαστής	Square Enix\r\nΗμερομηνία Κυκλοφορίας	2016-09-16', '\r\nFormat	PS4\r\nΕίδος	Role-Playing\r\nΚατασκευαστής	Square Enix\r\nΗμερομηνία Κυκλοφορίας	2016-09-16', 19, 19, 5, 22, 'images/final-fantasy-15-ps4.jpg', 5, 'P40454', 'ΤΕΛΕΥΤΑΙΑ ΚΟΜΜΑΤΙΑ'),
(26, 'STAR TREK BRIDGE CREW VR PS4', '', '', '', 14, 14, 5, 22, 'images/star-trek-bridge-crew-vr-ps4.jpg', 5, 'P40572', 'ΕΞΑΝΤΛΗΜΕΝΟ'),
(27, 'Sony Camera v2 PS4\r\n', '', 'Παίξτε, προκαλέστε και μοιραστείτε\r\nΟι επικές στιγμές του παιχνιδιού σας\r\nΗ PlayStation Camera δεν προσφέρεται απλά για να δείτε,', 'Η PlayStation Camera δεν προσφέρεται απλά για να δείτε, να ακούσετε, να ζητωκραυγάσετε και να μοιραστείτε τα φανταστικά σας κατορθώματα με φίλους. Αλλά αποτελεί και το εισιτήριό σας για εντυπωσιακούς κόσμους εικονικής πραγματικότητας χάρη στην υποστήριξη PlayStation VR που προσφέρει. Επίσης, το νέο, στιλάτο μοντέλο της περιλαμβάνει μια ρυθμιζόμενη βάση, για να μπορείτε να καταγράφετε τις θρυλικές περιόδους του παιχνιδιού σας πιο εύκολα από ποτέ.\r\n', 59, 59, 5, 22, 'images/sony-camera-v2-ps4.jpg', 5, 'L7766', 'ΠΡΟΠΑΡΑΓΓΕΛΙΑ');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `review_user_id` int(11) NOT NULL,
  `review_product_id` int(11) NOT NULL,
  `review_stars` tinyint(4) NOT NULL,
  `review_text` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `stores_id` int(11) NOT NULL,
  `stores_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `stores_address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `stores_country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `stores_city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `stores_latitude` float NOT NULL,
  `stores_longitute` float NOT NULL,
  `stores_photo` longblob NOT NULL,
  `stores_postal_code` mediumint(6) NOT NULL,
  `stores_phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `sub_Category_id` int(11) NOT NULL,
  `sub_Category_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sub_Category_alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sub_Category_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sub_category_categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`sub_Category_id`, `sub_Category_name`, `sub_Category_alias`, `sub_Category_description`, `sub_category_categories_id`) VALUES
(1, 'Κοινωνικές', 'koinonikes', '', 1),
(2, 'Κωμωδίες', 'kwmodies', '', 1),
(3, 'Τηλεοπτικές σειρές', 'tileoptikes-seires', '', 1),
(4, 'περιπέτειες', 'peripeties', '', 1),
(5, 'Animation', 'animation', '', 1),
(7, 'Pc games', 'pc-games', '', 2),
(8, 'Pc Gaming Αξεσουάρ', 'gaming-aksesouar', '', 2),
(9, 'Gaming Πληκτρολόγια', 'pliktrologia', '', 2),
(10, 'Gaming Ποντίκια', 'pontikia', '', 2),
(11, 'Gaming Mousepads', 'mousepads', '', 2),
(12, 'Apple', 'apple', '', 3),
(13, 'Samsung', 'samsung', '', 3),
(14, 'Xiaomi', 'xiaomi', '', 3),
(15, 'Huawei', 'huawei', '', 3),
(16, 'Razer', 'razer', '', 3),
(17, 'Πληκτρολόγια', 'pliktrologia', '', 4),
(18, 'Mousepads', 'Mousepads', '', 4),
(19, 'Καλώδια PC', 'kalodia-pc', '', 4),
(20, 'Cooler Pads', 'Cooler-Pads', '', 4),
(21, 'Ποντίκια', 'pontikia', '', 4),
(22, 'Προσφορές', 'prosfores', '', 5),
(23, 'Spot The Stock', 'Stock', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_gender` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `user_username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NULL',
  `user_password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `user_newsletter` smallint(6) NOT NULL,
  `user_active` int(11) NOT NULL DEFAULT 1,
  `user_created_at` datetime NOT NULL,
  `user_birth_date` datetime NOT NULL,
  `user_city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_first_name`, `user_last_name`, `user_gender`, `user_username`, `user_password`, `user_newsletter`, `user_active`, `user_created_at`, `user_birth_date`, `user_city_id`) VALUES
(1, 'thanos89010@gmail.com', 'Θανος', 'Ταλαριδης', '', 'thanos', '80c79ae403da5baba960aff83ee3ba0f6511525efff33903ea2dad4da11c8ef86e6c346b8287c224a06c6cd44c2e8bbe364db2d4cf81b99758b3feace9eec0ac', 1, 1, '2020-01-14 04:12:17', '1991-10-25 00:00:00', 1),
(2, 'maria@gmail.com', 'Μαρια', 'Φιλιππιδου', '', 'maria', '067525f9eb7fa5fa3a2ffb57fcce1ff984fb21df898ba269c6e1d35862b5f4d74271b9d048af6c3b405180f469548a9af9f2845226f669c6b19c90fdd7464508', 1, 1, '2020-01-01 00:00:00', '1991-08-02 00:00:00', 1),
(3, 'kostas@gmail.com', 'Κώστας', 'Ανδρέου', '', 'kostas', '737ad465c5c0665d63cc533fbf9a95596e67b03e30e61297d83041fc958ff31a99bfe546a6d004d9b88c37f48e0a2bfd95bfcf831149bb540ae133d7e27d5455', 1, 1, '2020-01-19 00:00:00', '1992-05-20 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `wish_id` int(11) NOT NULL,
  `wish_user_id` int(11) NOT NULL,
  `wish_product_id` int(11) NOT NULL,
  `wish_timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`op_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`status_id`,`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`stores_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`sub_Category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`wish_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `op_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `stores_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `sub_Category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `wish_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
