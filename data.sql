
INSERT INTO `producto` (`id`, `codigo`, `descripcion`, `existencias`, `precio`) VALUES
(1, '1234', 'iPhone X', 800, 1100),
(2, '5678', 'iPad ', 750, 749.9),
(3, '8963', 'Mesa Doksta', 900, 74.9),
(4, '4569', 'Manifiesto comunista', 900, 24.99),
(5, '4682', 'Usabilidad by Eduardo Manchón', 100, 50),
(6, '1379', 'SNES', 250, 80),
(7, '1593', 'Perchero de Fernando', 10000, 10),
(8, '7531', 'Pulsera mágica', 90, 12),
(9, '4561', 'Coche Fantástico', 15, 90000),
(10, '8965', 'Anillo único', 2, 900000000),
(11, '4123', 'Plastilina azul', 1000, 12.99),
(12, '7458', 'Alma de Adrián', 50, 1),
(13, '5612', 'Katana', 600, 3000),
(14, '1597', 'Moto', 600, 3500),
(15, '3574', 'Dark Souls IV', 10, 80);

INSERT INTO `tipousuario` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Cliente');

INSERT INTO `usuario` (`id`, `dni`, `nombre`, `primer_apellido`, `segundo_apellido`, `login`, `password`, `email`, `fecha_nacimiento`, `id_tipousuario`) VALUES
(1, '123456', 'Pablo', 'Tolosa', 'Cerezo', 'pablo', '26079e41910bcde04be636fbeecc9045379882b5ad3fe7f70b762436c6d98055', 'pablo@gmail.com', '1996-08-09', 1),
(2, '789456', 'Menxu', 'Leon', 'Sum', 'menxu', '96c1776e50404abc540c8018836824be1d00d23fa81a18240b542e2a27f5de12', 'menxu@gmail.com', '1995-06-17', 2),
(3, '456123', 'Adri', 'Adria', 'Adrian', 'adri', 'd302886ecca83222a392f6549e520dacbd95dc65f1a303f8c571ca3bb9b8e196', 'adri@gmail.com', '2007-11-13', 1),
(4, '159753', 'Angel', 'Jordi', 'ENP', 'jordi', '707d11765de821e5bd52bfc135ce9e1e0400f6aabad78a0cdb4543dc22669e49', 'jordi@gmail.com', '1996-05-05', 2),
(5, '741852', 'Lemen', 'Melen', 'Melenas', 'lemen', '2f00d9bb8e08fa8732eb0f836f0ee9387691061c3c3519768092729521e34753', 'lemen@gmail.com', '1990-08-08', 2),
(6, '852693', 'Fran', 'Franxu', 'Madafakas', 'fran', '8ec98ed17b2fba4b6065111ab34427993f210e878414df557b31b443aacaa327', 'fran@gmail.com', '1998-05-05', 2),
(7, '854796', 'Nos Vamos', 'Don', 'Fernando', 'wwe', 'c3f2c80e9cd96953dc1abb477c61dfbcd2b85b17ed150f6dbd875d65ee756426', 'wwe@gmail.com', '2002-07-13', 1),
(8, '123596', 'Jonathan', 'Joestar', 'Diotemato', 'jojo1', '2496041448959ca1aa362d70f27ce01a9d967e51d811ec5f9567c1da079905cf', 'jojo1@gmail.com', '1950-02-03', 1),
(9, '486126', 'Dio', 'Brando', 'xXTheVampirexd', 'dio', 'd0c97a588484c47423e5d02db348a5b9cf066825bf44e87a79e0c6aea2cc514e', 'dio@gmail.com', '1950-02-02', 1),
(10, '45678912', 'Joseph', 'Joestar', 'Hectornoob', 'jojo2', '0c066e3c50807d3b752dfe861ac19626ee207e27277aba87d89476e7bc6a50e1', 'jojo2@gmail.com', '1965-08-09', 2);

INSERT INTO `pedido` (`id`, `fecha`, `iva`, `id_usuario`, `tiene_iva`) VALUES
(1, '2017-08-06', 12, 1, 1),
(2, '2017-08-21', 12, 2, 0),
(3, '2017-10-09', 21, 3, 1),
(4, '2017-07-02', 12, 4, 1),
(5, '2017-10-04', 21, 5, 0),
(6, '2017-10-04', 21, 7, 1),
(7, '2017-10-18', 21, 8, 1),
(8, '2017-10-28', 21, 4, 1),
(9, '2017-11-01', 21, 4, 1),
(10, '2017-11-26', 21, 4, 0);


INSERT INTO `linea_pedido` (`id`, `cantidad`, `id_pedido`, `id_producto`) VALUES
(1, '5', 1, 10),
(2, '1', 3, 9),
(3, '5', 3, 8),
(4, '5', 4, 7),
(5, '6', 4, 6),
(6, '7', 4, 5),
(7, '9', 4, 4),
(8, '5', 4, 3),
(9, '5', 4, 2),
(10, '5', 1, 1),
(11, '5', 1, 2);





