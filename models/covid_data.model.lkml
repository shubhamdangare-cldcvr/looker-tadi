connection: "covid_dataset"

# include all the views
include: "/views/**/*.view"

datagroup: covid_data_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: covid_data_default_datagroup

explore: covid19_open_data {
}

explore: stackoverflow_posts {
}

explore: store_web_sales_return  {

}
