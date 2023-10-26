select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 986 and 986+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'misty' or i_color = 'drab') and 
        (i_units = 'Each' or i_units = 'Gram') and
        (i_size = 'large' or i_size = 'petite')
        ) or
        (i_category = 'Women' and
        (i_color = 'lime' or i_color = 'khaki') and
        (i_units = 'Oz' or i_units = 'Ton') and
        (i_size = 'medium' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'maroon' or i_color = 'goldenrod') and
        (i_units = 'N/A' or i_units = 'Bunch') and
        (i_size = 'economy' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'beige' or i_color = 'pink') and
        (i_units = 'Carton' or i_units = 'Ounce') and
        (i_size = 'large' or i_size = 'petite')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'black' or i_color = 'sandy') and 
        (i_units = 'Pound' or i_units = 'Dozen') and
        (i_size = 'large' or i_size = 'petite')
        ) or
        (i_category = 'Women' and
        (i_color = 'steel' or i_color = 'tomato') and
        (i_units = 'Dram' or i_units = 'Case') and
        (i_size = 'medium' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'yellow' or i_color = 'snow') and
        (i_units = 'Tbl' or i_units = 'Box') and
        (i_size = 'economy' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'metallic' or i_color = 'almond') and
        (i_units = 'Pallet' or i_units = 'Cup') and
        (i_size = 'large' or i_size = 'petite')
        )))) > 0
 order by i_product_name
 limit 100;
