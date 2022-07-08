-- 누적접속건수
SELECT T1.*
     , SUM(DT_COUNT) OVER(ORDER BY DT) AS 누적접속건수
  FROM (SELECT DT 
             , COUNT(*) AS DT_COUNT
          FROM TEMP
         GROUP BY DT
        ) T1
 ORDER BY T1.DT ASC;

-- 일별통계
SELECT DATE(`reg_date`) AS `date`, 
       sum(`value`)
  FROM test_st
 GROUP BY `date`;

-- 월별 통계

SELECT MONTH(`reg_date`) AS `date`, 
       sum(`value`)
  FROM test_st
 GROUP BY `date`;
