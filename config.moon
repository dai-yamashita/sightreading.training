import config from require "lapis.config"

config {"development", "production", "test"}, ->
  app_name "sightreading.training"
  session_name "mursic"

  daemon "off"
  notice_log "stderr"

  postgres {
    database: "sightreading"
  }

config "production", ->
  daemon "on"
  notice_log "logs/notice.log"
  code_cache "on"
  num_workers 3
  port 10007

  sentry_url "https://8ab5f34b22de49fd956dddbd902d6005@sentry.io/125841"


config "test", ->
  code_cache "on"

  postgres {
    database: "sightreading_test"
  }
