select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 978 and 978+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'lawn' or i_color = 'tomato') and 
        (i_units = 'Gram' or i_units = 'Pound') and
        (i_size = 'extra large' or i_size = 'petite')
        ) or
        (i_category = 'Women' and
        (i_color = 'cyan' or i_color = 'lace') and
        (i_units = 'N/A' or i_units = 'Tsp') and
        (i_size = 'economy' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'magenta' or i_color = 'indian') and
        (i_units = 'Carton' or i_units = 'Ounce') and
        (i_size = 'N/A' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'seashell' or i_color = 'cornsilk') and
        (i_units = 'Box' or i_units = 'Dozen') and
        (i_size = 'extra large' or i_size = 'petite')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'sky' or i_color = 'steel') and 
        (i_units = 'Unknown' or i_units = 'Tbl') and
        (i_size = 'extra large' or i_size = 'petite')
        ) or
        (i_category = 'Women' and
        (i_color = 'lavender' or i_color = 'mint') and
        (i_units = 'Case' or i_units = 'Gross') and
        (i_size = 'economy' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'chiffon' or i_color = 'maroon') and
        (i_units = 'Each' or i_units = 'Pallet') and
        (i_size = 'N/A' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'midnight' or i_color = 'royal') and
        (i_units = 'Lb' or i_units = 'Dram') and
        (i_size = 'extra large' or i_size = 'petite')
        )))) > 0
 order by i_product_name
 limit 100;
