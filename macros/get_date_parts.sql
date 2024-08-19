--开始
{% macro get_date_parts(date_column) %} --只放入date_column

--BigQuery里会显示以下的多个列，schema里会变成一个下拉菜单，说明有多个下属的列
--

   ( SELECT struct (
        {{ date_column }} AS original_date,
        EXTRACT(YEAR FROM {{ date_column }}) AS year,
        EXTRACT(MONTH FROM {{ date_column }}) AS month,
        EXTRACT(DAY FROM {{ date_column }}) AS day,
        EXTRACT(DAYOFWEEK FROM {{ date_column }}) AS day_of_week,
        EXTRACT(DAYOFYEAR FROM {{ date_column }}) AS day_of_year,
        EXTRACT(WEEK FROM {{ date_column }}) AS week,
        EXTRACT(QUARTER FROM {{ date_column }}) AS quarter ) as extract_date
   )
--结束
{% endmacro %}