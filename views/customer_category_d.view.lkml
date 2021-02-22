view: customer_category_d {
  sql_table_name: sa_targ.customer_category_d ;;

  dimension: category_desc {
    type: string
    sql: ${TABLE}.category_desc ;;
    }

  dimension: category_desc_chart {
    type: string
    sql: ${TABLE}.category_desc ;;
    html:
    {% if value == 'A Day Out' %}
    <p style="background-color: #008000 %">{{ rendered_value }}</p>
    {% elsif value =='Age is just a number' %}
    <p style="background-color: #E1AD01 %">{{ rendered_value }}</p>
    {% elsif value=='Contemporary' %}
    <p style="background-color: #FF5821 %">{{ rendered_value }}</p>
    {% endif %}

    ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
