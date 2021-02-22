  view: sql_kpi_constants {
    derived_table: {
      sql: SELECT distinct
        21 as percent_of_cust_churn_probability,
        2.48 as percent_reach,
        4.75 as avg_queue_length
        from sa_targ.promotion_d
        ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }


    dimension: percent_of_cust_churn_probability {
      type: number
      sql: ${TABLE}.percent_of_cust_churn_probability ;;
    }

    dimension: percent_reach {
      type: number
      sql: ${TABLE}.percent_reach ;;
    }

    dimension: avg_queue_length {
      type: number
      sql: ${TABLE}.avg_queue_length ;;
    }

    set: detail {
      fields: [ percent_of_cust_churn_probability, percent_reach, avg_queue_length]
    }
  }
