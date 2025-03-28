project_name: "sandbox_testing"
application: extension_demo {
  label: "Extension Demo"
  url: "https://localhost:8080/bundle.js"
  mount_points: {
    standalone: no
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
    core_api_methods: ["me"]
    external_api_urls: []
    oauth2_urls: []
    scoped_user_attributes: []
    global_user_attributes: []
  }
}
