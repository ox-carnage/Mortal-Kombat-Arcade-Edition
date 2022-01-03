



// Control Macros


macro dialogue_text(TEXT) {
    table "tbl/global.tbl"
    db {TEXT}
    break_line()
}

macro menu_text(TEXT) {
	table "tbl/global.tbl"
    db {TEXT}
    end()
}

macro end() {
    db ENDSTRING
}
macro break_line() {
    db BREAKLINE
}
macro new_page() {
    db NEWPAGE
}
macro align() {
    db NULL
}