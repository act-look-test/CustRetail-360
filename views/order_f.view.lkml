view: order_f {
  sql_table_name: sa_targ.order_f ;;

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: discounted_unit_price {
    type: number
    sql: ${TABLE}.discounted_unit_price ;;
  }

  dimension: net_unit_price {
    type: number
    sql: ${TABLE}.net_unit_price ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_item_id {
    type: number
    sql: ${TABLE}.order_item_id ;;
  }

  dimension: ordered_qty {
    type: number
    sql: ${TABLE}.ordered_qty ;;
  }

  dimension: payment_id {
    type: number
    sql: ${TABLE}.payment_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: promotion_id {
    type: number
    sql: ${TABLE}.promotion_id ;;
  }

  dimension: regular_unit_price {
    type: number
    sql: ${TABLE}.regular_unit_price ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: transaction_amount {
    type: number
    sql: ${TABLE}.transaction_amount ;;
  }

  dimension_group: transaction {
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
    sql: ${TABLE}.transaction_date ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.transaction_type ;;
  }
  measure: Basket_size {
    type: average
    sql: ${TABLE}.ordered_qty ;;
  }
  measure: count {
    type: count
    drill_fields: []
  }
  # No of Footfalls is Count of customers from order table
  measure: no_of_footfalls {
    type:  number
    sql: COUNT(${TABLE}.customer_id) ;;
  }
  measure: no_of_customers {
    type: count_distinct
    sql:  ${TABLE}.customer_id;;
  }

  #No of Footfalls per customer
measure: no_of_footfalls_per_customer{
  type: number
  sql: ${no_of_footfalls}/${no_of_customers} ;;
}

}
