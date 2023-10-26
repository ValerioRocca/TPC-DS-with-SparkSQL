select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 870 and 870+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'plum' or i_color = 'floral') and 
        (i_units = 'Ton' or i_units = 'Tbl') and
        (i_size = 'N/A' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'sandy' or i_color = 'navy') and
        (i_units = 'Pallet' or i_units = 'Unknown') and
        (i_size = 'extra large' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'medium' or i_color = 'seashell') and
        (i_units = 'Bundle' or i_units = 'Pound') and
        (i_size = 'small' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'royal' or i_color = 'midnight') and
        (i_units = 'Dram' or i_units = 'Dozen') and
        (i_size = 'N/A' or i_size = 'economy')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'blanched' or i_color = 'dark') and 
        (i_units = 'Bunch' or i_units = 'Ounce') and
        (i_size = 'N/A' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'tan' or i_color = 'ivory') and
        (i_units = 'Gross' or i_units = 'Case') and
        (i_size = 'extra large' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'pale' or i_color = 'indian') and
        (i_units = 'Gram' or i_units = 'Oz') and
        (i_size = 'small' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'papaya' or i_color = 'light') and
        (i_units = 'Each' or i_units = 'Carton') and
        (i_size = 'N/A' or i_size = 'economy')
        )))) > 0
 order by i_product_name
 limit 100;
