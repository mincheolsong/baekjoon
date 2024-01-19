-- 코드를 입력하세요
SELECT BT.CATEGORY, SUM(ST.SALES) AS TOTAL_SALES
FROM
(SELECT BOOK_ID, CATEGORY FROM BOOK) BT
JOIN
(SELECT BOOK_ID, SUM(SALES) SALES FROM BOOK_SALES WHERE YEAR(SALES_DATE)="2022" AND MONTH(SALES_DATE)="01" 
GROUP BY BOOK_ID) ST
ON BT.BOOK_ID = ST.BOOK_ID
GROUP BY BT.CATEGORY
ORDER BY BT.CATEGORY ASC;
