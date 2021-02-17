view: cltv_senti_sat_f {
  sql_table_name: sa_targ.cltv_senti_sat_f ;;

  dimension: cltv {
    type: number
    sql: ${TABLE}.cltv ;;
    value_format: "$0.00,,\" M\""
  }

  dimension: cust_sat_score {
    type: number
    sql: ${TABLE}.cust_sat_score ;;
  }

  dimension: cust_sentiment {
    type: string
    sql: ${TABLE}.cust_sentiment ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: full_name{
    type:  string
    sql:  concat(${TABLE}.first_name,' ',${TABLE}.last_name) ;;
  }



  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }

  measure: avg_customer_satisfaction {
    type: average
    sql: ${cust_sat_score} ;;
    value_format:"0;(0)"
    }
}
