shader_type canvas_item;

uniform vec3 key_color : source_color;
uniform float threshold : hint_range(0.0, 1.0);

void fragment() {
    vec4 tex_color = texture(TEXTURE, UV);
    
    // Calculate the distance between the texture color and the key color
    float distance = distance(tex_color.rgb, key_color);

    // If the distance is within the threshold, make the color transparent
    if (distance < threshold) {
        tex_color.a = 0.0;
    }

    COLOR = tex_color;
}
