view: prospect_master_d {
  sql_table_name: sa_targ.prospect_master_d ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
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

  dimension: income_level {
    type: string
    sql: ${TABLE}.income_level ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.marital_status ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}.nationality ;;
  }

  dimension: occup {
    type: number
    sql: ${TABLE}.occup ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.occupation ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: potential_customer {
    type: string
    sql: ${TABLE}.potential_customer ;;
  }

  dimension: prob {
    type: string
    sql: ${TABLE}.prob ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: prospect_id {
    type: number
    sql: ${TABLE}.prospect_id ;;
  }

  dimension: prospect_name {
    type: string
    sql: ${TABLE}.prospect_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: vacations {
    type: number
    sql: ${TABLE}.vacations ;;
  }

  dimension: vehicle_owned {
    type: number
    sql: ${TABLE}.vehicle_owned ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name, product_name, prospect_name]
  }
}
