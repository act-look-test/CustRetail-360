view: prospect_f {
  sql_table_name: sa_targ.prospect_f ;;

  dimension: average_family_size {
    type: number
    sql: ${TABLE}.average_family_size ;;
  }

  dimension: grocery_expenses {
    type: number
    sql: ${TABLE}.grocery_expenses ;;
  }

  dimension: house_size_m2 {
    type: number
    sql: ${TABLE}.house_size_m2 ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.probability ;;
  }

  dimension: prospects_id {
    type: number
    sql: ${TABLE}.prospects_id ;;
  }

  dimension: recurring_deposit {
    type: number
    sql: ${TABLE}.recurring_deposit ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
