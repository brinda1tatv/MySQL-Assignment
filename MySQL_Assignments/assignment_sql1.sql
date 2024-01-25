1.select productid, productname, unitprice from products where unitprice / quantityperunit < 20 and discontinued='NO';


2.select productid, productname, unitprice from products where unitprice / quantityperunit > 15 and unitprice / quantityperunit < 25;


3.select productname, unitprice from products where unitprice / quantityperunit > (select avg(unitprice/quantityperunit) from products);


4.select productname, unitprice from products  order by unitprice / quantityperunit desc limit 10;


5.select count(discontinued),discontinued from products group by discontinued;


6.select productname, unitsonorder, unitsinstock from products where unitsonorder > unitsinstock;
