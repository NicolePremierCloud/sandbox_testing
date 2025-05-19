
connection: "sandbox_testing"

include: "/views/user_track_interactions.view.lkml"
include: "/views/music_tracks.view.lkml"

datagroup: Extension_test_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: Extension_test_default_datagroup

explore: user_track_interactions {
  label: "Track Notes Analysis"
  description: "Analyze user interactions with tracks including notes, likes, and visibility"
  hidden: no  # Make the explore visible

  # Join to access individual notes within the array
  join: user_track_interactions__notes_array {
    view_label: "Individual Notes"
    sql: LEFT JOIN UNNEST(${user_track_interactions.notes_array}) as user_track_interactions__notes_array ;;
    relationship: one_to_many
    type: left_outer
    fields: [text, timestamp_time, timestamp_date]  # Only show relevant fields
  }
}
