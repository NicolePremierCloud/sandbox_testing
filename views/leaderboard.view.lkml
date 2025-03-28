# The name of this view in Looker is "Leaderboard"
view: leaderboard {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `puttr.leaderboard` ;;
  drill_fields: [leaderboard_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: leaderboard_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.leaderboard_id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Club ID" in Explore.

  dimension: club_id {
    type: string
    sql: ${TABLE}.clubId ;;
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

  dimension: icon {
    type: string
    sql: ${TABLE}.icon ;;
  }

  dimension: leaderboard_title {
    type: string
    sql: ${TABLE}.leaderboard_title ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: score_id {
    type: number
    sql: ${TABLE}.score_id ;;
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

  dimension: user_name {
    type: string
    sql: ${TABLE}.userName ;;
  }
  measure: count {
    type: count
    drill_fields: [leaderboard_id, user_name]
  }
}
