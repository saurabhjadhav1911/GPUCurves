
varying vec2 vUv;
void main() {
	    vec2 verts[3];
        verts[0] = vec2(1.4, 1.0);
        verts[1] = vec2( 0.0, -0.9);
        verts[2] = vec2( -0.7, 1.2);
	
	vec2 uvs[3];
	
	    // Triangle UVs
		uvs[0] = vec2(0.0, 0.0);
		uvs[1] = vec2(0.5, 0.0);
		uvs[2] = vec2(1.0, 1.0);

		vUv = uvs[gl_VertexID];

        // gl_VertexID used to select vertex
        vec3 vposition = vec3(verts[gl_VertexID], 0.0);
	gl_Position = projectionMatrix * modelViewMatrix * vec4( vposition, 1.0 );
	//gl_Position =   vec4( vposition, 1.0 );
}	