select 
    replace(replace(replace(replace(replace(replace(replace(r.pc_requirements, "{'minimum': '", ""), "<strong>", ""), "</strong>", " "), "<br>", ""), '<ul class="bb_ul"">', ""), "<li>", ""), "</li>", " ")
from
    steam s
    join
    steam_requirements_data r 
    on
    s.appid = r.steam_appid
where
    s.owners = "100000000-200000000";