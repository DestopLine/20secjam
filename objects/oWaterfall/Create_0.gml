_water = part_system_create();
part_system_draw_order(_water, true);

var _ptype1 = part_type_create();
part_type_shape(_ptype1, pt_shape_disk);
part_type_size(_ptype1, 0.1, 1, 0, 0.01);
part_type_scale(_ptype1, 0.8, 0.8);
part_type_speed(_ptype1, 7, 10, 0, 1);
part_type_direction(_ptype1, 331, 322, 0, 15);
part_type_gravity(_ptype1, 0.5, 279);
part_type_orientation(_ptype1, 136, 315, 0, 0, false);
part_type_colour3(_ptype1, #e63212, #e63212, #e63212);
part_type_alpha3(_ptype1, 1, 1, 1);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 60, 60);

var _pemit1 = part_emitter_create(_water);
part_emitter_region(_water, _pemit1, -32, 32, -32, 32, ps_shape_rectangle, ps_distr_invgaussian);
part_emitter_stream(_water, _pemit1, _ptype1, 25);

part_system_position(_water, x, y);
