//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 col;

void main()
{
	vec3 outCol = texture2D( gm_BaseTexture, v_vTexcoord ).rgb;
    gl_FragColor = vec4(outCol * col, 1.0);
}
