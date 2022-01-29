# The name of this view in Looker is "Inventory Items"
view: inventory_items {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.inventory_items ;;
  drill_fields: [id]


  filter: filtrodefecha {
    type: date
  }

  dimension: basadaenfiltrodefecha{

    #sql: {% if filtrodefecha==null%}'yes'{% else %} 'no'{%endif%} ;;
    #sql: {% date_end filtrodefecha %}   ;;
  }


  dimension: liquidObjects {
    type: string
    sql: ${TABLE}.id ;;

    #para insertar
    #html: <img src="http://www.brettcase.com/product_images/{{ value }}.jpg" /> ;;

    #sql: '{{ link}}' ;;<------no supe
    #sql: '{{_model._name}}' ;;  #----> imprime el nombre del proyecto
    #sql:'{{_field._name}}'  ;;
    #sql: '{{_query._query_timezone}}' ;;
    #sql:'{{inventory_items._in_query}}'---->este no jalo tal cual por que noes una dimension tipica/mal definida
    #sql: {% if 'order_items'.parametrofec._parameter_value==null%}'yes'{%endif%} ;;
  }

  dimension: liquidTag {
    # sql:{%if _model._name!="hol"%} 'diferente' {% endif %};;
    #sql: {%if products._in_query!= true%} 'notrue'{% endif %};;
    #sql: {%date_start order_items.fecha %};;#--->si se le pone' imprime como cadena :/ ppp lo dice la documentacion
    #sql: {%date_start created_date %};;---->este no jalo

  }



  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }



  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  measure: total_cost {
    type: sum
    sql: ${cost} ;;
  }

  measure: average_cost {
    type: average
    sql: ${cost} ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension_group: sold {
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
    sql: ${TABLE}.sold_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, products.id, products.item_name, order_items.count]
  }


}
