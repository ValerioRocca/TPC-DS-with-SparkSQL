select  s_store_name
      ,sum(ss_net_profit)
 from store_sales
     ,date_dim
     ,store,
     (select ca_zip
     from (
      SELECT substr(ca_zip,1,5) ca_zip
      FROM customer_address
      WHERE substr(ca_zip,1,5) IN (
                          '32113','92004','35118','92739','43240','47552',
                          '48368','56120','45166','11935','78332',
                          '30720','44551','39515','72854','90708',
                          '44230','16276','92146','90792','39614',
                          '96889','40658','30456','19850','15422',
                          '57570','72141','41058','59910','63489',
                          '61887','60448','50756','65290','71356',
                          '84129','55036','85711','71226','91331',
                          '53473','97361','53679','68052','97357',
                          '94715','30094','37757','95710','28489',
                          '65021','41321','59490','59278','35993',
                          '73199','11978','32860','34983','63073',
                          '69251','72751','87222','85502','35171',
                          '94735','65015','38789','96327','77523',
                          '57148','28834','46170','12984','63947',
                          '45738','36841','30337','72213','19423',
                          '26678','19688','54703','13876','12763',
                          '51276','54755','73331','29581','76357',
                          '21385','85873','60413','46588','52560',
                          '98574','78245','78286','45332','10410',
                          '36146','91193','62709','21037','88682',
                          '78961','48637','25659','40060','45182',
                          '24732','19014','85590','69492','29231',
                          '18237','62465','83973','76605','34919',
                          '26365','53102','42260','55668','49994',
                          '70862','19444','16692','99913','31113',
                          '90650','33159','80677','61965','63594',
                          '15151','11487','16609','35415','25161',
                          '39375','28733','77622','90035','85037',
                          '79188','94523','40261','55465','55437',
                          '44320','42967','89111','34048','15005',
                          '31858','61291','95544','84211','79930',
                          '15162','79996','93418','11637','12607',
                          '64721','32642','83155','96110','48631',
                          '38750','90522','74360','56033','86627',
                          '82287','62257','31834','34624','75078',
                          '72600','98547','89633','86108','92643',
                          '85499','71495','84172','99835','86304',
                          '22793','83237','51292','13150','24598',
                          '68540','90307','62169','61927','65979',
                          '60695','19028','23871','88346','44099',
                          '77615','80064','57085','28025','78974',
                          '73191','85104','83488','36045','14596',
                          '74037','94245','21132','61332','92763',
                          '31838','20225','28263','15396','14296',
                          '60316','43676','17664','66238','38602',
                          '29593','99676','53351','52793','83515',
                          '62922','44485','86726','60239','72409',
                          '91544','57108','63018','57599','55113',
                          '34675','44892','69089','36596','95977',
                          '97313','54875','67240','88187','67325',
                          '14491','13109','10315','30579','23989',
                          '82089','76495','44747','88947','85669',
                          '46250','18937','79180','52648','25265',
                          '71138','78146','65610','40686','23392',
                          '77452','73233','60623','53656','93520',
                          '46227','21304','68866','48078','87849',
                          '77530','85784','55227','45415','56188',
                          '81680','75080','99544','39780','25041',
                          '83072','61127','94018','77507','95296',
                          '96864','71031','84428','55608','27270',
                          '48211','21760','97086','58045','19068',
                          '59155','68091','16345','63710','61100',
                          '13749','55436','12919','46500','66778',
                          '85817','41637','20529','24879','11003',
                          '66420','72676','57726','36440','22747',
                          '14228','43336','98397','28275','75149',
                          '45903','11957','78623','37644','56355',
                          '33586','47193','76011','84420','81180',
                          '99809','47877','71296','21421','88208',
                          '71808','41527','69629','16451','63147',
                          '83685','87662','74743','75406','40252',
                          '49313','57109','13507','54400','23102',
                          '49480','41001','92899','15918','47640',
                          '54361','99869','94247','37429','58307',
                          '10232','62148','51411','40688','46298',
                          '85138','30016','17099','92010','40213',
                          '11547','22050','81038','84950','55454',
                          '75510','55139','80227','44693','33232',
                          '10319','96054','17170','40970')
     intersect
      select ca_zip
      from (SELECT substr(ca_zip,1,5) ca_zip,count(*) cnt
            FROM customer_address, customer
            WHERE ca_address_sk = c_current_addr_sk and
                  c_preferred_cust_flag='Y'
            group by ca_zip
            having count(*) > 10)A1)A2) V1
 where ss_store_sk = s_store_sk
  and ss_sold_date_sk = d_date_sk
  and d_qoy = 1 and d_year = 2001
  and (substr(s_zip,1,2) = substr(V1.ca_zip,1,2))
 group by s_store_name
 order by s_store_name
 limit 100;
