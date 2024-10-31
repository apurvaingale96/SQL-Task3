1.select * from employee
where Department "IT" and salary > 50000';

2.select order_id,Customer_name,Contact_number from orders o 
join customerc on o.customer_id = c.customer id;

3.select distinct Product ID,sum (QuantitySold) over (participan by productID) from sale order by ProductID;

4.select extract (saledate,'YYYY-MM') as month,avg(quantitysold) as average quantity_sold 
from Sale
group by extract (month from s.saledate

5.select upper (productname) from product;

6.select eventid, eventname,eventdate
from
events
where eventdate between current_date and current_date + INTERVAL '30 days';

7.select * from employee where salary >
(select avg (salary) from employee);

8.select or replace function update
returns trigger as $$
begin
if New.lastmodified not in old,lastmodified then
update product
set OLD.Lastmodified = now;
end if;
return now;
end;
$$ language plpgsql;

create trigger update_modified
after update on product
for each row
execute function update_modified;

9.create view Activecustomers as 
select c.customer ID, c.customer,s.Saledate as LastYear PurchaseDate
from Customer c
join Sale s on c.saleID = s.saleID
where extract (year from order_date)2023;

10.select * from Sales
where TotalAmount is Null;

11.select ParticipantID,ParticipantName,Score,rank()over(order by score) from Participant;

12.select EmployeeID,Salary,Department, sum(salary) over(partition by Department order by salary) from employee;

13.update products set price = price * 1.10 where Category = 'Electonics';

14. delete from Customers
 where city = 'Delhi';
