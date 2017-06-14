select amu.id, amu.ip, jra.child_id, amu.datetime ,ig.ipLATITUDE, ig.ipLONGITUDE, jra.parent_id #
 INTO OUTFILE '/var/lib/mysql-files/in_STDB_2011_1.csv'
 from nanohub_metrics.andmore_usage amu,
 nanohub_metrics.ip_geodata ig,
 nanohub.jos_resource_assoc jra
 where http_method = 'GET'
 and amu.cms_action_name = jra.child_id
 and ig.ip = amu.ip
 and http_return_code = 200
 and amu.datetime between '2011-01-01' and amu.datetime <= '2012-01-01'
 and amu.cms_action_name = jra.child_id
 group by ig.ip
 order by dayofyear(amu.datetime)	;