select employee_id, first_name, surname 
from `employee_info` 
where employee_id not in (select employee_id from `repair_info`) && employee_id in (select employee_id from `mechanic_info`)