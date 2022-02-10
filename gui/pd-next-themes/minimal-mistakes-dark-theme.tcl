# canvas_fill - the canvas (patch background)
# canvas_text_cursor - text insertion cursor for all canvas objects
# gop_box - the GOP rectangle (when editing GOP patches)
# obj_box_text - text in an object box
# msg_box_text - text in a message box
# comment
# selected - selection
# obj_box_outline_broken - outline of "broken" object
#                          (that failed to create)
# obj_box_outline
# msg_box_outline
# msg_box_fill - fill of a message box
# obj_box_fill - " " object box
# signal_cord - signal cord and outline of signal inlets
# msg_cord - message cord and outline of message inlets
# msg_iolet - message inlet/outle   t fill
# signal_iolet - signal inlet/outlet fill
# graph_outline - outline of arrays and GOP patches in the parent patch
# graph_text - color of the names of GOP patches in the parent patch
# selection_rectangle - selection rectangle color in edit mode
# txt_highlight - color text is highlighted (in the "background") when selected
# array_name - garray names
# array_values - array elements
# atom_box_fill - fill of gatoms (number box, symbol box)
# atom_box_text - text of gatoms
# atom_box_label - label of gatoms
# atom_box_outline - outline of gatoms
# text_window_fill - [text] window background
# text_window_text - [text] window text
# text_window_highlight - like txt_highlight but for [text] window
# text_window_cursor - [text] window cursor
# pdwindow_fill - background of post window
# pdwindow_fatal_text - text for fatal errors
# pdwindow_fatal_highlight - highlight (background) for fatal errors
# pdwindow_error_text - text for errors
# pdwindow_post_text - text for posting
# pdwindow_debug_text - text for verbose logs
# helpbrowser_fill
# helpbrowser_text
# helpbrowser_highlight - like txt_highlight but for help browser

# this is an example of a color plugin for pure data (saved as a .tcl file)
array set ::pd_colors {
canvas_fill "#252a34"
gop_box "white"
obj_box_text "white"
msg_box_text "white"
comment "#7DFF81"
selected "gold"
obj_box_outline_broken "coral1"
obj_box_outline "white"
msg_box_outline "#5B6780"
msg_box_fill "#5B6780"
obj_box_fill "#293C63"
signal_cord "#a5faff"
msg_cord "white"
msg_iolet "gray25"
signal_iolet "#a5faff"
graph_outline "white"
selection_rectangle "gold"
txt_highlight "SteelBlue2"
graph_text "white"
array_name "white"
array_values "DarkSlateGray1"
atom_box_fill "white"
atom_box_text "black"
atom_box_label "white"
atom_box_outline "black"
text_window_fill "#252a34"
text_window_text "white"
text_window_highlight "SteelBlue2"
text_window_cursor "OliveDrab1"
pdwindow_fill "#252a34"
pdwindow_fatal_text "OliveDrab1"
pdwindow_fatal_highlight "SteelBlue2"
pdwindow_error_text "coral1"
pdwindow_post_text "white"
pdwindow_debug_text "white"
helpbrowser_fill "gray25"
helpbrowser_text "white"
helpbrowser_highlight "SteelBlue2"
canvas_text_cursor "white"
}
set ::pd_colors(txt_highlight_front) $::pd_colors(selected)
set ::pd_colors(msg_iolet_border) $::pd_colors(msg_cord)
set ::pd_colors(signal_iolet_border) $::pd_colors(signal_cord)

# how to set individual colors
#set ::pd_colors(msg_box_fill) "white"
#set ::pd_colors(obj_box_fill) "white"

#random colors for everything
#proc ::pdtk_canvas::get_color {type {window 0}} {
#	return [format #%06x [expr {int(rand() * 0xFFFFFF)}]]
#}
