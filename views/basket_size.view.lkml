view: basket_size {
  derived_table: {
    sql: select customer_id, avg(ordered_qty) as sum_qty  from sa_targ.order_f group by customer_id
      ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: sum_qty {
    type: number
    sql: ${TABLE}.sum_qty ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure : avg_qty {
    type: average
    sql: ${sum_qty} ;;
    value_format:"#.0;(#.0)"
  }
  set: detail {
    fields: [customer_id, sum_qty]
  }
}
