create database supurstore_sales_analysis;
use supurstore_sales_analysis;

select * from superstore;
describe superstore;

select count(*) from superstore;

# total sales

select round(sum(sales),2) as total_sales
from superstore;
#  2261536.78

# 2 - average sales

select round(avg(sales),2) avg_sales
from superstore;
# 230.77

# maximum sales

select max(sales) as max_sales
from superstore;
# 22638.48

# 4 - min sales

select min(sales) as min_sales
from superstore;
# 0.444

# 5 - category wise total sales

select category , round(sum(sales),2) as total_sales_by_category
from superstore
group by category
order by total_sales_by_category desc;
/* Technology	827455.87
Furniture	728658.58
Office Supplies	705422.33
*/

# 6 - category wise avg sales

select category , round(avg(sales),2) as avg_sales_by_category
from superstore
group by category
order by avg_sales_by_category desc;
/* Technology	456.4
Furniture	350.65
Office Supplies	119.38
*/

# 7 - sub category wise total sales

select sub_category , round(sum(sales),2) as total_sales_by_sub_category
from superstore
group by sub_category
order by total_sales_by_sub_category desc;

# 8 - sub category wise average sales

select sub_category , round(avg(sales),2) as avg_sales_by_sub_category
from superstore
group by sub_category
order by avg_sales_by_sub_category desc;

# 9 - top 5 product

select product_name , round(sum(sales),2) as total_sales
from superstore
group by product_name
order by total_sales desc
limit 5;

/*Canon imageCLASS 2200 Advanced Copier	123199.65
Fellowes PB500 Electric Punch Plastic Comb Binding Machine with Manual Bind	54906.77
Cisco TelePresence System EX90 Videoconferencing Unit	45276.96
HON 5400 Series Task Chairs for Big and Tall	43741.15
GBC DocuBind TL300 Electric Binding System	39646.96
*/

# 10 - unique customer

select count(distinct(customer_name)) as unique_customer
from superstore;
# 793
select count(distinct(customer_id)) as unique_customer
from superstore;
# # 793

# 11 - unique orders

select count(distinct(order_id)) as unique_orders
from superstore;
# 4922

# 12 - Top 10 Customers by Sales

select customer_name , round(sum(sales),2) total_sales
from superstore
group by customer_name
order by total_sales desc
limit 10;

# 13 - sabse kam sales wala customer

select customer_name , round(sum(sales),2) total_sales
from superstore
group by customer_name
order by total_sales asc
limit 10;

# Thais Sissman	9.67

# 14 - customer wise order count

select customer_name , count(distinct(order_id)) as order_count
from superstore
group by customer_name
order by order_count desc;

# 15 - customer wise order count sabse jyada  - Emily Phan	17

# 16 - customer wise order count sabse kam

select customer_name , count(distinct(order_id)) as order_count
from superstore
group by customer_name
order by order_count asc;
# Anemone Ratner	1

# 17 - segment wise total sales or top and bottom

select segment , round(sum(sales),2) total_sales
from superstore
group by segment
order by total_sales desc;
/* Consumer	2296121.06  - sabse jyada 
Corporate	1376988.15
Home Office	849964.35   - sabse kam
*/

# 18 - segment wise avg sales or top and bottom

select segment , round(avg(sales),2) as avg_sales
from superstore
group by segment
order by avg_sales desc;
/* Home Office	243.4   -  top
Corporate	233.15
Consumer	225.07 - bottom
*/

# 19 - region wise total sales   top or bottom

select region , round(sum(sales),2) as total_sales
from superstore
group by region 
order by total_sales desc ;
/*
West	1420439.37       - top
East	1339037.45
Central	985293.83
South	778302.92        - bottom
*/

# 20  - region wise avg sales   top or bottom

select region , round(avg(sales),2) as avg_sales
from superstore
group by region
order by region desc ;
/* 
West	226.18    
South	243.52   -  top -  
East	240.4
Central	216.36   -  bottom - 
*/

# 21 - top 10 state by total sales
select state , round(sum(sales),2) as total_sales
from superstore
group by state
order by total_sales desc
limit 10;

# top - California	892612.93 and bottom - North Dakota	1839.82

# 22  - top 10 state by avg sales
select state , round(avg(sales),2) as avg_sales
from superstore
group by state
order by avg_sales desc
limit 10;

# top - Wyoming	1603.14 , bottom -  South Dakota	109.63

# 23 - top 10 cities by total sales

select city , round(sum(sales),2) as total_sales
from superstore
group by city
order by total_sales desc 
limit 10;

# top - New York City	504925.09 , bottom - Abilene	2.78

# 24 - top 10 cities by avg sales

select city , round(avg(sales),2) as avg_sales
from superstore
group by city
order by avg_sales desc
limit 10;

# top - Jamestown	2354.4 , bottom -  Abilene	1.39

# 25 postal-code-wise order count

select postal_code , count(distinct(order_id)) as order_count
from superstore
group by postal_code
order by order_count desc;
# postal_code -  10035  = 	120

# or 

select postal_code , count(*) as order_count
from superstore
group by postal_code
order by order_count desc;

# postal_code - 10035  =	506

# 26 - top 5 postal_code
select postal_code , count(*) as order_count
from superstore
group by postal_code
order by order_count desc
limit 5;
/*
10035	506
10024	450
10009	440
94122	390
10011	386
*/

# using shipping mode 

# 27 ship mode wise order

select ship_mode , count(*) as order_count
from superstore
group by ship_mode
order by order_count desc ;
/* Standard Class	11718             - top  -
Second Class	3804
First Class	3002
Same Day	1076              - bottom -
*/ 

# 28 ship mode wise total sales

select ship_mode , round(sum(sales),2) as total_sales
from superstore
group by ship_mode
order by total_sales desc;
/*
Standard Class	2681662.61   -  top 
Second Class	899828.36
First Class	691144.51
Same Day	250438.08       - bottom
*/

# 29 ship mode wise avg sales

select ship_mode , round(avg(sales),2) as avg_sales
from superstore
group by ship_mode
order by avg_sales desc;

/* 
Second Class	236.55      - top
Same Day	232.75
First Class	230.23
Standard Class	228.85       - bottom
*/

# 30 - average shipping duration
# 3.9611
select  avg(shipping_duration) as avg_ship
from superstore; 

# 31 - ship mode ke hisab se avg shipping duration

select ship_mode , avg(shipping_duration) as avg_shipping_duration
from superstore
group by ship_mode
order by avg_shipping_duration desc;
/* 
Standard Class	5.0084     - top
Second Class	3.2492
First Class	2.1792
Same Day	0.0446     - bottom
*/

# date analysis

# 32 - year wise total sales 

select order_year , round(sum(sales),2) as total_sales
from superstore
group by order_year
order by total_sales desc;

/* 
2018	1444104.04        - top -
2017	1200385.1
2015	959712.42
2016	918872.01          - bottom -
*/

# 33 - year wise avg sales 
select order_year , round(avg(sales),2) as avg_sales
from superstore
group by order_year
order by avg_sales desc;

/* 
2015	245.7       top
2017	236.86
2016	223.57
2018	221.62      bottom
*/


#  34 -  month wise total sales

select order_month , round(sum(sales),2) as total_sales
from superstore
group by order_month
order by total_sales desc;
# top - 11(nov)	700323.42  , bottom -  2(feb)	118742.23


# 35 -  month wise avg sales
select order_month , round(avg(sales),2) as avg_sales
from superstore
group by order_month
order by avg_sales desc;

# top - 3(march) 290.55    , bottom 2 (feb) 199

# 36 - Year + Month-wise total Sales

select order_year , order_month , round(sum(sales),2) as total_sales
from superstore
group by order_year ,order_month
order by order_year , order_month;

# 36 - Year + Month-wise avg Sales

select order_year , order_month , round(avg(sales),2) as total_sales
from superstore
group by order_year ,order_month
order by order_year , order_month;

# 37 highest Sales Month of each year

with rank_year as(
select order_year , order_month, sum(sales) as total_sales
from superstore
group by order_year , order_month
), ranked as 
(select *, rank() over(partition by order_year order by total_sales desc) as rnk
from rank_year
)

select * from ranked 
where rnk =1;
/*2015	9	163247.0536	1
2016	11	150498.79899999994	1
2017	12	191478.24200000006	1
2018	11	235876.30999999985	1
*/

# 38 - highest avg Sales Month of each year

with rank_month as (
select order_year , order_month , avg(sales) as avg_sales
from superstore
group by order_year , order_month
), ranked as(
select *, rank() over(partition by order_year  order by avg_sales desc) as rnk
from rank_month
)

select * from ranked
where rnk = 1;
/*
2015	3	358.47920129870124	1
2016	1	316.9641684210525	1
2017	3	317.79539751552784	1
2018	1	304.03128671328653	1
*/

# 40 - year over Year growth

with growth as (
select order_year , sum(sales) as total_sales
from superstore
group by order_year
)
select order_year , round(total_sales,2) as total_sales, 
round((total_sales - lag(total_sales) over(order by total_sales)) / lag(total_sales) over(order by total_sales)*100,2) as yoy_growth
from growth;

/*
2016	918872.01	
2015	959712.42	4.44
2017	1200385.1	25.08
2018	1444104.04	20.3
*/

# 41 - category ranking by sales 
select category , round(sum(sales),2) as total_sales ,
rank() over(order by sum(sales) desc) as rank_category
from superstore
group by category;
/*
Technology	1654911.75	1
Furniture	1457317.15	2
Office Supplies	1410844.67	3
*/

# 42 - Region ke andar Top 3 Products

with product as (
select region , product_name , sum(sales) as total_sales
from superstore
group by region , product_name ), top_product as (
select *, row_number() over(partition by region order by total_sales desc) as rnk
from product
)

select * from top_product
where rnk <= 3;
/*
Central	Canon imageCLASS 2200 Advanced Copier	34999.9	1
Central	Lexmark MX611dhe Monochrome Laser Printer	28559.832000000002	2
Central	Ibico EPK-21 Electric Binding System	22679.88	3
East	Canon imageCLASS 2200 Advanced Copier	60199.82800000001	1
East	3D Systems Cube Printer, 2nd Generation, Magenta	28599.78	2
East	Riverside Palais Royal Lawyers Bookcase, Royale Cherry Finish	23434.068	3
South	Cisco TelePresence System EX90 Videoconferencing Unit	45276.96	1
South	HP Designjet T520 Inkjet Large Format Printer - 24" Color	22749.870000000003	2
South	GBC DocuBind TL300 Electric Binding System	16684.014	3
West	Canon imageCLASS 2200 Advanced Copier	27999.92	1
West	High Speed Automatic Electric Letter Opener	26200.48	2
West	Global Troy Executive Leather Low-Back Tilter	20039.199999999997	3
*/


# Find all orders where sales are greater than 1000

select * from superstore;

select *
from superstore
where sales >=1000;

# Find all Technology category orders

select *
from superstore
where category = "Technology";

# Find orders from the West region

select  *
from superstore
where region = "West";

# Find Consumer segment orders with sales above 500

select *
from superstore
where  segment ="Consumer" and sales > 500;


# Find orders where sales are between 500 and 1000

select * from superstore
where sales between 500 and 1000;


# Find orders from California

select * from superstore
where state = "california";

# Find Technology orders from the West region

select * from superstore
where category = "Technology" and region = "West";

# find orders where sales are less than 500
select * from superstore
where sales < 500;

# Find orders using Same Day shipping

select * from superstore
where ship_mode = "Same Day";

# Find Consumer orders from California with sales above 500

select * from superstore
where segment = "Consumer" and state = "California"  and sales > 500;

# Find category-wise total sales

select category , sum(sales) as total_sales
from superstore
group by category
order by total_sales desc;

# Find region-wise total sales

select region, sum(sales) as total_sales
from superstore
group by region
order by total_sales desc;

# Find segment-wise total sales

select segment , round(sum(sales),2) as total_sales
from superstore
group by segment
order by total_sales desc;

# Find state-wise total sales
select state , round(sum(sales),2) as total_sales
from superstore
group by state
order by total_sales desc;

# Find category-wise average sales

select category , round(avg(sales),2) as avg_sales
from superstore
group by category
order by avg_sales desc;

# Find Ship Mode-wise number of orders/records
select ship_mode , count(*) as total_order
from superstore
group by ship_mode
order by total_order desc ;

# Find sub-category-wise total sales

select sub_category , round(sum(sales),2) as total_sales
from superstore
group by sub_category
order by total_sales desc;

# Find customer-wise total sales

select customer_name , round(sum(sales),2) as total_sales
from superstore
group by customer_name
order by total_sales desc;

# Find region + category-wise sales
select region , category , round(sum(sales),2) as total_sales
from superstore
group by region , category
order by total_sales desc;

# Find year-wise sales

select order_year , round(sum(sales),2) as total_sales
from superstore
group by order_year
order by total_sales;

# Find categories having total sales greater than 700000

select category , round(sum(sales),2) as total_sales
from superstore
group by category
having total_sales > 700000;


# Find states having total sales greater than 100000

select state , round(sum(sales),2) as total_sales
from superstore
group by state
having total_sales > 100000;

# Find customers whose total sales are greater than 10000

select customer_name , round(sum(sales),2) as total_sales
from superstore
group by customer_name
having total_sales > 10000;

# Find sub categories having sales greater than 100000
select sub_category , round(sum(sales),2) as total_sales
from superstore
group by sub_category
having total_sales > 100000
order by total_sales desc;

# Find cities having more than 100 records/orders
select city , count(*) as order_count
from superstore
group by city
having order_count > 100
order by order_count desc;

# Find customers who have placed more than 5 order
select customer_name , count(*) as order_count
from superstore
group by customer_name 
having order_count > 5
order by order_count desc;

# Find regions having more than 500000 sales

select region , round(sum(sales),2) as total_sales
from superstore
group by region 
having sum(sales) > 500000;

# Find categories having average sales greater than 200

select category , avg(sales) as avg_sales
from superstore
group by category
having avg_sales > 200
order by avg_Sales desc;

# Find states having more than 50 unique customers

select state , count(distinct(customer_name)) as unique_customer
from superstore
group by state
having unique_customer > 50
order by unique_customer desc;

# Find postal codes having more than 20 records

select postal_code , count(*) as count_order
from superstore
group by postal_code
having count_order > 20
order by count_order desc ;

# Find orders from California, New York and Texas

select * from superstore
where state in ("California" , "New York" , "Texas");

# Find Technology and Furniture orders

select * from superstore
where category in ("Technology","Furniture");

# Find Consumer and Corporate customers
select * from superstore
where segment in ("Consumer","Corporate");

# Find orders from West and East regions

select * from superstore
where region in ("West","East");

# Find orders from California, Texas and Florida with sales above 500

select * from superstore
where state in ("California","Texas","Florida") and sales > 500;

# Find Technology or Office Supplies from West region
select * from superstore
where category in ("Technology","Office Supplies") and region = "West";


