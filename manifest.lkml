project_name: "sandbox_testing"

application:  cmg_extension {
  label: "CMG Music Track Extension"
  url: "https://localhost:8080/bundle.js"
  # file: "bundle.js" # For production deployment
  entitlements: {
    use_embeds: yes
    use_iframes: yes
    local_storage: no
    new_window: no
    new_window_external_urls: []
    use_form_submit: no
    use_clipboard: no
    oauth2_urls: []
    external_api_urls: ["https://cmg-fetch-tracks-ob2ywfxg4q-uc.a.run.app", "https://handle-interaction-1067806797832.us-central1.run.app"]
    core_api_methods: ["run_inline_query","me", "user_attribute_user_values", "run_query","create_query", "db_query"] # Allows running queries directly
    # Add others as needed later, e.g., local_storage, specific API methods
    navigation: yes
  }
}
