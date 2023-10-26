select  *
from (select avg(ss_list_price) B1_LP
            ,count(ss_list_price) B1_CNT
            ,count(distinct ss_list_price) B1_CNTD
      from store_sales
      where ss_quantity between 0 and 5
        and (ss_list_price between 53 and 53+10 
             or ss_coupon_amt between 2952 and 2952+1000
             or ss_wholesale_cost between 14 and 14+20)) B1,
     (select avg(ss_list_price) B2_LP
            ,count(ss_list_price) B2_CNT
            ,count(distinct ss_list_price) B2_CNTD
      from store_sales
      where ss_quantity between 6 and 10
        and (ss_list_price between 96 and 96+10
          or ss_coupon_amt between 8967 and 8967+1000
          or ss_wholesale_cost between 59 and 59+20)) B2,
     (select avg(ss_list_price) B3_LP
            ,count(ss_list_price) B3_CNT
            ,count(distinct ss_list_price) B3_CNTD
      from store_sales
      where ss_quantity between 11 and 15
        and (ss_list_price between 80 and 80+10
          or ss_coupon_amt between 7817 and 7817+1000
          or ss_wholesale_cost between 1 and 1+20)) B3,
     (select avg(ss_list_price) B4_LP
            ,count(ss_list_price) B4_CNT
            ,count(distinct ss_list_price) B4_CNTD
      from store_sales
      where ss_quantity between 16 and 20
        and (ss_list_price between 60 and 60+10
          or ss_coupon_amt between 115 and 115+1000
          or ss_wholesale_cost between 58 and 58+20)) B4,
     (select avg(ss_list_price) B5_LP
            ,count(ss_list_price) B5_CNT
            ,count(distinct ss_list_price) B5_CNTD
      from store_sales
      where ss_quantity between 21 and 25
        and (ss_list_price between 118 and 118+10
          or ss_coupon_amt between 1372 and 1372+1000
          or ss_wholesale_cost between 63 and 63+20)) B5,
     (select avg(ss_list_price) B6_LP
            ,count(ss_list_price) B6_CNT
            ,count(distinct ss_list_price) B6_CNTD
      from store_sales
      where ss_quantity between 26 and 30
        and (ss_list_price between 139 and 139+10
          or ss_coupon_amt between 4488 and 4488+1000
          or ss_wholesale_cost between 36 and 36+20)) B6
limit 100;
