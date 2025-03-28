# The name of this view in Looker is "Games"
view: games {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `puttr.Games` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ball Path" in Explore.

  dimension: ball_path {
    type: string
    sql: ${TABLE}.ballPath ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension: distance {
    type: number
    sql: ${TABLE}.distance ;;
  }

  dimension: game_id {
    type: number
    sql: ${TABLE}.gameId ;;
  }

  dimension: hole_bounds_x {
    type: number
    sql: ${TABLE}.holeBounds_x ;;
  }

  dimension: hole_bounds_y {
    type: number
    sql: ${TABLE}.holeBounds_y ;;
  }

  dimension: hole_bounds_z {
    type: number
    sql: ${TABLE}.holeBounds_z ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: made {
    type: number
    sql: ${TABLE}.made ;;
  }

  dimension: mp_game_id {
    type: number
    sql: ${TABLE}.mpGameId ;;
  }

  dimension: position_x {
    type: number
    sql: ${TABLE}.Position_x ;;
  }

  dimension: position_y {
    type: number
    sql: ${TABLE}.Position_y ;;
  }

  dimension: position_z {
    type: number
    sql: ${TABLE}.Position_z ;;
  }

  dimension: quest_game_id {
    type: number
    sql: ${TABLE}.questGameId ;;
  }

  dimension: tee {
    type: number
    sql: ${TABLE}.tee ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: user_game_id {
    type: number
    sql: ${TABLE}.userGameId ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.userId ;;
  }
  measure: count {
    type: count
  }
}
