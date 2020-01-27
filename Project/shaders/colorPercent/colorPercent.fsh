//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float redPercent;
uniform float greenPercent;
uniform float bluePercent;

void main()
{
	vec4 base_col = vec4(v_vColour.r * redPercent, v_vColour.g * greenPercent, v_vColour.b * bluePercent, v_vColour.a);
	
    gl_FragColor = base_col * texture2D( gm_BaseTexture, v_vTexcoord );
}
