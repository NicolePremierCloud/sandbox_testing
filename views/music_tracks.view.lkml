view: music_tracks {
  sql_table_name: `gcp-sandbox-324617.puttr.music_tracks` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: anghami {
    type: string
    sql: ${TABLE}.anghami ;;
  }
  dimension: apple_music {
    type: string
    sql: ${TABLE}.appleMusic ;;
  }
  dimension_group: date_published {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.datePublished ;;
  }
  dimension: spotify {
    type: string
    sql: ${TABLE}.spotify ;;
  }
  dimension: track {
    type: string
    sql: ${TABLE}.track ;;
  }
  dimension: you_tube_music {
    type: string
    sql: ${TABLE}.youTubeMusic ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
