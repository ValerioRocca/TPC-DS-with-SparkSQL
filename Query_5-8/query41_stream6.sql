select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 718 and 718+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'cyan' or i_color = 'sky') and 
        (i_units = 'Bundle' or i_units = 'Ton') and
        (i_size = 'extra large' or i_size = 'small')
        ) or
        (i_category = 'Women' and
        (i_color = 'linen' or i_color = 'mint') and
        (i_units = 'Pallet' or i_units = 'Box') and
        (i_size = 'N/A' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'forest' or i_color = 'red') and
        (i_units = 'Each' or i_units = 'Dozen') and
        (i_size = 'medium' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'dark' or i_color = 'pale') and
        (i_units = 'Dram' or i_units = 'Unknown') and
        (i_size = 'extra large' or i_size = 'small')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'yellow' or i_color = 'powder') and 
        (i_units = 'Tbl' or i_units = 'Carton') and
        (i_size = 'extra large' or i_size = 'small')
        ) or
        (i_category = 'Women' and
        (i_color = 'spring' or i_color = 'purple') and
        (i_units = 'Bunch' or i_units = 'Tsp') and
        (i_size = 'N/A' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'steel' or i_color = 'navajo') and
        (i_units = 'Oz' or i_units = 'N/A') and
        (i_size = 'medium' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'dim' or i_color = 'cream') and
        (i_units = 'Ounce' or i_units = 'Pound') and
        (i_size = 'extra large' or i_size = 'small')
        )))) > 0
 order by i_product_name
 limit 100;
