view: customer_category_d {
  sql_table_name: sa_targ.customer_category_d ;;

  dimension: category_desc {
    type: string
    sql: ${TABLE}.category_desc ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
