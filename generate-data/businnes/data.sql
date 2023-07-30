CALL generateWeeklyWorkSchedules();

INSERT INTO esthetic.PERSON (first_name, last_name, birthdate, document, type_document, phone) VALUES
    ('Juan', 'Pérez', '1990-05-15', '12345678', 'DNI', '123-456-7890'),
    ('María', 'González', '1985-09-20', '98765432', 'DNI', '987-654-3210'),
    ('Luis', 'Martínez', '1988-11-10', '45678901', 'DNI', '456-789-0123'),
    ('Ana', 'Hernández', '1992-03-25', '54321678', 'DNI', '543-216-7890'),
    ('Pedro', 'Sánchez', '1995-07-12', '87654321', 'DNI', '876-543-2109'),
    ('Carolina', 'López', '1983-12-08', '98712345', 'DNI', '987-123-4567'),
    ('Diego', 'Ramírez', '1998-02-18', '56789012', 'DNI', '567-890-1234'),
    ('Laura', 'Torres', '1991-06-30', '21098765', 'DNI', '210-987-6543'),
    ('Roberto', 'Gómez', '1987-09-05', '32109876', 'DNI', '321-098-7654'),
    ('Sofía', 'Flores', '1994-04-22', '67890123', 'DNI', '678-901-2345'),
    ('Carlos', 'Luna', '1989-08-17', '54321098', 'DNI', '543-210-9876'),
    ('Marta', 'Díaz', '1993-03-12', '87654321', 'DNI', '876-543-2109'),
    ('Andrés', 'Silva', '1996-01-26', '12345678', 'DNI', '123-456-7890'),
    ('Lucía', 'Romero', '1982-11-05', '98765432', 'DNI', '987-654-3210'),
    ('Eduardo', 'García', '1984-07-02', '45678901', 'DNI', '456-789-0123'),
    ('Clara', 'Martín', '1986-09-19', '54321678', 'DNI', '543-216-7890'),
    ('Jorge', 'Morales', '1990-05-08', '87654321', 'DNI', '876-543-2109'),
    ('Isabel', 'Pérez', '1993-12-15', '98712345', 'DNI', '987-123-4567'),
    ('Fernando', 'Hernández', '1997-06-28', '56789012', 'DNI', '567-890-1234'),
    ('Natalia', 'Sánchez', '1992-04-17', '21098765', 'DNI', '210-987-6543'),
    ('Pedro', 'Gómez', '1988-09-30', '32109876', 'DNI', '321-098-7654');

INSERT INTO esthetic.SPECIALTY (name) VALUES
	('Lashista'),
	('Manicurista'), 
	('Especialista en cejas'),
	('Especialista en micropigmentación');

INSERT INTO esthetic.SERVICE (id_specialty, name, description, price, duration_time_minutes) VALUES
	(1, 'Lifting de pestañas', 'ting de pestañas, la alternativa a las extensiones que se ha puesto de moda. Consiste en curvar la pestaña natural –incluso las más cortas- desde la base mediante un proceso químico que, cuando está hecho por profesionales, no daña la pestaña natural», Después se aplica un mix de vitaminas y queratina -también conocido como lash botox- que nutre la pestaña y aporta grosor al pelo, proporcionando un efecto de densidad. Finalmente se tinta la pestaña para dar profundidad, y listo.', 60.50, 60),
	(1, 'Extension de pestañas clasicas', 'Extensiones 1D Con las extensiones de pestañas 1D se consigue el llamado “efecto rímel”. La técnica utilizada para llevar a cabo esta tipología de tratamiento es de las más sencillas, pues únicamente hay que poner una extensión sobre cada una de las pestañas naturales. Resultado: un efecto muy natural.', 70.00, 90),
	(1, 'Extension de pestañas volumen', 'Extensiones 3D Si lo que estás buscando es un efecto de volumen más marcado, las 3D son perfectas para ti. Producen un “eyeshadow effect”, es decir, un pequeño sombreado que dará profundidad y definición a la mirada. Respecto a las 3D, la diferencia es que se colocan tres pestañas por cada pestaña natural pero, por el hecho de tener un diámetro más fino, siguen siendo agradables, suaves y ligeras.', 85.00, 120),
	(1, 'Service extension de pestañas', 'Service hasta 21 dias, pasado este tiempo se realiza la remocion para nueva aplicacion.', 70.00, 75),
	(2, 'Manicura semi-permanente', 'Cuidado y embellecimiento de tus manos.', 50.00, 45),
	(2, 'Pedicura semi-permanente', 'Cuidado y embellecimiento de tus pies.', 50.00, 45),
	(2, 'Soft Gel', ' Consiste en un tipo de uñas postizas hechas de gel suave que se pegan con un esmalte de gel que actúa como "pegamento". Al ser un formato pre-creado, permite que la clienta elija entre multitud de tamaños, limados y largos.', 80.00, 90),
	(2, 'Podoestética', 'Mimos para tus pies, incluye extracción de cuticulas y excedentes, exfoliación e hidratacion y reconstrucciones en las 10 uñas de los pies.', 55.00, 60),
	(2, 'Service Soft Gel', 'Service hasta 21 días, pasado este tiempo se realiza la remocion para nueva aplicacion.', 90.00, 60),
	(3, 'Laminado de Cejas HD + Diseño', 's lo último en tratamientos de belleza! El laminado de cejas, también conocido como brow lamination, es un tratamiento semi-permanente que busca redirigir el vello de las cejas para darles dirección y definición. ... Luego, se peinan las cejas hacia arriba y se aplica un fijador.', 45.00, 35),
	(3, 'Perfilado de cejas + henna', 'Diseñamos tus cejas de acuerdo a tu rostro y le damos color súper natural con henna , durabilidad en piel hasta 15 días en pelos hasta 30 días, dependiendo del tipo de piel y de los cuidados.', 38.00, 20),
	(4, 'Microblading de labios', 'Delineado semipermanente para realzar tus labios.', 140.00, 120),
	(4, 'Microblading de cejas', 'Técnica de pigmentación para unas cejas perfectamente definidas.', 150.00, 180),
	(4, 'Retoque de Microblading', 'Mantenimiento y retoque del microblading de cejas / labios.', 80.00, 90);

INSERT INTO esthetic.PROMOTION (percentage, start_date, end_date) VALUES
(15, '2023-07-29 00:00:00', '2023-08-29 00:00:00');

INSERT INTO esthetic.SERVICE_PROMOTION (id_service, id_promotion)
SELECT
	id As id_service,
	1 AS id_promotion
FROM esthetic.SERVICE
ORDER BY RAND()
LIMIT 3;
