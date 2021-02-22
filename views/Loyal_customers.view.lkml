view: Loyal_customers {
  derived_table: {
    sql:SELECT customer_id, count(distinct order_id) as Loyal_cust_count  FROM sa_targ.order_f
      group by customer_id
      having count(distinct order_id) >= 1
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: loyal_cust_count {
    type: number
    sql: ${TABLE}.loyal_cust_count ;;
  }

  measure: count_loyal_id {
    type: count_distinct
    sql: ${TABLE}.customer_id   ;;
  }
  measure: loyal_percent {
    type: number
    sql: ${count_loyal_id}/${count}*100;;
  }
  set: detail {
    fields: [customer_id, loyal_cust_count]
  }
}
