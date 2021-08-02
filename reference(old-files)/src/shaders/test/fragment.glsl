
varying vec2 vUv;
uniform float gridDensityLevel;

void main()
{
    vec2 centeredUv = vUv - vec2(0.5);

    float middleDot= step(0.005, distance(centeredUv, vec2(0.0)));

    float patternXY = step(0.5, mod((centeredUv.x) * 300.0, 300.0 / gridDensityLevel)) 
                    * step(0.5, mod((centeredUv.y) * 300.0, 300.0 / gridDensityLevel));

    float finalPattern = middleDot * patternXY;

    gl_FragColor = vec4(vec3(finalPattern), 1.0);
}