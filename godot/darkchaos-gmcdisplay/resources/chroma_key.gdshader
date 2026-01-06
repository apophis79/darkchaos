shader_type canvas_item;

uniform sampler2D video_tex;
uniform vec3 key_color = vec3(0.0, 1.0, 0.0);
uniform float tolerance = 0.9;

void fragment() {
    vec4 tex = texture(video_tex, UV);

    float diff = distance(tex.rgb, key_color);
    if (diff < tolerance) {
        tex.a = 0.0;
    }

    COLOR = tex;
}