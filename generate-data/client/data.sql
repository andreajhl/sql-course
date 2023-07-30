INSERT INTO esthetic.USER (id_person, role, email, password)
SELECT
    id AS id_person,
    'client' AS role,
    CONCAT(first_name, last_name, '@gamil.com') AS email,
    CONCAT('pass', id) AS password
FROM esthetic.PERSON
LIMIT 10;
    
INSERT INTO esthetic.CLIENT (id_user)
SELECT id AS id_user
FROM esthetic.PERSON
LIMIT 10;

INSERT INTO esthetic.CART (id_client)
SELECT id AS id_client
FROM esthetic.CLIENT;

INSERT INTO esthetic.CART_ITEM (id_cart, id_service)
SELECT
	id AS id_cart,
	(SELECT id FROM esthetic.SERVICE ORDER BY RAND() LIMIT 1) AS id_service
FROM esthetic.CART;
