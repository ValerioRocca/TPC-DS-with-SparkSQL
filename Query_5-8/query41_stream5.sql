select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 962 and 962+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'cyan' or i_color = 'gainsboro') and 
        (i_units = 'Bundle' or i_units = 'Ton') and
        (i_size = 'petite' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'spring' or i_color = 'blanched') and
        (i_units = 'Lb' or i_units = 'Box') and
        (i_size = 'medium' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'dark' or i_color = 'indian') and
        (i_units = 'Carton' or i_units = 'Case') and
        (i_size = 'extra large' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'sandy' or i_color = 'saddle') and
        (i_units = 'Tsp' or i_units = 'Dram') and
        (i_size = 'petite' or i_size = 'economy')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'plum' or i_color = 'chiffon') and 
        (i_units = 'Ounce' or i_units = 'Pallet') and
        (i_size = 'petite' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'moccasin' or i_color = 'cornsilk') and
        (i_units = 'Gross' or i_units = 'Tbl') and
        (i_size = 'medium' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'bisque' or i_color = 'turquoise') and
        (i_units = 'Unknown' or i_units = 'Pound') and
        (i_size = 'extra large' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'midnight' or i_color = 'peru') and
        (i_units = 'Bunch' or i_units = 'N/A') and
        (i_size = 'petite' or i_size = 'economy')
        )))) > 0
 order by i_product_name
 limit 100;
