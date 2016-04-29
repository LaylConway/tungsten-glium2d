#version 150
#extension GL_ARB_gpu_shader5 : require

uniform sampler2DArray m_samplers[8];

in vec2 v_texture_coord;
flat in uint v_sampler_id;
flat in uint v_texture_id;

out vec4 o_color;

void main() {
    o_color = texture(m_samplers[v_sampler_id], vec3(v_texture_coord, v_texture_id));
}
