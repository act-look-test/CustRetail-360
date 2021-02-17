view: customer_product_category_count {

    derived_table: {
      sql: SELECT customer_id as customer_id, count(distinct product_category) product_category_count
        FROM sa_targ.order_f LEFT JOIN sa_targ.product_d on order_f.product_id = product_d.product_id
        group by customer_id
        ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }
    measure: average_product_category {
      type: average
      sql: ${product_category_count} ;;
    }
    dimension: customer_id {
      type: number
      sql: ${TABLE}.customer_id ;;
    }
    dimension: product_category_count {
      type: number
      sql: ${TABLE}.product_category_count ;;
    }
    set: detail {
      fields: [customer_id, product_category_count]
    }
  }
