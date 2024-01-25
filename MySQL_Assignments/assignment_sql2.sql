1.SELECT 
    salesman.name AS Salesman, customer.cust_name, customer.city
FROM
    customer
        INNER JOIN
    salesman ON (customer.city = salesman.city);


2.SELECT 
    orders.ord_no,
    orders.purch_amt,
    customer.cust_name,
    customer.city
FROM
    orders
        INNER JOIN
    customer ON (orders.customer_id = customer.customer_id)
WHERE
    orders.purch_amt > 500
        AND orders.purch_amt < 2000; 


3.SELECT 
    customer.cust_name AS CustomerName,
    customer.city,
    salesman.name AS Salesman,
    salesman.commission
FROM
    salesman
        INNER JOIN
    customer ON (customer.salesman_id = salesman.salesman_id);


4.SELECT 
    customer.cust_name AS CustomerName,
    customer.city AS CustomerCity,
    salesman.name AS Salesman,
    salesman.city AS SalesmanCity,
    salesman.commission
FROM
    salesman
        INNER JOIN
    customer ON (customer.salesman_id = salesman.salesman_id)
WHERE
    salesman.commission > 12;


5.SELECT 
    customer.cust_name AS CustomerName,
    customer.city AS CustomerCity,
    salesman.name AS Salesman,
    salesman.city AS SalesmanCity,
    salesman.commission
FROM
    salesman
        INNER JOIN
    customer ON (customer.salesman_id = salesman.salesman_id)
WHERE
    salesman.commission > 12
        AND salesman.city != customer.city;


6.SELECT 
    orders.ord_no,
    orders.ord_date,
    orders.purch_amt,
    customer.cust_name AS CustomerName,
    customer.grade,
    salesman.name AS Salesman,
    salesman.commission
FROM
    orders
        INNER JOIN
    customer ON (orders.customer_id = customer.customer_id)
        INNER JOIN
    salesman ON (orders.salesman_id = salesman.salesman_id);


7.SELECT 
    customer.customer_id,
    salesman.salesman_id,
    orders.ord_no,
    orders.purch_amt,
    orders.ord_date,
    customer.cust_name,
    customer.city AS CustomerCity,
    customer.grade,
    salesman.name AS salesman_name,
    salesman.city AS SalespersonCity,
    salesman.commission
FROM
    orders
        JOIN
    customer ON orders.customer_id = customer.customer_id
        JOIN
    salesman ON orders.salesman_id = salesman.salesman_id;


8.SELECT 
    customer.cust_name AS CustomerName,
    customer.city AS CustomerCity,
    customer.grade,
    salesman.name AS Salesman,
    salesman.city AS SalesmanCity
FROM
    customer
        INNER JOIN
    salesman ON customer.salesman_id = salesman.salesman_id
ORDER BY customer_id ASC;


9.SELECT 
    customer.cust_name AS CustomerName,
    customer.city AS CustomerCity,
    customer.grade,
    salesman.name AS Salesman,
    salesman.city AS SalesmanCity
FROM
    customer
        INNER JOIN
    salesman ON customer.salesman_id = salesman.salesman_id
WHERE
    customer.grade < 300
ORDER BY customer_id ASC;


10.SELECT 
    customer.cust_name AS CustomerName,
    customer.city AS CustomerCity,
    orders.ord_no,
    orders.ord_date,
    orders.purch_amt AS OrderAmount
FROM
    customer
        LEFT JOIN
    orders ON orders.customer_id = customer.customer_id
ORDER BY orders.ord_date ASC;


11.SELECT 
    customer.cust_name AS CustomerName,
    customer.city AS CustomerCity,
    orders.ord_no,
    orders.ord_date,
    orders.purch_amt AS OrderAmount,
    salesman.name AS Salesman,
    salesman.commission
FROM
    customer
        LEFT JOIN
    orders ON orders.customer_id = customer.customer_id
        LEFT JOIN
    salesman ON customer.salesman_id = salesman.salesman_id;


12.SELECT 
    salesman.name AS SalesmanName, COUNT(customer.salesman_id)
FROM
    salesman
        LEFT JOIN
    customer ON salesman.salesman_id = customer.salesman_id
GROUP BY salesman.name
ORDER BY COUNT(customer.salesman_id) ASC; 


13.SELECT 
    salesman.name AS SalesmanName,
    customer.cust_name AS CustomerName,
    customer.city AS CustomerCity,
    customer.grade,
    orders.ord_no,
    orders.ord_date,
    orders.purch_amt AS OrderAmount
FROM
    salesman
        INNER JOIN
    customer ON salesman.salesman_id = customer.salesman_id
        INNER JOIN
    orders ON salesman.salesman_id = orders.salesman_id;


14.SELECT DISTINCT
    c.salesman_id,
    c.cust_name,
    o.purch_amt,
    c.grade
FROM
    customer c 
        LEFT JOIN
    orders o ON c.customer_id = o.customer_id
        WHERE ((o.purch_amt >= 2000
        AND c.grade IS NOT NULL));


15.SELECT DISTINCT
    c.salesman_id,
    c.cust_name,
    o.purch_amt,
    c.grade
FROM
    customer c 
        LEFT JOIN
    orders o ON c.customer_id = o.customer_id
        WHERE ((o.purch_amt >= 2000
        AND c.grade IS NOT NULL));


16. SELECT 
    customer.cust_name, customer.city, orders.ord_no, orders.ord_date as OrdersDate, orders.purch_amt
FROM
    customer 
    LEFT JOIN
    orders ON customer.customer_id = orders.customer_id;


17.select * from salesman full join customer;


18.select * from salesman cross join customer on salesman.city = customer.city;


19.select * from salesman cross join customer where (salesman.city is not null) and (customer.grade is not null);


20.  SELECT 
     *
     FROM
     salesman
     CROSS JOIN
    customer ON salesman.city != customer.city
     WHERE
    (salesman.city IS NOT NULL)
        AND (customer.grade IS NOT NULL);