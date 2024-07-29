shader_type canvas_item;

uniform float top_left_radius : hint_range(0., 1.) = 0.;
uniform float top_right_radius : hint_range(0., 1.) = 0.;
uniform float bottom_left_radius : hint_range(0., 1.) = 0.;
uniform float bottom_right_radius : hint_range(0., 1.) = 0.;

bool isOut(float x, float y, float radius) {
    return pow(x, 2.) + pow(y, 2.) > pow(radius * 0.5, 2.);
}

void fragment() {
    float tl = top_left_radius * 0.5;
    float tr = top_right_radius * 0.5;
    float bl = bottom_left_radius * 0.5;
    float br = bottom_right_radius * 0.5;

    if (
        (UV.x < tl && UV.y < tl && isOut(UV.x - tl, UV.y - tl, top_left_radius)) ||
        (UV.x > 1. - tr && UV.y < tr && isOut(UV.x - 1. + tr, UV.y - tr, top_right_radius)) ||
        (UV.x < bl && UV.y > 1. - bl && isOut(UV.x - bl, UV.y - 1. + bl, bottom_left_radius)) ||
        (UV.x > 1. - br && UV.y > 1. - br && isOut(UV.x - 1. + br, UV.y - 1. + br, bottom_right_radius))
    ) {
        COLOR.a = 0.;
    }
}
