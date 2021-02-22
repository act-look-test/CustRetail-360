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

explore: order_f {
  join : customer_d {
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_f.customer_id}=${customer_d.customer_id};;
  }
 join: product_d  {
   type :  left_outer
   relationship: many_to_one
   sql_on: ${order_f.product_id}=${product_d.product_id}  ;;
 }
}

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

explore: customer_product_category_count{}

explore: sql_kpi_constants {}
explore: Customers_onboarded {}
explore: basket_size {}
explore: Loyal_customers {}
