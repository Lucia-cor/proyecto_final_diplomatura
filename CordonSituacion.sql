-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-11-2024 a las 21:28:48
-- Versión del servidor: 5.7.40
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cordon_situacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `huespedes`
--

DROP TABLE IF EXISTS `huespedes`;
CREATE TABLE IF NOT EXISTS `huespedes` (
  `id_huesp` int(100) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_german2_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_german2_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_german2_ci NOT NULL,
  `cant_huesp` int(2) NOT NULL,
  PRIMARY KEY (`id_huesp`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- Volcado de datos para la tabla `huespedes`
--

INSERT INTO `huespedes` (`id_huesp`, `nombre`, `apellido`, `mail`, `cant_huesp`) VALUES
(1, 'Ariel', 'Ongarato', 'ongariel@gmail.com', 2),
(2, 'Paola', 'Fernandez', 'pfern@gmail.com', 4),
(3, 'Julieta', 'Bui', 'julibui@gmail.com', 3),
(4, 'Vicente', 'Escarpini', 'viescarpini@gmail.com', 4),
(5, 'Isabel', 'Casado', 'icasado@gmail.com', 4),
(6, 'Glenda', 'Ferrer', 'glendafe@gmail.com', 2),
(7, 'Belen', 'Bickham', 'belubick@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(250) NOT NULL,
  `Lugar` varchar(250) NOT NULL,
  `Cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `Titulo`, `Lugar`, `Cuerpo`, `img_id`, `Fecha`) VALUES
(1, 'TREVELIN: CIERRE CON FIESTA DE TULIPANES Y LLUVIA DE PÉTALOS', 'TREVELIN', 'Este jueves 7 de noviembre, el Pueblo del Molino despide su temporada 2024 con la tradicional Fiesta de los Tulipanes y una espectacular lluvia de pétalos. El cierre de la temporada en el Pueblo del Molino será inolvidable. La Fiesta de los Tulipanes y la lluvia de pétalos llenarán de color y emoción la Plaza Coronel Fontana. Este evento, ya tradicional, es uno de los momentos más esperados del año. Los tulipanes alcanzan su máxima belleza y el espectáculo convoca a toda la región. La temporada 2024 culmina en un marco de celebración. Desde las 18 horas, la Plaza Coronel Fontana recibirá a vecinos y turistas para este último encuentro con los tulipanes.\r\n\r\nLa municipalidad invita a vivir esta experiencia única. Será una jornada con sorpresas y actividades para toda la familia. La lluvia de pétalos se ha convertido en un símbolo de la celebración. Miles de pétalos de tulipanes se liberan al aire, generando un paisaje mágico. Este año, la Fiesta de los Tulipanes celebra su tercera edición. Con cada temporada, el evento crece en participación y en reconocimiento a nivel regional.Además de la lluvia de pétalos, habrá números artísticos. La Plaza Coronel Fontana se llenará de música y arte, con espectáculos para disfrutar al aire libre.\r\n\r\nLa fiesta tiene un significado especial para los vecinos. El Pueblo del Molino se enorgullece de su tradición y de compartir la belleza de los tulipanes. Ayer, en el campo de la familia Ledesma, se realizó una jornada de concientización. Más de 250 mujeres participaron de esta actividad, promoviendo el cuidado de la salud. La jornada de concientización se enmarca en la campaña por el día de la no violencia y la lucha contra el cáncer de mama. Esta iniciativa reunió a mujeres de diferentes puntos de la región.\r\n\r\nOrganizado por la Red de Mujeres para la Justicia y Trevelin Rosa, el evento busca educar y crear conciencia. La comunidad se compromete con causas importantes y da ejemplo de solidaridad.\r\n\r\nLa Fiesta de los Tulipanes finaliza una temporada que deslumbró a los visitantes. Los tulipanes volverán el próximo año, pero su color y su belleza quedan en el recuerdo.', NULL, '2024-11-07'),
(2, 'Vuelve la Expo Feria y Fiesta de la Producción a Trevelin.', 'TREVELIN', 'Regresa la Expo Feria y Fiesta de la Producción 2024, un evento que reunirá a más de cien artesanos, productores locales y regionales en un solo lugar. Durante cinco días, los visitantes tendrán la oportunidad de disfrutar de una variada agenda cultural, espectáculos artísticos, delicias gastronómicas y la expo feria en el polideportivo municipal, con entrada libre y gratuita.\r\nLa Expo Feria y Fiesta de la Producción en su edición 2024 buscará reflejar nuevamente la identidad de Trevelin, mediante la promoción de sus productos locales y la hospitalidad de su gente. El evento se llevará a cabo del 12 al 20 de Noviembre, de 14:00 a 21:00 horas, y será una oportunidad para descubrir junto a la riqueza natural que presenta la región, la cultura local. ', NULL, '2024-11-10'),
(3, 'Primer Festival de Hongos de Pino', 'ESQUEL', 'Este fin de semana, Esquel realiza su primer Festival de Hongos de Pino, una iniciativa que busca promover la conservación de los recursos naturales, el uso sostenible del entorno y la producción local, todo ello mientras celebra la riqueza gastronómica que ofrece la región, con una combinación de gastronomía, ciencia, cultura y turismo, entre otros aspectos.\r\n\r\nEn una conferencia de prensa realizada esta mañana de la que participaron la Subsecretaria Municipal de Turismo, Florencia Andolfatti, el reconocido chef Sebastián Fredes, la directora de emprendedorismo Paula Botto y Griselda Boyraz del sector turístico, presentaron los detalles de la primera edición de la Fiesta del Hongo de Pino, que tendrá lugar del 10 al 13 de mayo en la Sociedad Rural de Esquel.\r\n\r\nEl programa incluirá una amplia gama de actividades, comenzando con una sesión de observación e interpretación de hongos en el Centro Cultural Melipal. Además, la apertura oficial contará con una presentación audiovisual sobre los hongos de la región, a cargo del ingeniero forestal y fotógrafo de naturaleza, Héctor Gonda.\r\n\r\nPosteriormente, se llevará a cabo una feria gastronómica y clases de cocina los días 11 y 12 de mayo, dirigidas por reconocidos chefs de la región.\r\n\r\nLa Fiesta del Hongo de Pino no se limitará solo a la gastronomía, sino que también ofrecerá talleres de acuarela inspirados en los hongos, espacios recreativos, puestos de comida, música en vivo y actividades organizadas por el CIEFAP, incluyendo charlas informativas y talleres prácticos sobre el cultivo de hongos.\r\n\r\nLa subsecretaria de Turismo municipal, Florencia Andolfatti, destacó la importancia de este evento para promover el turismo en temporada baja, impulsando así el flujo de visitantes hacia la ciudad. Por su parte, Sebastián Fredes resaltó la singularidad de la gastronomía local, subrayando cómo el hongo se ha convertido en un ingrediente distintivo en los platos de la región.\r\n\r\nLa culminación del festival será una cena benéfica donde se servirá pollo al disco con hongos, cuyos fondos se destinarán a una asociación de la ciudad.', NULL, '2024-11-15'),
(12, 'Trevelin: Preparativos para la temporada de verano y un reconocimiento mundial', 'TREVELIN', 'revelin, localidad ubicada en la provincia de Chubut, recibió recientemente una distinción internacional al ser reconocida por la Organización Mundial del Turismo (OMT) como uno de los mejores pueblos turísticos rurales del mundo en el certamen Best Tourism Villages 2024. Este reconocimiento, otorgado durante la 122° sesión del Consejo Ejecutivo de la OMT en Cartagena de Indias, subraya el valor del patrimonio cultural, natural y el desarrollo sostenible de esta comunidad patagónica.\r\nEn diálogo con el programa El Mediador, que se emite por Tiempo FM 97.5, el secretario de Turismo de Trevelin, Juan Manuel Peralta, expresó: \"De alguna manera todo lo que es la autenticidad y esa identidad que se puede vivir aquí en esta hermosa localidad argentina que tenemos en la provincia de Chubut. Así que sí, muy contentos, felices de haber tenido esta hermosa distinción. Realmente un lugar precioso\".', '', '2024-11-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'lucia', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'julieta', '827ccb0eea8a706c4c34a16891f84e7b');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
