project_name: "sandbox_testing"
application: extension_demo {
  label: "Extension Demo"
  url: "https://localhost:8080/bundle.js"
  mount_points: {
    standalone: yes
    dashboard_vis: yes
    dashboard_tile: yes
  }
  entitlements: {
    local_storage: yes
    navigation: yes
    new_window: yes
    use_form_submit: yes
    use_embeds: yes
    use_downloads: yes
    use_iframes: yes
    use_clipboard: yes
    # UPDATED core_api_methods:
    core_api_methods: [
      "me",
      "run_inline_query",
      "look",
      "user_attribute_user_values",
      "set_user_attribute_user_value"
    ]
    external_api_urls: []
    oauth2_urls: []
    # UPDATED scoped_user_attributes:
    scoped_user_attributes: ["extension_golf_favorites"] # ADDED - Grant access to your new user attribute
    global_user_attributes: []
  }
}
