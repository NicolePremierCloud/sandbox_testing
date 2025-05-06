view: user_track_interactions {
  sql_table_name: `gcp-sandbox-324617.puttr.user_track_interactions` ;;

  dimension: hidden {
    type: yesno
    sql: ${TABLE}.hidden ;;
    html:
    {% if value == 'No' %}
    👁️
    {% elsif value == 'Yes' %}

          {% endif %}
          ;;
  }
  dimension: liked {
    type: yesno
    sql: ${TABLE}.liked ;;
    html:
    {% if value == 'Yes' %}
    ❤️
    {% else %}
    🤍
    {% endif %}
    ;;
  }
  dimension: track_id {
    type: string
    sql: ${TABLE}.track_id ;;
  }
  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }
  dimension: user_notes {
    type: string
    sql: ${TABLE}.user_notes ;;
  }
  measure: count {
    type: count
  }
}
