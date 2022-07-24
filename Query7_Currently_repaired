SELECT `value`, `weight`
FROM `shipment_&_company_info` 
JOIN trip_info
  ON `shipment_&_company_info`.`company_id` = trip_info.company_id
JOIN repair_info
  ON trip_info.employee_id = repair_info.employee_id
WHERE `number of repairs`=< AVG(`number of repairs`)

