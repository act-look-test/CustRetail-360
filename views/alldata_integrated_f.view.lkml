view: alldata_integrated_f {
  sql_table_name: sa_targ.alldata_integrated_f ;;

  dimension: address_line1 {
    type: string
    sql: ${TABLE}.address_line1 ;;
  }

  dimension: addresstype {
    type: string
    sql: ${TABLE}.addresstype ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: age_group {
    type: string
    sql: ${TABLE}.age_group ;;
  }

  dimension: average_family_size {
    type: number
    sql: ${TABLE}.average_family_size ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: clvt {
    type: number
    sql: ${TABLE}.clvt ;;
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

  dimension_group: customdob {
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
    sql: ${TABLE}.customdob ;;
  }

  dimension: customer_average_spending {
    type: number
    sql: ${TABLE}.customer_average_spending ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_id1 {
    type: number
    value_format_name: id
    sql: ${TABLE}.customer_id1 ;;
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

  dimension: discounted_unit_price {
    type: number
    sql: ${TABLE}.discounted_unit_price ;;
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

  dimension: net_unit_price {
    type: number
    sql: ${TABLE}.net_unit_price ;;
  }

  dimension: number_of_records {
    type: number
    sql: ${TABLE}.number_of_records ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.occupation ;;
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

  dimension: payment_id1 {
    type: number
    value_format_name: id
    sql: ${TABLE}.payment_id1 ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension: payment_type_desc {
    type: string
    sql: ${TABLE}.payment_type_desc ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: price_id {
    type: number
    sql: ${TABLE}.price_id ;;
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

  dimension: product_id1 {
    type: number
    value_format_name: id
    sql: ${TABLE}.product_id1 ;;
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

  dimension: promotion_id {
    type: number
    sql: ${TABLE}.promotion_id ;;
  }

  dimension: ref_customer_id {
    type: string
    sql: ${TABLE}.ref_customer_id ;;
  }

  dimension: ref_id {
    type: string
    sql: ${TABLE}.ref_id ;;
  }

  dimension: ref_payment_id {
    type: string
    sql: ${TABLE}.ref_payment_id ;;
  }

  dimension: ref_product_id {
    type: string
    sql: ${TABLE}.ref_product_id ;;
  }

  dimension: ref_store_id {
    type: string
    sql: ${TABLE}.ref_store_id ;;
  }

  dimension: regular_unit_price {
    type: number
    sql: ${TABLE}.regular_unit_price ;;
  }

  dimension: sentiment {
    type: string
    sql: ${TABLE}.sentiment ;;
  }

  dimension: sentiment_polarity {
    type: number
    sql: ${TABLE}.sentiment_polarity ;;
  }

  dimension_group: sentiment_run {
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
    sql: ${TABLE}.sentiment_run_date ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.size ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: store_city {
    type: string
    sql: ${TABLE}.store_city ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: store_id1 {
    type: number
    value_format_name: id
    sql: ${TABLE}.store_id1 ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.store_name ;;
  }

  dimension: store_state {
    type: string
    sql: ${TABLE}.store_state ;;
  }

  dimension: storeaddress {
    type: string
    sql: ${TABLE}.storeaddress ;;
  }

  dimension: transaction_amount {
    type: number
    sql: ${TABLE}.transaction_amount ;;
  }

  dimension: transaction_amount1 {
    type: number
    sql: ${TABLE}.transaction_amount1 ;;
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

  dimension: usual_order {
    type: string
    sql: ${TABLE}.usual_order ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  dimension: zipcode1 {
    type: number
    sql: ${TABLE}.zipcode1 ;;
  }

  measure: count {
    type: count
    drill_fields: [last_name, first_name, product_name, store_name]
  }
}
