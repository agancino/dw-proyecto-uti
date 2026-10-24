-- Ejercicio 1.2: Análisis por Curso y Créditos
SELECT
    c.Nombre_Curso,
    c.Creditos,
    m.Monto_Pagado_USD
FROM Fact_Matricula m
JOIN Dim_Curso c ON m.SK_Curso = c.SK_Curso;