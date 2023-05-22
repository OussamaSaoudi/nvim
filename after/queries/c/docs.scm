; User mention (@user)
("text" @constant @nospell
 (#lua-match? @constant "^[@][a-zA-Z0-9_-]+$")
 (#set! "priority" 95))
