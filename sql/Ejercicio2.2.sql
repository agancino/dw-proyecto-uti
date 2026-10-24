-- Ejercicio 2.2: Filtrado con HAVING sobre Descuentos (Promedio >= 5%)
SELECT
    c.Nombre_Curso,
    AVG(m.Porcentaje_Descuento_Beca) AS Promedio_Descuento_Pct
FROM Fact_Matricula m
JOIN Dim_Curso c ON m.SK_Curso = c.SK_Curso
GROUP BY c.Nombre_Curso
HAVING AVG(m.Porcentaje_Descuento_Beca) >= 5.00;