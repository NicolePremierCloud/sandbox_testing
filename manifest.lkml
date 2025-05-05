project_name: "sandbox_testing"

application:  cmg_extension {
  label: "CMG Music Track Extension"
  url: "https://localhost:8080/bundle.js"
  # file: "bundle.js" # For production deployment
  entitlements: {
    use_embeds: yes
    use_iframes: yes
    core_api_methods: ["run_inline_query"] # Allows running queries directly
    # Add others as needed later, e.g., local_storage, specific API methods
    navigation: yes
  }
}
