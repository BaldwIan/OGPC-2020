//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 col;
uniform float conSatBrt[5];

#define contrast		conSatBrt[0]
#define saturation		conSatBrt[1]
#define brightness		conSatBrt[2]
#define popStrength		conSatBrt[3]
#define popThreshold	conSatBrt[4]

void main()
{
	vec3 outCol = texture2D( gm_BaseTexture, v_vTexcoord ).rgb;
	
	float grey = dot(outCol, vec3(0.299, 0.587, 0.114));
	
	// Add contrast
	outCol = (outCol - 0.5) * contrast + 0.5;
	
	// Pop Lights
	outCol = outCol + popStrength * max(grey - popThreshold, 0.0);
	
	// Add saturation
	outCol = mix(vec3(grey), outCol, saturation);
	
	// Ad brightness
	outCol = outCol + brightness;
	
    gl_FragColor = vec4(outCol * col, 1.0);
}
