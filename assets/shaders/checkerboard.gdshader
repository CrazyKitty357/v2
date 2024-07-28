shader_type spatial;

uniform float grid_size_x : hint_range(1.0, 100.0);
uniform float grid_size_y : hint_range(1.0, 100.0);

void fragment() {
    vec2 uv = UV;
    vec2 grid = mod(floor(vec2(uv.x * grid_size_x, uv.y * grid_size_y)), 2.0);
    float checker = mod(grid.x + grid.y, 2.0);
    ALBEDO = vec3(checker);
}
