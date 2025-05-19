
view: user_track_interactions {
  sql_table_name: `gcp-sandbox-324617.puttr.user_track_interactions` ;;

  dimension: hidden {
    type: yesno
    sql: ${TABLE}.hidden ;;
  }

  dimension: liked {
    type: yesno
    sql: ${TABLE}.liked ;;
  }

  dimension: notes_array {
    hidden: yes
    sql: ${TABLE}.notes_array ;;
  }

  # Safer JSON representation that won't cause GROUP BY issues
  dimension: notes_json {
    type: string
    sql: TO_JSON_STRING(${TABLE}.notes_array) ;;
    description: "Notes array formatted as JSON"
    html: <pre>{{ value }}</pre> ;;
  }

  # Use a derived table for formatted JSON to avoid GROUP BY issues
  dimension: notes_json_formatted {
    type: string
    sql:
      (SELECT
         TO_JSON_STRING(
           ARRAY(
             SELECT AS STRUCT
               note.text,
               FORMAT_TIMESTAMP('%Y-%m-%d %H:%M:%S', note.timestamp) AS formatted_timestamp
             FROM UNNEST(${TABLE}.notes_array) AS note
           )
         )
      ) ;;
    description: "Notes array formatted as JSON with readable timestamps"
    html: <pre>{{ value }}</pre> ;;
  }

  dimension: track_id {
    type: string
    sql: ${TABLE}.track_id ;;
  }

  dimension: user_notes {
    type: string
    sql: ${TABLE}.user_notes ;;
  }

  # Count of notes per track
  dimension: notes_count {
    type: number
    sql: ARRAY_LENGTH(${TABLE}.notes_array) ;;
    description: "Number of notes for this track"
  }

  measure: count {
    type: count
  }

  # Aggregate measure for notes count
  measure: total_notes_count {
    type: sum
    sql: ${notes_count} ;;
    description: "Total number of notes across all tracks"
  }
}

view: user_track_interactions__notes_array {
  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
}
