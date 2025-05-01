
connection: "sandbox_testing"

include: "/views/**/*.view.lkml"

datagroup: Extension_test_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: Extension_test_default_datagroup
explore: leaderboard {}

explore: games {}

explore: music_tracks {}
