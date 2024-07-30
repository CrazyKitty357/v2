shader_type sky;
render_mode use_half_res_pass;

uniform vec3 sky_color : source_color;
uniform vec3 horizion_color : source_color;

uniform vec3 sun_color : source_color;
uniform sampler2D sun_texture;
uniform float sun_radius: hint_range(0.0, 1.0, 0.1);

void sky() {
	float color = clamp(EYEDIR.y / 0.25, 0.0, 1.0);
	vec3 skycolor = mix(horizion_color,sky_color,color);
	
	float sun = distance(EYEDIR.xyz, LIGHT0_DIRECTION);
	float sunDisk = 1.0 - clamp(sun / sun_radius, 0.0, 1.0);
	sunDisk = roundEven(sunDisk);
	vec3 sunBall = sunDisk * sun_color;
	vec3 sky = (skycolor * LIGHT0_ENERGY) + sunBall;
	COLOR = sky;
}