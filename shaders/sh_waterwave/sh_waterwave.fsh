uniform float iGlobalTime;
uniform vec2 iResolution;
void main()
{
    vec2 uv =  gl_FragCoord.xy  / iResolution.xy;
    vec2 p = uv - 0.5;
    float time = iGlobalTime * 0.5;
    
    float amplitude = 0.1;
    float frequency = 3.0;
    
    float wave = sin(p.x * frequency + time) * amplitude;
    uv.y += wave;
    
    gl_FragColor = texture2D(gm_BaseTexture, uv);
}