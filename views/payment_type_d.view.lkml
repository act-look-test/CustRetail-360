view: payment_type_d {
  sql_table_name: sa_targ.payment_type_d ;;

  dimension: payment_id {
    type: number
    sql: ${TABLE}.payment_id ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension: payment_type_desc {
    type: string
    sql: ${TABLE}.payment_type_desc ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
