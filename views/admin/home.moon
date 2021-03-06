

class AdminHome extends require "widgets.page"
  @needs: {"user", ""}
  inner_content: =>
    h1 "Home"
    @render_users!
    @render_songs!

  render_users: =>
    h2 "Users"
    element "table", ->
      thead ->
        tr ->
          td "id"
          td "username"
          td "email"
          td "created_at"

      for user in *@users
        tr ->
          td user.id
          td user.username
          td user.email
          td user.created_at

  render_songs: =>
    h2 "Songs"
    element "table", ->
      thead ->
        tr ->
          td "id"
          td "title"
          td "created_at"

      for song in *@songs
        tr ->
          td song.id
          td song.title
          td song.created_at
