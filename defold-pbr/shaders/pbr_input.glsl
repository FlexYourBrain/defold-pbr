#ifndef PBR_INPUT
#define PBR_INPUT

varying highp   vec4 var_position_world;
varying mediump vec3 var_normal;
varying mediump vec3 var_tangent;
varying mediump vec2 var_texcoord0;
varying mediump vec2 var_texcoord1;
varying mediump mat3 var_TBN;

// Environment inputs
uniform lowp samplerCube tex_diffuse_irradiance;
uniform lowp samplerCube tex_prefiltered_reflection;
uniform lowp sampler2D   tex_brdflut;

// Material inputs
uniform lowp sampler2D tex_albedo;
uniform lowp sampler2D tex_normal;
uniform lowp sampler2D tex_metallic_roughness;
uniform lowp sampler2D tex_occlusion;
uniform lowp sampler2D tex_emissive;

uniform mediump vec4 u_camera_position;

// col 0: xyz: position
// col 1: xyz: direction
// col 2: xyz: color
// col 3: x: type

uniform lowp vec4 u_pbr_params_0;
uniform lowp vec4 u_pbr_params_1;
uniform lowp vec4 u_pbr_params_2;
uniform lowp vec4 u_pbr_scene_params;

#endif
