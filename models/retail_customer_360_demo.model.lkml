connection: "c360retail"

# include all the views
include: "/views/**/*.view"

#Caching information
datagroup: retail_customer_360_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: retail_customer_360_demo_default_datagroup

#Declaring our explores
explore: customer_category_d  {
  join: customer_d {
    type: left_outer
    relationship: many_to_one
    sql_on: ${customer_category_d.customer_id} = ${customer_d.customer_id} ;;
  }
}

explore: alldata_integrated_f {}

explore: cltv_senti_sat_f {}

#explore: customer_category_d {}

explore: customer_d {}

explore: customer_sentiment_d {}

explore: next_best_purchase_f {}

explore: order_f {}

explore: payment_type_d {}

explore: product_d {}

explore: promotion_d {}

explore: prospect_f {
  join: prospect_master_d {
    type: left_outer
    relationship: many_to_one
    sql_on: ${prospect_f.prospects_id} = ${prospect_master_d.prospect_id} ;;
  }
}

explore: prospect_master_d {}

explore: store_d {}
