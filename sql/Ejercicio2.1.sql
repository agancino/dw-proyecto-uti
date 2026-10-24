-- Ejercicio 2.1: Recaudación Total por Facultad (Ordenado de mayor a menor)
SELECT
    f.Nombre_Facultad,
    SUM(m.Monto_Pagado_USD) AS Recaudacion_Total_USD,
    SUM(m.Cantidad_Matriculas) AS Total_Inscripciones
FROM Fact_Matricula m
JOIN Dim_Facultad f ON m.SK_Facultad = f.SK_Facultad
GROUP BY f.Nombre_Facultad
ORDER BY Recaudacion_Total_USD DESC;