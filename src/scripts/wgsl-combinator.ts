export function wgsl(...shaders: string[]) {
  return shaders.join('\n');
}
