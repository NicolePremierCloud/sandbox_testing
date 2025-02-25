view: samle_slides {
  sql_table_name: `Looker_Testing.Samle_slides` ;;

  dimension: budget {
    type: number
    sql: ${TABLE}.Budget ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }
  dimension: delivered {
    type: number
    sql: ${TABLE}.Delivered ;;
  }
  dimension: projected {
    type: number
    sql: ${TABLE}.Projected ;;
  }
  dimension: remainder {
    type: number
    sql: ${TABLE}.Remainder ;;
  }
  measure: count {
    type: count
  }
}
