-- creating a database called co2_africa_project

create database co2_africa_project

select * from book2

-- renaming a table
exec sp_rename 'book2', 'co2'


-- selecting all from co2
select * from co2
select top 23 * from co2


-- select the top 10 countries with average co2
select top 10 country, avg(co2) as average_co2
from co2
group by country 
order by average_co2 desc


-- year by year average C02 emissions and Gdp
select 
    year, avg(co2) as avg_co2, avg(gdp) as avg_gdp
from co2
group by year
order by year asc


-- High risk countries
select 
    country, avg(co2_growth_prct) as avg_co2_growth, avg(gdp) as avg_gdp
from co2
where co2_growth_prct > 0 
and gdp is not null
group by country
having avg(co2_growth_prct) > 5
order by avg_co2_growth desc

-- decoupling countries
select 
    country,avg(co2_per_gdp) as avg_emission_intensity, avg(gdp) as avg_gdp, avg(co2) as avg_co2
from co2
where gdp is not null
group by country
having avg(co2_per_gdp) < 0.15
order by avg_emission_intensity asc

-- emission intensity ranking
select 
    country,  avg(co2_per_gdp) as avg_emission_intensity
from co2
where gdp is not null
group by country
order by avg_emission_intensity asc

-- top 10 gas flaring countries
select top 10
    country, avg(flaring_co2) as avg_flaring_co2
from co2
where flaring_co2 > 0
group by country
order by avg_flaring_co2 

-- top countries by co2 per capita
select top 10
    country, avg(co2_per_capita) as avg_co2_per_capita
from co2
group by country
order by avg_co2_per_capita desc

-- regional average co2 emissions and gdp
select 
    region,
    avg(co2) as avg_co2,
    avg(gdp) as avg_gdp,
    avg(co2_per_capita) as avg_co2_per_capita,
    avg(co2_per_gdp) as avg_emission_intensity
from co2
where region is not null
group by region
order by avg_co2 desc

-- top countries by methane emissions
select top 10
    country,
    avg(methane) as avg_methane
from co2
where methane is not null
group by country
order by avg_methane desc

-- covid impact analysis
select 
    case 
        when year between 2015 and 2019 then 'pre-covid (2015-2019)'
        when year between 2020 and 2021 then 'during covid (2020-2021)'
        when year between 2022 and 2023 then 'post-covid (2022-2023)'
    end as period,
    avg(co2) as avg_co2,
    avg(gdp) as avg_gdp,
    avg(co2_growth_prct) as avg_co2_growth
from co2
where year >= 2015
group by 
    case 
        when year between 2015 and 2019 then 'pre-covid (2015-2019)'
        when year between 2020 and 2021 then 'during covid (2020-2021)'
        when year between 2022 and 2023 then 'post-covid (2022-2023)'
    end
order by min(year)

-- droping 2 columns which added to the data while importing the data; column19 and column20
alter table co2
drop column column19, column20

-- top 10 countries by energy per capital
select top 10
    country,
    avg(energy_per_capita) as avg_energy_per_capita
from co2
where energy_per_capita is not null
group by country
order by avg_energy_per_capita desc

-- top 10 countries by share of global co2
select top 10
    country,
    avg(share_global_co2) as avg_share_global_co2
from co2
group by country
order by avg_share_global_co2 desc

-- top 10 countries by oil co2
select top 10
    country,
    avg(oil_co2) as avg_oil_co2
from co2
where oil_co2 is not null
group by country
order by avg_oil_co2 desc


select top 10 * from co2