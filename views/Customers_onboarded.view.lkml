view: Customers_onboarded {
  derived_table: {
    sql: SELECT count(*) as customer_onboarded FROM sa_targ.customer_d where date_part('year',date_on_boarded) in (2016,2017)
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: customer_onboarded {
    type: number
    sql: ${TABLE}.customer_onboarded ;;
  }

  set: detail {
    fields: [customer_onboarded]
  }
}
