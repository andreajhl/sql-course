INSERT INTO esthetic.PURCHASE_ORDER (status)
SELECT 'open' AS status
FROM esthetic.CLIENT;

INSERT INTO esthetic.PURCHASE_ORDER_ITEM (id_purchase_order, id_service, price, discount_percentage)
SELECT
	id AS id_purchase_order,
    6 AS id_service,
    50.00 AS price,
    0 AS discount_percentage
FROM esthetic.PURCHASE_ORDER;

INSERT INTO esthetic.EMPLOYEE_PURCHASE_ORDEN_ITEM (id_employee, id_purchase_order_item)
SELECT
    (SELECT id FROM esthetic.EMPLOYEE_SPECIALTY WHERE id_specialty = 2 ORDER BY RAND() LIMIT 1) AS id_employee,
	pu.id AS id_purchase_order_item
FROM esthetic.PURCHASE_ORDER_ITEM pu;

INSERT INTO esthetic.PAYMENT(id_purchase_orden, amount, num_control, date)
SELECT 
	id AS id_purchase_orden,
    ROUND(RAND() * 100) AS amount,
	FLOOR(RAND() * 10000) AS num_control,
    CURRENT_DATE() AS date
FROM esthetic.PURCHASE_ORDER;
