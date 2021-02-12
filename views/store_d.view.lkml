view: store_d {
  sql_table_name: sa_targ.store_d ;;

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: store_city {
    type: string
    sql: ${TABLE}.store_city ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.store_name ;;
  }

  dimension: store_state {
    type: string
    sql: ${TABLE}.store_state ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: [store_name]
  }
}
