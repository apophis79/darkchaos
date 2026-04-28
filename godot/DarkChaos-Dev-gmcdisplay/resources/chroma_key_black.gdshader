shader_type canvas_item;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;

void fragment() {
    vec4 video_color = texture(SCREEN_TEXTURE, SCREEN_UV);
    vec4 text_color = texture(TEXTURE, UV);

    // Optional: Only blend if text alpha > 0 (avoid junk blending)
    if (text_color.a > 0.0) {
        vec3 blended = 1.0 - (1.0 - text_color.rgb) * (1.0 - video_color.rgb); // Screen blend
        //COLOR = vec4(blended, text_color.a);
    } else {
        //COLOR = video_color;
    }
	
	COLOR = vec4(0,0,0,1);
}