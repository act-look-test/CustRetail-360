view: customer_d {
  sql_table_name: sa_targ.customer_d ;;

  dimension: address_line1 {
    type: string
    sql: ${TABLE}.address_line1 ;;
  }

  dimension: address_type {
    type: string
    sql: ${TABLE}.address_type ;;
  }

  dimension: average_family_size {
    type: number
    sql: ${TABLE}.average_family_size ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: creditscore {
    type: string
    sql: ${TABLE}.creditscore ;;
  }

  dimension: customer_average_spending {
    type: number
    sql: ${TABLE}.customer_average_spending ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension_group: date_on_boarded {
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
    sql: ${TABLE}.date_on_boarded ;;
  }

  dimension_group: dateofbirth {
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
    sql: ${TABLE}.dateofbirth ;;
  }

  dimension: emailid {
    type: string
    sql: ${TABLE}.emailid ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: identifier_code {
    type: string
    sql: ${TABLE}.identifier_code ;;
  }

  dimension: identifier_type {
    type: string
    sql: ${TABLE}.identifier_type ;;
  }

  dimension: income_level {
    type: string
    sql: ${TABLE}.income_level ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: loyality_member_id {
    type: number
    sql: ${TABLE}.loyality_member_id ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.marital_status ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}.nationality ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.occupation ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
