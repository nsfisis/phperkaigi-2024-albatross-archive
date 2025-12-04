import { build } from 'esbuild'

let ALBATROSS_BASE_PATH = process.env.ALBATROSS_BASE_PATH;
if (ALBATROSS_BASE_PATH == null) {
  throw new Error('$ALBATROSS_BASE_PATH is not set');
}

await build({
  entryPoints: ['assets/index.js', 'assets/chart.js', 'assets/loading.js'],
  outdir: 'archive/assets',
  bundle: true,
  minify: true,
  sourcemap: true,
  define: {
    'process.env.ALBATROSS_BASE_PATH': JSON.stringify(ALBATROSS_BASE_PATH),
  },
});
