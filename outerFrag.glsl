varying vec2 vUv;
void main() {
	float u = vUv[0];
	float v = vUv[1];
	
	float f = u*u - v;
	float t = 1.0;
	
	if(f < 0.0){
	t = 0.0;
	}
	else{
	t= 1.0;
	}
	
	gl_FragColor = vec4(t);
}