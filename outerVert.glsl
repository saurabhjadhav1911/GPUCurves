varying vec2 vUv;
void main() {
	
	vec2 uvs[3];
	
	    // Triangle UVs
		uvs[1] = vec2(0.0, 0.0);
		uvs[0] = vec2(0.5, 0.0);
		uvs[2] = vec2(1.0, 1.0);
	int i = gl_VertexID % 3;

		vUv = uvs[i];

	gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 );
	//gl_Position =   vec4( vposition, 1.0 );
}	