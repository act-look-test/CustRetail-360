view: customer_sentiment_d {
  sql_table_name: sa_targ.customer_sentiment_d ;;

  dimension: sentiment_desc {
    type: string
    sql: ${TABLE}.sentiment_desc ;;
  }

  dimension: sentiment_id {
    type: number
    sql: ${TABLE}.sentiment_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
