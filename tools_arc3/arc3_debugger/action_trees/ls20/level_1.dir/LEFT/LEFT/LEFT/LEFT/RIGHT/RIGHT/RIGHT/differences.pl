comparison(parent,current).
action_between(parent,current,action4).

object_difference(parent,current,base_glyph,
    translated(vector(5,0),rect(29,45,5,5),rect(34,45,5,5))).
object_difference(parent,current,status_marker,
    extended(right,1,rect(13,61,6,2),rect(13,61,7,2))).

changed_cell_block(parent,current,rect(29,45,5,2),gray,green).
changed_cell_block(parent,current,rect(29,47,5,3),dark_red,green).
changed_cell_block(parent,current,rect(34,45,5,2),green,gray).
changed_cell_block(parent,current,rect(34,47,5,3),green,dark_red).
changed_cell_block(parent,current,rect(19,61,1,2),dark_gray,green).

unchanged_object(parent,current,central_hole).
unchanged_object(parent,current,green_structure).
unchanged_object(parent,current,hud_panel).
unchanged_object(parent,current,left_boundary_bar).
unchanged_object(parent,current,player_cursor).
unchanged_object(parent,current,status_pips).
unchanged_object(parent,current,status_track).
unchanged_object(parent,current,top_glyph).

changed_region_union(parent,current,
    union([rect(29,45,10,5),rect(19,61,1,2)])).
