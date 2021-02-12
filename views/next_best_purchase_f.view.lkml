view: next_best_purchase_f {
  sql_table_name: sa_targ.next_best_purchase_f ;;

  dimension: category_subcategory {
    type: string
    sql: ${TABLE}.category_subcategory ;;
  }

  dimension: crossell_productid1 {
    type: number
    sql: ${TABLE}.crossell_productid1 ;;
  }

  dimension: crossell_productid2 {
    type: number
    sql: ${TABLE}.crossell_productid2 ;;
  }

  dimension: crossell_productid3 {
    type: number
    sql: ${TABLE}.crossell_productid3 ;;
  }

  dimension: crossell_productid4 {
    type: number
    sql: ${TABLE}.crossell_productid4 ;;
  }

  dimension: crossell_productid5 {
    type: number
    sql: ${TABLE}.crossell_productid5 ;;
  }

  dimension: crossell_productid6 {
    type: number
    sql: ${TABLE}.crossell_productid6 ;;
  }

  dimension: crossell_productname1 {
    type: string
    sql: ${TABLE}.crossell_productname1 ;;
  }

  dimension: crossell_productname2 {
    type: string
    sql: ${TABLE}.crossell_productname2 ;;
  }

  dimension: crossell_productname3 {
    type: string
    sql: ${TABLE}.crossell_productname3 ;;
  }

  dimension: crossell_productname4 {
    type: string
    sql: ${TABLE}.crossell_productname4 ;;
  }

  dimension: crossell_productname5 {
    type: string
    sql: ${TABLE}.crossell_productname5 ;;
  }

  dimension: crossell_productname6 {
    type: string
    sql: ${TABLE}.crossell_productname6 ;;
  }

  dimension: next_best_purchase1 {
    type: string
    sql: ${TABLE}.next_best_purchase1 ;;
  }

  dimension: next_best_purchase2 {
    type: string
    sql: ${TABLE}.next_best_purchase2 ;;
  }

  dimension: next_best_purchase3 {
    type: string
    sql: ${TABLE}.next_best_purchase3 ;;
  }

  dimension: next_best_purchase4 {
    type: string
    sql: ${TABLE}.next_best_purchase4 ;;
  }

  dimension: next_best_purchase5 {
    type: string
    sql: ${TABLE}.next_best_purchase5 ;;
  }

  dimension: number_of_records {
    type: number
    sql: ${TABLE}.number_of_records ;;
  }

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

  dimension: product_name_size {
    type: string
    sql: ${TABLE}.product_name_size ;;
  }

  dimension: product_ordered_id {
    type: number
    sql: ${TABLE}.product_ordered_id ;;
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

  dimension: ref_id {
    type: string
    sql: ${TABLE}.ref_id ;;
  }

  dimension: ref_product_id {
    type: string
    sql: ${TABLE}.ref_product_id ;;
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
