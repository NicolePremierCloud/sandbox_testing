
connection: "sandbox_testing"

include: "/views/**/*.view.lkml"

datagroup: Extension_test_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: Extension_test_default_datagroup

explore: user_track_interactions {}

explore: music_tracks {
  join: user_track_interactions {
    relationship: many_to_many
    type: left_outer
    sql_on: ${music_tracks.id}=${user_track_interactions.track_id} ;;


    }

}
