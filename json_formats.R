library(tidyverse)
library(jsonify)
load("./nowcasting_refugees_asylum_seekers_origin.RData")

nowcast_data<-jsonify::to_json(
  data.frame(final_nowcasting_data%>%
               filter(region_asylum!="World" & country_of_origin!="Total"))
)

write(nowcast_data,"./nowcasting_dashboard_data/output.json")



