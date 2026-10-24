-- Ejercicio 1.1: Desglose de Matrículas por Estudiante y Facultad
SELECT
    e.Nombre_Estudiante,
    e.Provincia_Origen,
    f.Nombre_Facultad,
    m.Monto_Pagado_USD
FROM Fact_Matricula m
JOIN Dim_Estudiante e ON m.SK_Estudiante = e.SK_Estudiante
JOIN Dim_Facultad f ON m.SK_Facultad = f.SK_Facultad;