view: promotion_d {
  sql_table_name: sa_targ.promotion_d ;;

  dimension: price_reduction_type {
    type: string
    sql: ${TABLE}.price_reduction_type ;;
  }

  dimension: promotion_code {
    type: string
    sql: ${TABLE}.promotion_code ;;
  }

  dimension: promotion_desc {
    type: string
    sql: ${TABLE}.promotion_desc ;;
  }

  dimension_group: promotion_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.promotion_end_date ;;
  }

  dimension: promotion_id {
    type: number
    sql: ${TABLE}.promotion_id ;;
  }

  dimension: promotion_name {
    type: string
    sql: ${TABLE}.promotion_name ;;
  }

  dimension_group: promotion_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.promotion_start_date ;;
  }

  measure: count {
    type: count
    drill_fields: [promotion_name]
  }
}
