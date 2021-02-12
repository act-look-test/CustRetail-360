view: product_d {
  sql_table_name: sa_targ.product_d ;;

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.product_category ;;
  }

  dimension: product_desc {
    type: string
    sql: ${TABLE}.product_desc ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_ratings {
    type: number
    sql: ${TABLE}.product_ratings ;;
  }

  dimension: product_reviews {
    type: number
    sql: ${TABLE}.product_reviews ;;
  }

  dimension: product_sub_category {
    type: string
    sql: ${TABLE}.product_sub_category ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.size ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
