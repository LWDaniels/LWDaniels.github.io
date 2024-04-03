precision highp float;
precision highp int;
varying vec4 vPosition;

varying vec4 vColor;
varying vec3 vNormal;
varying vec2 vUv;
//varying bool isBorder;

uniform float lineWidth;
uniform bool distanceInvariance;
// uniform float time;
// uniform float tscale;
// uniform float var1;
// uniform float var2;

void main() {
    // We can use macros in shaders.
    // The one below checks for a THREEJS variable that indicates whether the shader uses color information from the provided model's vertices
    #ifdef USE_COLOR
    vColor = vec4(color.xyz, 1.0);
    #else
    vColor = vec4(1.0,1.0,1.0,1.0);
    #endif
    vNormal = normalMatrix * normal;


    vPosition = modelViewMatrix * vec4(position.xyz, 1.0);
    vec4 modPosition = vPosition; // +  var1*0.05*sin(position.z*var2*100.0+time*tscale)*vec3(0.0,1.0,0.0);
    
    // if normal is facing away from the camera, translate outward
    if (vNormal[2] < 0.0) {
        vec3 nonZNorm = vNormal;
        nonZNorm[2] = 0.0;
        nonZNorm = normalize(nonZNorm);
        vec4 nonZNormH = vec4(nonZNorm, 0.0);
        float projectedDistance = 1.0;
        if (distanceInvariance) {
            vec3 projectedPosition = vec3(vPosition[0], vPosition[1], vPosition[2]);
            projectedDistance = length(projectedPosition);
        }
        modPosition = modPosition + 0.0005*lineWidth*nonZNormH*projectedDistance + vec4(0.0, 0.0, -0.002, 0.0);
        vColor = vec4(0.0,0.0,0.0,-1.0);
        //isBorder = true;
    }
    
    vUv = vec2(uv.x,1.0-uv.y);
    gl_Position = projectionMatrix * modPosition;
}
