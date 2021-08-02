uniform vec2 uFrequency;
varying vec2 vUv;

void main()
{
    mat2 transformationMatrix = mat2(vec2(1.0, 0.0), vec2(0.0, 1.0));

    vec4 modelPosition = modelMatrix * vec4(position, 1.0);
    modelPosition.xy *= transformationMatrix;
    
    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectedPosition = projectionMatrix * viewPosition;

    gl_Position = projectedPosition;

    vUv = uv;
}