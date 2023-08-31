--4)Calcular el promedio de lo que gastan los usuarios en el sistema:

SELECT
	AVG(suma) as Promedio
FROM --tabla intermedia
	(SELECT SUM(total) as suma FROM invoices
		GROUP BY CustomerId
	);