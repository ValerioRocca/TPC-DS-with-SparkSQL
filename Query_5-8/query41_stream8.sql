select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 974 and 974+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'cyan' or i_color = 'cream') and 
        (i_units = 'Dozen' or i_units = 'Tbl') and
        (i_size = 'extra large' or i_size = 'petite')
        ) or
        (i_category = 'Women' and
        (i_color = 'tan' or i_color = 'linen') and
        (i_units = 'Unknown' or i_units = 'Pallet') and
        (i_size = 'large' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'spring' or i_color = 'wheat') and
        (i_units = 'Oz' or i_units = 'Dram') and
        (i_size = 'economy' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'bisque' or i_color = 'pink') and
        (i_units = 'Each' or i_units = 'Gross') and
        (i_size = 'extra large' or i_size = 'petite')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'blanched' or i_color = 'goldenrod') and 
        (i_units = 'Case' or i_units = 'Ton') and
        (i_size = 'extra large' or i_size = 'petite')
        ) or
        (i_category = 'Women' and
        (i_color = 'orchid' or i_color = 'dodger') and
        (i_units = 'Pound' or i_units = 'Gram') and
        (i_size = 'large' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'firebrick' or i_color = 'drab') and
        (i_units = 'Box' or i_units = 'Carton') and
        (i_size = 'economy' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'peru' or i_color = 'lawn') and
        (i_units = 'Ounce' or i_units = 'Bundle') and
        (i_size = 'extra large' or i_size = 'petite')
        )))) > 0
 order by i_product_name
 limit 100;
