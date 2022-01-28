# The name of this view in Looker is "Products"
view: products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.products ;;
  drill_fields: [id]

filter: filtroX {
  type: string
  suggestions: ["adidas"]
}

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;

    link:{
    url: "http://www.google.com/search?q={{value}}"
    icon_url: "https://www.google.com/s2/favicons?domain=www.nps.gov"
        }

    #poner imagen en lugar del valor del campo
   # html: <img src="http://www.brettcase.com/product_images/{{ value }}.jpg" /> ;;

    #
    #html: <a href="{{ website.url._value }}" target="_new">{{ value }}</a> ;;
    }

  dimension: templatedfilter {
    #sql: {% condition filtroX %} ${brand} {% endcondition %} ;;#regresa un true o flase
    case: {
      when: {
        sql: {% condition filtroX %} ${brand} {% endcondition %} ;;
        label: "se cumplio el case"
      }
      # possibly more when statements
      else: "no se cumplio el case"
    }
  }


  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_retail_price {
    type: sum
    sql: ${retail_price} ;;
  }

  measure: average_retail_price {
    type: average
    sql: ${retail_price} ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count, product_facts.count]
  }
}

#usar campos de otras vistas
#{{ view_name.field_name._value }}
#{{ view_name.field_name._rendered_value }}
#{{ view_name.field_name._model._name }}
