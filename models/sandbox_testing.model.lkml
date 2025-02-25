connection: "sandbox_testing"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: sandbox_testing_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sandbox_testing_default_datagroup

explore: samle_slides {}

