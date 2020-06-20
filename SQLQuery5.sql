SELECT    MONTH(DateInserted) [month],COUNT(*) 
FROM      utilisateur 
WHERE  role_user='client'  and  YEAR(DateInserted) = '2020' 
GROUP BY  MONTH(DateInserted)
order by MONTH(DateInserted)

select 1, COUNT(*) from utilisateur WHERE  role_user='client'  and  YEAR(DateInserted) = '2020' and month(DateInserted) = 1 
union
select 2,COUNT(*) from utilisateur WHERE  role_user='client'  and  YEAR(DateInserted) = '2020' and month(DateInserted) = 2
union
select 3,COUNT(*) from utilisateur WHERE  role_user='client'  and  YEAR(DateInserted) = '2020' and month(DateInserted) = 3
union
select 4,COUNT(*) from utilisateur WHERE  role_user='client'  and  YEAR(DateInserted) = '2020' and month(DateInserted) = 4
union
select 5,COUNT(*) from utilisateur WHERE  role_user='client'  and  YEAR(DateInserted) = '2020' and month(DateInserted) = 5
union
select 6,COUNT(*) from utilisateur WHERE  role_user='client'  and  YEAR(DateInserted) = '2020' and month(DateInserted) = 6
union
select 7,COUNT(*) from utilisateur WHERE  role_user='client'  and  YEAR(DateInserted) = '2020' and month(DateInserted) = 7
union
select 8,COUNT(*) from utilisateur WHERE  role_user='client'  and  YEAR(DateInserted) = '2020' and month(DateInserted) = 8
union
select 9,COUNT(*) from utilisateur WHERE  role_user='client'  and  YEAR(DateInserted) = '2020' and month(DateInserted) = 9
union
select 10,COUNT(*) from utilisateur WHERE  role_user='client'  and  YEAR(DateInserted) = '2020' and month(DateInserted) = 10
union
select 11,COUNT(*) from utilisateur WHERE  role_user='client'  and  YEAR(DateInserted) = '2020' and month(DateInserted) = 11
union
select 12,COUNT(*) from utilisateur WHERE  role_user='client'  and  YEAR(DateInserted) = '2020' and month(DateInserted) = 12 



,<%=dt.Rows[2][2]%>,<%=dt.Rows[3][3]%>,<%=dt.Rows[4][4]%>,<%=dt.Rows[5][5]%>,<%=dt.Rows[6][6]%>,<%=dt.Rows[7][7]%>,<%=dt.Rows[8][8]%>,<%=dt.Rows[9][9]%>,<%=dt.Rows[10][10]%>,<%=dt.Rows[11][11]%>,<%=dt.Rows[12][12]%