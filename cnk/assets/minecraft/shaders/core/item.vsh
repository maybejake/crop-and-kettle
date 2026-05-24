#version 330

#moj_import <minecraft:light.glsl>
#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:sample_lightmap.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV1;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler2;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

bool shouldShade(vec4 color) {
    return abs(color.r * 255.0 - 254) < 0.5 &&
        abs(color.g * 255.0 - 251) < 0.5 &&
        abs(color.b * 255.0 - 254) < 0.5;
}

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);

    if (!shouldShade(Color)) {
        vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color) * sample_lightmap(Sampler2, UV2);
    } else {
        vertexColor = sample_lightmap(Sampler2, UV2);
    }

    texCoord0 = UV0;
}
