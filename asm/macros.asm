


// Control Macros


macro dialogue_text_start(TEXT) {
    table "tbl/global.tbl"
    db ($02)
    db ($03)
    db ($11)
    db {TEXT}
    break_line()
}
macro dialogue_text(TEXT) {
    table "tbl/global.tbl"
    db {TEXT}
    break_line()
}
macro dialogue_text_intro(TEXT) {
    table "tbl/global.tbl"
    db {TEXT}
    
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
macro control() {
    db CONTROL
}